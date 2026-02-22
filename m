Return-Path: <devicetree+bounces-267204-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPH1DcKFm2mj1AMAu9opvQ
	(envelope-from <devicetree+bounces-267204-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:40:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CF01709DD
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:40:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B271300E613
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3AE235CB72;
	Sun, 22 Feb 2026 22:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ySjJLJEK"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7622AE78;
	Sun, 22 Feb 2026 22:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771799989; cv=none; b=hLH3Y7j6aPHINr/NkvLCorugDsiubDCU6NvFvFkJb5oVgBfUB6Nk4dZLbXgVp+AQgrlWS0C6qRRGIiLHTEOidE3SExb0zYVtOSve5j6JttAyuG4ZVt9pbZoZzGXx9LzahE9FGvZsiU5Xk8/ZmgoQPR2JTIUzqOTC6yRXetXtHTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771799989; c=relaxed/simple;
	bh=Q9m/2RqoraZAXdjs3SRqd2dt2k8AJ0ffbQkb75nFbO4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XkaM1bPUdRY1wy3C1AugMCijoAn7ZoZKVdFgSWB/x77lnl1ZiBeXg7DEYoq34aT04rQmNI57k2Sj7ET2BGfd0jm5RqCqVA6/dhgtR/C74HqFTC6zx0wFP3jHSgRWg6YTHvH31avJtGCQb98pJHnnxzy/nfH33nCD4TXW7lnEDLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ySjJLJEK; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=/+5/rg89Fynsrq3dTn5BxRg8XV+0EU4hxQSafZyOwYs=; b=ySjJLJEKDAEfZhqhYEYJjh2t8K
	Ha37ThJ4DYJ/zdQvHg7Dn3B4g6IGUkZWHFwKaEMErSLmAbvqxtiAwGMU7KBOeMx4vUX37zl74B4ku
	dRwBeXL76nOxMzhl18CaYbNFF5pMopE4c3GVHq7poGyqey3sFhtnCNO83YOGclsIwE2HJPNoikE+g
	EQXMWNvj2i37U//bwDztVCK3TKBANuytPykre8Beg2RxohBMbaBUtfKjhI2LMpeYTGoZzrBqx3NFb
	zo0HU+BXaTxJsi58A8ITyrWl2zs8g7UaUcuRzE5iJgvuSlHxYIaQvIFbZnaXYiwN6Ifo/agUVgDmO
	z90sXDHg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Hsun Lai <i@chainsx.cn>,
	John Clark <inindev@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Chaoyi Chen <kernel@airkyi.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Sun, 22 Feb 2026 23:39:06 +0100
Message-ID: <177179992305.1861430.8217804356106146651.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260131081438.100-1-kernel@airkyi.com>
References: <20260131081438.100-1-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267204-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,cherry.de,kwiboo.se,rock-chips.com,chainsx.cn,gmail.com,manjaro.org,collabora.com,lunn.ch,airkyi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:mid,sntech.de:dkim,sntech.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 13CF01709DD
X-Rspamd-Action: no action


On Sat, 31 Jan 2026 16:14:36 +0800, Chaoyi Chen wrote:
> This series add support for rk3576 evb2 board.
> 
> General features for rk3576 evb2 board:
>     - Rockchip RK3576
>     - LPDDR4/4X
>     - eMMC5.1
>     - RK806-2x2pcs + DiscretePower
>     - 1x HDMI2.1 TX / HDMI2.0 RX
>     - 1x full size DP1.4 TX (Only 2 Lanes)
>     - 2x 10/100/1000M Ethernet
>     - 5x SATA3.0 7Pin Slot
>     - 2x USB3.2 Gen1 Host
>     - 3x USB2.0 Host
>     - WIFI/BT
>     - ...
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add rk3576 evb2 board
      commit: 912fe17d0a524b571e8aab57de643c5fb5cb6376
[2/2] arm64: dts: rockchip: Add rk3576 evb2 board
      commit: 86a82f7a7eeda451ce1a34425133163b5b581edb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

