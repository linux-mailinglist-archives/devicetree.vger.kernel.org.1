Return-Path: <devicetree+bounces-255907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8639DD2DA26
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:02:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C06EC3046436
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 07:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C71812C3271;
	Fri, 16 Jan 2026 07:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vo7jC+PK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bFzCOygE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72CDC254B18
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768550308; cv=none; b=cq00p4DGfyzau3zrep75yX2FgbdD4U/nDwX2R0EXJ5wqOqXjwvqnLthOlLhd3+A2mDOXYHP4zKZ3ivcp4ne4Sywm6GrHb7+wc4wEGs3poez4rCaskPAlr5SX5Ic6CACqoqW+uJEb+VZj/gNpZs2rhAfbKa4fSm+WnqUQ+2N8FEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768550308; c=relaxed/simple;
	bh=XVs9uOGoh3kHklzB2DXHZeFDPDnzC+MAb6PudaaHgio=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=lPvJqQ/j45CLPvvVJG+gOd83xbvRhS5VfGGWOSP/frYM8wSOxO16XN/smYPZ5C0k7q0Sb9DIEtCBNlP+kZwvOx7grnMjyEa7/eC83xPiAYFC1CxKGSrEB+XCSujPa8EHVY6Mm6fs1CVjDHY/D2DX8yYC32HX6lq+0Fl8S6ZyU1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vo7jC+PK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bFzCOygE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMgQSu4015919
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:58:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wyXN+iT+tYR+hDVnUAWsufHGX48hHBiyiWhhpL8bftw=; b=Vo7jC+PK3iqlJnbu
	xY3zDoQ685OS2Bz76kQQhKoXJmR9HBQvhHqhkrwdCkY3WuXLCtf+RrdYB6kN3CFN
	g6keMW+olYboGdSMuNCEAvLalPg44Zil2LUkxkP2s7EzMFOZiUImAurxMbEP1m4l
	ovH7LtjbkVoyikmbHPvSEdZ+eYA2+iE52vS8yTNyV/qP85O+b67vJZ7He/x0EQXR
	xgBiJ90of32Dx+gYzjZdWDSvlahoyLpZt4aUk+Xxrj+XP8pHUEFM8jPC2+nWuNnQ
	C/xXSKkZKt0q6FmC4txymC0ZtgNFKpW/ZgkkIrN/+3paCpcYDMm1mHmEe1Yn243L
	vGtiQA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq98y99kp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 07:58:26 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a7fb4421so99676885a.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768550306; x=1769155106; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=wyXN+iT+tYR+hDVnUAWsufHGX48hHBiyiWhhpL8bftw=;
        b=bFzCOygETaXoATAi6nclk9h5vkGqFhdxwXW9Bkofcnd322s/BzGj1XwDRRsMKzFgMJ
         JPg4Xy/ejtPT+1ibSIoAs8BkQzJ2qQFGYVtE5ppUakVPmrxIThpD6shkYMqdbloZ7Bru
         mrxpWt09Z/uUMNyJZaWkWtNcWYaKe5PIl6VY94ZWHFj3JCXO3Ger6rISvS+vWZIGCRs5
         5b+hRNWdWM66QBMPeaWvG15TydAQ1BtyxbEVJHdsCzjHUUIj+BIhPzL/DFLrNiESKpfn
         /Rs/XWSzybdaokv7ePq/+++F6hHWaS+An861im7PULNueVXTKA+hhDUaijBZQ8ODwfq/
         n9CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768550306; x=1769155106;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyXN+iT+tYR+hDVnUAWsufHGX48hHBiyiWhhpL8bftw=;
        b=MOcMRQTYkP3w82WbaWVNebbdpZQ/XXva7ef+Kt38folHfcTxBSBEBThk4SjqiFuKiX
         cia/+kuPHy/YlD6tGbyNzArPb+hHA1zbpkRKYKcMg/qQlgRQ/kHjbJ4kIHsQGWi5Az4j
         QLC8FkFi88Q6scS9wPQDFmWnlneWuseaose+CfZ27smNrSUPJ8RUexsaNng9eTj9a+5E
         i7uXLqgBX3FOkeIWAm2BPPRx/j3S+w2CV6J7IWtXcdIZj28QHIwDky4z3g5nrip4cVdR
         4sqPqvLLWEUHj7nC0b0cg275Ip8rhqxzG22ex1+akMAyAxx2yPeGLVlOKOh5Ufll6QHg
         S1Cg==
X-Forwarded-Encrypted: i=1; AJvYcCWMba1HFEYz7XdUR2DJVLI9Oo4wTJoNJgiil9hhIswc/1IyM/n2dQZJWZo8E7Nrx0NUJgRZHfenMjem@vger.kernel.org
X-Gm-Message-State: AOJu0YyfIWJ7eLacePPbxu9y/xKNcoMS58hNOZ0JShB9rj3PSV4H+EfK
	eIHMR4rLOkoKw/AW/Hh7ootsL9Kp7KxhBo7NY199AwFSI8FVpdRs8s5LCiSjo00ROOjk4cRff7L
	kySj1Z8+iPfNBOohXpWQArUQb1hoJKcS7EduzRVmN2B1KQ7JjZeC6/mfY0Sw7gsct
X-Gm-Gg: AY/fxX7XcP77qTq9UJGQHMYAxEyHGqFEREuH51ZQw70kUjcTq2N14qU3wVYkvowLIKm
	JE5Nm+zRJzdJ2fQQN0TmuW8V2gq769/TcErEIz/lM2CHBQ1FjXCQiwz1bUbOvI1/tEcchzokzmW
	k6S1T6gA2d7DaNWt0c0E3TT4vdj9Hs4FtPNa90X+ue4tQusrgLaeJI1tu/aw/EJMCo663xVnfiW
	b7pFt5xsNpXE8JL0h5DVNEHNpN8NjyRp/YQUOxwg/zjNpe3PxBiugO45XGMtGiT00gY+fW9YTdN
	ej4N696oeRaG5IkmfvitkXHUZlJjNUO9a5jiVRQwU2NB/f2gYZ5DsvRSXRnRRwBlscfZWz3ukb9
	l7+98FYGwyc2ZPxP+2DoPZyxIHOgoHPDxMk1Ssg==
X-Received: by 2002:a05:620a:31a0:b0:8b2:e6b1:a9a6 with SMTP id af79cd13be357-8c6a66c833dmr286096185a.17.1768550305947;
        Thu, 15 Jan 2026 23:58:25 -0800 (PST)
X-Received: by 2002:a05:620a:31a0:b0:8b2:e6b1:a9a6 with SMTP id af79cd13be357-8c6a66c833dmr286095685a.17.1768550305516;
        Thu, 15 Jan 2026 23:58:25 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65452cdb01csm1679452a12.8.2026.01.15.23.58.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 23:58:24 -0800 (PST)
Message-ID: <49d6f8af-6a01-4611-854b-d1e0ce567929@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 08:58:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: usb: parade,ps5511: Disallow unevaluated
 properties
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20260112090149.69100-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260112202040.GA943734-robh@kernel.org>
 <0d04b5c6-4e4a-41c0-ba14-09c95a6df235@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <0d04b5c6-4e4a-41c0-ba14-09c95a6df235@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FscIPmrq c=1 sm=1 tr=0 ts=6969efa2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=cGCFXuo4JwDHnhW9cKYA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: EGzjiIRNMQ40DtL3dQRJVYbIWHRoX7VD
X-Proofpoint-GUID: EGzjiIRNMQ40DtL3dQRJVYbIWHRoX7VD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA1OSBTYWx0ZWRfXwgAY798vyuMM
 bswY388Sj7qM9XVs/oF/cTrJPdpcBSZjv0Xu8BnYXJIvNro628kUcG/ek/1LStYqCpkNWXLdtaK
 Pdyawx+LFrsrSKORR9b9xzV99pYhcnQlwwFh7z9ZNBT5ak54d/lIWqQD7tyLvW2emffv0brrmZD
 xBcS4avAwTExXyetVp/vqWKfkokA42V+skm5V+HVYZSrrlSkVqvv1wAOU8c62lJHj9hKs18MeMC
 b8leLNURu57hF8+f+9UxkxvdgMgkvzX/lQSB7EPIjQDK9D9wKsjVRbTKi6lG34FQPuzDT9yL3YM
 RACPH4zyeNBm104KT6lZ6QxxB3MXNQIRYSWB8d3uySq7p2La8uN3ussFV/b3P6U4BCBP4lo3Om6
 aaNeYW2hfHfeBzW/Re+C33sujNrF+hERmpyOEO0vWMgm1fr89PLVqpLiAFtqO+1xPC/lprHRHj2
 F4aYiDVt9v0N8Cqjl2A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_02,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160059

On 16/01/2026 08:55, Krzysztof Kozlowski wrote:
>>
>> Removing this is wrong. This is defining the number of downstream USB 
>> ports for this hub.
>>
>> What's wrong here is 'type: object' is missing, so any property that's 
>> not a object passes (no, 'properties' doesn't imply it's an object).
>>
>> We should fix dtschema to allow additionalProperties when not a 
>> boolean property to coexist with unevaluatedProperties. I'll look into 
>> it.
> 
> I see your commit. I will send v2 of this.

Ah no, that commit from 13th Jan was for interrupts. So later then :)

Best regards,
Krzysztof

