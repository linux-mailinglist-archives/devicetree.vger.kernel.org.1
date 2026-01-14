Return-Path: <devicetree+bounces-254960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71770D1E0A8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 293DE300A364
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87457389E1A;
	Wed, 14 Jan 2026 10:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L4Y7jY8t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LJAHklZW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75B93815D5
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768386505; cv=none; b=h+M57hGw7KtZaczXzduBp48J1XH4CIE6r4vR7rXD74TDSXiD2cv2SiYQhFDuwsrZRVyv0zi56+4moemFkF/UrUmxtCU2OenQ7NSpoX96hpeViCRv7skLgzFB9l84tp5BdCNIK1A17/5PaM6qmBxJbL569Xzk8KiVT1ePtr06xXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768386505; c=relaxed/simple;
	bh=0CbyshIj1CFfi3rZ8711K9DQYajBFEov2AFFETZzmJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ahl9gTZTE6ZQrU+PmUn7iGd4sZo18ALyF9oSeWgOSM68B1nZlYMVNqa2n4XUw/hDLJYdTQEE9oUAqHHziL+ea5XbcXtd+9vG0XJOr1tMCKggU7oOczEkGS6LtT75gtkeTwESqhgY+PTPhXeH6+kqRRSb0d8uf6EYscPCfh/Awyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L4Y7jY8t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LJAHklZW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E7j7KB2841221
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:28:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L2rUIWP734jgyS7kfTHkz2k68tE+yGXTA1ZKqPQH6og=; b=L4Y7jY8tZjq7r/mD
	hQzFvYOFvfU9JrUK5CwE6O+iHhAC4cIrR8X3ek6CvmLs47DY8JgtEvl7AE+O3b0b
	MHxQ1dfKobRAoPJJWcLf/DMlK3umedQYtsj29x5yhxJHnQPaQUNGrWAs5heJzhHH
	kvY7iPbdQ6dNfb0jKPpNyoNMrW1hTyCDRWriWzvvHBidunOZfxXsYX4EpScElBd6
	CWxOdT445z7cz6NaXJ7tMNhcgMpJJHXsY0LL2wxvXW/5RKdHqtUqLrG1BquFdw03
	iEfftDnx/92CsZMudse3feCnXVI8dDlITb+BcGvZRPB5cbS0r0fIa2TpA1WlvLX9
	IDjfXA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnuk92xuj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:28:22 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c5265d479dso28283685a.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768386502; x=1768991302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L2rUIWP734jgyS7kfTHkz2k68tE+yGXTA1ZKqPQH6og=;
        b=LJAHklZWs8jmKxAxN233zesN+nxbeA5DORiXTA2x++5bJ/4COzWqMSLCxl9fAh13DR
         YPVk1aRkXxMS7l4sTcGU9dk0/g4u7NsWCqGVZlrtBuf5evgBvXZKTYpB4B67w5CWz59N
         4v4R4sjGks9ks141s2+kwJU6dsDe+MkBOLlcUB0rtcrQ3m+qhuRPl1naTq9Z9xrtaZZz
         /96Ga6Q+1io/v+a1Cosfleyz8GUJ38bXJ2pZrtx0psDxx2B137NZ2uOiSycS+eN2IinC
         ScEqyScklGOvlIIoQwxHmajepLiKXTSQirpOvFiXORZGo1/+VjF/6TyEFPkUsqCy6GWc
         HlhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768386502; x=1768991302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L2rUIWP734jgyS7kfTHkz2k68tE+yGXTA1ZKqPQH6og=;
        b=dmQU24faSAGqRbA6z2cTpFJVw9f2Z5qwNv0IaJd7QhvNXPpXmgfCySmuerqwtT8fX1
         43QEOOcTdH1uVRl5FJuO1aCZSfZzn9pr8cHY6eOTHngT4N/mS/uc5aeNv6kjvilQXCii
         GBoOLgkOJwa1ATNpo8YRPF3Ro1eRTfMF5kAJsYbvTJjbsGlKJDEBRFr5V4qpK0PCms/V
         i3yZ0wA18u0eX80zFmcdCYl3Y8iJ4DPUWYqHndIhWEE87JCFIf8XW8QBzY5Oz3vaQiPa
         QuUyZjH+RkThLlG0n85rhI92A3kcbJQYfmOwtzvRwUtfruc+ktFXteBIPZdo8CZeNNgr
         lQRw==
X-Forwarded-Encrypted: i=1; AJvYcCWAH/1bM7em7JMlCO/1zpFmEzPqiKfebZ9HFmpfDgB0Fag0ijdvpUIC6TAPjr4oocJVaUSZ03/33n3Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2d/VirYFzql8jpjjGqsyftKU2CaRRJyZ32axrgr7lowI8jGM6
	iu0axdP1SI/rD/vHCDw60KBLC/wdgB7/NFVGsOCz9hRJin/WQ8pEF+8QZt2x+EiaTpER+8kNsO0
	T2Y0MATpXgH09xxvataO8peQmOKCCMPH74CT/TT+bLG7u+KpLyTXOiPYMhOazaCYu
X-Gm-Gg: AY/fxX5PS+YKvuDlVb0OSRlAvq6O7nIDjme/1RgUqCvKMSMauJsM5EfmKjr4M6thmzh
	IyC2ysvJnhybtm2stcR6yTpoCYF49pmCkrcEWRk/P/DGRH8F8COPsibxspWTsSahE6+j0NtF6Ak
	2q4fwXrYhc4QcwQJu5QGqQL+JLLP+PbTuPpNny6eGzyDOjX0a1gL2rZCtiGiwwz6oqsEUtB9Wxv
	N+ndtPSiSZxH3bV5UJTHJFWM0DfClzIBnP6tpYRoEaQEWKnm6GnR0hD7iBFodfDZcjDg6HJ5YRw
	rotgNmEx1qVk1umMmNVb70bBadLeR4geXm7ybGtIXuqDknn38DkOVM7lcA1lAhhksC8vfx5s7Ex
	nDIujXx7q0KB8BszOiRghOAlTDEdxok9gDlj2kKQkVco8Jq5JQb4dVdgBNMuoAwYSCds=
X-Received: by 2002:a05:620a:2945:b0:89f:5a1b:1ec9 with SMTP id af79cd13be357-8c52fafd3d0mr237610685a.1.1768386502259;
        Wed, 14 Jan 2026 02:28:22 -0800 (PST)
X-Received: by 2002:a05:620a:2945:b0:89f:5a1b:1ec9 with SMTP id af79cd13be357-8c52fafd3d0mr237607585a.1.1768386501828;
        Wed, 14 Jan 2026 02:28:21 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86ebfd007fsm1275650366b.31.2026.01.14.02.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:28:21 -0800 (PST)
Message-ID: <ff4d697c-2007-4b2a-b66b-dc86053a20a6@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 11:28:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Correct
 reserved memory ranges
To: David Heidelberg <david@ixit.cz>,
        =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-2-8e4476897638@mainlining.org>
 <723357fc-a785-45d6-8d49-4c00dd4f340c@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <723357fc-a785-45d6-8d49-4c00dd4f340c@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ebQwvrEH c=1 sm=1 tr=0 ts=69676fc6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=za1BG0YIFsB6r-OV5FEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: 1jgGOcbfQs-PZELwDOh4dKiHx1_jw4rH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA4NSBTYWx0ZWRfXwTQ5QHUZkiyZ
 IO+lH43rIjD1qvZfaXT3uUGeRhrxfu55++lygmH8BH34WYvIX6GzjDrA9cEd4ieEklH6k7G0ydr
 7okbD0TxohYMPyvZ70voIeuI+SRNMLZh0jIjdUbkXNXYZDvJHG+bXWrrShGWwYSzUYbBc1QtRU6
 x/E8k7yJRswjILvfFfSoBPJcKphVf8QsjRLnWDzeHzr/OzTwvU31wolTgTChGYdmkVl9NEWv48+
 F5KJqinwir0GD/7l+fqaALnstYUCuVmaqew6O4eVBWeK/INmuvT3XzhGdUw6b+5CULLp/aTxGI/
 uT77waCcrC7lVmAbfkcVm5ne6H4NR+BDPwT0+wiHBcx1KItEcYs+PQ+RR06qIw4E3X8xxcdjDSA
 WuncczJ+pP+SDKEChZVxF7ojJfAv0zC+rNMFmmlYZ2AF1MmLoVgJPVREf6MOZYwP9rZCPBPM4vR
 36jHfk/Lkr9BMbBzePQ==
X-Proofpoint-GUID: 1jgGOcbfQs-PZELwDOh4dKiHx1_jw4rH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140085

On 1/14/26 11:15 AM, David Heidelberg wrote:
> On 12/01/2026 21:13, BarnabÃ¡s CzÃ©mÃ¡n wrote:
>> The device was crashing on high memory load because the reserved memory
>> ranges was wrongly defined. Correct the ranges for avoid the crashes.
>> Change the ramoops memory range to match with the values from the recovery
>> to be able to get the results from the device.
>>
>> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>> ---

[...]

> Hello!
> 
> I suggest one more nice to have improvement:
> 
> you could label framebuffer cont_splash_mem since you already touching the node and testing the series.
> 
> Then in additional commit, you can replace manually defined `reg` in chosen > framebuffer node with
> 
> memory-region = <&cont_splash_mem>;
> 
> For example you can look at sdm845-oneplus-common.dtsi
> 
> Tell me what u think

If you wanna do that, please call it framebuffer_mem, "cont_splash" is a
Qualcomm-specific name for (roughly) flicker-free bootup

Konrad

