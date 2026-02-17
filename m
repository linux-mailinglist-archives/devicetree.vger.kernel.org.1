Return-Path: <devicetree+bounces-266035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yE9FDJ8vlGnQAQIAu9opvQ
	(envelope-from <devicetree+bounces-266035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:06:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 889F314A345
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06F0B301990D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 183862ED15D;
	Tue, 17 Feb 2026 09:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="P/8dKJUe"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDC02D97BE;
	Tue, 17 Feb 2026 09:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771319090; cv=none; b=GByjGWkC9Y9pXjKBSPyAGT7+eB9iJKaMxGSW+Fd7m9t46lNDoKBHYwh2yeHI3lXHVUOd7QvuQIt39az65n8ayeXY/sLbji5Z6BnTRPwb4jRo2+9rBy1zjepX1m42m6F7zeoThdc+DumgFvTx+H0GpMKYXe6GE9yktp5LQ7PL180=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771319090; c=relaxed/simple;
	bh=GM2WgMx7Ng/rdF2zETuZYAywqw+x63rUgxous4BKGi0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iooN0kCvFaL0jNRqHRSRAoFLQslHyzSTVir5oXCsjA+V1Uj0QpGR1lmVY7CrLR9yxh1dwBg2ngLE4nY1dDpzh4uPkIPpYKtyVzaT6mKDVMp1dKJWbMmZifYWEPwuVLbdo02/FFEaCtqBFKWTfveYO1d8DHHt9Km5iak3fg528H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=P/8dKJUe; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771319087;
	bh=GM2WgMx7Ng/rdF2zETuZYAywqw+x63rUgxous4BKGi0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=P/8dKJUehLt3fewEdrg8fx0moVOd0WujtJr+UCkF+mWpNCCmrpOyezEqcMkkoYKD7
	 NTsiXs2rzi1/CB63zE1BdEmiBEjuGsLr47/btK+eP1Nf7GsPS2mDS6wNS8GyGxT5F0
	 Wc4k7U2xqXLnZXa/k1YvWTOVsSFu0cVyHBvmz7NA+q2fwwFJ7MQLjUk5Pms7u8VK4G
	 Fru/CFFa3jJII7uT5u62GZV7QOGd9lCleU/a3FxbeSLZRb97mitXiw/aJQbV+Ua7Xz
	 CRCDbdbc2OHTN5OTbUXDox4O1dZhNdTfqAduYpyNhiw0SDR8NF4ggi+hCdTZLeepF7
	 nxHDuQ+fW2sBw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9034217E0071;
	Tue, 17 Feb 2026 10:04:46 +0100 (CET)
Message-ID: <c8ea9d3a-09a1-420f-aaf0-31d77c436eeb@collabora.com>
Date: Tue, 17 Feb 2026 10:04:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: mediatek: mt8167: Add DRM nodes
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
 linux-mediatek@lists.infradead.org
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1771258407.git.l.scorcia@gmail.com>
 <1e9cc053a4e80acfea492aaa186ed493115f318b.1771258407.git.l.scorcia@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <1e9cc053a4e80acfea492aaa186ed493115f318b.1771258407.git.l.scorcia@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266035-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,linux.intel.com,suse.de,gmail.com,ffwll.ch,mediatek.com,linaro.org,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 889F314A345
X-Rspamd-Action: no action

Il 16/02/26 17:22, Luca Leonardo Scorcia ha scritto:
> Add all the DRM nodes required to get DSI to work on MT8167 SoC.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



