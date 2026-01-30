Return-Path: <devicetree+bounces-261270-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKvJC+ngfGmpPAIAu9opvQ
	(envelope-from <devicetree+bounces-261270-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:48:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 850A0BCA06
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F04EF3033506
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA3634321A;
	Fri, 30 Jan 2026 16:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W13H4mKm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cqgea4eJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2703B350A29
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769791700; cv=none; b=s1aBlKqlR/nbJjCvfheuofA1ObjpxtERFBxhrZC0RuZaGx2NFny7pHvYTm2Tru/XtRIg75hPJtBSgqWiQjHfUpMEkzitbMWz+5/87zw9AXRioCDBjqnaeOtbpOgR18S0zdP3clE+2D8vCTBTgtKhWfL5o+uW0LAp29sde6b+vLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769791700; c=relaxed/simple;
	bh=N6QuRCuxQl6ImVfAbQh+CsHy+FKWSsDU4kB6BGwOO+Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jv4KKMMpVK4xAKKtzMTwowYnvPWQgJcEUEYH506VwUbY33Bb5lyNmGbqe+dG1l+1v+Hb6JWe3+wq/DELBlEOZL86kMWDsYduSQXgLpegmxjRZFnMZ4Qz5mO6ubhoG4riTszV4746ldYu0zlzq65fTRRJRyVfTE52gF9KFGU/Brs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W13H4mKm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cqgea4eJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UAtUFs995891
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:48:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vbu9QIZOTdKSeS10rf7IDpzd0exUR6tSMgels7gY1iE=; b=W13H4mKm+YYRybe4
	28cW0ei9kIQbI1FAFKjFtYA5qb+3PIkhECUd4HirMCgupeZuK98bzeVDWCYUXCpv
	Mqg5cKDjoG+HVd/ybvSeGTDwedXBfSDj3lgqi8tJJZgA4iXLnvQT7H8MlexuO8Q5
	5D/JKtSS/HzoXaWR+OJz1NtB35lXXEngXDpxe8kGwFPusfwSovD+4r452q2ZLW73
	m9sIliW8HZm9eUrtSbRHCdDxKtNLxqbHSlccLxtAStLk20nrk3Y2fj1Ke4rUK/a3
	csRdkg6BosnhHmkmJrlwfzplCCF0chsu9EaYQwEKK0N2NrB/QXzntbKDAS2huMhQ
	ni9D1g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0bvvkw39-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:48:18 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c613929d317so1488836a12.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769791697; x=1770396497; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vbu9QIZOTdKSeS10rf7IDpzd0exUR6tSMgels7gY1iE=;
        b=cqgea4eJYIHSSajnMpQn+g5kFeNhNKo+meLOO4zA+LN2NpAOQ1AWsco+wDRRnBaocs
         OeCZj6QnZvVY27FZudxYVTH8agbQ3TGepwaEvSf4WeHivvFo9lWnY5QgNH32BHBKxKqz
         kYUWwRmXi4qbxSSvgNgDsb5ZcVBki7aoReDJRHJdFrSMFbZJv13oOfVUmnllXYM9/IUh
         N84eqy/VMhQlM92UIti6aGJcTd0lwty6sGlJGJzTesgobH7XgZLBUqklCeKU2hAKZ2tT
         vY1AtiD6z3BcSaouCt1+ty0NYVhZ8q3HshEs3i6Uf/qYCIq9XxKxtkg5Bv8XoymyedbF
         rtOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769791697; x=1770396497;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vbu9QIZOTdKSeS10rf7IDpzd0exUR6tSMgels7gY1iE=;
        b=uaeT15EwKoyHYOzaQDgCuXlP/IYPbOsWw3mvEFy7qLCZi7cS1xQRKOuzCXrny2QMOW
         qv1x59IbXfSXH7izYIQMWG+/67BWou3ldspP77MsF5F83HorpAb2G1WrNeF9EvjjvAPX
         YbLgbz3roSa/i6sdWIw5iu1XUITPMmsns5L0obk1UqkbqJ3rhJSsI7Mczx/UTpgjpkxb
         DHj78/zsjSyw0eglmPs3W2EALSY9UQAAKSKpD2QqV3aRLD0W+dgyDLP3tFlGCQlBTJw3
         vdEmEeggIYpij25pKxSF2/fVokhI9OJBIl2nhRbbAdJryuyfoisOWuD4e7VZrOSRRifl
         SHdA==
X-Forwarded-Encrypted: i=1; AJvYcCWJ3E0Vk/7nc+1lms5Z55y8jC3q8fBrNXJlVSkW4NDXsI2sj95RdR5wpC7fjUaOm8neCg+ezRdZAuQC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1A8xW06vtlOD9Gy3u493mejKq3EMTe6g6n4W9A4ER0Eqj9qR5
	jh6487F3RQ20EXXF1UF1vL8O22IpKIs66YYL3PSemq8Y8qtyJ07LDfH40ZXa5QJI4TWIqNifTrq
	+vTDIjJ9HdGgIsfLbT5ve76/HikmxSJ+O7THInM931kEmNpEzvdnYYLLQRjlscSo0
X-Gm-Gg: AZuq6aJGv0hXIAhx8ve9t1PbtkjEaBkIFvDGtLpiZyiW77oqY/7gIWbnI6Di+zYUeo8
	VR+myEjQC462z0fijkAxwtHuaLEvUxH635xPFnw2PCB2W7iN6Zce0+ZmdWlMwzzb3iVsUzGrDGU
	ULhZan+ca0cduIvoSnI/TwASJY6/IleBhgkf/v6vm18qsZ/aYRT2CBPJz+aAS98DIeKRLdwZjEL
	y2Xp2h1qG1GbkdQ+MpZ5Gd4sfgvOm9tpbjcJr0upKau4KspoeBvkckw9N+XYjjj6TMc6nWW1DY1
	15bD40ON0CPh61tc1C4+9pOk98G97Yly69j9VRHudElmDQ6p/R3B3XfN0q1qBuIs1MuzQajB3gf
	jGZ3QfPaRHyYVA4c45hqg+zZ8w9/bjrWjGmwJGLnp
X-Received: by 2002:a05:6a21:3296:b0:352:3695:fa64 with SMTP id adf61e73a8af0-392e0108c53mr3428368637.37.1769791696988;
        Fri, 30 Jan 2026 08:48:16 -0800 (PST)
X-Received: by 2002:a05:6a21:3296:b0:352:3695:fa64 with SMTP id adf61e73a8af0-392e0108c53mr3428338637.37.1769791696400;
        Fri, 30 Jan 2026 08:48:16 -0800 (PST)
Received: from [192.168.1.7] ([49.204.111.90])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642487f1f5sm8558392a12.0.2026.01.30.08.48.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 08:48:16 -0800 (PST)
Message-ID: <e887a7b5-d2ed-435a-9961-5a64b0494351@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 22:18:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] i2c: qcom-geni: Use resources helper APIs in
 runtime PM functions
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-11-praveen.talari@oss.qualcomm.com>
 <ce78b376-b581-4053-aa23-4f41ea0d140a@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <ce78b376-b581-4053-aa23-4f41ea0d140a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZdEQ98VA c=1 sm=1 tr=0 ts=697ce0d2 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=10aD+GSAjGS7IfLbEAHBKg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7loHADMVyoySppEGI2kA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: -0QlGWANuUvHcA__Iqd36MfFyyAWbsjF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEzOCBTYWx0ZWRfXwR1gdoF3uwIe
 SDwDkcDmhMTiMCPbTk2kR2CfvnzeONtv7iWAITqyd17/UMl74RuIlAH8BHcLhuuT4fKeWMIJ7C4
 Flq23UXE/p5tzcXlg+d/lt3dfYUBoKHhkOYs0/RuV9Ez4iRu1oFGm2oHcfAlPyWyPgP47kVacP2
 u4vtd6FpHbFprZimk5RRWii+PFagMz4ZPcGINHSC7/VwbgAWPUuKrg5mqVgj8AJYFKTn0W5rBGd
 9AMPXxdlc+mml2dgQGQ5ZZIVRhvMtS4R6sQx9pNGR1Hy3twdkuxHBdMClStZQcRoIQNB+bVWeCG
 vT/Ez9RlksSN4meCfTJ1CJxlQIY29ZxESyK43kRzZeN36L/kFsn9kjNL+gDoEHziMfzKcn2udku
 cJoPpyQth21Ivkl7SBPeNRj3tvjI4s+AahtjLNYj1KwtX2q7EUjejVIt27nwia+CWLJ5uZakVar
 L/NaCWeLmbLYZr25ecw==
X-Proofpoint-ORIG-GUID: -0QlGWANuUvHcA__Iqd36MfFyyAWbsjF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_02,2026-01-30_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300138
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261270-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 850A0BCA06
X-Rspamd-Action: no action

Hi Konrad,

On 1/30/2026 5:35 PM, Konrad Dybcio wrote:
> On 1/12/26 11:47 AM, Praveen Talari wrote:
>> To manage GENI serial engine resources during runtime power management,
>> drivers currently need to call functions for ICC, clock, and
>> SE resource operations in both suspend and resume paths, resulting in
>> code duplication across drivers.
>>
>> The new geni_se_resources_activate() and geni_se_resources_deactivate()
>> helper APIs addresses this issue by providing a streamlined method to
>> enable or disable all resources based, thereby eliminating redundancy
>> across drivers.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
>> v1->v2:
>> Bjorn:
>> - Remove geni_se_resources_state() API.
>> - Used geni_se_resources_activate() and geni_se_resources_deactivate()
>>    to enable/disable resources.
>> ---
>>   drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
>>   1 file changed, 5 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
>> index a4b13022e508..b0a18e3d57d9 100644
>> --- a/drivers/i2c/busses/i2c-qcom-geni.c
>> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
>> @@ -1160,18 +1160,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
>>   	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
>>   
>>   	disable_irq(gi2c->irq);
>> -	ret = geni_se_resources_off(&gi2c->se);
>> +
>> +	ret = geni_se_resources_deactivate(&gi2c->se);
> 
> This calls dev_pm_opp_set_rate(se->dev, 0), dropping the performance state

This does not apply to I²C, since I²C lacks an OPP table, so the 
callback is only relevant for SPI and UART. All the refactored APIs were 
added as generic interfaces shared across I²C, SPI, and UART.

Thanks,
Praveen Talari

> vote, but the other function doesn't have a counterpart to bring it back
> 
> Konrad


