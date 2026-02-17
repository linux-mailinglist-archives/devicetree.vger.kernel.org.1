Return-Path: <devicetree+bounces-266004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN3BDQQflGk1AAIAu9opvQ
	(envelope-from <devicetree+bounces-266004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:55:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5046149718
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 448A63015716
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9252C2D7392;
	Tue, 17 Feb 2026 07:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poNW0uGE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E853134CF;
	Tue, 17 Feb 2026 07:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314939; cv=none; b=BbjbWZe40/XUKvZteYgaD8yGsyy948sXX/yuKu2TZIvaGilgIe9rtO6kB1G7hzSd/BNLqf7dp8srg9rEIEpDVgXcoTamzsTQMe32fTr7ZY+DJjn6JN5pXNKw8tXKs/kSjFJmW5+M2yuYpgPFhWpPgzFnmsmoimxZ4IXC1vDaNV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314939; c=relaxed/simple;
	bh=RIT9q7ZjgzCwi6a+GrgVFx/hK7w839qVlIXKzRBoBTI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bLZofZrGg1rF8F1AN8wxW05TbmvAw3PFDGJML+DFSvETkXZ3iLnl7MF5FmtNP0ACjhmWlamzGWGDRRmpwlXq8bTsoV6gCHTYiH1xvdEbUQqi3FxkRjUo2UA6iI96s7sKSwT35RCtamCpICaR/ScuOE/qFIJXOoFQH4iDjiOujQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poNW0uGE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88372C4CEF7;
	Tue, 17 Feb 2026 07:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771314939;
	bh=RIT9q7ZjgzCwi6a+GrgVFx/hK7w839qVlIXKzRBoBTI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=poNW0uGENYq2wzDEQmx/QG2h3DW3WMtP/85H00VmpkKRZYXeCqxKcDvdv7zelcSIu
	 9OzMybvVH5HZdXRi+IPnvxTAte4yRnClsBb2uUWlyWSJonI+RJlvYRQuYgY5F1IsVM
	 jHr22nyGKprUUznuHfXtRk1+LR9WZL6NGbAObmVXnOBm9EoWaOONVmuMluUJBSagU2
	 AVUMePee6iRG8nrOy8BPTrO4bpz79Volj5zoYsvalQQExcA+CMGkOuvGRcH8NqBXaB
	 lfhxsk5EUgStGEp0I7Xf0iqt9VsrMMtLu8T/34DvHcKfbIJ1ow0vK4ps3r6+iObkNx
	 L8TbvrTbqu0rw==
Date: Tue, 17 Feb 2026 08:55:36 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jitao Shi <jitao.shi@mediatek.com>, 
	Fabien Parent <fparent@baylibre.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 4/6] dt-bindings: phy: mediatek,dsi-phy: Add support
 for mt8167
Message-ID: <20260217-loyal-rapid-firefly-edcdf1@quoll>
References: <cover.1771258407.git.l.scorcia@gmail.com>
 <66fbd5dd3604ffc4fda45022c1db68e4e0be6714.1771258407.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <66fbd5dd3604ffc4fda45022c1db68e4e0be6714.1771258407.git.l.scorcia@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266004-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,pengutronix.de,linux.intel.com,suse.de,gmail.com,ffwll.ch,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: A5046149718
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 04:22:15PM +0000, Luca Leonardo Scorcia wrote:
> Add support for the MediaTek mt8167 SoC: the DSI PHY found
> in this chip is fully compatible with the one found in the mt2701 SoC.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


