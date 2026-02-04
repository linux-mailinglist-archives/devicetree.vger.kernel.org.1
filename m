Return-Path: <devicetree+bounces-262501-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLP3LWfTgml5cQMAu9opvQ
	(envelope-from <devicetree+bounces-262501-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:04:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 452E4E1A71
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 06:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9038C300C0EF
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 05:04:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E9B3502BA;
	Wed,  4 Feb 2026 05:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JIdDP+2z";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OQG6tyH+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C619332D452
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 05:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770181477; cv=none; b=Ria8E0LQrx7F9Dn32LMPvAO3pBSdAGKtYpw5ZxHzMsI/wsnqBk4lJ++qEo2AcHh7vDFyCB97vGrciZ2EENLHdqIk7rmPL8Ae3wlK/yXLoUECZ8iQDipTMTZ59YfKcf0df0mK7PIGhll6+cixUQ0vfJBawi68Ib2LepS5s29AX0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770181477; c=relaxed/simple;
	bh=XmFJIuFS/wd5AVgYfDUJizB7VVk4Xa+TsalDeRCDoW8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jLicXEOANYz2Bd3BWhVTbiUAM+mLGxI3jBCeKwcSFZGG86X2RgDtjKlUTOPIUpVx2bmCOnjx+6OMkaIIc2TGgubtM0X5VQVH6bzyZAZ8whRG7w2D1Nks6/Cf8zTtuinNcPtprDPshtBuqEYpPTuJXhOIt62IFp5x2GOi3NOcMmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JIdDP+2z; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OQG6tyH+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614530Ao2667049
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 05:04:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xSAiik096X5jYd7cFTlpkzc3bCH7olj7yaJbqdjszcQ=; b=JIdDP+2zh0G3cinc
	xCiDivaKwRWrpGbRtE0pBRjmA+/EVLUC3ZsS/TziqhA4vcMlP1y/9ffLsxEytEkU
	a9ZX+AGRm73YI38Si24xFkJRQUsoJ3pTdThfAP66+fbI0qevKaPq2UUlwezgKEvp
	X5gkQS7YhPXMw+UyPAn2WVNL6WzHT10dTV6o6UnC87j2BXSGZwlCDDsXON/BLPYc
	Wcs78sqQ/ukfdSIwD8Z8I9QtqhyQV+ztMIpRt4Tu9wQPoJN1N0SvNaq2TBmHi0Se
	+czWIOl7eDIYqGLkXMrc2astUbcgBuqOxBud1dJ8WwKk78jHNhJ69N88Gb32vzM6
	jquA5Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3nf61xea-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:04:35 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0b7eb0a56so57766595ad.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 21:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770181475; x=1770786275; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xSAiik096X5jYd7cFTlpkzc3bCH7olj7yaJbqdjszcQ=;
        b=OQG6tyH+HJnNvh8V00TtMGNWevbAbLyzj4vhc+AeSn12ZbLFxB1Kmh4dR4s5ISVxli
         3U4mFFPO26Vo8Pftblgw8r1O0vg/3pT0nAFmlP0v5zhpbld9S8sToSJ8nmvi27ZtrHtL
         L3fy8fwlbaQBy1wUSVomkJblqMib9CXSQnbPCPBwOa8l9ojnd6yxu2zcubBHBUrYiDiK
         KXKb6awW42uZczoWGx7IzRwlX2CVIocQpi3E57MoK0QHJq4t7m7uwmGckhsi5a61qGxf
         3IzHPg8/BwPSKdxx+ToJ4JlEo3mt7ThRdkJ0lFpdDWBFvjp9YO8uK4U7sCjW3nPR3e1F
         OlZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770181475; x=1770786275;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xSAiik096X5jYd7cFTlpkzc3bCH7olj7yaJbqdjszcQ=;
        b=gwQvN/SEg26gLpL537W3tTK34ALDFm+Yu5VE25L9OVn2MeCKl5pIg9lQCibOQ2N52I
         kcl1mVDmJ9cF4eeeOIYD20AafqvYN47VFHLoxLLPdOu3nZhuLb3e7wUnoQV0lPM9mlXt
         WVejf4eol1Bg84lSp5T1OCCwSeE4ObmLIXBCZAPL5H0koT9u+ly8o4L5MAmc8ls/Cbfj
         KNRyo/QxNC5qzdiVfz+etmlgyF/NZzhUr5xih8kX251ChtjcaZpaQ8v5uvPLSRA+rKmy
         54bZVniefSMWcseGzftmR/kWCKiIkbRa1Vo1BwkP8qJbkYN/haAJ3uiH38srJjEXG6OJ
         nzZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwnP8PZHs9lgTVlt7vhmFm2PqWFnZIgozj7kGRWef6e5tmP0vselOoRkg6UgVObwNpyyik4RYSXYPk@vger.kernel.org
X-Gm-Message-State: AOJu0YzuLPv6Gh19otn6Ym7QbtUUdvPfZHUK0g3R4v5TNc67XqeYVI61
	T7/RnUzwCdsplUJxDhJ9YNx4eOdmW/MZumE0it3sxEaFl7DpOvYIHaKNEk4zeqrA7iFqd9IlYY8
	muh74dO9VEzX4Aq8U4qpMLcvl/9vhdd6emPj0nzoBhenHvu/oK9RfCJxSUICPWYgP
X-Gm-Gg: AZuq6aJtgpD0Ug+mH2P4J2SpvpQELWFPskiPqvtAYMpTIGogPTFWPHnRAb+xiluYqeD
	uzJviLWInoQyET8KXaBDezBrIV+w9YVkvTT3mOb3VvKUw1a3n+AmUgqDq/uaxy9cFrM3WUSMHUi
	2CqiJ4p7AEpD6BmkBAp6kIxIpAyFJllrnc2v3aIEhjDi1crlHhrExLNuMJAFkp6KnxXih+5KGxH
	ItfE0UIp079VHjJW0W9B8jdDjij7DIzNAlrKFfz1K41a21AdvKB5eCngKw6pgPzXtcFXhDE4NcO
	dArWzpDTccN/RVttfF+GmkoCtdBzT+QDNqyiYBtsn0QzF4c3XFrI3QzcPCZgTh3h719UWYm0/+A
	9NyHRLRG+gdqc82M1b3rM85xOGR1hUZjuSzFRJz0g9g==
X-Received: by 2002:a17:903:3d0c:b0:2a7:5ad3:79eb with SMTP id d9443c01a7336-2a933fa63eamr19784955ad.35.1770181474807;
        Tue, 03 Feb 2026 21:04:34 -0800 (PST)
X-Received: by 2002:a17:903:3d0c:b0:2a7:5ad3:79eb with SMTP id d9443c01a7336-2a933fa63eamr19784455ad.35.1770181474231;
        Tue, 03 Feb 2026 21:04:34 -0800 (PST)
Received: from [10.218.32.171] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d468d73sm954264b3a.49.2026.02.03.21.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 21:04:33 -0800 (PST)
Message-ID: <cf2b7624-eaf9-4ba3-9b2e-81be3adbb53f@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 10:34:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/13] i2c: qcom-geni: Store of_device_id data in
 driver private struct
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
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-13-praveen.talari@oss.qualcomm.com>
 <df7cbe46-153e-4959-911a-14600b3bea21@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <df7cbe46-153e-4959-911a-14600b3bea21@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: qJNGXSUoefcVsBfxfrjJ9Ek4lnwTU1Z7
X-Proofpoint-ORIG-GUID: qJNGXSUoefcVsBfxfrjJ9Ek4lnwTU1Z7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAzNCBTYWx0ZWRfXzaKxyhIPw8KY
 jqlnDGZiO/6ItW9QCPjonNnz16wf3sZuZqWAlS6qDRfnGxCpVZyq1xteabpTiax05sXCBNGaLT4
 B5ptJ/aZo8spnIW9vvUZFXENFw43hcsuykuLLycb1tmY2d1p6HRJ4qK17piZMhWkaD9s3rBaNpr
 /Xz+l2JucUkM1IRgbt1y4ZgGSkExCRFkqkCt9ZO07hRq2aC+x3ekAs+H8Y+PJ7YYXlcV0YudxnI
 x4JJTfwqF58ID2iYn4UWcnF5v2ioMuGCcFFG95i3H5TtLFvoJRJCByi6XfDeO/nDI8EmyU5TU/c
 ZFo9FrEcO4eIcra+DtZE0brIg91OB5Dm7qYt2q8AbaIr58q8FKg16Y/jzYnGsmwwe0D0DbaSHBN
 wcQcoan3Rxsgtppd3SXEYCWb2ygsAlVA6BBTzyvdO3tq5olDq/pyO88oed2/Dwyp4HJQ2+poqSg
 oX12nHbr0nAkTwjsaZg==
X-Authority-Analysis: v=2.4 cv=doTWylg4 c=1 sm=1 tr=0 ts=6982d363 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Xoixdy55EFV0JJdjLs8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=zZCYzV9kfG8A:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040034
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262501-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 452E4E1A71
X-Rspamd-Action: no action

Hi Konrad,

On 2/3/2026 5:55 PM, Konrad Dybcio wrote:
> On 2/2/26 7:09 PM, Praveen Talari wrote:
>> To avoid repeatedly fetching and checking platform data across various
>> functions, store the struct of_device_id data directly in the i2c
>> private structure. This change enhances code maintainability and reduces
>> redundancy.
>>
>> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>>   
>> -	desc = device_get_match_data(&pdev->dev);
>> +	gi2c->dev_data = device_get_match_data(&pdev->dev);
> 
> Because you dereference it unconditionally later, this should be
> null-checked

Initially this was added, but based on Bjorn’s comment like there is no 
possibility of getting a null value here since we are already adding the 
platform data to compatibles

Thanks,
Praveen Talari

> 
> Konrad


