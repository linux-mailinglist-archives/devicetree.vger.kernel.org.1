Return-Path: <devicetree+bounces-265702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJ0aDQr7kmlx0gEAu9opvQ
	(envelope-from <devicetree+bounces-265702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:10:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE85142B3C
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CF2BE3001385
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 11:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70DB62D2397;
	Mon, 16 Feb 2026 11:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="AoJlRGvG"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E312BF3D7;
	Mon, 16 Feb 2026 11:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771240197; cv=none; b=sBP5WsjgduOOUGE2NtDEk/0zfzq4/WrW+v9135p1RerwNWJdcL6lFe58rqt2vpptvE6FlDxioggQkOR0yh+qTkO25xSbuQuMicBTmRS21l2hn977oWo34YnNHdBQcdxjCBGbI+4Vj1I+9PIg6txe8XHZRfWrtr1K1aFFSxuvpQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771240197; c=relaxed/simple;
	bh=2BYGDpWEMxrAcG3rC9ZLo1MRGuHLmJZBmcHxB19VUMk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OcF/8eEWRuJtYQqktbPIy9s/dKEI9yD1bdOjwRYnY7QBGYUYdbgalgkx4zAuL12drr8qrFD/NN3vcGpsyANJP4blNGn2WpBi7NgGsW4BCpJbGVZ392C3w3Gct6r9lbLSnV1DTzZpi6YfEfd1RTDwlK+u8iNwE3tPV4xQNU3ERY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AoJlRGvG; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771240194;
	bh=2BYGDpWEMxrAcG3rC9ZLo1MRGuHLmJZBmcHxB19VUMk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AoJlRGvGYPajnvB4Cm/rRq9OLoK8tHBhM2r8RanKtVnkF06QXMlYr1bkkDJIyFCkd
	 UAVbUc5Y8wfb+00JXuSviZD8B20oKyhZBY80eEYyl258CUHx7Oc023rQBxtiLChF5Z
	 SWub+ywyhX5OvZ7xlEpD0R4AAjP1xvrjjuu+A4RuurDm3yXGc/7O/7tmXVxkmzf+80
	 QCbKTC6qFIQBvOLlVyB4N93LgCtpzOd1e+fnFplGK/fHuHgGNo9XfSTLBeITkeFkBh
	 aMEBuv75GvOSEBBWna7RNhjrQxW2Y+zrjkbNHNoH6PU4a4hbxM9MO+wh5BlafRypny
	 ff45PBNGcucGw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 91B8917E1517;
	Mon, 16 Feb 2026 12:09:53 +0100 (CET)
Message-ID: <4e6b0282-acaf-4d7f-a2df-8163731569c3@collabora.com>
Date: Mon, 16 Feb 2026 12:09:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: display: mediatek: Add compatibles for
 MediaTek mt8167
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
 linux-mediatek@lists.infradead.org
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <cover.1771144723.git.l.scorcia@gmail.com>
 <826d54c75cfd1b8e4713431a9426e89edade9eb2.1771144723.git.l.scorcia@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <826d54c75cfd1b8e4713431a9426e89edade9eb2.1771144723.git.l.scorcia@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265702-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5DE85142B3C
X-Rspamd-Action: no action

Il 15/02/26 09:53, Luca Leonardo Scorcia ha scritto:
> Add compatibles for various display-related blocks of MediaTek mt8167.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>

Awesome. I'd give you my R-b seal of approval, but there's a few nitpicks that
you have to address. Please check below.

> ---
>   .../devicetree/bindings/display/mediatek/mediatek,aal.yaml   | 1 +
>   .../devicetree/bindings/display/mediatek/mediatek,ccorr.yaml | 4 +++-
>   .../bindings/display/mediatek/mediatek,dither.yaml           | 1 +
>   .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml   | 5 ++++-
>   .../devicetree/bindings/display/mediatek/mediatek,gamma.yaml | 1 +
>   .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml   | 1 +
>   .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml  | 1 +
>   .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml  | 4 +++-
>   Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml  | 1 +
>   9 files changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> index daf90ebb39bf..4bbea72b292a 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml

...snip...

> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
> index 27ffbccc2a08..bcbde16648c0 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.yaml
> @@ -25,11 +25,14 @@ properties:
>         - enum:
>             - mediatek,mt2701-dsi
>             - mediatek,mt7623-dsi
> -          - mediatek,mt8167-dsi
>             - mediatek,mt8173-dsi
>             - mediatek,mt8183-dsi
>             - mediatek,mt8186-dsi
>             - mediatek,mt8188-dsi
> +      - items:
> +          - enum:
> +              - mediatek,mt8167-dsi
> +          - const: mediatek,mt2701-dsi

This needs its own patch with its own commit description - as this change is not
really "normal".

You have to mention that you're removing the "mediatek,mt8167-dsi" compatible from
that list and that it is safe to do so because:
  - Bootloader doesn't rely on this single compatible; and
  - There was never any upstreamed devicetree using this single compatible; and
  - The MT8167 DSI Controller is fully compatible with the one found in MT2701.

So, please, split this one out of the entire batch.

>         - items:
>             - enum:
>                 - mediatek,mt6795-dsi
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,gamma.yaml
> index 48542dc7e784..ec1054bb06d4 100644

...snip...

> diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
> index acdbce937b0a..c6d0bbdbe0e2 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
> @@ -23,6 +23,7 @@ properties:
>         - items:
>             - enum:
>                 - mediatek,mt7623-mipi-tx
> +              - mediatek,mt8167-mipi-tx
>             - const: mediatek,mt2701-mipi-tx
>         - items:
>             - enum:

The PHY bindings are not applied by the same maintainer as the display bindings:
please split that out in a different patch, so that each maintainer can apply
the relevant patch(es).

Besides - apart from those nits, everything in here looks great.

Cheers,
Angelo

