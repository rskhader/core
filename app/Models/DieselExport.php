<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DieselExport extends Model
{
    use HasFactory;
    protected $fillable = ['num_section', 'num_note', 'section_id', 'sub_section_id', 'voucher', 'quantity', 'date'];

    public function section()
    {
        return $this->belongsTo(Section::class, 'section_id', 'id');
    }


    public function subSection()
    {
        return $this->belongsTo(SubSection::class, 'sub_section_id', 'id');
    }
}