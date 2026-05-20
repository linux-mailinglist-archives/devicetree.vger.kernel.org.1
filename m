Return-Path: <devicetree+bounces-300831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AjtETn3DWry4wUAu9opvQ
	(envelope-from <devicetree+bounces-300831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 20:02:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B926459529C
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 20:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19FEA30C1D53
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 17:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A28EF3FC5AC;
	Wed, 20 May 2026 17:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="XC7Gbm+F"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B20F3FBB7D;
	Wed, 20 May 2026 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779299899; cv=none; b=P26QsW6NtrjisHuwDyzdX04nhYsG+EUo4vsZRBbISnKgd3EhOPnQmmdWkPdNh6soeGgbKJM6Wc2zRULO7/ISLSLcx9khw8vPJZt2ZKzpsh7OU5syc8pNZRObUzTvCUrul91k4LLStFMKcAFc497qhFUSUt1vN9VAZh16vbn38DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779299899; c=relaxed/simple;
	bh=qB9qgIkXgUH0uyIWiZuxeaWVLvji8cTXtCmHcSQ8HKA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u8l4QtR556QYexQh8eCh89Wag4FmNVGbrcp9a0fOJJg3qUVY0yL/SSzPEYk6REgMtcz3Wkw04/jaS6qV98i9Yx4JKTxr9eoHBux4ieKkBDKvgLtyqW2IMEKBxhMfzsA36HCaKvoF5lJtb4+iAx1RNd49jxKsbFNMZFb7OFF0/8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=XC7Gbm+F; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 3F118277CB;
	Wed, 20 May 2026 19:58:15 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WCZhKAa0FRRZ; Wed, 20 May 2026 19:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1779299894; bh=qB9qgIkXgUH0uyIWiZuxeaWVLvji8cTXtCmHcSQ8HKA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=XC7Gbm+FrV5zZNJM6eohW827Pza2oA0YyeeP8YKlowmjqwpC7zSbKnb5f/JvtaciC
	 8NyPhMGeaxowrsCl7xKFzWIR+InpbWqRopufvy8o9Eh23xk2vWXioNDMf/SR0kLn3U
	 2bnAJYl6lXP/TioWv+V+H5wZ8dwIHkVFO5BEcvaj+dMgMCEUen3AUMDJukBbg6lw97
	 QGptug0pqyF1IblTAhJuh7ghyu3KiV5g99cQ9N7Y2JUs6zHuUo/iXvpyiaNRj6Tw5F
	 Oo5lLV88ZlwBobfD1fnkY7HQY4YA0kSgeR1/VjbsoaNdATcV2njF9WxnpUh2mwG2Qc
	 iEHCsYC2eHLKg==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: [PATCH v6 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Wed, 20 May 2026 22:57:26 +0500
Message-ID: <20260520175728.720877-5-adilov@disroot.org>
In-Reply-To: <20260520175728.720877-1-adilov@disroot.org>
References: <20260520175728.720877-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[disroot.org,mail.ru];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300831-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[disroot.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,disroot.org:email,disroot.org:mid,disroot.org:dkim]
X-Rspamd-Queue-Id: B926459529C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In RTL9607C, there is so called "IP Enable Controller" which resemble
reset controller with reset lines and is used for various things like
USB, PCIE, GMAC and such.

Introduce the reset_control struct to this driver to handle deasserting
usb2 phy reset line.

Make use of the function devm_reset_control_array_get_optional_exclusive()
function to get the reset controller and since existing RTD SoCs don't
specify the resets we can have a cleaner code.

Since the vendor usb driver developed by Realtek doesn't assert the reset
line (or in their case clear the register bit), we can reasonably assume
reset_control_assert is not needed here.

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index a9e29d2f7e6f..16c5fc3191de 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -17,6 +17,7 @@
 #include <linux/sys_soc.h>
 #include <linux/mfd/syscon.h>
 #include <linux/phy/phy.h>
+#include <linux/reset.h>
 #include <linux/usb.h>
 
 /* GUSB2PHYACCn register */
@@ -130,6 +131,7 @@ struct rtk_phy {
 	struct phy_cfg *phy_cfg;
 	int num_phy;
 	struct phy_parameter *phy_parameter;
+	struct reset_control *phy_rst;
 
 	struct dentry *debug_dir;
 };
@@ -676,6 +678,15 @@ static int rtk_phy_init(struct phy *phy)
 	if (!rtk_phy)
 		return -EINVAL;
 
+	if (rtk_phy->phy_rst) {
+		ret = reset_control_deassert(rtk_phy->phy_rst);
+
+		if (ret)
+			return ret;
+
+		usleep_range(5000, 6000);
+	}
+
 	for (i = 0; i < rtk_phy->num_phy; i++)
 		ret = do_rtk_phy_init(rtk_phy, i);
 
@@ -1059,6 +1070,11 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
 	rtk_phy->num_phy = phy_cfg->num_phy;
 
+	rtk_phy->phy_rst = devm_reset_control_array_get_optional_exclusive(dev);
+	if (IS_ERR(rtk_phy->phy_rst))
+		return dev_err_probe(dev, PTR_ERR(rtk_phy->phy_rst),
+				     "usb2 phy resets are not working\n");
+
 	ret = parse_phy_data(rtk_phy);
 	if (ret)
 		goto err;
-- 
2.54.0


