Return-Path: <devicetree+bounces-258687-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEuaL1vdcmmNqgAAu9opvQ
	(envelope-from <devicetree+bounces-258687-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:30:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0B56FA16
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8469E300A10B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2F026B760;
	Fri, 23 Jan 2026 02:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NoFjCCue";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kjIW0Q+6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F2232937A
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 02:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769135446; cv=none; b=Pl3sVvoG6t4IWKpVfq3fGHchdOIXCszc8Y4M29DbxwMbhe0TwHyaLtBXo4w4h+QgCS+8HEc0DroDL+L7liZkmXoEMVGwTY0m/oiG6hYw5ckh+DLz47B8vfuJ4Mi/O/UnRk7npb6GSgbvujItglVLISsUDe4PjMBCmw/Zj26Oy7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769135446; c=relaxed/simple;
	bh=TB1IK3oxKC4Pvn5NMkqqLOWwLoygWYshus/E1Z/h6SE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jedxzOiYWAgLe34iC2SRzIKGn3uT2qPnGX80oy7Ful5Z4BnDU5MirP5iwgUSf8sZ6tIlyAIaM6+FM7YKr+aFyIjSa4HEin4yDuVbXWx9GErxtk1QGcnJebhzasDLmclr0dmH+rOzyPj3pS2KQR4xjrqEe5qJ/9SvFj0c5O7e6bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NoFjCCue; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kjIW0Q+6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MK7VgM3503162
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 02:30:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6aeWGzMxBIh6hKBnzi2b6uZexZzjIgGrfHofmca0u00=; b=NoFjCCueJEZgaVON
	oTYHY1xKusFZTAAGOfDvHh1T89z90P/vVKRwm2GTje2RPIicO6FGSUsoIMCnlfx5
	2RcDG+k7xgfdpNu0S5ePAd5svYiLbkI86pytAD2+HRqMzJ3LGhOKexJ0rhJlVx26
	+EtJMyIvPBjizO1lA9tUvy6rstRp3YhKMPSc4IA94nYfPOAv/h/wayDMUUtO74hl
	d7mRiYJrRskOFtB1LsItq1Qt5qB+UQcQFjg/jknO6j5MTvq0hJBEj0iykgWJIQV+
	htRWlDjT/vqQG0q9TjA8RS6vNB3qy9mDqypOOVH5cv/p0t9QtBtpXm1E+qan6+n+
	uKT6qw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bus9815y9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 02:30:23 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-502f0627494so32104281cf.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 18:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769135414; x=1769740214; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6aeWGzMxBIh6hKBnzi2b6uZexZzjIgGrfHofmca0u00=;
        b=kjIW0Q+6iIHqSj7jc6XzMpshl1ugnnQtAWeeJUhZEetQNR//snqeSLI5nOTTIEhi1/
         0qx00kLUDt00aMNJPgLO9QU1MYQRjNu66JDb7SDCr1AdW2hQMcR0Fch0HOX040Url76m
         /ciX7wb1YxbyD/qc4A/M/flwInlq1k7G1gx+ANVnxFCqN9OQe2mV3GPDTF8udbS3L6Kw
         6TPSr0dpCj7L99cK04iKdvwBHN375KrHbivXgKihLEqtatUBx/TlAWKAZ3PUqtupt2Pp
         pT90B/zF5q8jtQh+H5FkTgKhZA6otHmPEyZXXvn4/Kg/PCMM3z5ORaXGSSOSKlKkebd6
         Qbfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769135414; x=1769740214;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6aeWGzMxBIh6hKBnzi2b6uZexZzjIgGrfHofmca0u00=;
        b=Y6y6GpQGvJNuSLq0QtPSGGktd56fKbXi9bzBwNom90uSlDidX3pK9bKhZCWu24kAxU
         P4Q6ONZCgfsToIm7earp8Kpv3qoYrPQRDYDnwAt/nitxtuYuhICJx0lSaN/J7pTwVzXu
         pH1XTLlm6b71/i4CNy0OmDizXSDvcfZViLOdA0UYBIuDL+JAK9bi0Z2/GECge9zZbVOV
         ZrFkUYxpGlDYI7yVJaQsQEwqoabxqOx+JLmuI4B+YRQ7DcVJrKJEziyUheOdt7WVnIFp
         drEZZp4xH7y1Rif6NzulnML62lCLkfCj70Vp2XeFrj/T+ZIneFHlDWOhQYNjP0Eyx1+c
         3OWw==
X-Forwarded-Encrypted: i=1; AJvYcCXkokxRYdutZsDoINQ0aKR2gFGKP0onyH6zH3agw+svr0TuHS+pMjqBezYl+n+AJo4Tn5CUA9yMxumv@vger.kernel.org
X-Gm-Message-State: AOJu0YyC7UIsFsvAnt0LvkwdwTb3enqBfGY4XXcHeJhY6GjG4cwMdpHz
	5za0oFK9O2qe+FsEaFHrU2ZJgmAuRU9b/jBJ7Y/R5Izc4TMnd3yStRFpOKYgmKqhSWhVV8h+hzI
	9KCIylZIV3Ytkb0cEOt6C/FomwJ8vTuPyKo5S0fohTcoYIv4uz5J0EXGCdV50pYMQ
X-Gm-Gg: AZuq6aJxfLOekwDuRQJiHoSlv3BF5gAeDat0/z8G2FEl8KE+VFusHUFoGhhJixAeDzN
	lYMqVg9dLPs0Vri9iseGv2AZatiDHMByEpKKvX7mMC5RnxP/irvvIvdXNrQv2nhOBRl2AqhH0qP
	rMu4G+iUcPCRA+3U7dsjyxeT0Qyzujc5sFaPmAviCY98lcMccE36/HuuFA2/H5pISaJ6M5J2JCi
	fgurRNOipHJaR0SzYH27ssM6Js/xB+FO3J5OOFuTbY3lMpC8vXKAoFTkgvdiKuWVEZHgBzQ5WZN
	ZRhdV9gAcidKOc5psPLmWMReNGfAtd2NkpfTSib0/VaYnRgxJCXR7H1LsGFbm89Efctv8Fhw6qM
	tzMg6sDSgKs//bdxZyMcPEzTlSSwkWaGR/jdMuOxCw5OIZscxeYjqhnTSbd9YlXSmodnsJt5DIg
	==
X-Received: by 2002:a05:622a:10f:b0:501:4236:5474 with SMTP id d75a77b69052e-502f77653ebmr23040651cf.28.1769135413658;
        Thu, 22 Jan 2026 18:30:13 -0800 (PST)
X-Received: by 2002:a05:622a:10f:b0:501:4236:5474 with SMTP id d75a77b69052e-502f77653ebmr23040251cf.28.1769135413099;
        Thu, 22 Jan 2026 18:30:13 -0800 (PST)
Received: from [10.111.171.243] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502f7ed650bsm7054291cf.11.2026.01.22.18.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 18:30:12 -0800 (PST)
Message-ID: <e0e6f248-3d82-4b0c-9ee2-4a655b7bbbfd@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 10:30:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: talos-evk-camera: Add DT overlay
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org
References: <20260122-sm6150_evk-v5-0-039b170450a3@oss.qualcomm.com>
 <20260122-sm6150_evk-v5-5-039b170450a3@oss.qualcomm.com>
 <825c3e7c-469a-4d69-b298-18f2edf72ea4@oss.qualcomm.com>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <825c3e7c-469a-4d69-b298-18f2edf72ea4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDAxNSBTYWx0ZWRfX9dpkhBVWpu6P
 ofomoBbJOLR84/X3mGq3FXM3i0alN+4yGwXHOi0afgUj7p7SOmdV+Kw/dRYDzVKgVnVr9fYHfr/
 wHEiUy2Pzj64C9n/9ef01cSc5cYmZhdDPIC5DUEFwDWS5QsUjSHeeta3dhT2gT5UXutnxOHFeC8
 ENpbOFTZCk4q59Ub4eMkWjTKHSMYZ+1PpoedEQaMeuPRScIlj3yaJCGMydTgORdh1L//98+iQQZ
 SwXAlHGCRyWqkhKmEJO25yZpm7pBj+CCr1O8Ql4s37bVJTNWrXCBD5KuoTMl/5Hn7Dn25D8SGsk
 q+cDzgIRLCP+kPgB5kEAinoQY0Bc0QLhrl7/zsKk4ei21mHhJIjFryEoXltuXtSdAZgdaZxV2Vw
 qIsMOBcU+mgQYqYAV/ufTLg1Xrz9XlY788N+sWX1lqGdhtagg7PsC4WQJSv0eCpFdBvk3nMf5CF
 Eo5RoDgRsJHGVSqRabw==
X-Authority-Analysis: v=2.4 cv=JuX8bc4C c=1 sm=1 tr=0 ts=6972dd3f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=yKNFHEXJphivSBQIcCoA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: PCPo-5E6rg3GFMg-R1jAdblYEJLGGFTX
X-Proofpoint-ORIG-GUID: PCPo-5E6rg3GFMg-R1jAdblYEJLGGFTX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230015
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258687-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1a:email,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org,pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenmeng.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DB0B56FA16
X-Rspamd-Action: no action

Hi Konrad,

On 1/22/2026 9:44 PM, Konrad Dybcio wrote:
> On 1/22/26 11:48 AM, Wenmeng Liu wrote:
>> Enable IMX577 via CCI on Taloss EVK Core Kit.
>>
>> The Talos EVK board does not include a camera sensor
>> by default, this DTSO has enabled the Arducam 12.3MP
>> IMX577 Mini Camera Module on the CSI-1 interface.
>>
>> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +&cci_i2c1 {
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
>> +
>> +	camera@1a {
>> +		compatible = "sony,imx577";
>> +		reg = <0x1a>;
>> +
>> +		reset-gpios = <&tlmm 29 GPIO_ACTIVE_LOW>;
> 
> Let's define the pin settings for the reset pin too, otherwise lgtm

The reset pin on the Talos EVK board is different from the default. Do 
you recommend that I define the reset pin's pinctrl in the Talos EVK 
board's DTS?

Thanks,
Wenmeng



