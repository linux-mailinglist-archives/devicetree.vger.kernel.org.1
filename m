Return-Path: <devicetree+bounces-275499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFc2GpJQtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:59:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BFC2886A6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BAC2430A4A05
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E45CF3D6CD9;
	Fri, 13 Mar 2026 17:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="D8Q3gcKX"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330783D6CB9;
	Fri, 13 Mar 2026 17:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424656; cv=none; b=CqBl35uD4g+7BLafYYtdSlfH8hMvjn6gttxIrfVTfUvMBJnot0Iyp0kp1XaIZXNveKpsfLaJY9clGCkHfFuwFnWfXmQG3Wkro0ffTGpka0Cy53cpXQiadu9zERx0FLmcJIHbwHKqkhlXkqfPFDerc4iz2beX8+iz1AUDzh+NLtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424656; c=relaxed/simple;
	bh=nkXYQxPq+lB3vzjnwGcNOGOuenfLKxQwMSun5YGuw0M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DLKHSR7kcyiLBFaOWG1nsaUrUz535+SgS/S7Of+C6wooT924xA5/0PhP7M7gMQjknh6frqjbWlk44Apgvk7ktj5u/p0Boe+KMeuB87D+kYxoofmFwUAM8L8petIGAtfef6khU9xXrIXCWeN20teJ4Z2ssKQGqP/sLOW2IKJ36eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=D8Q3gcKX; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424642;
	bh=nkXYQxPq+lB3vzjnwGcNOGOuenfLKxQwMSun5YGuw0M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=D8Q3gcKX4omgByf9PxuvnSmacsWGoL1khHlw7zA5iXjAX06E/aMOuAfRuaGgY4n+X
	 nqbuD/QNefABw3OdlGG7Zc2eQUDWXiVplyn4rcg4HtXuLcJXEURWoAUP2TE9QV1nka
	 j8M7b3WGBlPE1F2ErXWXhn48aNRT5hLv0vJuCYCZFmd9OzJTFsxlIMMN/EfxzEoGzu
	 qlSB4YZDTz7Mi91h2dKKU9jOWjTc52ILhUOFj7jQkt+cnnrUmq9c8xS26q8zK4FMsv
	 Jg3JI3yOGFd9SC0xIB+k/oi1XdS0tLaQ0ey2NtYRLMFXgzlHNVRIKJ+SfZ5sFPrHhZ
	 tukE/gnJ0yDwQ==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DCA5417E13B2;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 299ED48002B; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:14 +0100
Subject: [PATCH v3 05/12] phy: rockchip: usbdp: Fix LFPS detect threshold
 control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-5-3e8fe89a35b5@collabora.com>
References: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
In-Reply-To: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 William Wu <william.wu@rock-chips.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1464;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=idTUPP5e91uhF/EzTIc6KkaVZGLtsNP2d+inYWbkKyo=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UACTg8FUAnM+6G0AFOb/vn0xB6r1JAutN
 6fdot7h+0ejp4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qapDIP/3kvhY7gB8KjKkOKCaOAq3wsuYc91u9zgDkTZI4HDhNBwi38JvdGAsHMCkJoS0HVBOf
 rpY7vHLczPmOYvFqHTc5yU3Ou6Zx0AhCWMwlm3WkLT0YxjezgKHA/F3835MQBcJuht8hgRUtfFH
 FzjoTMi0roKf92rTBYSZTwQBOcofIP7G/DO50Q8hA9zHjLYcXUZLiDayq49b8jtkOsZoCie7M3I
 HvbB1UmwgYDm56kQylfpl0dVPIqpwEFm1ZbVeEflOSMJhIBA+rZkhxq448pWl6P5L8rKoSfcqBS
 sdW3NufHQUj0SJykKV7XvUxZ67DIVse9reWtXIX9EybSodYWHiFza5gFIvJhBGw8FtSD9uU4mYn
 DKEYK3k2JSRQildBBs/HOsHNn9j3tjnQ9eHG6PIvlMzl9K4NDRlcoYWwybvzidJQQkhSHL+Bqnb
 7pYA0T2xsB1zFcssU/8B3FJOXwUZXgzjTgXJBFuUZb2zgLIput8XN4e4jH7yjsegZL3fduhnVR8
 tWrRA9lBlQeIpEEWlpRsCFiWJOKWXf8xZvCbhvpLKFBoWPuxiF93lsGd7OtgQMvJ7b+q1tHYRmU
 lFpgS17eSPVN2Jbgq+CZDooL+RHtDc+evfEkHnhKpdgoHmOFI/xD5q0p+tGSf2GdVDaVao6FoiC
 50ojaU9jA6xBG2404c9ElgA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-275499-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:dkim,collabora.com:email,collabora.com:mid,rock-chips.com:email,usb.org:url]
X-Rspamd-Queue-Id: D1BFC2886A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: William Wu <william.wu@rock-chips.com>

According to the LFPS Tx Low Power/LFPS Rx Detect Threshold [1],
the device under test(DUT) must not respond if LFPS below the
minimum LFPS Rx Detect Threshold 100mV. Test fail on Rockchip
platforms, because the default LFPS detect threshold is set to
65mV.

The USBDP PHY LFPS detect threshold voltage could be set to
30mV ~ 140mV, and since there could be 10-20% PVT variation,
we set LFPS detect threshold voltage to 110mV.

[1] https://compliance.usb.org/resources/LFPS_Rx_Tx_Low_Power_Compliance_Update_Rev5.pdf

Signed-off-by: William Wu <william.wu@rock-chips.com>
[Taken over from rockchip's kernel tree; the registers are not described
in the TRM]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 1f686844c337..97e53b933225 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -413,7 +413,8 @@ static const struct reg_sequence rk_udphy_init_sequence[] = {
 	{0x0070, 0x7d}, {0x0074, 0x68},
 	{0x0af4, 0x1a}, {0x1af4, 0x1a},
 	{0x0440, 0x3f}, {0x10d4, 0x08},
-	{0x20d4, 0x08}, {0x0024, 0x6e}
+	{0x20d4, 0x08}, {0x0024, 0x6e},
+	{0x09c0, 0x0a}, {0x19c0, 0x0a}
 };
 
 static inline int rk_udphy_grfreg_write(struct regmap *base,

-- 
2.51.0


