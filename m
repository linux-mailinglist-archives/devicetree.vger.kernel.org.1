Return-Path: <devicetree+bounces-324569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tTCTElIjUWpq/wIAu9opvQ
	(envelope-from <devicetree+bounces-324569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:52:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B466573CC3B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:52:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=NjE5uvc5;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324569-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324569-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18597305DE77
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD2CF43E4A2;
	Fri, 10 Jul 2026 16:46:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C46843CED2;
	Fri, 10 Jul 2026 16:46:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701988; cv=none; b=E6sAQcJky+YvGmFWMRIGH0fzygs3lguEKoYmwcuoNjOKuISAdZqHgeBchT1FFVMDkj16fbsFR1Tty+KfEs7MfwmI2JsSjY42aKedArYb5k2Ii9CiEsz1BSFGxHeGa9SRaXCr2rYPXbsPHisl0r9pWExsdALdtGTq43WD0INAr0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701988; c=relaxed/simple;
	bh=t8uTKCJDQbXM1zD6YGkoRMmsGqKnvfqXTlOk0PQD5EM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=svpXCqVaFQgRSfinjaBUZ/bsQmGVuH4r3FPEe/fDTRNJlShWoBVKYzvKa0xnlNrbUl2ulR9YtDvVQ7cXiUCmorAA/YeasHVPxmJJ48bjZpBsbFie2sX24UKMqt3CInhCB2GtyNIwVvkTRVLnizjQJNvDW/cwBUhnRq4H4XbHunw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=NjE5uvc5; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783701978;
	bh=t8uTKCJDQbXM1zD6YGkoRMmsGqKnvfqXTlOk0PQD5EM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=NjE5uvc5+pzOZ6Cr0sB5GhFJuZh4nggCgscjR0PcrjE9/XrbGjSy69+AKN890gLXn
	 OodAVrETAwl1q31hdFtE5kHGITfnPAVeC6qt3gZmbw8+6latYCBim4TY4tBZjG/2bv
	 xw5BnnLHMVaN6jRtW5fXkkezfRwk+z16pXzF8Ag6bqoPs5LJlUXtmd9E0ndXqKdj0g
	 ew16GKv+WcldM58rQG7JX/g5kIgVL4QgQEoVGKZMjdjhugOSFho+50dIhlfDyMaWsB
	 tdGlkPcwlUX14hHLtTuuRaF16UC3GtmmXyacp6LsM7N8FzpSPKUTd2umWWO3inrKTB
	 V5AeJH2nfzWnA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8268917E0F07;
	Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E5D72480038; Fri, 10 Jul 2026 18:46:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:44:45 +0200
Subject: [PATCH v12 07/36] phy: rockchip: usbdp: Keep clocks running on PHY
 re-init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-7-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1161;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=t8uTKCJDQbXM1zD6YGkoRMmsGqKnvfqXTlOk0PQD5EM=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdhqOy2ZElnpS0BwMCU6H2iuXvIyECnhV
 vB5ZKq243aP9IkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHYAAoJENju1/PI
 O/qa334P/ivNQ7nTlsIT/y1p1BEFl3Hu4d6FRwGzWgvv5a8ocZs4ewtEMbU2UiPyxL3P9eBxIbM
 h2EbKn9f7yZiQ2vjTqVXEW4vE5jbekrHcFX587jwhkxPzKORudZGpArKz4HRr9g0vAV3hE5bUju
 4vjOeIf7rOlj0ZwGwH8hLNoVDsf29lbCch6sbY+AUULNa2/N5UQE+tLuZdsf2hlCVBCZCgc64zs
 SweAkY0NuTiICGzBSM+rmE9mT+eGhLWKp5YXeHH2AW2J2n51c7eeqdqmj+Kx248HtpzFcncO1nX
 NQMIbVNuyvtJEf+sAN77d7pPFz07NEggoY8Bn9mO56QYXykbjA9+ljkBOpc+ICbdzQgpV/zbXA4
 wZj+1ZxhbpAseuAjos3VLAG9X55mfeiBoMW0fnvRLPCVvJPfYlzVx3gw39nc7/Q4Bb3ekLZhBoV
 y8WKwhVE3GPEX8XYaY7YhPYwTVyPYjQbtbdlMX+kGcox2dK3reh9jti8CuLBEtz/WyPnYdk9sOe
 8O09bkRUZxJtyndRVyMBj7A8JwtHffnvM6cQ2D7uSh0PIQV7e/lxw+fgwmApWiIYbmDJb6ht//a
 wVPgFojbIgx+8m/6H9u9tdShjxqXFe4/cBAEEdhD/KRNSOaL40dfWTnu+I9Q/1/5hdXTSo5vskH
 0O9K1tKwY18CSmbDB6GYtkw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:p.zabel@pengutronix.de,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@flipper.net,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:email,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B466573CC3B

When a mode change is required rk_udphy_power_on() disables
the clocks and then calls rk_udphy_setup(), which then enables
all the clocks again before continuing with rk_udphy_init().

Considering that rk_udphy_init() does assert the reset lines,
re-enabling the clocks is just delaying things. Avoid it by
directly calling rk_udphy_init().

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 6cb9f6b4dbf6..e3f5a26c876a 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -987,8 +987,7 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 
-		rk_udphy_disable(udphy);
-		ret = rk_udphy_setup(udphy);
+		ret = rk_udphy_init(udphy);
 		if (ret)
 			return ret;
 		udphy->mode_change = false;

-- 
2.53.0


