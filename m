Return-Path: <devicetree+bounces-144700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF08EA2EF6A
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:12:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0543F3A5173
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 14:11:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E4323313D;
	Mon, 10 Feb 2025 14:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="KSmfyN7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3130B23314D
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739196716; cv=none; b=p6x3AdAdll+7jrJAtONuwR7AffEUM1nghrbpGCxDUPIEnzO1LpuVUlO711NxxDsMRQ3+pCykc+sQnvgaOn/xR6Gn+hlYd/KTrzC8TZw49BGD+I811VAsMJMZVM8F+Of1wLsoNKFJzpCToRKE4MEMqC2QMZf9PdV3fZKo+bl0VGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739196716; c=relaxed/simple;
	bh=Zuw/8hktlkOv481QcKFpOWhseUN1AsxMNUdGVWQ/6mw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=crYB/8dc61sBGaGawFH1tkhPY6J/ElsOsgAdWxq81zZcs865y+g+EWGsQrjkPr0Hvt+3VtF1AmDdIWA8fOZGI9VEXOnhgs5yEZzEcrHmsFcSrr7nbb4VTshgc5Ux9LSdzgnNVDWShgqDg7jY4ZpHID9qBbrc12nWlUpp3/7wUY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=KSmfyN7C; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2f441791e40so6045405a91.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 06:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1739196714; x=1739801514; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+U+cJ54sadwbAEEQ1XMnFeXEpukGhrX3NXgbMiqSEdc=;
        b=KSmfyN7CVW6Nauz9XeRdD90SgOmUWUsBBXX1ffRupmbIJruw1D16LAg9ItOp3yyGph
         1gKn9rncqTSLTUPTI/lQGXKfSeAIZLAfUSLypBTWN1XjgNYhVrqz4MeGVRQ6mGZXQ602
         bHEOP6hHw5FB+OorG+7vAPbtV6cSEEUs6cy3mAzx1//02mrQmvpKDaa0tnfeKieBLdXl
         yiJgjs3/pne+6+7jmlCzYobM2dpG7OLNlYJn4J8F1Fu01bkkd/mB0T5F2+lcStJllQ+u
         m/pTrJ5GY41/oqkgNDUQW8fKM6MTNBZw9o4OOEHUS96JzeMQSnKlzOasxYiPfBZGrioF
         BKZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739196714; x=1739801514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+U+cJ54sadwbAEEQ1XMnFeXEpukGhrX3NXgbMiqSEdc=;
        b=OEkj+vBSr48qxJSWyUg6giR5wyRYUXDOk2YI7Qn+JLt33XSKlGOgv+kPrnuriPPYYU
         82VM6f1nor61GAly9ncjZq8tPO/VI7TzPLR0x6mbZiHWAYW3R1I3hGds4AQ2OOEN63tv
         lMqeBYTO4Xq+xNi+eq0w6/Mj2H4Er+9j0GC9NapvqNZvbTbB6UBG0DgOvAowZ3PGuofO
         8aqicL6q5GFXgksLX/y5/wuXRiQXb7SBFXSh3aX1lKm12dsE3FEgmZMLeKi5N6jP58MM
         ypdT3oegvvsIRAQNbBuEyjQMPoFc6smzAlmNCg3Zvrm2LjiU2T6OEfPAKhIqq3/7nUI6
         Nctg==
X-Forwarded-Encrypted: i=1; AJvYcCXXn2z0up2tPcdFIS2UGvcX82cyJKppMvT8zjFAQT7SjBTM0iVPueAaA9EOV+oydr2af9wKiVKzCXWb@vger.kernel.org
X-Gm-Message-State: AOJu0YwZuv52JzZPjOuBF1MVy8lXmhP3IJ9ntSDkGZu+U0CGOgFMNYI/
	EYgC+lwmcqa7jCE1OqxEdsGOmJr5y97x1QjuS4srJVxM1IWnacNZC0J+ZMvC5Far8rlCix+gzL6
	ff2N6TSQER6m1O9JMTmdZ+JNSUSqfdFdrCG5wxHXTdI+n7OvVgG+1AQ==
X-Gm-Gg: ASbGncuYGMbOmgzesregsBbkTQKmItEyzIdkNN+kDPpvZ7Ej6HfPINYiVttDjs90rEB
	RCyNidN1Dp0jVezzcxT18SDhsD3VC/YmC8g3JtRjztIGaXPaPejtco82fWvd7Fbd0+2vy4RE=
X-Google-Smtp-Source: AGHT+IF1+dEqoORyKXu66dB2Rg8beCQhSwmnjjgQuD2ZBI10xzxpJ4Y1Rzbu+lgFq2AzogQw2HBplK2cVN2+wBMuIPk=
X-Received: by 2002:a17:90b:368c:b0:2ee:ee77:227c with SMTP id
 98e67ed59e1d1-2fa23f55e0cmr18756882a91.3.1739196714411; Mon, 10 Feb 2025
 06:11:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de> <20250207-pre-ict-jaguar-v5-2-a70819ea0692@cherry.de>
In-Reply-To: <20250207-pre-ict-jaguar-v5-2-a70819ea0692@cherry.de>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 10 Feb 2025 19:41:43 +0530
X-Gm-Features: AWEUYZk9JtE8zrOo2lYnBOq7Su2RsFQcHGdiZcrSSTPxmQcqmii1TNFikv1yH9o
Message-ID: <CA+VMnFyom=2BmJ_nt-At6hTQP0v+Auaw-DkCVbT9mjndMmLKtQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] arm64: dts: rockchip: add overlay test for Edgeble NCM6A
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jonas Karlman <jonas@kwiboo.se>, 
	Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 7 Feb 2025 at 20:50, Quentin Schulz <foss+kernel@0leil.net> wrote:
>
> From: Quentin Schulz <quentin.schulz@cherry.de>
>
> The Edgeble NCM6A can have WiFi modules connected and this is handled
> via an overlay (commit 951d6aaa37fe ("arm64: dts: rockchip: Add Edgeble
> NCM6A WiFi6 Overlay")).
>
> In order to make sure the overlay is still valid in the future, let's
> add a validation test by applying the overlay on top of the main base
> at build time.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 534e70a649eeada7f9b6f12596b83f5c47b184b4..02f98abe1df10f44f2ac27ea5f6c6e6c6334724e 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -192,3 +192,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-vz-2-uhd.dtb
>  rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
>         rk3568-wolfvision-pf5-display-vz.dtbo \
>         rk3568-wolfvision-pf5-io-expander.dtbo
> +
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
> +rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb \
> +       rk3588-edgeble-neu6a-wifi.dtbo

Please add neu6b-io as well, wifi dtbo is similar for it as well.

Thanks,
Jagan.

