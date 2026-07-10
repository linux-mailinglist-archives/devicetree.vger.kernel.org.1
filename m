Return-Path: <devicetree+bounces-324583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MCOUMtkjUWqO/wIAu9opvQ
	(envelope-from <devicetree+bounces-324583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:54:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E72F73CC9E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:54:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="AUqe67x/";
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324583-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324583-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7E34830CDB21
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CF1441633;
	Fri, 10 Jul 2026 16:46:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A2243F8C0;
	Fri, 10 Jul 2026 16:46:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701996; cv=none; b=qA3zWP9CNf483C+oKhbmxzfmfXpirD6hMLGUvPBw8FW0i8WdiHTixMd9M0lGrF00ZEgFlFb6qjRUe9X2T+V1Kup1ASMc0z9GHWFMlSEmk4WSCTlakimjVaZ2R5kE2A03NiKUV5R8JmqCFNZhQYwdbelojF2xWHVmRnZWAz5XVI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701996; c=relaxed/simple;
	bh=BNl2Fn08aUkxOhWB1xQv712EcMXS1inZZsIZsld0Xl0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HcSUM+k/wiXQBhoiTuu5ENsfayjC3HmHxSIRBF0AfkD8OBvkTW/WBq7uSFQdILMUAwlZKMfI8waVK2C0KaZNv6+JX6qgWkYRLQIRnowEwq0KFkclhX6mtaKqVAl2pa3w7OBU9DSWFkeJqk7ey/xp+j7mmpLRdnD1hA2bg3eWMvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=AUqe67x/; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783701979;
	bh=BNl2Fn08aUkxOhWB1xQv712EcMXS1inZZsIZsld0Xl0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AUqe67x/ZtquKA2YD/Nz6YUwPLO6XcJ8eKOy5OdfOE3NTN9de//boWyPAi2i9InWz
	 fBrqabeJ32F+8fNiLEQs8njWuzoZyDyIpzsMQevQDoLf5oMXoaqoYXnr8YoyaQFpSj
	 dXOT/Xvs5CqEGEGpx3hmCplkt97zbXJrQiojZ2o/p6W1HuoLkzIKRACdL7yITMBCqE
	 LZjpvkNAmnuH9houP59JvLIJ8GczpbVAjQ+2vhpVawOgjZ8t4CPz/lwYytxV5oyJ+s
	 9xRmiVtgepAkIsMmLSCZT4vX91MJq2K2KvgpL6xzOxTVYDmqZToBtVmHNSJ+sqJj7/
	 iTz0Cee9n8PVA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4A9F217E14CE;
	Fri, 10 Jul 2026 18:46:19 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 18291480076; Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:45:10 +0200
Subject: [PATCH v12 32/36] phy: rockchip: usbdp: Drop -EPROBE_DEFER hack
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-32-8b41a9a9bef0@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1501;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=BNl2Fn08aUkxOhWB1xQv712EcMXS1inZZsIZsld0Xl0=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdmX8P61+Usbf8aM4mZbcdyVTC6ApzP7I
 xNHRYHr+VY8D4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHZAAoJENju1/PI
 O/qaQBgP/RuOFUVNpwxGF9p6Rx8Da9Z+UP9bowWSo33x/69xr/UdAiipnYENJ+pIZSLtQeno+xa
 jCA6Lqs0xGvJc3T2RotOJx7lP1CK/uosErAnhhD/aOllm9hKIDPn4hXPC13ZyMwxK6Zdg1m3QNr
 DVR9WV4X070/NufJD9obFBnvheaU9kBMlbQcc07pzUv7sjK6kPAf4RTATq01xYUO3aENmmvXgkR
 ZssHt75R6rlYuFy3tsiw8JHopKjgtAs1iVDA54Foz3WCX6AHI49vgRojLx530j6ZMQKN7KWgeDQ
 iSKPOa7HOrCR5WevRsDlzbxW70knVyu5XDgud03s7jVTIKZQnkCe+PhwjaUqv2d/T5Guqz8eYnm
 0cVLxJx93X7KV6ELiHRWppq9l1RH0zOz3+Lhy1r3cqym1/f4Wo57VBngi5luxOhEjCqVXR+3IM7
 9x778iwPY4igO517XjRYG6PcHZYTXCkdwCGeGhdXR02IFCi9OXTUImWZIwsjHGzmz94wn49a9Tq
 +XfPBaAbsPzZHKPtH05q2AlWA8sWSosn7sC6W5/R5/+5dhdeh6uunmNId+xKGm74t+5Yeb5aBM/
 NFlhJoQ6S6i5oQY8wUavQFic5WN01TGZBJu7x54h4sjBQP63hvPmLgS+TEiiK3zf7EKY+h41dpq
 bGpVGUUPgKSRpEm9mLYQ0tw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324583-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:p.zabel@pengutronix.de,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@flipper.net,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E72F73CC9E

The hack to return -EPROBE_DEFER when the lcpll lock timeouts is no
longer needed. The driver now does a reset during its probe routine
marking everything as off and later on does a re-init, which avoids
the problem.

Apart from that rk_udphy_status_check() is called after the probe,
so it should not return -EPROBE_DEFER.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 0333e846ce34..cf173276bfc0 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -750,17 +750,7 @@ static int rk_udphy_status_check(struct rk_udphy *udphy)
 					       (val & CMN_ANA_LCPLL_LOCK_DONE), 200, 100000);
 		if (ret) {
 			dev_err(udphy->dev, "cmn ana lcpll lock timeout\n");
-			/*
-			 * If earlier software (U-Boot) enabled USB once already
-			 * the PLL may have problems locking on the first try.
-			 * It will be successful on the second try, so for the
-			 * time being a -EPROBE_DEFER will solve the issue.
-			 *
-			 * This requires further investigation to understand the
-			 * root cause, especially considering that the driver is
-			 * asserting all reset lines at probe time.
-			 */
-			return -EPROBE_DEFER;
+			return ret;
 		}
 
 		if (!udphy->flip) {

-- 
2.53.0


