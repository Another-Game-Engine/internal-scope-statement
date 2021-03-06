<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1397042743272" ID="ID_194710252" MODIFIED="1397065838642" TEXT="Main">
<node CREATED="1397042752511" ID="ID_1093980872" MODIFIED="1397127120230" POSITION="right" TEXT="AssetsManager">
<attribute_layout NAME_WIDTH="292" VALUE_WIDTH="292"/>
<attribute NAME="std::map&lt;std::string, std::shared_ptr&lt;RawAssetsFile&gt;&gt;" VALUE="_rawFiles"/>
<attribute NAME="std::map&lt;std::string, std::shared_ptr&lt;CookedAssetsFile&gt;&gt;" VALUE="_cookedFiles"/>
<attribute NAME="std::map&lt;std::string, std::shared_ptr&lt;MediaFile&gt;&gt;" VALUE="_mediaFiles"/>
<attribute NAME="File" VALUE="_rawDirectory"/>
<attribute NAME="File" VALUE="_cookedDirectory"/>
<node CREATED="1397126938732" ID="ID_303197738" MODIFIED="1397126950664" TEXT="Functions">
<node CREATED="1397126957537" ID="ID_1114705112" MODIFIED="1397127034713" TEXT="void setRawDirectory(File &amp;directory)"/>
<node CREATED="1397127038321" ID="ID_1618819567" MODIFIED="1397127053121" TEXT="void setCookedDirectory(File &amp;directory)"/>
</node>
</node>
<node CREATED="1397042962290" ID="ID_1385544368" MODIFIED="1397065882383" POSITION="left" TEXT="AAssetsFile">
<attribute_layout NAME_WIDTH="179" VALUE_WIDTH="179"/>
<attribute NAME="std::string" VALUE="_name"/>
<attribute NAME="File" VALUE="_file"/>
<attribute NAME="std::weak_ptr&lt;AssetsManager&gt;" VALUE="_manager"/>
<node CREATED="1397043054874" ID="ID_966034993" MODIFIED="1397066031012" TEXT="CookedAssetsFile : public AAssetsFile">
<attribute_layout NAME_WIDTH="63" VALUE_WIDTH="77"/>
<attribute NAME="Timestamp" VALUE="_cookedTime"/>
</node>
<node CREATED="1397043003138" ID="ID_73770902" MODIFIED="1397067239162" TEXT="RawAssetsFile : public AAssetsFile">
<font NAME="SansSerif" SIZE="13"/>
<attribute_layout NAME_WIDTH="63" VALUE_WIDTH="72"/>
<attribute NAME="Timestamp" VALUE="_editedTime"/>
<node CREATED="1397043185136" ID="ID_25962918" MODIFIED="1397043263278" TEXT="TextureFile : public RawFile">
<attribute NAME="GLByte*" VALUE="_datas"/>
<attribute NAME="std::uint_32" VALUE="_width"/>
<attribute NAME="std::uint_32" VALUE="_height"/>
<attribute NAME="..." VALUE="..."/>
</node>
<node CREATED="1397065493368" ID="ID_1769383623" MODIFIED="1397065703160" TEXT="Functions">
<attribute NAME="virtual void" VALUE="cook() = 0"/>
</node>
</node>
</node>
<node CREATED="1397065841695" HGAP="18" ID="ID_916255329" MODIFIED="1397126906137" POSITION="right" TEXT="MediaFile" VSHIFT="6">
<attribute_layout NAME_WIDTH="198" VALUE_WIDTH="198"/>
<attribute NAME="std::string" VALUE="_name"/>
<attribute NAME="std::shared_ptr&lt;CookedAssetsFile&gt;" VALUE="_cookedFile"/>
<attribute NAME="std::shared_ptr&lt;RawAssetsFile&gt;" VALUE="_rawFile"/>
</node>
</node>
</map>
