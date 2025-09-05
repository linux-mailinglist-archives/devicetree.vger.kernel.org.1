Return-Path: <devicetree+bounces-213378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5ABB45463
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E99A5A4431
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D803B2D481C;
	Fri,  5 Sep 2025 10:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iDWdCbR5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E1A2D46D8
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 10:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757067624; cv=none; b=K+v4hseklyWh0mJjlujeEfPMZV+oufVk2OW5ivK/S/0GPgUcGuh5iw++2Dh4dwPT2jNjHSJswaKlY41db2sKnFxV11Blv9NcGLvyl19Dh8e0Ob5YJU8ZbCLJZ6ck2ZszhlXjzUic7jEzoywqUF10POLtOEMSvMlCWJaMUiz1N4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757067624; c=relaxed/simple;
	bh=NhL39okvE1UQ0JDbrGcrVCu7unTeSnVwrFd1RwYqZM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ibQjMrLE00Sz921HjfrRLxZWlI53S4Tj+7NxiX+6sjgm2hkTRn9Ot8NXrTYVp2YUd8TSPcy3mxG0+XiF+bmKAknidFul4LUbRVIkbgaGzQd4d7K8AM7+Zdbv1ZDmZ93BGgk7PXItIA0FqAKl+xpiP63dDG4d4B+lpw+/vKc63vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iDWdCbR5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5857AQbW012042
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 10:20:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kTOVAGfJmHAMbslcDUKw3QbQxdL6mIKaKsV42CZz9as=; b=iDWdCbR5bU2UWlLU
	y4vO0uzK/G082CYybYH9KBDzkgIiLLuDfn9q4i8gWqER57Y7OtZW00rEBUuV6zl6
	Om4lUxRVewiEAxwZcqBC/hI6b6LtQgKMb416nUV1GcdIVpDXhAYBjI92I0IsjrEH
	ZBqtY176u1be2bt5W7cnnS40jG5Fh4SAJgBtc7bu/7TtEwiOVF6JHtASmiEXYg/j
	3ECvhkR55a5XHDPKKs7zB2jpTRjsUpNn5sl1hKCctVkD5/KuWPT9bIcKyZGj/zXG
	R9N/qQJ5yquVKJBOwkqppq+Cpdw1sCokN8AaSlwshVaOJa+bZaseMXoRtfbgV9g+
	FWlV6g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj74c0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 10:20:22 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b33e296278so4285971cf.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 03:20:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757067621; x=1757672421;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kTOVAGfJmHAMbslcDUKw3QbQxdL6mIKaKsV42CZz9as=;
        b=v7zb7oSIa6hm23T2gQMr186l9WI/byU0VU1hYK9eWl4KP2m8vsLm77veWwg3qZ7H3I
         O2uG8kXj7WrolKA2TRvntxut9RtpPUDfwBsiuGad7uig1Y8BsuTVY4K/P1K83PxOgxUo
         Vh4DQG8X9Ohvf+VWAVAuVKi+h6auuvjMRJfrBMYoM7I64zJ4pzOVFugucMXg4KLCirDJ
         PrkYvWaeGqCLrXDnH35UU/Q52eAxwVC4cFPlbCwww1q1Gnem2yyBmDKrHCVUeUC8TkM8
         moxaBemduqTlkvcM1XFMCKV5zX4exlwkmjem6AHwDZRejkIAQNYv9yXBnrAmQfjoxzAT
         Rbfg==
X-Forwarded-Encrypted: i=1; AJvYcCV3gq4DFYKOrT78Mr0vLV9s4gL41a8yfkBt2F0ZSfvx2VRjOzqTJ1JARnGOmtyZEzMgGo1TYCTK0k3M@vger.kernel.org
X-Gm-Message-State: AOJu0YwqfQlcssPcCsrNLqxrPSpVkIGevOCoiUj4ndsV+VQ7PK5G81zi
	Q0EdunnxK5q6INuA8ZvBSJNDjMx/3Ux4ELJRAJhuvLjYttyHS+x2sgfE596VzMZGe0AxZLTEtt5
	pSwaih7KkDznsuluj3LBYCYqWZ9U4r1ijz54wcML72HrZ2TXQjjFyGOcqB9SkRRjO
X-Gm-Gg: ASbGnct5ektZYSpyC53FYeSWZy0C4cKwRq3yRoNi58+T3U+JWYXdip3mrx6W6UyRF+n
	QDg2qqYVSzUSRxhKT62dP9Mf/az1vpsQBBDv6D7W2SPHgP9/eKbanSHj99FCvdph1DaLaEKBgZ/
	c2dHMpSDWAZ0SXwaCjTUfvqckqvFQj6DiSli0CD9+oEz2qekzplqmicvj222xYMyJ+AXne+hcGo
	l5L3QQHl5JFXmrmynYHjC61GbctuipgWToPaQPtaycGxLJ4ax0x+j6cy79eObUvi5tQzK1PyvNb
	juTbGMhclsEX4/80onfSHA8550bj1JDDKg2dSG18+Kseqp5Ir32sn15mW0QGcfTwWg3T02+MYkQ
	lzszPQ02A/GqOMWghKzUpdg==
X-Received: by 2002:a05:622a:1483:b0:4b4:8e4d:6671 with SMTP id d75a77b69052e-4b48e4d6f04mr83378751cf.13.1757067620970;
        Fri, 05 Sep 2025 03:20:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGO6Dw5E5OGVqQHPhLnTT6piTScFBZOcK2M8RO2gr8kQRnOFlQeerKrV8G2BH+P30VO7Bu8Lg==
X-Received: by 2002:a05:622a:1483:b0:4b4:8e4d:6671 with SMTP id d75a77b69052e-4b48e4d6f04mr83378341cf.13.1757067620108;
        Fri, 05 Sep 2025 03:20:20 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b047373b000sm497098966b.68.2025.09.05.03.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 03:20:19 -0700 (PDT)
Message-ID: <e480ab16-bf98-4a3e-a7e1-67776a598201@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 12:20:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: leds: add generic LED consumer
 documentation
To: Aleksandrs Vinarskis <alex@vinarskis.com>,
        Hans de Goede <hansg@kernel.org>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Jean-Jacques Hiblot <jjhiblot@traphandler.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Sakari Ailus
 <sakari.ailus@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250905-leds-v2-0-ed8f66f56da8@vinarskis.com>
 <20250905-leds-v2-1-ed8f66f56da8@vinarskis.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250905-leds-v2-1-ed8f66f56da8@vinarskis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX1RjvK8vdaLoM
 hsLF/pm6XUsObJMO7FV3HhhMV37lTx2zCjb70rN7CtE7QYsF6Qy8VH33G79j71v9BSZ74NLLYUJ
 vu9Q21XM4zDiL3fbNHB4DIiHBhiuQFGGaSxRzCSY0ftijv7qT8uJ7I4d78qIW7+WuDo8aRDsWa2
 UJlHSW5+1xmaB82BkUV2RKLquvCSSFC7IFowWO9OQ8UdUs6mS4u0vsffdw/1VisqN92jsJ8QQRr
 LLfQLI274eNe2d7F+hRdfupBudtB2m/JNU37wBvpe+/yMlWZMtKxllPeLZoI6HD8iBAtcn5tQV3
 HY9F/S6Ve88CfiRFOqCw32M7qcXvGLzVBq734E2wOj8InmaV7dzF5LAWg20Qi6iBPlaiaCD6uCR
 xTZ6E4pt
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68bab966 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=I76Qk8w-AAAA:8 a=2ng2SV8iM2HKWhXzYmMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=vUPM0Wvl0xcrLs4nqPIT:22
X-Proofpoint-GUID: N2iDFDI7kYINnY8bbYuQdK2DGMx51yyz
X-Proofpoint-ORIG-GUID: N2iDFDI7kYINnY8bbYuQdK2DGMx51yyz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_03,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On 9/5/25 9:59 AM, Aleksandrs Vinarskis wrote:
> Introduce common generic led consumer binding, where consumer defines
> led(s) by phandle, as opposed to trigger-source binding where the
> trigger source is defined in led itself.
> 
> Add already used in some schemas 'leds' parameter which expects
> phandle-array. Additionally, introduce 'led-names' which could be used
> by consumers to map LED devices to their respective functions.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
> ---

[...]

> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      camera@36 {
> +        compatible = "ovti,ov02c10";
> +        reg = <0x36>;
> +
> +        reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&cam_rgb_default>;
> +
> +        led-names = "privacy-led";
> +        leds = <&privacy_led>;

property
property-names

is a common pattern

I know this is just an example, but people will copypaste it

Konrad

