Return-Path: <devicetree+bounces-197780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0890EB0A999
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 19:37:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 433DC1AA86C3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD7022E765C;
	Fri, 18 Jul 2025 17:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I/7pbHCN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5228D15E5C2
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752860254; cv=none; b=h7fEHxM7sA9BhwDLEb3IykQsuSQmGw3tb90MuQ4I4FeG1ReWYvM4YbcXhQRnfCzyU+Hqz6ReopIoeIbld7+u+ctYmfTSxN3FiNWj/wYyFIJseSlk81OLB0hZAVw/erppzv06m5lP8VHZzNrpts7SMVnZIwPmYQfFNz9PUGS7qE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752860254; c=relaxed/simple;
	bh=Jp1XqFkdELGuoMkw/LjGQL5oKQgMBjwV/r0rNb05WHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bp5TtWxp4IIPzHY2IjQO2vRre2vLMW/7wajibDBLSPHHWv0+oCPLXNUUrOkR/vUpQ26fodOU/ai2MuJKYcZ8KLULSQEh041vK+t28gPhYIGBv5fh8UgVfslNkQGFQFx4VDfY6d/MPKne682/AMS5oJbUIj2WY9IPvzPo2l5Kxu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I/7pbHCN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56IHFfUM007301
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:37:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DbmW9l10evhVj/WcPjTCyWMiSSALM7/4VQmz6IFqWv0=; b=I/7pbHCNKoxqjt0d
	p9wMuOFhH2rdGi+3XLuuJLcfUwd/5RaHKxwdyXJNPFumvuRqFKKsMeG7g4r7rOMb
	CIs9AslrXszcPrdE0bKqwc+10M9bh4gH4ACiPDSNjs/ClEGKlrgznsjAmq9VlfCu
	w6tVuyZb/jcc0EYFm4WKxffWg9CHTlVOlavnyjh4iF57NUpk6gDV6Me6w11BOqCy
	Evx5A3WTTVq7koEHgj2LFUPkrUf3ACEBSGd6ljPLvS0hfM5EaASqu75m9LeYtsjd
	nbLdlR0pDSFzjrGtshLeakqx3/fxvSIsxG1CPGm9BSPHnKvsx1x0gewdK848eR51
	183yfA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfcadkvm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:37:31 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-748e6457567so2162299b3a.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752860250; x=1753465050;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DbmW9l10evhVj/WcPjTCyWMiSSALM7/4VQmz6IFqWv0=;
        b=dej5+DWDFfyJvjFckLn9sNj3rfaqWhuAhktfzI2t9BiAGEkitvsxbfUkLDEpGw6wo3
         OV4zUrJZouuQ1dov1l6TuH5pT8ROFS8x4BbCAZE3v2/4+R+7SKiknhBydPn6BjxFHcx3
         pT+bqxslTmukClx8RYt6jbZDUbaRafyuVFCww+PTJMM1O2N+rtWKeZOihOHTp+N6soLt
         cKZ0uZAggFNVEs6qoWCahHF7/2Za5xDAx+hqLM3uMcAymCv+dDlqIYG7DfIpgkxn3Rqc
         LpGzOLE9b4ZHoJRd5ft/07N7M3xNVxtwbpyjBDFxAwuTBomC4wBUV8yOOWwA1B+BQQkX
         fIDg==
X-Forwarded-Encrypted: i=1; AJvYcCXkaWNY0HYDKOkM5HarNYEOG3uAK+Ckf12NIpBK7nhfk0uwPQbyGCDOAbq4o9DRIzbfNvciz1lF+mi/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1gIpOxUDIs13aPMT+kxcL/fRSqAu82s7cOrWQDUk/xOwSsTJU
	rYD9ehVfklV0Q/gQhoEnhSAivO9vNlALJ5myNnRo2VEoOO3/FqamAvHXhISdRef39qTbFI2y5Yj
	1g2sKJjPxkYvtJJnEkFUkq9jpzpKu5RHIbsO+VMJsfRzys2Ww245vn9O2pX1sfXOs
X-Gm-Gg: ASbGncv5QD0iconTjgoLwQDanZ2U5LD5+gEKOP8IY6P2cF1k4+wBcwcA0+wB6/BwclC
	/1FVfemS2Sj+QPfoZQoWYQILkxcGB1oifKSorkxHQsJiBcI6f9/1GdNX/JZILq5FX/A9Ld4ekWl
	Wq6twNLj0ovbedAXEpJuKI4sZTgtAORdBuAbBtDgAyMmbDFvw6JIZAlakoGPsPn7umXsf9B/7De
	dISEouGg4DCpbi8KRZ+Cg+TeZpz6t0jKHS6tQY/LMYaZygrouRrcTc0xmKBHjsyNrVExRYsEcYC
	fbWcFJ9Oq/XHJvwT0Ver0Fix/xRXGbAgvvZBoc3O5YNuksTpByiRip7fIlEcyuK+E1I=
X-Received: by 2002:a05:6a20:430c:b0:224:46a0:25ef with SMTP id adf61e73a8af0-2390c7f698cmr13397780637.16.1752860250370;
        Fri, 18 Jul 2025 10:37:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGS+WhE3jQDC0YVjY/4E/XNzovaX5vUwzvI27UOQtAKYgfzXmsNsUeiIAZoMDUSIbvOYGM/sQ==
X-Received: by 2002:a05:6a20:430c:b0:224:46a0:25ef with SMTP id adf61e73a8af0-2390c7f698cmr13397740637.16.1752860249913;
        Fri, 18 Jul 2025 10:37:29 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.28.43])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759c84e2b48sm1581307b3a.19.2025.07.18.10.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 10:37:29 -0700 (PDT)
Message-ID: <2f5b5e6e-5041-453e-b3f7-b10b40bc6f57@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 23:07:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
To: Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
 <20250716152017.4070029-8-pankaj.patil@oss.qualcomm.com>
 <aHjJG2nrJJZvqxSu@linaro.org>
 <40534488-24f6-4958-b032-d45a177dfd80@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <40534488-24f6-4958-b032-d45a177dfd80@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEzOSBTYWx0ZWRfXx58htIlNeGSf
 s9i5orNq9O9L476sylvuTkrN68uQxKecMW7ZtQAa7xDZ2yjUZV9UY/R2wbnEqa9Nz7jdP3WrtUE
 OvKX2vB06I2EyQr+6ZAPyKPmgFaAcjE1vYe2mBvmNvbGmYpOw5KkIkJ9De5jKA8959wKI9crHAk
 QG8kW0G+QaH/5f0ZekzpR+T5g34MUkeaqfE1EoJw2qVyffBMecOZICwMYoGElA5tnebIfnlcyMK
 meTyaZ3NZBUmcuZdFrDRDgeQJVC9iPrbJE4mQG028YHRBchQCPZwUIAF3SYLFIzAtlueYjGg8MV
 bnL2QDaVJKpEkRPorDIzGydp1/K7I7lH5nQeQPyqMtrQ2eW0Y6LWXpA+1f013r4248Ofrt4tif4
 pPMhFvgBsfeVDqM/umf/l/kuQEuQb6AYJ2W42L8jIxNCxXVjhQggn4Xg5DEHxRNnODZAA84A
X-Proofpoint-GUID: 2ds3lHZeiI5nfU8FyPkVPgkoxgYjFgY8
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=687a865c cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=tMiizUMu9hGndvLFPAJAbA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ZEZnheZsc53CzuolOOIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: 2ds3lHZeiI5nfU8FyPkVPgkoxgYjFgY8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_04,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180139



On 7/17/2025 3:38 PM, Krzysztof Kozlowski wrote:
> On 17/07/2025 11:57, Abel Vesa wrote:
>> On 25-07-16 20:50:17, Pankaj Patil wrote:
>>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>>
>>> Add support for Global clock controller for Glymur platform.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>> ---
>>>  drivers/clk/qcom/Kconfig      |   10 +
>>>  drivers/clk/qcom/Makefile     |    1 +
>>>  drivers/clk/qcom/gcc-glymur.c | 8623 +++++++++++++++++++++++++++++++++
>>>  3 files changed, 8634 insertions(+)
>>>  create mode 100644 drivers/clk/qcom/gcc-glymur.c
>>>
>>> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
>>> index 051301007aa6..1d9e8c6aeaed 100644
>>> --- a/drivers/clk/qcom/Kconfig
>>> +++ b/drivers/clk/qcom/Kconfig
>>> @@ -645,6 +645,16 @@ config SAR_GPUCC_2130P
>>>  	  Say Y if you want to support graphics controller devices and
>>>  	  functionality such as 3D graphics.
>>>  
>>> +config SC_GCC_GLYMUR
>>
>> Wait, are we going back to this now?
>>
>> X Elite had CLK_X1E80100_GCC, so maybe this should be CLK_GLYMUR_GCC
>> then.
> 
> 
> Yeah, the SC is meaningless here, unless you call it CLK_SC8480XP_GCC,
> so the authors need to decide on one naming. Not mixtures..
> 
> 
Glymur follows the "SC" naming convention, and historically we've
adhered to the format: "SC/SM/SDX/SA_<Clock Controller>_<Target Name or
Chipset>". This structure has helped maintain consistency and clarity
across platforms.

The case of X1E80100 appears to be an exception—likely influenced by its
unique naming convention at the time.

That said, I’d prefer to stay aligned with the established convention
used for earlier chipsets to preserve continuity. I’d appreciate hearing
your thoughts on this as well.

-- 
Thanks,
Taniya Das


