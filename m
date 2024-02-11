Return-Path: <devicetree+bounces-40474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D612985094A
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 13:48:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CA12B213E2
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 12:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE352E851;
	Sun, 11 Feb 2024 12:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X4SbvJ0I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265BD5B1F9
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 12:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707655691; cv=none; b=IuzmhYkS0pgpqddZDFYlEaPI3rdFQiSol8yVu5NpxNYxefvfmgzNF/0bXQE/SX6CFRBh82f9oWIc147NbtK54PCzoxIeRyEyvffl3j5kibl4nEdlJHw1ljMo3meiVMEAelqTGuuZmAuiVziBi23bgQHlLLUKGpNfFybw9oAjKxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707655691; c=relaxed/simple;
	bh=YtPQYhGoZFiNjdXyTNLpl0nHs7qMk9SV65BMh6Xp6OA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uTsL5jdc7tvjyjtszJaEhiGJVY1oT4pziDTW22wKTsjHgvCzLOIOCMWQ1ZGdx2mXx3tELgOQGKjixWBgArCkTiBePJGGJcAJecrP1/ipznllGmIDNTeYaRj/zE+93DePFclQbIemk3P14j3LRbzr46POA8vJx7AV8MBxaIXCj5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X4SbvJ0I; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-410cba44286so1105715e9.3
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 04:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707655686; x=1708260486; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YKwwIEht+STV68zAuLUrCjI+NrGd/KoeM+vDdyoLiLA=;
        b=X4SbvJ0IQVeWhccfCVDulh/LGCU1v2EOZZRr5CEhixhI5pKw/sCGNrfNnFr6XSGhN/
         ndBM11T/8ktuM78VfVwflq+mQb7UoalJXAiJ2KaOUSAxRoqb41XlaIjn3tkUgKfVho39
         J+CZ5l9Ss9EbY1x0npgQxz9B8sNB99jNVfRuBgFGBlEngr/Jc/GXcZfOSSruFInXXksR
         oQ0uT0z69aQOYJTFv3GfrPpi4hbPZLnrcHyZrs03ykMiGQ1RlxH41vU6DU3WTY++XBLr
         0YX4WzEEeueTjEKdgvACRyYFdFZ75bHLwn8siUe8RpRjgVwXZipkGw3UCPMZ3f2f47dy
         f+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707655686; x=1708260486;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YKwwIEht+STV68zAuLUrCjI+NrGd/KoeM+vDdyoLiLA=;
        b=nLImW6ehHZO4YwaxVqNOjNKDqBWcliExz5kYmsLZasfcXFxfhZt9Ti/+xXR2OR7IEZ
         S/xcBREuWHQjeTmTEom+XTt1GNGU6ws9IAmRoS98BxKpbQy3RHAW0F2xa0GjOukrVbVR
         yqsNwCH0kjY8gLMs6x7PnioFK9kQK6SypjmbUBNCEW/pKVyIGufwGXtDe8Ogecnr5RXI
         3qiizsVFWq2Sx28+MxIwVtY4ztg8R1I8rzXdIVANBynSGDxRaJLStwH+7eP1uba9dd1F
         NbK1RKhX8SfXz679CZii2v9doe5epj0Nm/PPVa4eTrBAzrtHlk1mzYGKXRFfJwh+yGXJ
         IXuw==
X-Forwarded-Encrypted: i=1; AJvYcCVp8OgZWF/P07k/smpHBwDiDejANbOISNQ+kCdmC6qoaxd812cvfldG2rSs170BIkUsJZk6vuv11EhbVm+xMoNJwqT68tumpcFOnQ==
X-Gm-Message-State: AOJu0YyqdY95egCdNbpIuNRvlUuQxDnUs0c3Wm5Q06dlNASsuZ9naXs0
	ZkT85C/mhY58nm0GWRquTfYV0sgvr/o6xPvvIHgNB2i9Yn0W/Zk2ygVAceihgYc=
X-Google-Smtp-Source: AGHT+IG2mvYjEc0FQQHkV4oOYHTEwLoIGlw6fm3G1siK6YB88rzSRnqvZ4tA4TrhT6U74I9KKHMIvQ==
X-Received: by 2002:a05:600c:474b:b0:410:709e:f246 with SMTP id w11-20020a05600c474b00b00410709ef246mr4605982wmo.5.1707655686482;
        Sun, 11 Feb 2024 04:48:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWOoNjVEA6zJowiGkI7h36xLzeBnTrOCDLmP8Do3I2m7aRpdHnkTQJREmWiuuVfkDVtGEJ8xFTGXKmsc/HKFXp48ZGuV625AVBvWW2UQn50uU/OkdlThpS0GlzpFY040s/5BhGzv0cCcX12Tjo6ixaqX1wVibyl27ENT7/jBQh6SxK8UqAb68o5kXa2U6feJyCTrjcf09I++h34GKOlrdB5GS1vVSEUZNmXppqkosM/Wa77A7P5WiFjEGC3spKto0WOFXrlB9EJrc/DS9e3cwNKXJocHbYy3HehvBhPEc3a9rK4fhCPPsxewfqWdhqHB44bTjX5w+r6usB+mAwe9fu3T06y8WEU4Cj+RsUIvP2ERqDij+MI4GE9qq7xqhcmTwdVbRncy4qrCEbrV0yifpEXcYKa96J+VdwLIsbd1XlMCFaMKgy+1b/m/jsE2owbl0h0VGFRzzCdmyHcSHEozn2gsp8YOv5vUvoxvHQNgKhwbWHRj9dDL00Fbwb1p9zMV1Eod59g7GnbpHVFtmfofg==
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id a14-20020adff7ce000000b0033b2276e71csm4192345wrq.62.2024.02.11.04.48.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Feb 2024 04:48:06 -0800 (PST)
Message-ID: <4671f082-c180-467a-8381-4f2ac31131b8@linaro.org>
Date: Sun, 11 Feb 2024 13:48:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 07/14] dt-bindings: lcdif: Do not require power-domains
 for i.MX6ULL
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
References: <20240210012114.489102-1-sre@kernel.org>
 <20240210012114.489102-8-sre@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240210012114.489102-8-sre@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/02/2024 02:18, Sebastian Reichel wrote:
> i.MX6UL(L) uses "fsl,imx6sx-lcdif" as fallback compatible string,
> but has only very lightweight DISPLAY power domain. Its DISPLAY
> power domain is not supported by the binding / Linux kernel at
> the moment. Since the current setup is working, let's remove 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


