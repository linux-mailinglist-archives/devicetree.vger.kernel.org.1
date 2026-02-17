Return-Path: <devicetree+bounces-266033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLYfFlwvlGnQAQIAu9opvQ
	(envelope-from <devicetree+bounces-266033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:05:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B163114A301
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:05:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBE393029ADD
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 286972EAB6B;
	Tue, 17 Feb 2026 09:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="g7V7zRvi"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E405E2DB7BD;
	Tue, 17 Feb 2026 09:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771319052; cv=none; b=BUk/01Wjmnig1rMwvabbGKHOGzo9BlEJ/d5qvfVnvVJNSg/ylI+L59JqYqva7SL5PCdkSJ2XtG0oqpvvnb4OSkzOSd+xTagNAF8GqUm+3OdqlMfuoYhLznby6ifFm9Q7eJzlLuu6q/5SE4CENe5Qf7uFG2DSFXL0ubDa7//o48A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771319052; c=relaxed/simple;
	bh=vae++N3ldxpj2Z73jscqEQDSlh8brBYEzCGpMC1vzUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K72Hy5HJl1sHGUtQQNDnVaVjjYXET1NpojlwN8wIRfHciwax9qlN6NGCpoexk9RTjs8Hq33nztTXrtJc8FPAhfHUgo8lvYI5RG+wQUUEIHMtv5lOsaKKg7FIHJPSr30P6pb3O3fXUT1yuTpRF6UK77xmtsYzQvMphjOZ9HnlS68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=g7V7zRvi; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771319049;
	bh=vae++N3ldxpj2Z73jscqEQDSlh8brBYEzCGpMC1vzUY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=g7V7zRviG/A2FlbIgfMi/z1F+OVkYNcyBinkSsm88Vtm6HbMWL7G7StU6QMZ+yFQX
	 lgBJR85Ar5TRMiylroVdyTY75Wv+9ae9+5sHUWWoYcUeNXkqA5yelJCPPiR1rsKqzA
	 b4GamW5k/0ok4WvIsKG0QysP8vgN06+xKRhcshYWfzQiysPUe0S2vZHZbW3z1YCgWp
	 e62bFS1ZU+zpEJYotjAZohnPw/VcjYJUOdm1B3IcYxNrgUwc0OykBz6K0m5WWEAkBP
	 xaSQvdJ3bec5tfYNBb1ugNYsiXqD9TwNkp4GfJXnEQkNdRImZajDf9B+OpY0UMb9js
	 fV3M+NIYvyoLA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7BD4617E0C21;
	Tue, 17 Feb 2026 10:04:08 +0100 (CET)
Message-ID: <22088c06-d412-452c-8d4c-c53e8f14fc59@collabora.com>
Date: Tue, 17 Feb 2026 10:04:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] dt-bindings: phy: mediatek,dsi-phy: Add support
 for mt8167
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
 <66fbd5dd3604ffc4fda45022c1db68e4e0be6714.1771258407.git.l.scorcia@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <66fbd5dd3604ffc4fda45022c1db68e4e0be6714.1771258407.git.l.scorcia@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-266033-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: B163114A301
X-Rspamd-Action: no action

Il 16/02/26 17:22, Luca Leonardo Scorcia ha scritto:
> Add support for the MediaTek mt8167 SoC: the DSI PHY found
> in this chip is fully compatible with the one found in the mt2701 SoC.
> 
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



