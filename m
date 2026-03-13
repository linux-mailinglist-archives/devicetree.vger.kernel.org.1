Return-Path: <devicetree+bounces-275495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLaqEyNRtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 326F4288749
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F95A32E7911
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4A703D6CD5;
	Fri, 13 Mar 2026 17:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WvnYFtbY"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ED93D6484;
	Fri, 13 Mar 2026 17:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424647; cv=none; b=eEjkRcinVHZBgHVHko0sR2PYodBXqbp+tlZcAXE9eyUMxMItJAM2vWHydC4p1t24fPh/TytS+LuoGhXoExxGp0/v87IuJhyhTdw8u5u9jajkzA8bDlmExwO4rwIKDaFxao+4KDVqifz7YHU3RFYbHszJh+EOciwtQfg3Z3BZBd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424647; c=relaxed/simple;
	bh=wJZwMH5VNSE/o5UNMK6zuMUZDJCLHOUN4lmKhidacts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XGM1IK8SibYGYRk6TSIlIMnw3K/gCeAEurHn5eUlJsYyxarmK5t4b1G/H37NrfpELN3g93tkeCQuv4Le4/vueAcvI4qvCHel2Un1w2IrINE9sutXuFkrKj6ntD5IK1yE1QRQ/JiFTcUkSzhD7lGzH8tSkNpUXStO/WTV8jpOmWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=WvnYFtbY; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424641;
	bh=wJZwMH5VNSE/o5UNMK6zuMUZDJCLHOUN4lmKhidacts=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WvnYFtbY57K+ac6FBs3eg5Lo+L9B+Ldzkxlrd710Tm8UkNxNYorM6YKqV62SXX41e
	 y5FN1rUiBcQKuHTxi/ZPlvzR0amg0lFIskIrlIb3ZuTXbxq4XW6vVOivqj/HZWjnT6
	 b70KZnYZyuTf42231rWsQ9rk5T2vvQrIbZb5dPmHQ0sqJ8+DCY0J7WaMkM19PgDjYF
	 z2J+zXdLmFlu3BIYv9cI/1ZzBpuY6baDHVEmR22Sa5ebDqwzvQJ2mhahf89t8D+0S+
	 2JIQNIvfwrknLhOew5mPeJhe8QiY3geCgcz5mTdaSRNQBdlh73+JTHaSYDmtN7aP1W
	 Of/3wPaZZQKBw==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D6AA817E13A8;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2EE5C48002F; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:18 +0100
Subject: [PATCH v3 09/12] phy: rockchip: usbdp: Use FIELD_PREP_WM16_CONST
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-9-3e8fe89a35b5@collabora.com>
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
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1489;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=wJZwMH5VNSE/o5UNMK6zuMUZDJCLHOUN4lmKhidacts=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UAByLSx+ishzSoLVEUgcjdh2ubFoSoBs7
 Hv06J44ZO+MSokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qaj9AP+wXt6JbzZqt5ymAqbDIEAzGKOq5pWCk50mwOjJCmcJYUqZHu6mAb/tOjxQQ1LC39p4z
 nP41t8odHGLzET3d9aM6uhh7Sb2A6fmQA3hsXufUL2nlh/ugC9gpYMBt6fdZLtwBhFLvAoGOM3F
 K8DyQNgGvt0ddN6hmLsYt9gMmBCrqFn0C0elli8oBDGnIWxCQwHsdXRrQxOhHJV54i0tjgq9n/A
 9iw8J1vZsYhXL7Py2znMkv6Hhf22wYSukwUtO1BJoPbxC9aum+w2kNTaWeb7+opf+oCH9lYzm0e
 T34PDSfNE3Oqf9yt0b5LTYyAlz6cyvyNgIZVDS24iJu7cibB/ItpZrXZF4ooQiQ3369ukvPFrha
 3+1hf+2vBGHOTln/w4ahfaFmAzJS36Ru0RJD1GpZjJokbDjoleSBBW0/f0cyh5WDcm5HoQQcEVQ
 U9JpdWpxXC5akvHZPbfm/lqaf8G3CFPfesxuJp4WCY+Hp2tiUguTVYAtsRz3h0znZhxbaqKYfXV
 N3Pj5A6n2GiK6cAGyS5KDl+No5YFspIHQBv/wIOLmJNxjYEGagOHsc+/sUvmiUjvj2CS/2S7Cxc
 hCJkmrNqdKcfPSKuYpJaN+BewmBNXrcfq9JOAwkiGvlnqL1rcVA0EUJ+v9GDCeP8+yQyk6Lh+2b
 qby/Zw9IdcmtEe6att18n8A==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-275495-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 326F4288749
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Cleanup code by replacing open-coded version of FIELD_PREP_WM16_CONST
with the existing helper macro.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 6d7ca11b308e..1bfc365e2b2c 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -12,6 +12,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/gpio.h>
+#include <linux/hw_bitfield.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
@@ -75,7 +76,6 @@
 #define TRSV_LN2_MON_RX_CDR_DONE_OFFSET		0x1b84	/* trsv_reg06E1 */
 #define TRSV_LN2_MON_RX_CDR_LOCK_DONE		BIT(0)
 
-#define BIT_WRITEABLE_SHIFT			16
 #define PHY_AUX_DP_DATA_POL_NORMAL		0
 #define PHY_AUX_DP_DATA_POL_INVERT		1
 #define PHY_LANE_MUX_USB			0
@@ -104,8 +104,8 @@ struct rk_udphy_grf_reg {
 #define _RK_UDPHY_GEN_GRF_REG(offset, mask, disable, enable) \
 {\
 	offset, \
-	FIELD_PREP_CONST(mask, disable) | (mask << BIT_WRITEABLE_SHIFT), \
-	FIELD_PREP_CONST(mask, enable) | (mask << BIT_WRITEABLE_SHIFT), \
+	FIELD_PREP_WM16_CONST(mask, disable), \
+	FIELD_PREP_WM16_CONST(mask, enable), \
 }
 
 #define RK_UDPHY_GEN_GRF_REG(offset, bitend, bitstart, disable, enable) \

-- 
2.51.0


