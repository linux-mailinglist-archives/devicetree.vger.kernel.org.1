Return-Path: <devicetree+bounces-41290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1773E85306E
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 13:24:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C3371F285E1
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:24:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC203D396;
	Tue, 13 Feb 2024 12:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uSWzAzVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC2B39FF0
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 12:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707827039; cv=none; b=qhQNJvUe/4PErsmBAHDcc2S1hqHsgxDgYhAYcwkMDiJw3KF99T4spOxwVPV5mS+ZSSFtnWF7hjfqlAW/j/XOM175GiF+kRge30rRQoyLChiAXI4GELrACofjmps2dNG8srzFGMvn0LudMBAWwAlxuXmMdSe9hmUx8cctATtedzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707827039; c=relaxed/simple;
	bh=AFzq6YvOpk1JWl3esmnVfeI0g0eFEnBJK1sJT3ynJkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rNRW+UbMUVO42xguBreDGbtxbI+EsyKOzROqyajMdgCAKHybSeNkOSp/DXiploR9dDvh+FH9WjfIX9hxXqHCqiL+TgWDbjvvLDaf/7A16M+JwOJENZuYvmW9bScWp97qB6xhCiLhxpuYOqQdXV6FEjYJsYykj9HA1s3mjvqdQ0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uSWzAzVP; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40efcb37373so34109935e9.2
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 04:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707827035; x=1708431835; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZpL9rs6tYbWfCZj0rAvlmWiNAcCqPggXC5kMgMm3Or0=;
        b=uSWzAzVPjDLPuNog6lLut38aYfiH7TUPPWzr73xH8dgNds1KyrXlVkydL0FOBUeTGX
         +I3bm7XvxyDOpTS2SCsETO3kCHzPcN5+DB1dcqTLV2tEiwyuUVoP2b5zCDe/im0+VxzT
         SERl2hpfQKwR2duI9ZLMQFXeaVoUHh7aq0GmvxG8XR6DEldHsXIrC9yLGohCGzEagLuu
         OtYH/HsnCkzY/FjHjPo3rt8Wgs5C+eFBp+QwODwiWqWl5/aSDQ5u7LA9xhyGfSYOUQq6
         ipI47KedEg5bPP46w3sXUDPNWSzuDdSPWtyQhEH5Vl6xngtxN1n+N1PNZc6pqcNl70xL
         9OMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707827035; x=1708431835;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZpL9rs6tYbWfCZj0rAvlmWiNAcCqPggXC5kMgMm3Or0=;
        b=fFiOzzzXpdGPEPIx9QW7+lU8AHM0P59Px22WbmPiKaX33PXcrWKPCLV19KdDp6TRuG
         /W0UWyM4daIxVclmoPDiADAVIDgAQVHqILIHMoQBublURHuVdSR0mBL+SjfG0ePWWCYv
         JVkSmRdWSznp8HNgisqYWlsJUR/5TTriYO5PbKWPqjGNYS1mdRXn6XV2L82AsVXHZWht
         aZBj6JabSUSUurqVtkMcGx+WsxurJqS9lAquxe5o1YMT2Di5kp6WaaiEVbuCYi+eCb1B
         cBq/Uc3+Zp38aWBrx6imvp1Ug/QaXJVkIcco0D90pOPetQ3dN65dn6IolUhmXCainY7i
         TsBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnWyCzGLy3yGy/tdkVpIN7yJ1zRr8PUDqBvmAcY8Cr1xFSb3CFPrdv5X6Nc4IrnZE/uuWENTv8yd9u254vAKsI3TSE0LkssW8K2g==
X-Gm-Message-State: AOJu0YyVelFj0NPad7jSNsKn8r1C4F1HykK12dmYU9764jl4MFVZ4x6r
	+smJtCmhA+Zz+fhNaGwIt639qU1ZXK/RV7zUz5mVENpRYjDL9yloaBbPYuXDGoY=
X-Google-Smtp-Source: AGHT+IEvD95c2WHfMPKb7mqbPqDQXK57Wm9RohZcqQJDlFG7KGsa6K3zritnrx6C5KHpWHjkR1h3wA==
X-Received: by 2002:a05:600c:518a:b0:411:a802:700f with SMTP id fa10-20020a05600c518a00b00411a802700fmr2409629wmb.39.1707827035595;
        Tue, 13 Feb 2024 04:23:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUXv/Ww5dBd79YVYBH/rPu6G7oCMIT8sAPjan+u78BejyxG7qjQ2iRHR9xUockJtcjJE47aQ7CqFhKsDC3lOkgpWqpG1HniRatGP/1/lIfc1bfc2ZqH8H3aSln7O6QHiDeQgcCHTUe3RiEbBXIH2454XzOlrBfLYgJLhDMHpKCWEVGrAgU87p3fCc9Yu9NCLH4WZkk4bQSOntbIxKlpqtV8vQZLvEZy/jmaMJs5laz1uURXMPda52lQLdPQzDXlAcLuE7vBAustEVTInMoPXV9vVy2AzV6ZCvAFftBkS0lWnK0bRY1b27bpRB3dpcQu/WyTFe22j52px8U7Gv4yqTqjVKbOGZf0uiLIZE0StDJRFluLqvkh51eTHn1fE8ehTcXmWnYMppiGmJD9MTjW3ab0DbyI48kGje87heptYiAJzSWpR7O1nlCbty/baNJ6guHajE31k85uIbZUL4cXTlGGu9Q3ngHeYACMcmVp4X7Hyao+u0zNlwfW6t8uesy3Co5wxosMXHLRXLeNz3BLkg==
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id a4-20020a05600c224400b00410ebcf8180sm4505067wmm.43.2024.02.13.04.23.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 04:23:54 -0800 (PST)
Message-ID: <7edacc5f-ee3e-456a-93bf-cd4324c03720@linaro.org>
Date: Tue, 13 Feb 2024 13:23:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/17] ASoC: dt-bindings: fsl,imx-asrc: convert to YAML
Content-Language: en-US
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Mark Brown
 <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240213010347.1075251-1-sre@kernel.org>
 <20240213010347.1075251-4-sre@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240213010347.1075251-4-sre@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 02:00, Sebastian Reichel wrote:
> Convert the i.MX ASRC DT binding to YAML.
> 
> Signed-off-by: Sebastian Reichel <sre@kernel.org>
> ---
>  .../devicetree/bindings/sound/fsl,asrc.txt    |  80 ---------
>  .../bindings/sound/fsl,imx-asrc.yaml          | 162 ++++++++++++++++++
>  2 files changed, 162 insertions(+), 80 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/fsl,asrc.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/fsl,imx-asrc.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


