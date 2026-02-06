Return-Path: <devicetree+bounces-263297-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPyrERC9hWmpFwQAu9opvQ
	(envelope-from <devicetree+bounces-263297-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:06:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9FFFC701
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 74FED304C07F
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 10:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2EAF36403A;
	Fri,  6 Feb 2026 10:05:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6264A3612EE;
	Fri,  6 Feb 2026 10:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770372324; cv=none; b=eH1ZWmCOTzmKawAyt6Q4USxLJpQ9rbQ5ZVury8YEn5yvry6VNS97WLnuDBFMqHYF1YD1WjXbzbSZ7YW/vZ2n5ZZRTF2HZoIsZLcODXO2usUj+izD6dFqwrj9EkFigOhmyuADIeL6LXms7japfdXBUUqnr7b9dkA8srGYJFli3mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770372324; c=relaxed/simple;
	bh=dJAxpl3GBsiydeEGO9/m30YuzowqppMcArSktU9KvF0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=e52DScax/CEHaoLcwJsoRZju3V9LQxWffSmqTdEQRZmDX3IlRcDk3jcpQORnqgVGXK0GgCfgET5qDH2GBUPEfwH/sheUuhn/BmFdds7VyhM2pYcWQKVe04ksaCbUkosTo+ImZT04oXtm2diO2Znubw3cdNv1tk1TnaMzPLM/094=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [58.61.141.99])
	by smtp.qiye.163.com (Hmail) with ESMTP id 335ee35ab;
	Fri, 6 Feb 2026 18:05:20 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Yixun Lan <dlan@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Ze Huang <huang.ze@linux.dev>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Mark Brown <broonie@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-riscv@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev
Subject: [PATCH 2/2] phy: spacemit: add regulator support to K1 USB2 PHY
Date: Fri,  6 Feb 2026 18:00:09 +0800
Message-Id: <20260206100009.873182-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206100009.873182-1-amadeus@jmu.edu.cn>
References: <20260206100009.873182-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9c3269cc2d03a2kunmb90599ad38e393
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGhkaVkodGE0fTh1OGB1PSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVQkJZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVUpCS0
	tZBg++
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[jmu.edu.cn : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263297-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,jmu.edu.cn,gmail.com,linaro.org,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amadeus@jmu.edu.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BB9FFFC701
X-Rspamd-Action: no action

USB VBUS may have a regulator supply. Add optional phy-supply
support to avoid the need for the regulator to be always-on.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 drivers/phy/spacemit/phy-k1-usb2.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/phy/spacemit/phy-k1-usb2.c b/drivers/phy/spacemit/phy-k1-usb2.c
index 342061380012..c163a29dabf9 100644
--- a/drivers/phy/spacemit/phy-k1-usb2.c
+++ b/drivers/phy/spacemit/phy-k1-usb2.c
@@ -75,6 +75,7 @@ struct spacemit_usb2phy {
 	struct phy *phy;
 	struct clk *clk;
 	struct regmap *regmap_base;
+	struct regulator *regulator;
 };
 
 static const struct regmap_config phy_regmap_config = {
@@ -98,6 +99,12 @@ static int spacemit_usb2phy_init(struct phy *phy)
 		return ret;
 	}
 
+	if (sphy->regulator) {
+		ret = regulator_enable(sphy->regulator);
+		if (ret)
+			return ret;
+	}
+
 	/*
 	 * make sure the usb controller is not under reset process before
 	 * any configuration
@@ -139,6 +146,9 @@ static int spacemit_usb2phy_exit(struct phy *phy)
 
 	clk_disable(sphy->clk);
 
+	if (sphy->regulator)
+		return regulator_disable(sphy->regulator);
+
 	return 0;
 }
 
@@ -171,6 +181,16 @@ static int spacemit_usb2phy_probe(struct platform_device *pdev)
 	if (IS_ERR(sphy->regmap_base))
 		return dev_err_probe(dev, PTR_ERR(sphy->regmap_base), "Failed to init regmap\n");
 
+	sphy->regulator = devm_regulator_get_optional(dev, "phy");
+	if (IS_ERR(sphy->regulator)) {
+		int ret = PTR_ERR(sphy->regulator);
+
+		if (ret != -ENODEV)
+			return dev_err_probe(dev, ret, "Failed to get regulator\n");
+
+		sphy->regulator = NULL;
+	}
+
 	sphy->phy = devm_phy_create(dev, NULL, &spacemit_usb2phy_ops);
 	if (IS_ERR(sphy->phy))
 		return dev_err_probe(dev, PTR_ERR(sphy->phy), "Failed to create phy\n");
-- 
2.34.1


