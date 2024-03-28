Return-Path: <devicetree+bounces-51478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F73687F728
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 07:17:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76B4F282D35
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 06:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C89D5B1E3;
	Tue, 19 Mar 2024 06:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kvDWi8gZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA054C3D0
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 06:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710829051; cv=none; b=lOtEVZwCKrePQTZf6HdTBRHQ9ZUpzA/y3W5J1txKvAIXJS7HJ6UJi3kKKG7wYPXPNVUsrjynpXR+SwPu9/4QaO1rfVEF+Tc+FgKONsvBZ3gqyz6u+eJ4kwIDah/+EaD7TNzIAwA59xOzPz475EFK6gV01kBfXvFqSIcHAzYn5pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710829051; c=relaxed/simple;
	bh=KO+9X+7GA92l0o4OIANnyMdbMpIzrM4SjZ4iWAIFwh8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O2UoP/xSRLDbrDyhfKev1wj9bfaU4Mu7EP1R1riK5o6kTtBYBacpML/ob/8bzMj0FcVdjyTF4+wTNqIMwmK8iAfI/ZFAZHC5w2g9jVC0Ir0+pYpagf6ikGgzob62R2p+rfT48fxG5QRWDe/Yesd+EIKeIHGyV/Zy4iHVoNvmlKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kvDWi8gZ; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a466e53f8c0so667259266b.1
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 23:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710829047; x=1711433847; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WwhAhaz46GhWTh8+CFLOrSdr5p/C0jE1Rlpb+oSoXR0=;
        b=kvDWi8gZyqP+CMQK9TV5N0xi1q4sMu09gzIzaaj5jarNVRuzJO+qqPEPCjhnMocKAZ
         sAu99yUDcuBx3t/j8J4Wut4jwy+T6EBD91MRmIqonGQ+36XeINxX5osEVYEhtr314AAG
         VtUyRb+SJWv3NWqfDU7AyPVVAzGnEeqUie4fIVuapUyjZQPunz+AwNww/L2OBH3+9HIC
         jobSMnzGUkJGbZoqeYFPCFhQwkaiqVgZgeqzVgUE8dmFtRJC2CucvLuOpLwElP8smGYH
         eNT/oHYjcxYC5mMItGv2T8KU4G5zXY7acT26vY9vmi8qhDczjLfphg5B5z/qa0XYmr7J
         Q5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710829047; x=1711433847;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WwhAhaz46GhWTh8+CFLOrSdr5p/C0jE1Rlpb+oSoXR0=;
        b=uW+eGoDN/fRIxJYWFtXxNy2YouhOAAG0f6idONp/KN6pL6EAUYLnSgkqUb027uWaNq
         I168JzTfu3WFTbDfI/cuf2FsdQBmvGaBx7mhlRa9pHc7+OYRi54gmoTUQ/PQc/mRzLkW
         kH/akBbN/Z4me6+EIIPCOSqr4ogsZ8Zopw17mmKS8whf48Ah00y/Z7S0hXkdVxYAW8LW
         vA/caQemHUALkx56a6EzoYav6D5C7p2wCfM7dmXXn/gJosVrCUcRLQC5jrrqH8LAIF9T
         Tncl4iJd4YY1g2Xvk+EJEikK7V1CZH2sruhleWeWgpBRBoMEbvXP6XcqmRf4NRAxAqUl
         +77A==
X-Forwarded-Encrypted: i=1; AJvYcCUTnNUGcVgaTk5DUsuotQovThiKMBLNRtYTRi13ZI+zyc7KH2/4OE0g0A/AYQAi3bpfVsrjlw3PCD2nB8/k1QrtHcNNU6StaNKMiw==
X-Gm-Message-State: AOJu0Ywhq3Egf7JwAqp4ms6JTTL5heokPHh+tAi/+inoe3v6yGifFZuw
	36sRG0vFkO4GW1IzpajRcvodTqDiSidHECY6kzMF+aTLv3g+G7Xsx/Lzp67+y8E=
X-Google-Smtp-Source: AGHT+IH+XSrWLaP6cKqrzqFn0m8tPEQXDgHsrzxAqJ1OHzU6KodiMqML+UVG5mtayCF0OXeOo23nYA==
X-Received: by 2002:a17:906:4e8f:b0:a46:2ac1:c3f4 with SMTP id v15-20020a1709064e8f00b00a462ac1c3f4mr1024118eju.75.1710829047579;
        Mon, 18 Mar 2024 23:17:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id w28-20020a170907271c00b00a46acfc72a2sm3081369ejk.84.2024.03.18.23.17.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 23:17:27 -0700 (PDT)
Message-ID: <e6d24815-abf2-4445-bd50-29682455ff86@linaro.org>
Date: Tue, 19 Mar 2024 07:17:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] dt-bindings: fsl-imx-sdma: Add I2C peripheral
 types ID
Content-Language: en-US
To: Frank Li <Frank.Li@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Joy Zou <joy.zou@nxp.com>
Cc: dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev
References: <20240318-sdma_upstream-v3-0-da37ddd44d49@nxp.com>
 <20240318-sdma_upstream-v3-4-da37ddd44d49@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240318-sdma_upstream-v3-4-da37ddd44d49@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/03/2024 21:44, Frank Li wrote:
> Add peripheral types ID 26 for I2C because sdma firmware (sdma-6q: v3.6,
> sdma-7d: v4.6) support I2C DMA transfer.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  Documentation/devicetree/bindings/dma/fsl,imx-sdma.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


