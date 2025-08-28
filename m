Return-Path: <devicetree+bounces-210022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AC9B39E87
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:18:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A36F3A8252
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CFDA310636;
	Thu, 28 Aug 2025 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oORpWphW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890BC31194F
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756387114; cv=none; b=iUSpc1edmfzmZwJ5AIYqdzFtfgVB1v2ddItYcrkmME5nusV1Q1WZcahX2gxfOTATBDznmrGsGqG5cVKtPvjH+jw1ZqMW9gdCOxh8OHOZjFjOEnIXDjuTsmoLo9NjLzS0MtdjBfdocAnQhsO23b84CqzxtK52bj68dkPThEyTSuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756387114; c=relaxed/simple;
	bh=ebhj/zH63szQOxrn2XmKEdObSLoftIObuFab2TP5dTM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rImfvaa30cz2V+E5RUt1k3PhsrimZtyK7SzlgDkbupfEnOleWA4vJxKTDEkFpT0Kiv8CoUw4o4Bkd+owOgpZ0RMmzoD46M3xz0pke0IaY+MhQTfMG28yOD5raekQiko4p1R+A/wCBSh9qKU9lJolXkzswUMNM6ykVjoMM1jMvfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oORpWphW; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-afe84202bb6so111198766b.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756387111; x=1756991911; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ViZhgiI208mpprvGOd6oxNdz3FM6ZQalsGn/kG8/O+A=;
        b=oORpWphWN9cY8aM8/UiVD8VlC4Mn/GWm2SszlmT/asgvLyRZkC/c8PX9sYlUEwnMhr
         mpwlJKUlYmhH75xiVSe3XHqidTm5LgMymbthbNQZeXqRjJxO6uHehLqV6+gCrPTIwgXp
         Wp5soukZlFm6a9FOc+2FNVTeqA6wSzNq96R00wUldfZ+l5iHInG2C0sTcfLgf3mBY3nL
         9iCbi5jiQhrj9RPlPpPVa5MsV8XNPYNQ97Ajg1uznWpvHvpEmxPk+D+PD9lAqkx7P4+H
         dfoab2OWtAtcKj7Nk6dhOpufxPsUq2LQzCvkUP+Q5PP5k3yusWFvayGx8Yqk8Lrvu8Uz
         aQIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756387111; x=1756991911;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ViZhgiI208mpprvGOd6oxNdz3FM6ZQalsGn/kG8/O+A=;
        b=A6BtcJqWwZnOow2u2dGVuxpZVZA8YxH6qhjxMZYQmtj5TRNEPMN/Y3rmf81Iyi6QCS
         D47WVMoS361t2zbIfykuHirU+rfUKduq83BeH84HILfvR2zMD6NEfPxjc+DLs23Sr22E
         mWt9O4FKHr4+vHz1fZFehLIj5FZqyQu5b724xbEfKn5qnHXdVfcJY8wHybm2idfyjKeG
         phGZPBD8GDGDTUhx0oywaTn9ewyJIc9YcL1ruDTryXdrDBMpW6B4V3RdRkVMx3o0HAgX
         7DWJoM1d6jSwNC0u60SwrLCobi6wM62NKvLRmi0r+VEoJxJjSxxFgzszlZ3FlJExA2Ty
         Gueg==
X-Forwarded-Encrypted: i=1; AJvYcCU0+VE73Ktf/+EgHTUNOD1caTgLC0gLOOP6zzoe1OHDV6szBdz1UNc/UMlWg2gSZVWxnEaln4gRIOIe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1q28Bjt2KY7PI7V+Uwg0JFEhO5Shjx+NItE+hGLaz52qL7asy
	shbz2F459JgWNhM22CE6gzn1T5R5B1k7RRt+8ZX59iDuW4faddtNCEH7/yXcdPqpE48=
X-Gm-Gg: ASbGncvitbu+iGEb7s5GVxk3Hr/O3zEhy/MfPs7E8NLmgkHUEMfOh/6UQH77VJjp+fy
	7UgE0TNPGFC3VipUdk3LQ94wsDL88Pp/0Ob242CiclTJ7RMfyAVrOcFjXWMQbeyOUBqQK1D9AMb
	d0gYTDEWupI42nXTrAgX+GWrRnfji/c95xFXcl+XzNPAj4kSojN/xTTlNuyclIhs5kEj7a/IZ40
	Nu7CL0RVnbfFN0cLlqevcHICPC9s8UHHsGJeN+FsyILUZlm2r45z6J8Oj/6CUpPIeBkK8vjTwAq
	KcOSgodtawhyS+Y2hTQus39DxoxbeFleiVhTqCWHhofuUy9wAPnLx6aae5pWSKMx0SGDeS0LFOR
	q/g8MoBDLbfnQpeXhshbBv3mknOTXk6EWhs9U9e/hT77zwIAybNq1lxlkKE7CiMgP0X3DbxjJKc
	Gms3fWDw7rLHGg
X-Google-Smtp-Source: AGHT+IEaSNs6TM+t6ZkGhDUEgtd04oIngPsTBonqSpot3F8/HKB8oZ6LSxQKQNPdYyIrbplDJe/VjA==
X-Received: by 2002:a17:907:7f90:b0:afe:82ef:5433 with SMTP id a640c23a62f3a-afe82ef59a0mr1449610066b.10.1756387110829;
        Thu, 28 Aug 2025 06:18:30 -0700 (PDT)
Received: from [10.41.150.230] ([77.241.232.9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe790e382csm945788466b.79.2025.08.28.06.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 06:18:30 -0700 (PDT)
Message-ID: <1b00069b-e9b8-411f-9a66-de449ce4420d@linaro.org>
Date: Thu, 28 Aug 2025 15:18:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 09/13] arm64: defconfig: enable rockchip camera
 interface and mipi csi-2 receiver
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
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
 linux-rockchip@lists.infradead.org
References: <20240220-rk3568-vicap-v10-0-62d8a7b209b4@collabora.com>
 <20240220-rk3568-vicap-v10-9-62d8a7b209b4@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v10-9-62d8a7b209b4@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 19/08/2025 01:26, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip Camera Interface (CIF) and the Rockchip MIPI CSI-2 Receiver
> are featured in many Rockchip SoCs in different variations.
> Enable the drivers for them in the default configuration.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   arch/arm64/configs/defconfig | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 58f87d09366c..625cb5b47fb5 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -876,6 +876,8 @@ CONFIG_VIDEO_RENESAS_FCP=m
>   CONFIG_VIDEO_RENESAS_FDP1=m
>   CONFIG_VIDEO_RENESAS_VSP1=m
>   CONFIG_VIDEO_RCAR_DRIF=m
> +CONFIG_VIDEO_ROCKCHIP_CIF=m
> +CONFIG_VIDEO_ROCKCHIP_CSI=m
>   CONFIG_VIDEO_ROCKCHIP_RGA=m
>   CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
>   CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

