Return-Path: <devicetree+bounces-243514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 396FFC987D1
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 18:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B2013A2BD6
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 17:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9291E337113;
	Mon,  1 Dec 2025 17:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zom9/Imm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153043358C8
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 17:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764609609; cv=none; b=kFdAb86IIBn2aR/OLHWowAhx6eeamoaVDiZsq0SVgiohZ/jNFcvEGD7Ozw2V3yv4Ql8o2lDsu62whnGGhic24sdR57kQeSexhosrmnNQQ/CHtDtIKrAX69mEUmyzS331Znh8WuOPPNMMwDE2w8w7GCWAWJOsdlA3cW8cxL3uxgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764609609; c=relaxed/simple;
	bh=Pkvbx/rsr9npY84kvBVhLaqULKnMKhECYvLjFUsYua8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=On944kAUnkjzrIc2BRJDDCWFbvDyuzuuQcLIge0TzIZ/m/DeGzdROC8u6GP2l+oHyNwTJ3TZrnbqUDZYIiw6N+Y7Krho3+aT20TnfWbV5sf8Jkjj6ViK3dcwZJ9pl0r/bD+PGJVHWcyJ8cXjGCebKDeO9h46a3yWX/nyjRBgUpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zom9/Imm; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-298144fb9bcso43983535ad.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 09:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764609606; x=1765214406; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a2CBelm1P11p6Y7C7heiLZ9mkPWBlTs4Y3+LWd3Gn5o=;
        b=Zom9/ImmgKoRwIymf78Bc0fVpPrMSdvn+Rxmeb0DbDxa8K+JdOet0vrlcRWXfZ9viy
         iFb8iRZhsuGdqdisd5QRonsSm6crX+3wH6oGKMRma8ks5ZWmutbBugu0ZM7CLOJWChu2
         ig3i4hpzhqn05kotgXIOafTqeADiFsxjCCDOEWQukT8rCelk8P7d3a/2D7bhYoqF4f0N
         Me56tzu88x02TRzRHy2wAq26xa+EQSEeePfgdkycVydVldDNPxHeMPXdGc1AJB8o1zAM
         QwUqpNoVO+qvt7C9N4sq7tLX3DnmP9JfPXlKbwM+INKvyszOyLEfW2dCtwn5FB377FgN
         KkrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609606; x=1765214406;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a2CBelm1P11p6Y7C7heiLZ9mkPWBlTs4Y3+LWd3Gn5o=;
        b=NzMh1DwvGXUdaSx3uTy6VqjodfHYFCNaTr5+sPGNUyMUqD+lgDom+k62L6Or9l+CaT
         L68qCRszQw7aU5dXf2CTadx7a/dDrZTJHSkR+K7qsIRz+PINVGRFzCPrQJvP9j0NmtaF
         YWuzEzDUtk1je9ZVLAGBMK9tdRf6nPT4KJko4x332knJeq/7kbp4ns3GvhHpHDbPrW3R
         nPytObCFSnnAous7lktc/LpZrwNd+sSyav3FTuE3rINWOqPD9vPD6Q+nf9iOCO/AQTCE
         r976BG5R74u5JFnPq4zbd+YjJ7FWC9CyjWKqv2nJYLVvo5a+LRUoWfEqsClUhT2kzdF+
         PkFA==
X-Forwarded-Encrypted: i=1; AJvYcCXDe3xi/fYZZdlRzOnfUoUi5Utvsj1VBl6MSGkoynIQLfuUxzyS1wwFQUGR36ppVO9WBV5+KSpBKjzc@vger.kernel.org
X-Gm-Message-State: AOJu0YxcuyEW1LF/2ljGbacpaSo6maxJEylDmyS1OBMWi0NxBEEoS3ww
	I9wKNkvz0Em81oNCmZKRjksuImhA4oX/dptRh/lNFH4dnM/17EDLhjwf
X-Gm-Gg: ASbGncvaHOlgduAAOIDe/ZnPEXvni5DRu5wthLWpHEZXWnmVzJWyHXEaSEiavhM7rHw
	lCwEfe0oQoXA9EiCwmhTYjNTPuOEWJD80tT3Jpw7XPYT22FEcdg5jRlxF4B7W4ZBZTPXLkQDhOy
	LNmij6NVaUNyxd6rqKq7NvS+8ezR5/ZKx4pHzxWh5Vmu5c2+ixXk0J+MfUxYYY1bS7WmzZ4oYoA
	/006E4pn35XKOyo2mdr1SUkYNQld/2amN8WZ6XI8EruMfqWIxXxTi5BHvFGtsffHRgXgSFwWTY4
	T3O8cgmNjaHBBaSCExX3og41hczPd8gtdlIOhRum2xIK56gsjucY3RifBju5qGr//MSlqeGsZ/Z
	M4gdWD5WpulnuMWRcMFf4hWNb3289RezcGf37ZDG/oq5zV45uztfwibQT2FSMLb1M79WoNFFUf6
	K4u/eJW8LTNnr/IchmUMVx3cNTvlitC+H6
X-Google-Smtp-Source: AGHT+IFxUZMlZVPSrVRpIQJ3MuG4oYzgftZYA8N5yMR6pcGRWUMh7S+nz1of6oBw9lT1HrpGPm5IPg==
X-Received: by 2002:a17:90b:1c0b:b0:32e:7340:a7f7 with SMTP id 98e67ed59e1d1-3475ebe6420mr26672877a91.2.1764609606206;
        Mon, 01 Dec 2025 09:20:06 -0800 (PST)
Received: from [192.168.29.7] ([167.103.73.65])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d1516f6970sm13991659b3a.17.2025.12.01.09.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 09:20:05 -0800 (PST)
Message-ID: <8b10f0e5-6f6a-4b1e-b407-32cf7979574e@gmail.com>
Date: Mon, 1 Dec 2025 22:50:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: arm: qcom: talos-evk: Add QCS615
 Talos EVK SMARC platform
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, konradybcio@kernel.org, conor+dt@kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, andersson@kernel.org,
 linux-kernel@vger.kernel.org
References: <20251129142242.3661349-1-tessolveupstream@gmail.com>
 <20251129142242.3661349-2-tessolveupstream@gmail.com>
 <176442976917.4054928.8877916591661919569.robh@kernel.org>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <176442976917.4054928.8877916591661919569.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 29-11-2025 20:52, Rob Herring (Arm) wrote:
> 
> On Sat, 29 Nov 2025 19:52:41 +0530, Sudarshan Shetty wrote:
>> Add binding support for the Qualcomm Technologies, Inc. Talos EVK
>> SMARC platform based on the QCS615 SoC.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251129142242.3661349-2-tessolveupstream@gmail.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 

Okay, got it. Will check and update the dependency in the 
next patch.


