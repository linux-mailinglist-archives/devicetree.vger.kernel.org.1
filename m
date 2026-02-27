Return-Path: <devicetree+bounces-269312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBVsCL65oWlcwAQAu9opvQ
	(envelope-from <devicetree+bounces-269312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:35:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B731B9E6F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:35:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5B63E308DACE
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB9943CEFF;
	Fri, 27 Feb 2026 15:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SE1Tx3kW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777D243637A;
	Fri, 27 Feb 2026 15:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772206163; cv=none; b=jQta0dz7GQDA26fsMH3mOTvwCUOp/TCdv6gFCfAECFEKhcelWN87ZUmmcI/Clgzrur2X+DMePVizt2M74RjYNKA1/fMFFD5I/V4RG3qtuUSgXzjdLW+lWkiie3DIsriVcd7tVoUyL1eQV9sLpeSjTYU/OMozOV4rFuwPf1kDe/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772206163; c=relaxed/simple;
	bh=eSxvpC1A4x44gz8OQPYI1TH/oWe+icsoC0P6p5bEiWc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jFYdECbpc0hXe9acM5sRlTkhZTKr5G+a131ExO9dPE1K9J7Re5cODtTD6R63OHyBx8db/up2rvqU1gW8ujcYctiZsXvivdnoFfeRhHqk9+veSCmjGRvOw/Tz88bNMITQoO7eJWdyjnTz9nlI+ozJicZSXdGINUYJxiGVqWTe/Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SE1Tx3kW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2C34C2BC86;
	Fri, 27 Feb 2026 15:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206163;
	bh=eSxvpC1A4x44gz8OQPYI1TH/oWe+icsoC0P6p5bEiWc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SE1Tx3kWJq9WCfTc/XyuHXYW8WuZufsw6+I9Uv9vCSjmxjxmm/h18KYPkSeSj8A8D
	 Vp2bix50lazsq92tLoXuuQxOAXBYoN/OyMaAEmIEkCfHPF2cCD3IBhpoNysx8jch6s
	 25f0YbO5qmrqDoLai20zNtIpO8Pw4RBhoLE+0U1Qq8Y19x2afB0nXWpAl1OjMAcYpF
	 dc6KuSMvOKl0TWFaPQLW/sq5vRqfwBUXNL2/aXsP4hGIBjBv2bOTb62US0dYGh/Z9F
	 TDBEfpWmeg6bbG69ghXDM2aIciHpzxAtJX5fqDEtDxLpTM2hyEsTF/qrNjZstWCNZH
	 nbGyjYlb48sZw==
From: Vinod Koul <vkoul@kernel.org>
To: linux-mediatek@lists.infradead.org, 
 Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
Subject: Re: (subset) [PATCH v3 0/6] Add support for mt8167 display blocks
Message-Id: <177220615729.330302.13271524782737465316.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269312-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,linux.intel.com,suse.de,gmail.com,ffwll.ch,mediatek.com,linaro.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B4B731B9E6F
X-Rspamd-Action: no action


On Mon, 23 Feb 2026 16:22:44 +0000, Luca Leonardo Scorcia wrote:
> This series adds support for the display blocks on MediaTek mt8167.
> Tested on Xiaomi Mi Smart Clock x04g.
> 
> The first patch just does some reordering of dts nodes with no other
> changes as this makes later patches cleaner and easier to follow.
> 
> v3:
>  - Added mt8167-dsi compatible to driver instead of changing the binding;
>  - Resolved patch formatting issues.
> 
> [...]

Applied, thanks!

[3/6] dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
      commit: 7df891f2c39442c120fb4f9bfdd7c80e6de84015

Best regards,
-- 
~Vinod



