Return-Path: <devicetree+bounces-172600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE97AA5924
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 02:47:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4505017A8B5
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 00:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F101E1A05;
	Thu,  1 May 2025 00:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HyYpig2A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2B5EEBD
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 00:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746060431; cv=none; b=Fa65qC8GgTNmppmXAUtbKcMAh/IoCsIoaX/RhdBHgfAaXSbA/yyeVldZVt7CYW6uWNJkGwvsrndvBcc8pgzZ3+r0hlnftZBelXxY9feM4io2NpaaJ6YLskx9TmVubB1iCxLI111zAEzETCq5u2+PG6CRZwG6aTZB+8ZHy2gTSO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746060431; c=relaxed/simple;
	bh=Icb+pZJ2iMM+dVdas91milhwACkwA8zPurhW9pyoKvI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Py0/Dc6MmH+XdQayJmrVTZJkeAtxYbqT6/xTJyNpDr+F4ucdhi2MTtD47a07VfudEIhC/0eJznn+xcxvJzG6beLM4hjkb6EO1bdyFJpBrEpUdCdXAp4AMlUjMCQhp6C9pDTlB2rEKSjaNPOJjynMxVr2qqll/pm32+kv4CLi1DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HyYpig2A; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-39149bccb69so270077f8f.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 17:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746060427; x=1746665227; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CtBcAAqRumzpJ4rTrz/zowPnd5Z+XJBF3Z8VAMzb0d8=;
        b=HyYpig2AIfYoeUAq/llZGud19quXMEWFDG8DM9O4LGpGU/KsLFodxu1qsKxNbHBlcG
         5f3L7EPdRP4cyGDtUQIKlIsG6BxylFyWcsjJOv+5iLNjFbRlbzdHOn1+ciMu8zfUkISB
         dAkM/Ijq2ksbbhviOiTNnz3cL8PVsSs3nqpmwibjlj35qWLf3Db3g2cRcWoDqCHtKQ9L
         DdvUaEA/cdybN7+9Dq0gqgcw+TfNd9IAWqq5XEm1wr9eVHRB6Qs2Xt9sU2yBlWQPsxDy
         6xMNU0r+hoe8CEjAjnnDsLxcBpLwL/rBO1hvphfaJnttoU5f0vtmT/xRVSUsqGlt5iyZ
         0mSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746060427; x=1746665227;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CtBcAAqRumzpJ4rTrz/zowPnd5Z+XJBF3Z8VAMzb0d8=;
        b=r+Mt/7P+ZYnaHN94CzdPt2786VCJY1oXk147Bsd8ZbvhqI6ORJ/OOpJNyZc9fzCi3f
         Wvo1WpcWclZlHzuNxVUzaD873kQvnG3LGp5HkkXZblbDtSvFZh7BM/xnDYxEyKUUQdnQ
         hYxR7g+PzYdVtvsRuCxONF1UuQ7ySTO9XxoS8xUXlrYJT63DiJdVCalO8s02z5siSBeB
         Df2qcgPbNP1P09NNI0bOBuF7ougkghoaoA+AeM2GP1pk4m/SB9G+ULIPidVX5Lhse6Bx
         A7c4ZK2MC4YMJkrZsmAOGfJYFXCbRXKofz5fpFIY+X+SRzhOKezRxGSIBpKsgJWe+dau
         NzUg==
X-Forwarded-Encrypted: i=1; AJvYcCUSI2TVJ3ZAUGIgz7Sd+/0yEoBS5ktThpwdGutKqxXWs797MD4Sqw4W2t+VJ6stBPmVmtq9zqNJ3+jL@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz5wTodwrrEpX+3MsRPeifUk+OeOP27zH393I5i5KjIJ4JMqi4
	xnXoe/xZSe8IhF3kHsZwE7hJaADoIgXJ75H4W2Fb8fBlM9lPtPqz0QxDiHDfPJU=
X-Gm-Gg: ASbGncu7kID/snNt+YWDjWOf7+gkDgktkKXTsSeZ85lDOsozZ4rzuA/JZFVg3uj+T+H
	FhIhtPdEXscGH0EwRzpMhamWABv6BlP5ydObxtYvczHGssiKC8Tek8h+cUhk5E8mU6OM+alBmZh
	FnzG3bTjEV8i+r103kQN5a7LoRw7i7xvFIUfZhtpgrCZrPhA/WaolkzjCOni03gBBdL57b3Cgrm
	E7SLD49eaHCG2Pn52F9a4wrb8dpJbD+J2ru0XKGXyqYz737dEvCnw8RoTthdasNRbzvws9kZi9u
	hiOr/x7MrnAUfGZjUr6RZxgPWjZtsuEl+R9N63924QYRD2OMtGZaNFupz9s+VTyl5ofqJ8RXc7y
	tjb+h/Q==
X-Google-Smtp-Source: AGHT+IFmbHtqypFHAYEgz34XK2p65MJanyk+f1Rp4pEz/8sdgn2En5b9QtiOnbh8idGH+h36WMLiqw==
X-Received: by 2002:a05:6000:40c9:b0:39f:fd4:aec7 with SMTP id ffacd0b85a97d-3a08f752673mr4547696f8f.7.1746060426770;
        Wed, 30 Apr 2025 17:47:06 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073c8ca99sm18107538f8f.20.2025.04.30.17.47.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 17:47:05 -0700 (PDT)
Message-ID: <5aa6b273-bb99-421d-a2c5-deef7839d284@linaro.org>
Date: Thu, 1 May 2025 01:47:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 09/13] arm64: defconfig: enable rockchip camera
 interface
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>
References: <20240220-rk3568-vicap-v6-0-d2f5fbee1551@collabora.com>
 <Vz96yQCdUZBjbVQtcrC3gaAUO1ximV0-SLkMByaR1p3EoVY61j98hMKsCQf1K1MnhDA6w92yhopnWMuUQRaRsw==@protonmail.internalid>
 <20240220-rk3568-vicap-v6-9-d2f5fbee1551@collabora.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240220-rk3568-vicap-v6-9-d2f5fbee1551@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/04/2025 10:15, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip Camera Interface (CIF) is featured in many Rockchip SoCs
> in different variations. Enable the driver for it in the default
> configuration.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 5bb8f09422a2..110ff52195a6 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -858,6 +858,7 @@ CONFIG_VIDEO_RENESAS_FCP=m
>   CONFIG_VIDEO_RENESAS_FDP1=m
>   CONFIG_VIDEO_RENESAS_VSP1=m
>   CONFIG_VIDEO_RCAR_DRIF=m
> +CONFIG_VIDEO_ROCKCHIP_CIF=m
>   CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
>   CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
>   CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
> 
> --
> 2.39.5
> 
> 
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

