Return-Path: <devicetree+bounces-259692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKe2EUAkeGlcoQEAu9opvQ
	(envelope-from <devicetree+bounces-259692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:34:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 971E18F0C0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DD1A302353D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 02:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B04E28030E;
	Tue, 27 Jan 2026 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mTogfLhR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TN80QDSx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9401D47B4
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769481262; cv=none; b=WPXTt1qi30cLaSXCojhxlQLnDLEKMtMLvg2U5YvVnyyD9Y/zzy9HydUgtBDr4aXCuwpv3YzG/MTR3udDHxwZE0StGifG8UcroILsBPq8XcvOtpHpvUTNa+NokqhvH2FcAncDjHNfvO9SMRZVJWr0qbYnMD1MU45mu0cO/L7ZU3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769481262; c=relaxed/simple;
	bh=tJDLY7LJId8IpoDfn8n1WXUfW/N2JxdKsIT0hCxg5qk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h9XtuM7Xu8Nz64WYYEaOWN/206wV4OcZfv4j3mIPQHvGZf/zsovTSV27FB4twMiRvIRL1HpvgxOy2yYmWKFR9+214Ir4sBtjQyv9Qcbyn4XOUwx15PXmPq27cn+8y/ugVbpjT/eleJQzADPiO3goWSw5XpiMguWjISqVHPBjtAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mTogfLhR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TN80QDSx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60QKh6ow3708544
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:34:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AlyBoZIoVqBmBc/HIZd0w9u1HtTltCmF3/e8gfFCH8A=; b=mTogfLhROAiYNiWv
	gTkQ5eRKqKb2QVF9q0Q8BIEYDJyt7Mg13VZkRs3I7o65JebNU1uMvXa0wiaiclo6
	2MR8Xoijo3IQpne7czIqtpJnfGLSJoVA1FY5SIPoLx7uXKl/KJyffFjxUX6kV4LP
	fdwRnqTxsrlofZUppDKH9Xq7BuGJP+Wx0mjsd0Ja8jFzZ0sc4jvLRm16QEEG/pVU
	oe34vqaCtlxkcfRBzipYby2WEaR3BnuP6oeozw8k9uX8K4/0Og35dvIOAlMD9ced
	FIz0bC7v87PvidpK/oyVq+FfJbN+NM9il2YPYgHbCbTu/vtIAOTyadLlGuVnIKer
	072/0w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3bgv9v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:34:20 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a07fa318fdso44383755ad.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 18:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769481260; x=1770086060; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AlyBoZIoVqBmBc/HIZd0w9u1HtTltCmF3/e8gfFCH8A=;
        b=TN80QDSxIBuyhKz2fjxeW0uUlbciL1b6aX3717ZzMZYULci5kFtGAezWUibRJVcIEH
         AnSW0iU6A1fSgenuGaODVrpMy4pGVSIOfkbnZ4WIdFyDTUQOotVe8hh6BuhCozvamDn/
         fX5NRj2Z26lsxzsMUT2BNVaavL45w8IKHQQ5zdNCE7ZB6kwzBg7zN0P6mt3rudXxTTQI
         znBm748JHZshltW0Ss9mvVdSCD/aI50GqOaKfmDYucl+Pe4psUL/5Fn3X2kUz+ZLTfLI
         iK6A3Kx9a07hVm6i58gQajDMVObYzX1Knp2IAGaOA4jGKuebikf25zCL3v8LUf1X09O7
         z4ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769481260; x=1770086060;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AlyBoZIoVqBmBc/HIZd0w9u1HtTltCmF3/e8gfFCH8A=;
        b=Hrb5GOW8yMfJ9yFfpIVUPwawe5ZB/PD2c92E11p8/ijCn9D8TZUmFICISYUBwZyzon
         rphUlbvzAhKvWpDmy6SQDZr82c0oGEXHGHTv5JMVDAqGA2uWEgLuITE1GMNFkX6dAlrK
         HCZ3UcQfo4AeVY1uhJguMyiTn9B/vccpGPDtyAYi40mFA8tRRICX+SrNjY+o/9XYeVx/
         g+jY65K9cmKPtag7c8iigteWaZ3RdD8fB6c4TKFDV/qqg8EwAkHlWxyWoSIM7743UM4l
         qJw0at0aEUkJte5XQ4N4pDPiYmeuieX7KrsYAswMEei+8D++ePEcuuLb/hsHpajsdU1O
         nWcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUga21QHYyL+bJG7KV9BoGgs0aNUvwMxu9JZYv8yyvckbGGkg5k8P1Z8wyk0LhWJgtxC1JkpvfpjItM@vger.kernel.org
X-Gm-Message-State: AOJu0YyLM7MocJIlMLU0st+iw95j2LakUmZuiSEhuHNlqGkhiEsxaJog
	RkQH97YahosvJWcuWuK17OCAnCQfXzeN4g+K7ByDoXTEeXLWKlAe/2SL1+Dq+7AwjxTIlYTTNjn
	RGZK8Ipeo0iUWUM3rfXb1RPcKl+tBpR4OViz9DMlCr9xqDM9xUg5oRPWEX+ny7kaC
X-Gm-Gg: AZuq6aI5mouFJaWoLeuBa1TFjOg+FtwkpPbCBC97e6OWgBLwaTjiqH0NuROCCTGuaYg
	HLTaIX3qfP8UYRsSWtVG2/B+Hm9YbAsJAwnH/wxN83i7VcPyDbdroPk6X9iePiV9uuvsOHeLffi
	4jKBBInk1P/ebr8QA0ewspasbgLU09AbdN3Uj1WoFvAJzXvNOolidGnTiKhVVcfpDANsRguMmoq
	Qejr9JNKVXwORqDJbU8FJeS86V2ar56vH4qwjRMcOH19ba989OKj8lzc4tWifoYcKnc1J7S939y
	dYa06nHwsHxpeV1v+EC5ZIaYdo6K7jjix3ZTsbaJ2d0cy+XXPaLegyiH/5snOoh/DIpEuZZ2gwH
	CbLr4ITb792atVot2egl+rU57FofnErGLkHC4XAA=
X-Received: by 2002:a17:903:2a87:b0:29f:e787:2b9b with SMTP id d9443c01a7336-2a870dd93a8mr3029605ad.41.1769481260215;
        Mon, 26 Jan 2026 18:34:20 -0800 (PST)
X-Received: by 2002:a17:903:2a87:b0:29f:e787:2b9b with SMTP id d9443c01a7336-2a870dd93a8mr3029215ad.41.1769481259720;
        Mon, 26 Jan 2026 18:34:19 -0800 (PST)
Received: from [10.239.133.242] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f97a3bsm98535175ad.49.2026.01.26.18.34.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 18:34:19 -0800 (PST)
Message-ID: <66aae641-a340-4f0b-9d68-535ac296a335@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 10:34:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/7] qcom-tgu: Add TGU decode support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-5-songwei.chai@oss.qualcomm.com>
 <beb63598-a7fc-4e77-a68e-8622fbd93972@oss.qualcomm.com>
Content-Language: en-US
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
In-Reply-To: <beb63598-a7fc-4e77-a68e-8622fbd93972@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 06e3WuXuBOTfOVB9XPOIkI-2O2bEPfnX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDAyMCBTYWx0ZWRfX5WJ+wLkRzKKv
 ZOsrv1Xhd6wVueYJn6Ozq6/jHAKqWqXAC4rHnPfKthgEOk7KJTPiGZ8pi0QhOTBvn8Z3oY652/B
 mQugv/AQbDH+uR9SMqf/h4QcDbyyhfEsIxJ5L/qTiDC0xn+byu85mhgbi7j1Ugmo8pahsteOji0
 xOf2uYsQjpnnyRpJUhVtraGqk5pzG6c94+TAv8Ja98E5fjcuGcgW3C6zgvcNrI7BceNras9nkQd
 ipvR+rOIs3AheeT2JJ5Ub5wMMLCPksFix3dxLTn0C3DqUZVSUiAyaH0wQzfFaOPKK83NZrXkPnF
 kGlZCPJ5DnoKfmDYbl3jES9Y08zqm51fCwuCZ+CcqCVPPBGXX+9vb+mX/BK6bMPtNQBWtORxrvJ
 NVKtCG911WOphNLiJyCanl5dolv8RfyYnCJripR3iXR0w5qfVKnL4nKL3Z25vgkWdn3RtOTf1/G
 BhRcDZ7lY2G+YEdQrRA==
X-Proofpoint-GUID: 06e3WuXuBOTfOVB9XPOIkI-2O2bEPfnX
X-Authority-Analysis: v=2.4 cv=AOFXvqQI c=1 sm=1 tr=0 ts=6978242c cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=M09XoMm3SDISpC_kuzgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270020
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259692-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[songwei.chai@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 971E18F0C0
X-Rspamd-Action: no action



On 1/13/2026 7:13 PM, Konrad Dybcio wrote:
> On 1/9/26 3:11 AM, Songwei Chai wrote:
>> Decoding is when all the potential pieces for creating a trigger
>> are brought together for a given step. Example - there may be a
>> counter keeping track of some occurrences and a priority-group that
>> is being used to detect a pattern on the sense inputs. These 2
>> inputs to condition_decode must be programmed, for a given step,
>> to establish the condition for the trigger, or movement to another
>> steps.
>>
>> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> @@ -18,8 +18,36 @@ static int calculate_array_location(struct tgu_drvdata *drvdata,
>>   				   int step_index, int operation_index,
>>   				   int reg_index)
>>   {
>> -	return operation_index * (drvdata->max_step) * (drvdata->max_reg) +
>> -		step_index * (drvdata->max_reg) + reg_index;
> 
> I think this type of calculations could use a wrapper
Agree, this calculation is already wrapped in the calculate_array_location.
> 
>> +	int ret = -EINVAL;
>> +
>> +	switch (operation_index) {
>> +	case TGU_PRIORITY0:
>> +	case TGU_PRIORITY1:
>> +	case TGU_PRIORITY2:
>> +	case TGU_PRIORITY3:
>> +		ret = operation_index * (drvdata->max_step) *
>> +			(drvdata->max_reg) +
>> +			step_index * (drvdata->max_reg) + reg_index;
>> +		break;
>> +	case TGU_CONDITION_DECODE:
>> +		ret = step_index * (drvdata->max_condition_decode) +
>> +			reg_index;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +	return ret;
> 
> The only thing your switch statement is assign a value to ret and break
> out. Change that to a direct return, and drop 'ret' altogether
> 

I kept a single return intentionally so the function has a single exit
point. This makes it easier to extend with common post-processing or
debug logic later if needed.

That said, I’m fine switching to direct returns if you prefer the 
simpler style here.

> 
>> +}
>> +
>> +static int check_array_location(struct tgu_drvdata *drvdata, int step,
>> +				int ops, int reg)
>> +{
>> +	int result = calculate_array_location(drvdata, step, ops, reg);
>> +
>> +	if (result == -EINVAL)
>> +		dev_err(drvdata->dev, "%s - Fail\n", __func__);
> 
> Avoid __func__.
> 
> The error message is very non-descriptive
Marked.Will update.
> 
> [...]
> 
>>   static int tgu_enable(struct device *dev)
>>   {
>>   	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
>> +	int ret = 0;
>>   
>>   	guard(spinlock)(&drvdata->lock);
>>   	if (drvdata->enable)
>>   		return -EBUSY;
>>   
>> -	tgu_write_all_hw_regs(drvdata);
>> +	ret = tgu_write_all_hw_regs(drvdata);
>> +
>> +	if (ret == -EINVAL)
> 
> stray \n
Sure.
>> +		goto exit;
>> +
>>   	drvdata->enable = true;
>>   
>> -	return 0;
>> +exit:
>> +	return ret;
> 
> ret = tgu_write_all_hw_regs(drvdata);
> if (!ret)
> 	drvdata->enable = true;
> 
> return ret
Will update.
> 
> Konrad


