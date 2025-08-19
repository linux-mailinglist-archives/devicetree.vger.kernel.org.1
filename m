Return-Path: <devicetree+bounces-206497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A187B2C722
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 16:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AE305840F1
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 14:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09C62737E3;
	Tue, 19 Aug 2025 14:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rg0giOB7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035A26C39B
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 14:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755613821; cv=none; b=TurwKwBnJ1Gvx7f/9EO9ozgZVGldWnf7U8qfsCESnR46aVF03Rb74ZkOjWWftf8ioVn0Otr4wpg8cuP5zHRIYuMCaPiinmZU7DDWRN9knqVY8wmWLGaEcjCzvCgyOyiJvJLUerMpRQJ2aIlA3bIhauLPgjBP4J44BPGZEAXb+/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755613821; c=relaxed/simple;
	bh=BHb5XD3m30dVa31U4JXmcUnl17RQxKxpugYlmcZkkgQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nsUxdQaUuMadwhJIlpgZBLJnavez4uMUS1A8eZc82vjIn57IFoDt1rAp21hnmK6RqV1Ze2OKRA0HxtAcm86ASnxJh4R0ci2BXHHTCwDd40JFa4NwN+TCu230OFKvz/UADI8DSfB3kON0vSespv9kcOQcCKiB7W7i4BwG/pgsh/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rg0giOB7; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-afcb7322aa0so76828966b.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 07:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755613818; x=1756218618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=hybfEz1ih63ikoPDM1Ar1esaLuaGhNzZj34A72ctWSg=;
        b=rg0giOB7jg6XsXSNuOmZv2aGLAt5zp6c/+NMWs2UIthZ7RxB4839LbhiLT6nngZotr
         Dy73LuA2v7l6f21fCmmL3H06nd12x1fgScNQQVontmS+Dv3hTiA1hz2OxCn/l3GZTXec
         MGsjZitSij9LvkfagqB3skqzjakY2o1VkQ8MafoemBMOT3JNl92/HhoGPru9glv79kXa
         XVDJ/izHMeDS0uVj8pMwpZTqJva4MR8IRNuaPEFI7UUE+tsDuB0pAzj45sC9X2LBRmUK
         y3vDip5pij8O/3c1qeLoyHNv/1kXexYIMhsWJxXljQg+L3Qu7buu4M8ykWVeS8XQspq2
         sc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755613818; x=1756218618;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hybfEz1ih63ikoPDM1Ar1esaLuaGhNzZj34A72ctWSg=;
        b=vBYbTEjS9gCkEXWXP/Do4+ocxs02Fdbrxuuz0gzwc4wLKambzM58Z0pWBPTipNNLzM
         YYICGNtwxWdFdYlwMZQLrNaErUNVLBtpITjpHuz42wMORZnF9vBhftsL0teOmXx7wUhr
         bmWE71aZZQQeneqkdSOzpcydiFGWiTE++4X3DhdEZ+PsVjsI0GtLrdGa6RddFgRBJJ1K
         YQ8XWkn+H4fwybu+E1YqnkpuAtseXO0iYGdcKiGHyUxd2Lr5DRenKZc4on0M2enPTNWS
         YG/KU32iNiWz1ahp2tGh61AUJyfY80e9NXN6UusTfoaeeztdkVdiBbpZMiXOa9c5tEUX
         Qz0g==
X-Forwarded-Encrypted: i=1; AJvYcCXHZMlD426pSSzsuJtWPlHpGmT6LHlEnVJcU1173HvY+5vWbqs1vN4dJk7/0tC35BwNH8M9z+59jTzm@vger.kernel.org
X-Gm-Message-State: AOJu0YywIZlb77xZ3qY/UGZS8+9gL9VtpAQTqiwhXrCp6Lu6d5VgksWp
	KdEuMHAzLeNiSQQSxeZOoiy7WVMWNHQqkj9wwKotXGtbL29qAM8FLdkI2FPVzstrVRna2Lj25bo
	OIsB3
X-Gm-Gg: ASbGncsEkyLHLVbT0r3MsxjTCDLgzffJrrhzgQgpw4HUEIAlN5wew/Y7naQWKRHf6aD
	xIwNy7ah5bux9Dms2wDpEBaV4LctmisoPKkpIpDzTn+3K8LOZLMSdh2DrxTkMY4Nw3P5EOKGnqt
	7LuhOGfUNzHd59RrHPee4Q6TO5ZlxKu7fNCwpVtPLGAzQkAUnx9E1jITXJ0kVosS70505iSd9tO
	AL6oiB3wlhSYMhvoAXiY6l4fFOP5oBGzMM+UJRv3ohTHl5kFIS3znocB+KJOxBDgW9zGBCtIRbH
	lWQ/Gx+mJgJxFBOn32eBBeOeCSjvGfFEyZqQFFvenuuWiDz+LMdndOZPHHS7uuPglZQ/eZKBobM
	0+ZWWz/lgNM1Q7NUYYtb1rcdnoGLW0fHaBtkYNexCJtY=
X-Google-Smtp-Source: AGHT+IGKPmRaGgK8HMhsDrZZpgNZ2uaUF2T2I9/ycTbkOOLbzeT+kBHZXU5Q5tFNqRz/MeyRprIvDw==
X-Received: by 2002:a17:907:3d03:b0:ae3:617a:c52 with SMTP id a640c23a62f3a-afddcb63ca0mr111993566b.2.1755613818281;
        Tue, 19 Aug 2025 07:30:18 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce72cbbsm1031580566b.35.2025.08.19.07.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 07:30:17 -0700 (PDT)
Message-ID: <b4d322d8-b55f-4345-8d9b-8efa4e9b76d7@linaro.org>
Date: Tue, 19 Aug 2025 16:30:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Minor whitespace cleanup
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250819131800.86990-3-krzysztof.kozlowski@linaro.org>
 <20250819131800.86990-4-krzysztof.kozlowski@linaro.org>
 <aKSKIkUTyc391CYS@lizhi-Precision-Tower-5810>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <aKSKIkUTyc391CYS@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/08/2025 16:28, Frank Li wrote:
> On Tue, Aug 19, 2025 at 03:18:02PM +0200, Krzysztof Kozlowski wrote:
>> The DTS code coding style expects exactly one space around '=' or '{'
>> characters.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> 
> Reviewed-by: Frank Li <Frank.Li@nxp.com>

Please kindly trim the replies from unnecessary context. It makes it
much easier to find new content.

Best regards,
Krzysztof

