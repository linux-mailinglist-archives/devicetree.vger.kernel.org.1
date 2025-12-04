Return-Path: <devicetree+bounces-244349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1134BCA3EBB
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68624307315A
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F1921B9E2;
	Thu,  4 Dec 2025 13:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Io+LgaAh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a9KN/hNS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC87421FF2A
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855926; cv=none; b=qmMoOACtFVOeg6d5nFhRQDOu1P5LDie6CZ0jLU2QC13MLVrICpWz22SnvUVYS4Gl60UxrOeuZd9eF2+4kcSwhDS3BXHxTE37L7yPfw5Ybq9DtpY8KHn34IdDJDuoKXezDgKo0uKlaV5X9ykE+tO7M9dxH5MlOCJDYT3nEA9DgxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855926; c=relaxed/simple;
	bh=AcrXjqUZ56vkkb/G0elF56yoIRnt+e4Jj41beyyDcms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LDhsBYx/Oa3DLoLR3jCnY8u75nfZqe5e5q1JQW684PQnxHtUte34HirqoiXlbuakb5jflYGF9tpfKbQC9irMLeYL/ej0u3OqCAb0BcPurQQXG2ssDQIVmNhmuFbg/baYCCGUxBOn4Sf3SCqTQ7dDMyiMuKozE3wQ1LTghbAc5D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Io+LgaAh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a9KN/hNS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4Cx3Zt1437995
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:45:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2m0RAcitcHEW2YNQM08Cl44Xo0ln3RiUZ4rAoKevP3c=; b=Io+LgaAhKwJECQiA
	EDj+da3YRIHW31eeifYPvfkzP+1yFWU7CppATC11afnGdBWBmwDlioQU8/ihXMKD
	k0OHKrjsCHAz4NEpgHleUVI8V5yd+oBRleAwlQFy5fGb87b4wO5zwzKZwDhlw82H
	So9VskXs3EDXefo8gQw6+dRNHstthl7SaoujcMKxjUsVijs1WBF3ey5PdxvIY32J
	cGlKmNOY8/Hi1Wff/w76s0TXeD7anpgnMXXJ0xLK/UDEWyh1+ANhKaGuwDZqqa1A
	O8/xO86ak2duwyNZnDJSwIg/aevBTCxyAmUFB+7Sm0cq1d2YzaTDQ1+XZOl4p3ig
	CdFbvw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auascr3mb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:45:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b21f4ce5a6so17860585a.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764855922; x=1765460722; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2m0RAcitcHEW2YNQM08Cl44Xo0ln3RiUZ4rAoKevP3c=;
        b=a9KN/hNS9IA/svGkQfunUVRpINRNE9qWmCq/bbzxvNfRj4dYgzuO0iKMBsDstYOlHl
         kcFzaploWR9a8xghJMY1nXWlk4qCe9uUekZzsClqBKZYcbuHUeah0wjjXRYccief2Bxg
         zkFFKrbA1Pcljb10ID52EEVESwJ+9Dp3MbmZWujKoYnKo6YWY6WsLgiZ+j7NWgI8zkQ9
         dLyRmF7/wBGeJ4m3oOrOpvcWp9myvxg3JqQq6p5bd71VdUnD729LcuzDBper5dbT58l0
         JGJq09yfL8NtnvpuCAwwmblR2WOX0PO8JTsZhLmZaKKgMB/HtJGTyLspcvIr898PwSQ+
         kz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764855922; x=1765460722;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2m0RAcitcHEW2YNQM08Cl44Xo0ln3RiUZ4rAoKevP3c=;
        b=cgPeCMltmV0AY4ywdrJ7qCQU2eLiPSeC0DeRorizi1zmyfG7QTocQIxEhMlMlqXp4G
         L1hFRn2qvDwSnXJGz4C0QNqOqmWx9FpwVhznYg6LcwnWpsVdIR2BW969lpjb0GPdrP/M
         F94eRL5U4zu7/q6wilAyEn+Qw9nlUIuo1SFdf7BaFDS3huh0gMVAy8+KDN5l7P5Xm920
         jfqEZy8HL6PiBVG/Mnt6Vcc/BRk0+BrDTjW84Igiscn3vLindHsFnySyWYd3KEGlyg7F
         8/NF8wE6sOWgVGGeTmhlTuMZecHFwDmbMoAArauuJ392YceM1sUtMvNHDPpucvy+zl52
         awVg==
X-Forwarded-Encrypted: i=1; AJvYcCXcP+nD0mdamSCg9LQNRsTVX7rBrUH5rDsgd9V2IH4uzgJK+4ZI0ZOJjNGmqsrZ/6Qs3Te3Gde2dQAs@vger.kernel.org
X-Gm-Message-State: AOJu0YyrBHeBdZJ0oRYAvYEuHxm/Iwfl3nR9Uur010xAH+sgAu9bGWzC
	tjuIVwyomfLMzM+eVj8h0rQrEMWyJAq0T9e92p3ol6c6oYlYgCmy+2pVQn/8nD1AbHjLMGc038/
	VvApDGK6ljUFzz6obHoEObCBB5uHEXJpk9DRboFF1w35yFUDRCBFYiTBNrltoMF4r
X-Gm-Gg: ASbGncsrZVFn4UVnBkqXquapBtMGMuRU2OWYMtE73HUdteT00TlVzhvoRtsgbuNQvB+
	6CPRTytZpoy+SP52LapuGd0Zfqt6JggGXBuGsYDogzsi9Uj82wtmXsUZIesyaK/5mzuOTCvst3r
	VyxOtOQluPb9LUwH02C+Mh+qle+8mrZtJirrIoCpNHn5u7ytumMbSct9eY+WVRiFkCbMho7UlvD
	WvQu+S4G8zp79gdY7kclzWygfvGd+uHbNV86JZBYmI745JRaIwtwEdnJrr3DuwusALtX+rgd3VG
	ORhP5OvWxaDT62kgrTwiiw9wh4SBtQtw8VBxdEA36dwMvCDvsW03WSUuMy1NWcstDe8UyQPWkJL
	LJB3214zTLmzwyAycDExb9YPfu25b+HFiUACx/ArD8fJ7ueO9NEEXDkjuPxNv46GwRw==
X-Received: by 2002:a05:620a:4494:b0:8b2:e346:de7b with SMTP id af79cd13be357-8b5f8bff756mr558493085a.1.1764855921943;
        Thu, 04 Dec 2025 05:45:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEE4K9QNIzom/XckL+1wntqd34BKcJJw86KK0TA5TcHyRER3mpyApu+tld0J6twAewFcg/bRg==
X-Received: by 2002:a05:620a:4494:b0:8b2:e346:de7b with SMTP id af79cd13be357-8b5f8bff756mr558488285a.1.1764855921370;
        Thu, 04 Dec 2025 05:45:21 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ec3003sm1327057a12.6.2025.12.04.05.45.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 05:45:20 -0800 (PST)
Message-ID: <8d2db9c8-b053-46af-abf9-f57765b0afd8@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 14:45:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: milos-fairphone-fp6: Add vibrator
 support
To: David Heidelberg <david@ixit.cz>,
        Griffin Kroah-Hartman <griffin.kroah@fairphone.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20251204-aw86938-driver-v1-0-ebd71868df3a@fairphone.com>
 <20251204-aw86938-driver-v1-3-ebd71868df3a@fairphone.com>
 <bc89b3ac-242f-4890-9996-060c4a0f2b67@oss.qualcomm.com>
 <9794dcce-0c1d-4c30-8d07-47c50548b4c1@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9794dcce-0c1d-4c30-8d07-47c50548b4c1@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: NrJxgL2hUCXxNSGf1LJs6DCsmhcjPfmU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDExMiBTYWx0ZWRfX7BGjQD0fnUJ+
 ZVC82Z17B+3hq2vbFmBIsoHlnieh2bS4IOOMkZ++Znjde4+5gahkEeGe6HCtEAfoBj042nN5Fwr
 XzWTAnwY/fdkeGaV7nxrrtRA3jGSfXHYD4gQnLvjtAOcsqaYThShpiZXHXrg5emj81MOWF/YIHZ
 GhNi2tEeGc9aRtvkr5O6lwX1PK2b5Q+XX1r2s4hRJINnMdqc1OfyzFt2bcyvK8LIQA3wCfptaCr
 eSH/KDDOLsC09p2exrQfmcPosCL9y2aLHNFhJ/4VY/twcnO/givYKeyrFVl6MeUZ6hcZ7vpF7/5
 Yvd3GYrmxU+aeI4xGn94vcz9CVcQJ+k7In48waDmkgMB/62pgLz2ZpbqxAQM6wZ5I+jsjIcDRne
 Yqnmleu8vsvkH4lp2+riImhRjFhNrw==
X-Proofpoint-ORIG-GUID: NrJxgL2hUCXxNSGf1LJs6DCsmhcjPfmU
X-Authority-Analysis: v=2.4 cv=b9q/I9Gx c=1 sm=1 tr=0 ts=69319073 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=kx0EAdazurEMUcr3plsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 phishscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040112

On 12/4/25 2:43 PM, David Heidelberg wrote:
> On 04/12/2025 14:34, Konrad Dybcio wrote:
>> On 12/4/25 1:29 PM, Griffin Kroah-Hartman wrote:
>>> Add the required node for haptic playback (Awinic AW86938)
>>>
>>> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 17 +++++++++++++++++
>>
>> The DTS is unfortunately still not merged :/
>>
>> Please arrange with Luca and either squash this into the resubmission
>> (depending on how the driver changes go for the vibrator) or resend it
>> afterwards
> 
> would be enough to provide dependency on the Luca patchset trough the amazing
> 
> b4 prep --edit-deps
> 
> here?

This makes sense for patches that are predicted to be merged without
obstacles - IIRC Luca's original series still may have some dependencies
on various subsystem maintainers for oneliner compatibles

Konrad

