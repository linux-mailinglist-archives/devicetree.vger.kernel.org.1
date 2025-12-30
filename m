Return-Path: <devicetree+bounces-250453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1144BCE920E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 10:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5EAC3027DAE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A54D26F2BD;
	Tue, 30 Dec 2025 09:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GuHBd3YA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XfJjIM7s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D9D261595
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767085398; cv=none; b=XRNQuit13GX3OeWgYIuOTithN5h4WdVX14NNVriEg08jgdu0+WVfMqvE3dVlkDLBDwxnfsuQFEod6g6Gp/RZecuPHyxmyFxt1lDYZqkEn+VZlbh9WjIdFpIAsUGpMS6k0Kl8BgjzpyFsYNQ4+rRMKbMz4+4TGlEP+qVD2O0MoMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767085398; c=relaxed/simple;
	bh=4GBCj0hU48S2+i+MhfdDptBgFyH3UUTZ8+HpufexFM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kKbQmkMquXpd5JJL0iDHaH56tplnZIdESnJOvP0rIAREDwyzo8cbXn66Ihwe/kN7e05p9QLic0eBodKe3uNZ02u7tlWEvnVuxRx7onqDznxd99DMD4Ekp7SJopG6Z/aN/a2mjNozJesP19Twgujep2rxtYev6cB47KObkZWw7Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GuHBd3YA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XfJjIM7s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTLoYG62392639
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DZ1ZUU929l28kU0e3CGefBDE6aEb96VXDtF+iVlBDlo=; b=GuHBd3YA/Jvc5Qp/
	hq/XuTVq0m0wQkwKecnV2wxcu3KmErUz1T1cqUUabjQ2dHM4MnWfxi1KW7BHNRE2
	37YQ/Kw9YEXKErrcXTSgktOMNhPaMW7RLv15yt4K0EihUGDokK7K7/DKHDXmnlxf
	XsKqidtNeGj7fWGPwCCiMfr9wx5gzfEbWIF5RTX4Og3/WoRE6WjHH7NaVLeOyWin
	0umS0myHLkf8G9HYhcqMMRiwHO6aCq2MrsB2yF9e+eJFfT1hDXdiQQ7Fy5bW73wz
	y0U7Jd+2vexuI9zyaNmanlh149ZkhRQ0hqbfVNIdmGj08cVWtIcCMz5TmddRWRId
	EV8bEA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbqk1anvn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:03:15 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c1d27c65670so4964565a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 01:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767085394; x=1767690194; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DZ1ZUU929l28kU0e3CGefBDE6aEb96VXDtF+iVlBDlo=;
        b=XfJjIM7sPOK2gxDKfyrDr6W9w9BlvsIfvwm6WsOZ675qluoGgjD6Ws8I1Cs7tUEQlB
         df2or3yeZQIdHz2KlZ5WXo8FqYREGQ5q0FGOHnYmoFJBQWsKgc6ZxHroAHCf6znNCw09
         oaZAhlbOJvaQmilyzdmnDYM644+HgVdrhwWmsQdEcQHQUKs534bV5urOJV5gOvHKh57B
         oJ2W9hAC6DqgDSkTPhA9EdsJM5gQo8RbvPbjKAFWdl65H9pzGUjBpKO31kEFDJ7wiPlp
         Uta0IIk1f++jnPRdMfcUt6X1X/evzCl+WcD4pifV34KeGl4RAMG9NZQ5tgNhgLuFDnGZ
         5Llg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767085394; x=1767690194;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DZ1ZUU929l28kU0e3CGefBDE6aEb96VXDtF+iVlBDlo=;
        b=o3WInfTp5MQWRSkJWXjoAGfOJgPPtbj5x5pLpnsY2DiV3XoN9QPvZHqrAwF5wzTy1E
         qfrpCRiNQTCL4XmlbvWcVACMb4fpk5hTVvFrZGdL/omuOvUQSd3TJc+4WFadnE8qhedW
         EvbIqPhBsuLmwCuNSBDXRlb5qw4IFxzpG4XVqcDTDshsK5BbppbrgRKO4pzsyyjNNRpT
         4IHHMAQkqN39fwuJSn2eldihY3gAldbqPLVPAf6ZfxXie50wkoclLgKEkfxIhFCHKMKc
         zxOIiIkMxopMB7OxqPx8342C7nfUAlqed14Kr/3YQxAUh09F+PoP6N12bS6oDt/YvM5l
         rfWg==
X-Forwarded-Encrypted: i=1; AJvYcCUNrhCSWggDIvGr+Cii5yEHjuk2/I+Vsefb7yigjvFJdnFpkSb3MoHzEG63543TfoHBmgAE9rw2jime@vger.kernel.org
X-Gm-Message-State: AOJu0YxgIv8fUuv4XDzfSa/tmH1lmNUIER3Zbu9x9sNAS5rZSHPl5Pjy
	3UXfNgcV12CEXR+fq1HHuat6OYnyOZsWxh7cPfuKxIQfCJQebs1JL/UsVMHRQpwU7/NEVLQtO/6
	M4VBPf8deVUp1NDLws4KfgIVAB9BAaW/AgXkErGyD/Rejb2UaphU9dUQ3TpwuE6WGsyAZm05I
X-Gm-Gg: AY/fxX7pHp7RR9LB5td0rg8G5E+Riabk9I07PrL730gQSz6T71f9DrEukA3JIEzlkzT
	TzW6LH+ASrB1yHGjyB9LVmi0XFtq92ns28GPxfX7BIt3iJScriWVzQ/0/VdRQFRPUuff/uTYfAW
	+YMZdExs2tZADgGL8WFQX4Lld7FwCtFRLD9WCc4Z2uxzPVN2YD6UUNQYhepuM9khMPOTY1vCDMv
	tNAIx9NmETK/p74fUgqw347H0tC+hfW05BBt8xNyvGhl9zgEWuGmG9+idIBEhgE9f1k81Wtmz5q
	P/tolK4fGlrEVRjiqWBsCB+LEgJl9Vqmqlh1aYLx9Y8aa19sfofADa+lR5cHVIzidqjvKHAH2qy
	d+s2k5yEPSDzInllgsZf9tnnGSd2PN1Ak7iJtaaVhRk5J2g2YgcY=
X-Received: by 2002:a05:6a20:1588:b0:366:14b0:4b18 with SMTP id adf61e73a8af0-3769ff1a89amr34483846637.35.1767085394486;
        Tue, 30 Dec 2025 01:03:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbAGF2db+VKOhlDQMrg8j2Qk0RrNBOlo/z6NG5BVl4tukVcG15xd/QngN7ITvfdf94rAAulg==
X-Received: by 2002:a05:6a20:1588:b0:366:14b0:4b18 with SMTP id adf61e73a8af0-3769ff1a89amr34483814637.35.1767085393974;
        Tue, 30 Dec 2025 01:03:13 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7961fbb9sm27338846a12.2.2025.12.30.01.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 01:03:13 -0800 (PST)
Message-ID: <28751331-d298-4cd6-b98a-c125e3f75eda@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:33:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for hamoa
 SoC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-4-pradeep.pragallapati@oss.qualcomm.com>
 <986facd7-92e7-4d29-a196-d49cd9f3d35f@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <986facd7-92e7-4d29-a196-d49cd9f3d35f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: o7WC7xWcuwz2j9eES4hOfp8zsWnlpp9A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA4MCBTYWx0ZWRfXzjIjRtITAsbg
 yv1iHwdO0PebtDrsqnwsC2Nxlkiv/XOD5yTdHnXqDxWgN4PoSnqdMXRcOwNAyHPygCrjr3++pVM
 kI5I/1lS8fP6V4uOBU1/3rBxlbVU7KCHGw6ezqweh4W1tDEvSLjYkH0MRmG9Z3hAgomhuv5KY7O
 mBu+hhv8kAiaeFYjCwbB/hcwmj28DrgEDOsbQ7EqvnnDc0eMp87rn6SHI8XsnCmU1gf1tmM9Zyu
 gHd3h64bNYMoBg/raOIK2IVapWusYjbzdMTpHBHwAjvq/7Y2WE9YHHJ9muMegjiJRfC1EmoQjwE
 9bUOfdUjhmM5vqL10Ut7vEfri+2HmtM4vp1FogVSWVLlKO9lN/vi2PuNl0lNxnCyAXMVU0bwJIr
 fewB4BLBf5HDxyCdvMho4dtYoNClAPUdmmLsqsa4kY1hi1laPRX4WHgVFjB0lPAOR7IWX0m5Osd
 FCNnjXcz8vhhTcWCmLA==
X-Authority-Analysis: v=2.4 cv=Tf6bdBQh c=1 sm=1 tr=0 ts=69539553 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XVHmVgbNHDG9-czVeNYA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: o7WC7xWcuwz2j9eES4hOfp8zsWnlpp9A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300080


On 12/29/2025 5:45 PM, Konrad Dybcio wrote:
> On 12/29/25 7:06 AM, Pradeep P V K wrote:
>> Add UFS host controller and PHY nodes for hamoa SoC.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 119 +++++++++++++++++++++++++++-
>>   1 file changed, 118 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index bb7c14d473c9..340b907657be 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -834,7 +834,10 @@ gcc: clock-controller@100000 {
>>   				 <0>,
>>   				 <0>,
>>   				 <0>,
>> -				 <0>;
>> +				 <0>,
>> +				 <&ufs_mem_phy 0>,
>> +				 <&ufs_mem_phy 1>,
>> +				 <&ufs_mem_phy 2>;
> This patch cannot be applied as-is (needs GCC bindings changes first)
> which you didn't mention in the cover letter.
>
> If it were picked up, we'd get DTB valdation errors.
ok, i will mention the link to GCC postings in my cover letter in my 
next patchset.
>
>>   
>>   			power-domains = <&rpmhpd RPMHPD_CX>;
>>   			#clock-cells = <1>;
>> @@ -3845,6 +3848,120 @@ pcie4_phy: phy@1c0e000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		ufs_mem_phy: phy@1d80000 {
>> +			compatible = "qcom,hamoa-qmp-ufs-phy", "qcom,sm8550-qmp-ufs-phy";
>> +			reg = <0x0 0x1d80000 0x0 0x2000>;
> Please pad the address part to 8 hex digits, so 0x1d80000 -> 0x01d80000
>
> [...]
ack. i will update in my next patchset.
>
>> +		ufs_mem_hc: ufs@1d84000 {
>> +			compatible = "qcom,hamoa-ufshc", "qcom,sm8550-ufshc", "qcom,ufshc",
>> +				     "jedec,ufs-2.0";
> 1 a line would be neater, perhaps in the node above too
sure, will update in my next patchset.
>
>> +			reg = <0x0 0x1d84000 0x0 0x3000>;
> Similar case as before
ack. will update in my next patchset.
>
> lgtm otherwise
>
> Konrad

