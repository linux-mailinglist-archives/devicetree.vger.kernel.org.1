Return-Path: <devicetree+bounces-284123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kB4rIVyQzmkbogYAu9opvQ
	(envelope-from <devicetree+bounces-284123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 17:50:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E573B38B784
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 17:50:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2195830E07D2
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 15:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2C3F3EC2C2;
	Thu,  2 Apr 2026 15:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="PItvXz5h"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC572FC01B;
	Thu,  2 Apr 2026 15:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775144700; cv=none; b=C3gUhTnuDaDjOpEssWHzD+bGt4y2QHjq/i3TEY+vuX3+EnqJUKtr3T4gWa+RidbHY7quLhe2Dtaq1rzhxnsUh9gWHy35lbwojkbI5aquAOEhODIh1UVMJec7sdsHeJhQ7SPGMdXNQtVNL1FN5o394SzoBVs96wPUEJ2F6UnqA24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775144700; c=relaxed/simple;
	bh=DfzP7HoXHrUJXf1Pl7aFkwOB+aCYHpLF8dMkVUpUPrE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LE8oUncGPlXvHR6HyNftOymYqtXpsmzRihdvbndwexGLcy6zxQJcMzDqJi22njdLx1ts9tHtIN/gv1NhyGk2ueGnhBJjWzguccMFlPGDOqOIfFbnWbzQr1J6wvVjfGpl9xtszbI6E2ry6BvURkler3YuHE7f+Xiv+522TDxLxWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=PItvXz5h; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 0B88426561;
	Thu,  2 Apr 2026 17:44:56 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5uK-BBoK71eu; Thu,  2 Apr 2026 17:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775144695; bh=DfzP7HoXHrUJXf1Pl7aFkwOB+aCYHpLF8dMkVUpUPrE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=PItvXz5hQJXMbJsaRjFNAeIK+N4VInygPYaG5UVO/yNeOS2ZliW6wnMfh1EefWuyW
	 rGXysiygXX6qkBmGTD8e79PRqR+3M9W+OOIfGROPLZKD4zPN5VvTsKbPgY6WPNznT+
	 GS6Gi254dpid2QvVuHTS52EaWuSQCEJnOUt49WT1gHKMrhIRmMhbf7aOZbbHGV85IU
	 gMLTRF18Gv0HvEXcRW4Dn8E4aBIDH6bK9vuyRyN9lrYwkmPqz5ziqhuv0WO7I26TD0
	 vRdOf06ggB+npZblCz8oNAg/EuaIM440bJQa7C8RaGrMBny8db80jTp3PCtdCfG5MT
	 ZrHi2cg+tv+hw==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Michael Zavertkin <misha.zavertkin@mail.ru>
Subject: [PATCH v3 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Thu,  2 Apr 2026 20:44:12 +0500
Message-ID: <20260402154414.196012-5-adilov@disroot.org>
In-Reply-To: <20260402154414.196012-1-adilov@disroot.org>
References: <20260402154414.196012-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[disroot.org,mail.ru];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284123-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[disroot.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,disroot.org:dkim,disroot.org:email,disroot.org:mid]
X-Rspamd-Queue-Id: E573B38B784
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

Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index f6670ac6346d..288c8e9e1384 100644
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
@@ -604,6 +606,15 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
 	phy_parameter = &((struct phy_parameter *)rtk_phy->phy_parameter)[index];
 	phy_reg = &phy_parameter->phy_reg;
 
+	if (rtk_phy->phy_rst) {
+		int ret = reset_control_deassert(rtk_phy->phy_rst);
+
+		if (ret)
+			return ret;
+
+		msleep(5);
+	}
+
 	if (phy_cfg->use_default_parameter) {
 		dev_dbg(rtk_phy->dev, "%s phy#%d use default parameter\n",
 			__func__, index);
@@ -1071,6 +1082,11 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
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
2.53.0


