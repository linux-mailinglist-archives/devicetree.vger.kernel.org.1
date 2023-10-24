Return-Path: <devicetree+bounces-11198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A08027D4BBB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:16:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D16DD1C2085F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7952224C6;
	Tue, 24 Oct 2023 09:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="L27CSkz4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B2B33D0
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:16:49 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED19310DC;
	Tue, 24 Oct 2023 02:16:45 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 950EF66072F6;
	Tue, 24 Oct 2023 10:16:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698139004;
	bh=r0vyK6t+hqH4TTC1qIrFumbx19aWI5+c+iBrveLsLsI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=L27CSkz4NL1hcSujYkcmuxOWxtewf0FMmpdPgtsFlKACf+LH4JSaWsYAZAB6xF11e
	 wO+d0hN+bI+tTGLYkT/ycX2vOYVIztV6FvTPqiqCqsoVv7+KJckIcopaGTkMTCL2YK
	 WNB8LYod3UYtvXEuayB3fRCHrRigXFzF5y9S1dgqeEunYC1TV38zK893FZy8UePVwX
	 gVa9ltO4XwxzjWf6SthT27ZgBcA2CWKr+yPU0qMMbBxbVESb6RARuDdeltZ4qFXs/r
	 JX+ze8AvL0ltGj+hcXakQeDQOGMeiVr6ycFBnT/e1ArVay/V6py/cxWLg3PxH5CME2
	 BH5aYLuCC3lxw==
Message-ID: <1b1c1c78-4ac0-46bb-9986-00ea1d07b527@collabora.com>
Date: Tue, 24 Oct 2023 11:16:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/18] dt-bindings: pwm: add binding for mt8365 SoC
Content-Language: en-US
To: Alexandre Mergnat <amergnat@baylibre.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jitao Shi <jitao.shi@mediatek.com>,
 Xinlei Lee <xinlei.lee@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org
References: <20231023-display-support-v1-0-5c860ed5c33b@baylibre.com>
 <20231023-display-support-v1-12-5c860ed5c33b@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231023-display-support-v1-12-5c860ed5c33b@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 23/10/23 16:40, Alexandre Mergnat ha scritto:
> Display PWM for MT8365 is compatible with MT8183. Then, add MT8365 binding
> along with MT8183 SoC.

MT8365's Display PWM controller IP is the same as MT8183: blah blah blah :-)
because saying that it is compatible doesn't mean that it is the same...

That's a nitpick anyway, but whatever - you'll still have to send a v2 of
this series, so you have an easy chance to edit the commit description of
this one.

Nitpicks apart...

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>   Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> index efe0cacf55b7..e4069bcbf8d5 100644
> --- a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> +++ b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> @@ -32,6 +32,7 @@ properties:
>                 - mediatek,mt8188-disp-pwm
>                 - mediatek,mt8192-disp-pwm
>                 - mediatek,mt8195-disp-pwm
> +              - mediatek,mt8365-disp-pwm
>             - const: mediatek,mt8183-disp-pwm
>   
>     reg:
> 



