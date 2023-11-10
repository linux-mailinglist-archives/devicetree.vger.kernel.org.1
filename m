Return-Path: <devicetree+bounces-14991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D36767E7C02
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 12:56:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56F8BB20C39
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 11:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C0715E98;
	Fri, 10 Nov 2023 11:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="FJTlm3kN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1496B18023
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 11:56:21 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0C0431E6F;
	Fri, 10 Nov 2023 03:56:20 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D695C66073D6;
	Fri, 10 Nov 2023 11:56:18 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699617379;
	bh=UsQJMA84in9eZ7+pQRAtSLereQcK1RKiGbtcXNhScsA=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=FJTlm3kNTqQ3pO2+5YHTzqCb8s8ldGouiZu4T63SdwavS+QLS5SsHFJdB/yNlGf1S
	 nxMHvl+igevcE4fY4CiG3H0YzxgWGaEwkiNbT/ohG1r3ldjNLUN+0eqPP2rGNaAUCb
	 28U+cGmi4aOb5X9uVBTxOBAf2vZus6lLr/tWDP4BKR4qXz1ffRfc+9hidXPEDhTlXi
	 xrCGkQn2SluEzmMm/fzHTZebOcVG4V5MHcJuPt14CpYS6VGZpi85qMB2AHL9oPnICp
	 LqlU3keZjXBu0IQyHL1t52E1uK5ixbh7tAcf1hMjyPcZJCtCTkVKgJh3mG6ePfzGYg
	 7tAiNfCVnmRSg==
Message-ID: <2678cb48-1d2b-47bc-9272-06d9aa140c58@collabora.com>
Date: Fri, 10 Nov 2023 12:56:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: mediatek,mtk-wdt: add MT7988
 watchdog and toprgu
Content-Language: en-US
To: Daniel Golle <daniel@makrotopia.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <6912f6f406bc45674020681184f3eeca2f2cb63f.1699576174.git.daniel@makrotopia.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <6912f6f406bc45674020681184f3eeca2f2cb63f.1699576174.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 10/11/23 01:30, Daniel Golle ha scritto:
> Add binding description for mediatek,mt7988-wdt.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>   .../bindings/watchdog/mediatek,mtk-wdt.yaml          |  1 +
>   include/dt-bindings/reset/mediatek,mt7988-resets.h   | 12 ++++++++++++
>   2 files changed, 13 insertions(+)
>   create mode 100644 include/dt-bindings/reset/mediatek,mt7988-resets.h
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> index cc502838bc398..8d2520241e37f 100644
> --- a/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/mediatek,mtk-wdt.yaml
> @@ -25,6 +25,7 @@ properties:
>             - mediatek,mt6735-wdt
>             - mediatek,mt6795-wdt
>             - mediatek,mt7986-wdt
> +          - mediatek,mt7988-wdt
>             - mediatek,mt8183-wdt
>             - mediatek,mt8186-wdt
>             - mediatek,mt8188-wdt
> diff --git a/include/dt-bindings/reset/mediatek,mt7988-resets.h b/include/dt-bindings/reset/mediatek,mt7988-resets.h
> new file mode 100644
> index 0000000000000..fa7c937505e08
> --- /dev/null
> +++ b/include/dt-bindings/reset/mediatek,mt7988-resets.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +
> +/* TOPRGU resets */

The first reset is zero, the second reset is one.

Where's the zero'th reset? :-)

Regards,
Angelo

> +#define MT7988_TOPRGU_SGMII0_GRST		1
> +#define MT7988_TOPRGU_SGMII1_GRST		2
> +#define MT7988_TOPRGU_XFI0_GRST			12
> +#define MT7988_TOPRGU_XFI1_GRST			13
> +#define MT7988_TOPRGU_XFI_PEXTP0_GRST		14
> +#define MT7988_TOPRGU_XFI_PEXTP1_GRST		15
> +#define MT7988_TOPRGU_XFI_PLL_GRST		16
> +
> +#define MT7988_TOPRGU_SW_RST_NUM		24



