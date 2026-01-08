Return-Path: <devicetree+bounces-252690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CE5D025A4
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 12:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 22C2D3005016
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 11:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3187F431B4D;
	Thu,  8 Jan 2026 09:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GsYouXFJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G0wVTuRy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430524308BF
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 09:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767864078; cv=none; b=OoyZ/GQob+ebM/Q0c4KQpggYTu55qEMT8/l/vf0nVSq3kJNmx39YhBlofQdlYcTFmUflSW8jhx1Sjq0ftaFb2BSa33JohS3uu8B9DN8SV1Lz1oPkEo8XwmP/nAo4eRCOqc3PfuP6sIvGoPaOcfz8td3ImCQCQK0oP6MBb0BJbAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767864078; c=relaxed/simple;
	bh=0l6Iqs3MgqzCjVQEYOZPwQFM0SA2heWQHlyq1HLJ6Yc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l3N/J0HyzZLv5kXO2RnX9mm7jMn4unGvLH+hfSeaw9W63++cF9zi56x3HspjMpjZclJLK7O/SqDAZ2tg2ZJh4GLtW0vMqtOab3s6FwfEd4vDCSP9uesV+5V8TYfg4sa0BjZtzGYmaG4M171yMgNBK9YcOaXjfsRRz5nKBp9B68w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GsYouXFJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G0wVTuRy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6087VNaF1837902
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 09:21:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RUASEvoKgRbhk1dUkVLvuBQGOMUb3++LPBZvsx88wnc=; b=GsYouXFJYnNMjuVs
	IW9p0883DTxHMonKCRgmL/qi+ODHEw59CvDzzE8ITwPDCXk8weNAmtaQm/YQdtdx
	CqP8NtLsqrrglui9Y1Xw7nR7T4pqHQ0U5aPZERxKnqH1MjjQW2crPSezbyHg0SUl
	NPoQD6xyKGzVzNf0MRMCxH1GCos+0cWXJTgzR62uJt6T+R4wXiANh1BlEvXxmBWM
	kcSTJhTHR55Lgp1DeuqsEKlT2qP+47zwrPzCQ70mb7r1rTgPQmjaJhU0fRSgq/SC
	CNZhfeWHmsUAr1C7DKuE0u7QItPhjIQcot8F2GNXY0z4cUG3pUQhq+h80yOKTmPt
	aZwpaw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj8920ayh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:21:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8bedacab1e0so100630485a.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 01:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767864067; x=1768468867; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RUASEvoKgRbhk1dUkVLvuBQGOMUb3++LPBZvsx88wnc=;
        b=G0wVTuRyYUAsO3L53davM3FIs0PcNofE97FT6irKVNuHCyylKT8vObMa5+CsxI/2kq
         UrxBAAXlqMuvKS+aT2RWUeV4QUKF2xBa5PnHD+5W6sXuwSwsJrsiPbsoOFWxWY8ASkRM
         dwcAx8UdC2yhtDNR4kcuaV+KM38KYkctEKNbguU/MsoTq2yw4JoyAHudE2dOr3MNR+Qx
         vrt0IelW68/PstPJTgA71U9aHNHflPqnCcFuKI1L6KcORgPrdpIWzlX59xm7tMKmk7sZ
         g53LZ/hx+lwEsv/56anpo57vi+7QAe/BjGSMEbKDgiRP0Q25aGVk7GuWkgG131b1eagd
         a3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767864067; x=1768468867;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUASEvoKgRbhk1dUkVLvuBQGOMUb3++LPBZvsx88wnc=;
        b=i1PHGCKoxVtkamgIeodParLqSWNPL7jiVxyMft0B/9s8xRW5KXNTWBeK8ST7hzgECP
         nKTp5UAuBPUUedBdWCJqnt9xeFi5yde8s/q5Z9fiVbwYOr/kUZ/32L5U2TRYeqROz1Lg
         RphYQrcN6Ku7Ibul/FMELNaqdnB5LD0/5MxEixKr+jmQnG9KcpkwIRNrTqdFPktlCegR
         cZxcG0sUYuIzLJKArsCCtaNvoyngVnLlGdlhJHkeiDmy32BJ0gwVOOeeghxaPzk6V2N+
         EqtdkwPFCv2So8D8nCo7JUP68zpcP2DOBOXrmlq7T2lTct64dM6VVpy7IyNxulwPe06H
         U31Q==
X-Forwarded-Encrypted: i=1; AJvYcCURdKxaHYVc970qk8cddCr0PEl6GNEfxF2NtkhDACJL9EnB6mEJEIVJbWjPpxRTG/Gd6uzjKIbnv43O@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsy/tsZvCgbi5WQuT+BYk/ZWJaQf4WXVd9gFpmxxuTVkvKdD1o
	shEer4tWhtn5j440P59YED7LXGZ/NQPQx7xiB1pnhpfx3StcbI9D6KvTStYEMvmARiRtXHkRiHC
	GXoZpUj0sG/8nvtKGSStAfMHLDXxIuJFzWFUY2vOubADNOgERaRRwLYcAtCY4AToh
X-Gm-Gg: AY/fxX7WmJ2+FgePJyRsBaJPIh1rCCWnU3fG8nNK1FgZyHBkwaVUBMEurCqDINmEHXQ
	N/FhAR21uVAhH1NMt8m2Io15DHFx6UiUAmbBKV3YwBlWHdh98YSiaj4EXOeT/ySH5aQRnR5N+xC
	uEAnvsVNkmmHuArITN8rE6D2Op1tO/54juL8v9mz3is3xgau+GTmxJ1KiGFHxzgOoUNKLpqFeiM
	qCR0p4MJCwklUwyE0YJgtkzMSoGZa/Pe+mCoQ6eLPgFttS7Z8Vf6SnpDaYzFc97Dt2CyKyOByym
	Vpf7N0NgyCkn1P+T1OpGenwR37bLlYTZ+u8kD3rGbWcNm+egebjHwbgjjJXKrQbIQ+vz6CG6c5+
	GUHri04yLLWbrArXkux8o5MUdDstxPRGyrRMHwEfaItXya4MSsyLsSDFXu5+7z3ZMfYA=
X-Received: by 2002:a05:620a:4892:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8c38943b7femr567258585a.8.1767864066991;
        Thu, 08 Jan 2026 01:21:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSH8xh0nRYmxacJIRP7jsT1v/IUGFzqMnGgVqOwnhbwUDo4bcraE4vEjb3nwQSNnL88CCsDA==
X-Received: by 2002:a05:620a:4892:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8c38943b7femr567256285a.8.1767864066468;
        Thu, 08 Jan 2026 01:21:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a5118d3sm763110966b.47.2026.01.08.01.21.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 01:21:05 -0800 (PST)
Message-ID: <ce7c86c0-6feb-48b1-9fd8-7ce3bb825428@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 10:21:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: backlight: qcom-wled: Document ovp
 values for PMI8994
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260108-pmi8950-wled-v2-0-8687f23147d7@mainlining.org>
 <20260108-pmi8950-wled-v2-1-8687f23147d7@mainlining.org>
 <45a2b510-c825-4191-975a-1389f4f18903@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <45a2b510-c825-4191-975a-1389f4f18903@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=695f7703 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=tn3pFvwZU5TYnyux6WMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: TKib59s7nJY9P13sGWYoOrN5dG-c17q7
X-Proofpoint-GUID: TKib59s7nJY9P13sGWYoOrN5dG-c17q7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA2MiBTYWx0ZWRfX84MHO0m/n3v1
 3OpHuHUGY4/yHIePSimurNthgcA659IhVvRT6n80fxoutrRScRPvXex8eGj2jCbrEgKuxl/QPUc
 vgeEMxZihOh6lkICsdtrcJsG7MXdhYK7ydTyAEc9U3aCvPg4ru5YBW7iM9exhdB88FtpJCrysKo
 BPFf0Un0RftFhzTYJCHy8L5SjQOhrou6iIRTAzDLFlsDX7YSIMb3XvIrQmlyAwMK6OFqvK37kz7
 2r1/L6azgJT69aEQ4sqpqWdYYPT2KCCtMa6JScAHJNxBURD/YBjipTcsquUkflqaW0/8qVLCMPO
 GKxXPy+YBR0Xx0ahU7Vr6Jc+cXGjs49tBX6pw8rH4wpjGZ4w/BCMLXV+iwGHINl8zb14z1HdH61
 G/eE8+R5uPmRIaQx2+M3lKNwlnBPipYHaPG7mdU7apoW4YhkuI07JgPD3cqtjjuz/nLQTEtBQ2o
 by694L5CtDStCX/E4ww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080062

On 1/8/26 9:54 AM, Konrad Dybcio wrote:
> On 1/8/26 4:43 AM, Barnabás Czémán wrote:
>> Document ovp values supported by wled found in PMI8994.
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> I reviewed a version of this that said PMI8950, which is very much
> not the same..
> 
> Let me try and get some more docs to confirm or deny what you're
> saying..

PMI8994 indeed uses the same values as PMI8950, so let's keep my
review tag (but please be more careful about that when making
major changes between revisions in the future)

Konrad

