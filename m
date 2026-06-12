Return-Path: <devicetree+bounces-311071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ugO4DtA0LGqvNgQAu9opvQ
	(envelope-from <devicetree+bounces-311071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:33:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3389867AF63
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:33:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=ECu1XSFp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311071-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311071-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 24C8E3007AEB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CFBE33CE9A;
	Fri, 12 Jun 2026 16:27:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAA6219FC;
	Fri, 12 Jun 2026 16:27:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781281644; cv=none; b=jYPSD56y1w9CnI7Plna6D5U1QABmbrjtduEvfKcMioXhHXHovhvXsJx3yQyZ6zst5neG4/HHrIK7QaT0aVpE3R1Ntjfjfkqns81ZLf7qugwpBuZvnW2bA6MpL+12jJohUiNJyCHiX3hRNlCf35vVUBpVf95QY7hHmsIIwyHffjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781281644; c=relaxed/simple;
	bh=HLJfkYvaJE6vU0w2x8CHyfN8q0SgDuG8KtmXkuwPh1Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KhVnPvMLk/Q7m970RT3hfvlFNOmunyy2ZQ0QYmVq0NNzvg/aeiF4fawFuAEU3cmjbmduIo2gjXYTPldLqBhMh5522jtMhX9Tt6C5E5RaDoGF2n5GXQSjdykLsYF1S8EUQ4hwmxbkfqi7QbC58N4DLUCaFdrmPOBvTIdTaCeiNyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ECu1XSFp; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781281641;
	bh=HLJfkYvaJE6vU0w2x8CHyfN8q0SgDuG8KtmXkuwPh1Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ECu1XSFpEXOqmOi7Fkr4XXgpcQpz8O2HOuigN7veLOG5ddPTcKFZKAVuh1pnUYK64
	 syAJCtGWrtA0egn17fOl4jup3mW1/ODRFVyVJ0SfMNnoT6rf+n1M1p7zf8UT5hRaea
	 ceyzAeqB1rFYs3DLtKBShAETMAvFtpw55VOowOvMgxtUDUXcFMjZt8RR6Yv9nakZkF
	 DFA9HK9Iz0c+KZesiCTA3mPzpQeEMCIjbWzCCF+DDm07Tfvh/repGUv4T+g6uVVMlP
	 ajHKTH1RN31gi2OBjzdVVmDiyUI898ulk3wgvEGZpTURNbSmdwvN+rWW+B+RH1ScMI
	 E0PEkQqWzRytg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8FE8717E35E4;
	Fri, 12 Jun 2026 18:27:21 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id DF5D7480062; Fri, 12 Jun 2026 18:21:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 12 Jun 2026 18:21:56 +0200
Subject: [PATCH v5 18/18] phy: rockchip: usbdp: Add some extra debug
 messages
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260612-rockchip-usbdp-cleanup-v5-18-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-0-efc83069869f@collabora.com>
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-0-efc83069869f@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1819;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=HLJfkYvaJE6vU0w2x8CHyfN8q0SgDuG8KtmXkuwPh1Y=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGosMiEezP9iqnNrRmCYYUGmd407dMDcqIIaU
 C691vroSvcju4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqLDIhAAoJENju1/PI
 O/qaL2oQAJLECuKbtLdqJjGnNSLcBZW2EHi//3RjZ/zYADEuirLdgvcQahxUuQLVf1lEDNS3YSr
 yKdEksEyQfPeut7+aIUTk3UPX1igNwI7FHW4GtBGhu58Uy8D5spq2E34HWbEcWTOjPyk40WuU+P
 RgwYzJE/An6EVt7du4ilKJa7RbboH0FpzNGz5Jk/zDOhkK9pIoX83BpEVlYLipNUUY6nuI+BT1g
 7imDgQPj4w08TsF3udAwv0Csp6kbE2v5k0wHbL0Loi2mmLER3AGs2ZKsLUFtZkjUlY7DwXqwQQi
 LV01WJmzaMl7P2zORLuxeR/bptX14imFBfFN/N9nworFZCedGwFrYrhjz86WEC5z6VsLM/I3Qbi
 t28r/GWLtA2D2dPsE8pYzfg145/QExBHfB8/z/ttWVvy4c9lh2QzqJnkbrCxPXHzbSjRL+7k0Nv
 l/kBva24fKwDtrswhxZ2xYX2Vbj0hHezjiXkHrkO830iMS8oVwCHgu7l9UrsprfYlc+D1PUSa+t
 Jcc9EE9+hei9N8rYRSu3Te2yBi8N1r5TGUE9vnDbjP3ppM41jPTK028dl76AQJMSnRHJ6OknS35
 iDAyA/7E6XC/58yURX74vmTRaM8xsLoq/wSJtmFRwZmUlQv55V7xHXYQixC9cDHkej1cgiP8KXc
 Q5B62NN7XrZpSXVcFa38s6g==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-311071-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3389867AF63

It's useful to log PHY reinit to ease debugging issues around
USB-C hotplugging.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 236331cc0d13..4042e2dd8121 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -491,6 +491,8 @@ static void rk_udphy_u3_port_disable(struct rk_udphy *udphy, u8 disable)
 	const struct rk_udphy_cfg *cfg = udphy->cfgs;
 	const struct rk_udphy_grf_reg *preg;
 
+	dev_dbg(udphy->dev, "USB3 port %s\n", str_on_off(!disable));
+
 	preg = udphy->id ? &cfg->grfcfg.usb3otg1_cfg : &cfg->grfcfg.usb3otg0_cfg;
 	rk_udphy_grfreg_write(udphy->usbgrf, preg, disable);
 }
@@ -784,6 +786,10 @@ static int rk_udphy_init(struct rk_udphy *udphy)
 	const struct rk_udphy_cfg *cfg = udphy->cfgs;
 	int ret;
 
+	dev_dbg(udphy->dev, "(re-)init PHY with USB=%s and DP=%s\n",
+		str_enabled_disabled(udphy->mode & UDPHY_MODE_USB),
+		str_enabled_disabled(udphy->mode & UDPHY_MODE_DP));
+
 	rk_udphy_reset_assert_all(udphy);
 	usleep_range(10000, 11000);
 
@@ -854,6 +860,8 @@ static int rk_udphy_setup(struct rk_udphy *udphy)
 {
 	int ret;
 
+	dev_dbg(udphy->dev, "enable PHY\n");
+
 	ret = clk_bulk_prepare_enable(udphy->num_clks, udphy->clks);
 	if (ret) {
 		dev_err(udphy->dev, "failed to enable clk\n");
@@ -872,6 +880,7 @@ static int rk_udphy_setup(struct rk_udphy *udphy)
 
 static void rk_udphy_disable(struct rk_udphy *udphy)
 {
+	dev_dbg(udphy->dev, "disable PHY\n");
 	clk_bulk_disable_unprepare(udphy->num_clks, udphy->clks);
 	rk_udphy_reset_assert_all(udphy);
 }

-- 
2.53.0


