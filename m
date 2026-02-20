Return-Path: <devicetree+bounces-266915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YD6ZDiNBmGneDwMAu9opvQ
	(envelope-from <devicetree+bounces-266915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:10:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B54D41672A1
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 12:10:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2EBD3013A86
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04F2341ACA;
	Fri, 20 Feb 2026 11:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H5SNVp2N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ig3l85AE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91141341654
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771585817; cv=none; b=O7s/i3TerEYy80tY10Es1yBalzeJ5ZWh6Ww5kIRwFZJFd7X5Ltdvw4e6HcgGlXjirpJnpbyOwRJyFFnkHonCgtuWv+dOfqPA+NCPTJeoRUWPYHg3Et2CUFNLj2C8FXmUDA5khViUKsL7FnLPRahXAnpvc94hIQZAmvubdQmYtUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771585817; c=relaxed/simple;
	bh=YFTx5JzO6hdif+NXdu+tL2OXihfY9pkT1jOqIFlYlrc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uFDPYzYxprETETnXnJsV0Zlne3KYDF48cGCrUeO9USpLA/rGMaewAIblM1en3glfQj5wbQNRa9WDBNyqnS4NtFB19XwJtgeYQEUIWFTGkDUvt2Dcc+MRlVcI7ATBszZ9TnfTcNlkvM5ifHc2TJHsLEnDs+DD7LdmRMxjJvCWtOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H5SNVp2N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ig3l85AE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S1Xu1805928
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:10:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	61/rCzwORZndLIGbcVlI50UTlMsefy7X7t83r0iNUjg=; b=H5SNVp2N6TMauYtM
	Y0xl0mpNNWsPLCYvcbHKsCS4fcQ1pOVbrsPu5Kra7+z723yDfmTMZSzeJuf5Az01
	DoibhWoRj65fNZYPZNt94Ji2Ni/WibUjowsqaSrnm4EfFo2B8/ZVxk3nqyMQyZ+o
	IpdDvkFgpRpsEuZgyGcUIymP0icrfQ84DtzjWX4YdSukSIMPwfHJ7BnAT3PYDmwG
	WvPTIwpr67NgxNLVuk/307I5IKNDz5N61iZiKwAc98dKfhFipM8VaQMV15VkpDLK
	QwwUfAs7dWYZfaU9Zlv9y5Fgox02tZcG2SLBqyCyW+aQROhpSBYZan2d7Sp2mIDM
	yZr7TA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedsnsca9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 11:10:14 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354bc535546so2256050a91.3
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 03:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771585814; x=1772190614; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=61/rCzwORZndLIGbcVlI50UTlMsefy7X7t83r0iNUjg=;
        b=ig3l85AEGzykl1lsPEbW0OmlFQZuGDY2JKU0vLOJJ4x/ASkhcsa71hGM2L1cZPYoRL
         ieMdrEPGVKqi+BUdwV0SpIpGFJ44ZWyIMxLeHKVogA6dBgg+fkoT1aGwJhxd2/KMfNHG
         xS1O39S811FNBMZlgPPNuTSbZm4QbLhIv6zosf2V6cUXLh2BM6Zd8/pzUDbEiv2oJABC
         IocyLumMi8QQeh2n7iWZkvZDeYCVjfIlxL0u+iKfp51mkWfx0ziDs/fk6ft2Dm2b+JaV
         tJPSAb/h8bAf5Xz3v3LUXPLSWZO/cqzI0XAU2BQJ293cDWVnmsl0oWv7UjEk0hONJU8x
         iuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771585814; x=1772190614;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=61/rCzwORZndLIGbcVlI50UTlMsefy7X7t83r0iNUjg=;
        b=X2vIVUkkBnDvVynjeUvaaE0e0IugQFjuP2c4VemtRMHQYoPR4hSXFhmpZXRvKSfzLe
         pDf3DfP+rBst+dd/4w2XZ0crPpkGa/p1NCvJUv5+FHpHlNluysBD+euBH4x0IXqF3YJU
         WOkKXFWLtzi7+QTIMQIYQ5wiyj38ZdhrRgfwS8mzXTR2fCv+fCuq8KrQ5deADCg84EQf
         Tq1rY0e2DygdSrAwTWh8ZcDq0sjzYlQ4ydl/IgrZerRJhUbfWzW71vN+cdvF+UYUfkYQ
         Kx70ztC3DLgZRrwrcBQVBrBHxxwqVzm5lFwyGKEX6haqyFApE4K6Io6vIumNZOH6VedT
         Ko8Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8coTOOn/TMahT435ACfj7yQAFDZOYVIbYY15JtpAs5mx2PflGKL0OxCozhlmFdyszeeUwTWEb6gRC@vger.kernel.org
X-Gm-Message-State: AOJu0YycLe2x2nhlrxrmQZpPmwJhMMNbKWvLWGkOKeV1XrWFBjX/ZD9h
	mypvFzKI8Akr5uhdQ854dVaX0aZRopsxKkDoIlFpQFea0voi3s90CRm0+CobD+udqnkHkdS1IgF
	gtIjx5P9g2BisljiTi8hbdEW0p53BQLcZUNy8c2YKrOxeqVgxWdiNmMZLLvDdpCsl
X-Gm-Gg: AZuq6aJRInU45zXmq+v4H99myBBnZ1D0n+NWGAEdCxdVc/BpU+nwulTZ4DfWNdPOUgZ
	0idvwH71VQtSPPtRV4PQSJYd5ibSQeyZVs3iQPNw+/ifIBs7Em2KEzzlGxNhbN1L9KrF1kUZiho
	+vp75uu4nHk0PErSrffAaw+FbQnpuhTypfDnDC2Ti7WevWDMCDW4zyUcTzMeq7RzMd4EKU6vLbF
	tl5ckm8Yswu9fM2gIunUzN2anYzoJ29CSjLzo+kwLQd/vQpk9F6MOurZLTZbKzp6rdzyjGI4/98
	HBielQkXQc7LYQfYzgltD36t4RdRJbf52EY5d8M6Ild/zvuIfNGUJW4EG79D9Xe6qpP92+QOab1
	XWxjv7rBUb9BUFRyau7a2L5Qch58Zwp4rpuOx7MoiboFydiXI7zU=
X-Received: by 2002:a17:90b:50c6:b0:354:9bc2:8821 with SMTP id 98e67ed59e1d1-35844fc80e0mr16533645a91.30.1771585814216;
        Fri, 20 Feb 2026 03:10:14 -0800 (PST)
X-Received: by 2002:a17:90b:50c6:b0:354:9bc2:8821 with SMTP id 98e67ed59e1d1-35844fc80e0mr16533620a91.30.1771585813739;
        Fri, 20 Feb 2026 03:10:13 -0800 (PST)
Received: from [10.217.198.242] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3589d81cdbfsm4059185a91.7.2026.02.20.03.10.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 03:10:13 -0800 (PST)
Message-ID: <0f566afc-27ca-4326-a83b-aac92ba50037@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 16:40:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa/x1: fix idle exit latency
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Daniel J Blueman <daniel@quora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260220070204.101672-1-daniel@quora.org>
 <8e670f28-9a2e-4495-9b84-8b1d9c0542ba@oss.qualcomm.com>
Content-Language: en-US
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
In-Reply-To: <8e670f28-9a2e-4495-9b84-8b1d9c0542ba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA5NyBTYWx0ZWRfX0aZGPH20itvZ
 LnDVNurbs2nGdTcvBX8vxI9XVUxUvCrSr0Maj4YucCefJzkGEEk5GJ2M3LbJZUGsS6Sa7IcbG3Y
 QdxXX+cAAoe7cyJfEfSPyAqyJ429NFjLEWKlPNZ53UgdH1V2KJLggANSLSDkQJq6EIjsbyS66Nn
 jfiagqFegbA6cDRtYRdVZxnYDeOjGIAPwfPcCeZe8wYtKS6/UMH38DMvidWnrbR4GVKOE6iYVBF
 MmgFzI+E6wq+ZKPbmyb6866LtSfbXPTkHoB3vXAVr0RMMRRCx9diVIHwbOV2EFiZZZTkLeM3Njt
 BSfUDcx7Evn1YcaXO+oCdpTAawS3drtFFmk3d4QovhwRy4m3FDJN9FA3tvaxlbbhVosjPYtUZED
 4IL/dhRNbUFzuxHg99crjc5wfWgKwdUC+en9W0iIiVqk3aEwFOZ5A2ClkRTv1VyFus3AbgJw7ut
 fm+y4uX+VBYD9j0ts/w==
X-Proofpoint-ORIG-GUID: B8nMszvpeGy8uKZOmtsEJCPjScTl1n3e
X-Authority-Analysis: v=2.4 cv=JsD8bc4C c=1 sm=1 tr=0 ts=69984116 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=t9ty7G3lAAAA:8 a=WuxQf6WQNWpv0iiEd1cA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=CsAS6f0m0zARWR-uHzm3:22
X-Proofpoint-GUID: B8nMszvpeGy8uKZOmtsEJCPjScTl1n3e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266915-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B54D41672A1
X-Rspamd-Action: no action



On 2/20/2026 3:11 PM, Konrad Dybcio wrote:
> On 2/20/26 8:02 AM, Daniel J Blueman wrote:
>> Designs based on the Qualcomm X1 Hamoa reference platform report:
>> driver: Idle state 1 target residency too low
>>
>> This is because the declared X1 idle entry plus exit latency of 680us
>> exceeds the declared minimum 600us residency time:
>>   entry-latency-us = <180>;
>>   exit-latency-us = <500>;
>>   min-residency-us = <600>;
>>
>> As 500us idle exit latency is overly conservative, fix this to be a more
>> realistic 200us, in range of similar silicon. Tested on a Lenovo Yoga Slim
>> 7x with Qualcomm X1E-80-100.
>>
>> Signed-off-by: Daniel J Blueman <daniel@quora.org>
>> ---
>>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> index a17900eacb20..b870f4dc9c42 100644
>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>> @@ -269,7 +269,7 @@ cluster_c4: cpu-sleep-0 {
>>  				idle-state-name = "ret";
>>  				arm,psci-suspend-param = <0x00000004>;
>>  				entry-latency-us = <180>;
>> -				exit-latency-us = <500>;
>> +				exit-latency-us = <200>;
>>  				min-residency-us = <600>;
> 
> +Maulik?
> 
> Konrad

Linux dt idle driver sums up entry & exit latency and displays final number as total exit latency at
/sys/devices/system/cpu/cpu*/cpuidle/state1/latency

Can you please keep 320 usec as exit-latency-us to match with downstream 500usec total exit latency number from cluster_c4 state.

Thanks,
Maulik

