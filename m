Return-Path: <devicetree+bounces-241059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF59C78D77
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:37:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 360F432676
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59C134D930;
	Fri, 21 Nov 2025 11:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VS1Avchq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1AC34CFD5
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763724975; cv=none; b=PzZavBQIlJC6p8o3ILhdLWmlo1adFZK9zSFb6VVcExDrHeZABU0eXRLB/iD6ZSbFYRaT2WZVkzuAnEAj2Yq3nTh05GJ553oNn7OvFHdcIpKQup/3l2C/tABvslisi1LkI//mmdTIljw5+fkvyo5INLKwoO1ohWCv0sTOGS5MBn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763724975; c=relaxed/simple;
	bh=xi4sh3FWtiB0LYCCMtopckE7TQGE1bfmOXtNGBBIM70=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LHWVb/4pbMUX9nb/jnpR0K7gFrnnypY+SkELpKzsCLbxMGyvmcK8qM3VDN/+LVUWwl7BpEkIKwMki6agJEIV91rrq444+bN+pfynzslbYB/ImBxmuyz8s78DRf0VSlYscCUB654AzQWBl2j9dh2jqDpU08PPpkoCd102XskR2sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VS1Avchq; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47774d3536dso15179275e9.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763724970; x=1764329770; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N9sEYxfIc+hTJanUfmeG/Zn1IoRVtGcDqfv+PR900MI=;
        b=VS1AvchqQM6J69U0zX5vkoTP13ntQUlAasyJxogHtph7oIuVka4FkL8UyHa9RljRVZ
         fG8Ex0BOHTRBamWv9NJSaHqaYETEArxH1Gpu5IofTZbe8pSJF3/P1zhsFMRAkreAM5ut
         RB3Yu02HQR0qwqkS7faVf+yneoJDXV9dnPzOBQ9HbAmTrGYmmR47HCsU2f8Bo6o17b3m
         bJl0L4MwlOgo+PCRh5K4SMJ5BDCTOprlz6JBQuBRkj4tuntCPmHXReaC6MZ4h4hhss8x
         ls7fS3Pp9UQpCjG/BBt3ivIL1XqtvNMw3OdWMg31f1xfnWrMuB4QpwjvzWcNf9aYNTpY
         Ny6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763724970; x=1764329770;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N9sEYxfIc+hTJanUfmeG/Zn1IoRVtGcDqfv+PR900MI=;
        b=YnM7Kmm8d4ORYyrxObXxaSzAc35tEFyCZgdZ+6dE/F6wv3jXNfNDCBQM/7JJwsyQnl
         bKZh95nEs15Cn8nijSeqIHmXF8jheplW5koruyFoC+9+xOB6UPayJOpF4ssS1BoNHR13
         fl9MGawjIXPrFy4fNaKxfKzAlG9E3TwGwKD3EynQ9O1TKPV2eIk2nzAzfCV2jN0UhHo9
         32qF2YWuxgOzQA0c2c7QQQ3V3qTg2LWxfH1Ooye6eFE/awIVeW2Mgt8ksXnMiAzGaaGa
         FPpJ6z072EsOOKSIGko2rirEOl588A7h8II2SM8o5hj7JJA8TT7nSW6re9OHq6Py8vrR
         dVQA==
X-Forwarded-Encrypted: i=1; AJvYcCUjBu9hMDkMvL1NLiN2KErnp4B5dQRtML9lRgLsUgFX8yTIxRWfISu8Omo7EbkQ6iwwW+7tJm1Vt6Mp@vger.kernel.org
X-Gm-Message-State: AOJu0YyL9VxUEwurd3jlggCY6OOv4YxfsnvQh6wf1+x5JAbVG2gX47Lk
	TyU2vcyghxSGPYRt46B5pfNzK8JfvMNTqflRxrXHm8vRbiLpEx4MIR7S
X-Gm-Gg: ASbGnctS8eUOyTiGPkiyW9qNl5WWes+M245EDEJPWMPNHSX08ZzrP2ar28gbUuGM/LF
	wCyX66WMHEKevVermx8zMC7FVxiMy0cQU27+YsX9/3o6DnbjhLHBU0IfN2Zl5AyYo+OMtHnlm7Y
	Q7N7xILnwTLuVyN+xxaDG5+WVgTp7f//SwC5b9TX+eEHfUQIO3HZFDlLop7HtvtT+ewHv/4UwLu
	liN0cpqCC7Xa/xg6Bmsrd+456UBftiWc/12vYlv/5+WYNIh+AKjvIMpPZeag/P6SBAHtn39AWlc
	seOc5ZXK7ywp18ZBOSKig0cAph+/NUTPV2GHm3dRCvT9Cz+ZuhI/j8nwYM62MwCbk3lgyRqRM8m
	sukEQgx3RFBBGRuBggfylWg0nkwlyIXXGqWHB3iu2crcEwyESQ1gPjeusfgojL8lBsOUtVRmDfc
	6Vycnsoxqu78g2Mwip1VCBxpGqhAWuTTGZ8fY=
X-Google-Smtp-Source: AGHT+IG8sodXE9jGGGGmRK8fUP5qopeWa6ybgnzrniJ/tIyx/pp8y+wH2VWEpAL/y76pv8RXGMAlww==
X-Received: by 2002:a05:600c:1e89:b0:477:a1bb:c58e with SMTP id 5b1f17b1804b1-477c04cfddcmr23130495e9.7.1763724970251;
        Fri, 21 Nov 2025 03:36:10 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9cce:8ab9:bc72:76cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf3558d5sm38732465e9.1.2025.11.21.03.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:36:09 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simon Horman <horms@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Russell King <linux@armlinux.org.uk>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH net-next 06/11] net: dsa: rzn1-a5psw: Add support for optional timestamp clock
Date: Fri, 21 Nov 2025 11:35:32 +0000
Message-ID: <20251121113553.2955854-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add support for an optional "ts" (timestamp) clock to the RZN1 A5PSW
driver. Some SoC variants provide a dedicated clock source for
timestamping or time synchronization features within the Ethernet
switch IP.

Request and enable this clock during probe if defined in the device tree.
If the clock is not present, the driver continues to operate normally.

This change prepares the driver for Renesas RZ/T2H and RZ/N2H SoCs, where
the Ethernet switch includes a timestamp clock input.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/net/dsa/rzn1_a5psw.c | 7 +++++++
 drivers/net/dsa/rzn1_a5psw.h | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/drivers/net/dsa/rzn1_a5psw.c b/drivers/net/dsa/rzn1_a5psw.c
index 7b84585a5415..99098bc06efe 100644
--- a/drivers/net/dsa/rzn1_a5psw.c
+++ b/drivers/net/dsa/rzn1_a5psw.c
@@ -1243,6 +1243,13 @@ static int a5psw_probe(struct platform_device *pdev)
 		goto free_pcs;
 	}
 
+	a5psw->ts = devm_clk_get_optional_enabled(dev, "ts");
+	if (IS_ERR(a5psw->ts)) {
+		dev_err(dev, "failed get ts clock\n");
+		ret = PTR_ERR(a5psw->ts);
+		goto free_pcs;
+	}
+
 	reset = devm_reset_control_get_optional_exclusive_deasserted(dev, NULL);
 	if (IS_ERR(reset)) {
 		ret = PTR_ERR(reset);
diff --git a/drivers/net/dsa/rzn1_a5psw.h b/drivers/net/dsa/rzn1_a5psw.h
index d54acedac194..81be30d6c55f 100644
--- a/drivers/net/dsa/rzn1_a5psw.h
+++ b/drivers/net/dsa/rzn1_a5psw.h
@@ -236,6 +236,7 @@ union lk_data {
  * @base: Base address of the switch
  * @hclk: hclk_switch clock
  * @clk: clk_switch clock
+ * @ts: Timestamp clock
  * @dev: Device associated to the switch
  * @mii_bus: MDIO bus struct
  * @mdio_freq: MDIO bus frequency requested
@@ -251,6 +252,7 @@ struct a5psw {
 	void __iomem *base;
 	struct clk *hclk;
 	struct clk *clk;
+	struct clk *ts;
 	struct device *dev;
 	struct mii_bus	*mii_bus;
 	struct phylink_pcs *pcs[A5PSW_PORTS_NUM - 1];
-- 
2.52.0


