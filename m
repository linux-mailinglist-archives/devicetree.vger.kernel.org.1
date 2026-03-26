Return-Path: <devicetree+bounces-281377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFAIAZqLxWlc+wQAu9opvQ
	(envelope-from <devicetree+bounces-281377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 20:40:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD0433B05A
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 20:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6A90030B3ACE
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2460D3A5E94;
	Thu, 26 Mar 2026 19:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="e13b6Eok"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CA53A6F0A;
	Thu, 26 Mar 2026 19:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774553711; cv=none; b=t5774wlv5vo/uY3wxYeF5G1OmrHFfKZIOGm8HxUC5lZIoTdGZcjix9TOQPdZRzh45f1Psg+5+3Dto66i40Ar+sADDLh4R4GGKS959LN2xizuC/j/aG8xOOWKzcD6akXsc0yHgUccfnP7BpRr6fWHYVXBhto5VtvmgJBwbRFzzwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774553711; c=relaxed/simple;
	bh=A2n8k6aIgmIJ4ucRQWwBcogmliaMS8yEWnuf1xcyKuE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pob6cr5e1C3WWBVtEumTlGk9ASelJvCvrlJlBChy81fm3xJcYTxFfy/Jb/dEmFXzeBg5kKP+C9wqZjzRW/zCje9kwU9YUT3b87UoJNhbj5sp8yWHADcEyZF8k1n7mvEeIS5dyylG2zThDPjOGK1goPHJI6no9iDMrV1igEwKa3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=e13b6Eok; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 43ABD26FFC;
	Thu, 26 Mar 2026 20:35:08 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6WwhpugZu9q4; Thu, 26 Mar 2026 20:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774553707; bh=A2n8k6aIgmIJ4ucRQWwBcogmliaMS8yEWnuf1xcyKuE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=e13b6EokfOfBvap7f5YTsZCTpSjPuyrx4uHeU4fSdPPHFLFi2TF4dUEG+g+mORS55
	 R/sHzd+YS9mmYJ6nD/RBSWVw2VIFSVZjmQUFnzcZTp4W/LmcpqhviIyFb8AFslEOio
	 9O4oD/IdXawgRBJwOMWrBZijWEENqOCPjVpgpEOupWoHuRGjj8cSrEYaCB/Uc0sGyP
	 UPvUVOYldCorL0a101ZZj3qPiRWa12hvENW8+ZSmKZAoFt60uhbIYDQuKxPIjz+bpq
	 yXOCDUQDXCQgf0NKFgY4HT2qHtQPfcDJQx/Ko/NVVyt0d/R+AMy5Fgk6aurL93yo2O
	 X/MlQ7ap046Tw==
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
Subject: [PATCH 4/6] phy: realtek: usb2: introduce reset controller struct
Date: Fri, 27 Mar 2026 00:34:17 +0500
Message-ID: <20260326193419.48419-5-adilov@disroot.org>
In-Reply-To: <20260326193419.48419-1-adilov@disroot.org>
References: <20260326193419.48419-1-adilov@disroot.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[disroot.org,mail.ru];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281377-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,disroot.org:dkim,disroot.org:email,disroot.org:mid]
X-Rspamd-Queue-Id: 9DD0433B05A
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
 drivers/phy/realtek/phy-rtk-usb2.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index e65b8525b88b..070cba1e0e0a 100644
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
@@ -602,6 +604,10 @@ static int do_rtk_phy_init(struct rtk_phy *rtk_phy, int index)
 	phy_parameter = &((struct phy_parameter *)rtk_phy->phy_parameter)[index];
 	phy_reg = &phy_parameter->phy_reg;
 
+	reset_control_deassert(rtk_phy->phy_rst);
+
+	mdelay(5);
+
 	if (phy_cfg->use_default_parameter) {
 		dev_dbg(rtk_phy->dev, "%s phy#%d use default parameter\n",
 			__func__, index);
@@ -1069,6 +1075,12 @@ static int rtk_usb2phy_probe(struct platform_device *pdev)
 
 	rtk_phy->num_phy = phy_cfg->num_phy;
 
+	rtk_phy->phy_rst = devm_reset_control_array_get_optional_exclusive(dev);
+	if (IS_ERR(rtk_phy->phy_rst)) {
+		dev_err(dev, "usb2 phy resets are not working\n");
+		return PTR_ERR(rtk_phy->phy_rst);
+	}
+
 	ret = parse_phy_data(rtk_phy);
 	if (ret)
 		goto err;
-- 
2.53.0


