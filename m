Return-Path: <devicetree+bounces-21766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E5780507A
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:37:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 036B31C20E48
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 10:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398CD58ACE;
	Tue,  5 Dec 2023 10:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dw0oH4bt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5685F1B2;
	Tue,  5 Dec 2023 02:36:29 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50bce78f145so6567893e87.0;
        Tue, 05 Dec 2023 02:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701772586; x=1702377386; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9/W7bRr2FIytmHTP+ve4vRfpj/k8/yIBrLP2P8LnNEk=;
        b=Dw0oH4btdfsgm2CLTFLfNaZBJMSA0IlZeAE75orjiHLjsQhbfuWjN0XVu82JGvRnRK
         RSH0fg4h8+6o+ma3QqMeB4s1RPquZKOlpfC0G+JWOQ78ONlEEfeaR1A3vseRSQjJQtPI
         b89nu0cECGahcK8nlC6chDiBpdFzRq084tn6GRomPWd8WWoUeVyxloAl9dMkMVlUEOqm
         SzzmCD6gNbrpmVotFa7g5aXwhvTlaoiQB6To7fsq+FZt7KzM9LBSCAbRFs5GQ3s9mnMj
         mcEC8+3iNDtJ6ow3PvR/065yzf52O8SuX93n4Kr1zEjIAGk/4XZs1aB10DGQ6OdmRCWn
         EyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701772586; x=1702377386;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9/W7bRr2FIytmHTP+ve4vRfpj/k8/yIBrLP2P8LnNEk=;
        b=OXqNEtJqUbWwpQ55G4KDho4HR9FX57TLdqY1I71w+6RG4jo2tN5Zo/mV5wPxoiNjfw
         4rGlkHUY6OS7dsW7r+PRmw7j+/kXWqKX68b1Z+/vG1YAv+sZr9nV9wKbLIzOfVULlEnp
         cqhjo1/H9kwkJwBe34RtDDEZ4qNUIhsBGAgv8NnHbRXpfRPh9eVG2aYStKdWBN/z/mYC
         1ezj4wcd874SwBBtlBHEG+uXF1BOZpl6aqz0D2ni7+JN/kyoaB9bBJq3xp7eQYHhGffx
         m8LPXEIlfLkUeI+3ukiyb/WQgZy59Ge9TWZLzFkTr9BlXHLAvOaQwppn5uKbWIhy3MVP
         A5sg==
X-Gm-Message-State: AOJu0YzN+tFdqUyg6DK3Z5Hq0xailU0IPFh3eTDM6VOHENV8cE67II4b
	rDN7TEAPhTLlaQA12NTGegk=
X-Google-Smtp-Source: AGHT+IES81scnB9OAc2hliG1AqfHqUzn12268APbl0b9mr/HfSY9+lceF3Al8CkH/xAT+wtxcOc+8g==
X-Received: by 2002:a19:3848:0:b0:50c:4e7:87b8 with SMTP id d8-20020a193848000000b0050c04e787b8mr175943lfj.23.1701772586273;
        Tue, 05 Dec 2023 02:36:26 -0800 (PST)
Received: from localhost ([178.176.56.174])
        by smtp.gmail.com with ESMTPSA id v8-20020ac25928000000b0050bf7a9c4adsm567335lfi.225.2023.12.05.02.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 02:36:25 -0800 (PST)
From: Serge Semin <fancer.lancer@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Jose Abreu <Jose.Abreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Serge Semin <fancer.lancer@gmail.com>,
	openbmc@lists.ozlabs.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH net-next 13/16] net: stmmac: intel: Register generic MDIO device
Date: Tue,  5 Dec 2023 13:35:34 +0300
Message-ID: <20231205103559.9605-14-fancer.lancer@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231205103559.9605-1-fancer.lancer@gmail.com>
References: <20231205103559.9605-1-fancer.lancer@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DW XPCS driver has been updated to being bindable with the respective
MDIO device registered during the MDIO bus probe procedure. As an example
of using that feature let's convert the Intel mGBE low-level driver to
registering the MDIO-device board info. Thus the registered DW XPCS device
will be a subject of the fine-tunings performed during the MDIO-device
probe procedures.

Signed-off-by: Serge Semin <fancer.lancer@gmail.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-intel.c | 31 ++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
index 60283543ffc8..7642c11abc59 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
@@ -4,6 +4,7 @@
 
 #include <linux/clk-provider.h>
 #include <linux/pci.h>
+#include <linux/phy.h>
 #include <linux/dmi.h>
 #include "dwmac-intel.h"
 #include "dwmac4.h"
@@ -585,6 +586,28 @@ static int intel_mgbe_common_data(struct pci_dev *pdev,
 	/* Intel mgbe SGMII interface uses pcs-xcps */
 	if (plat->phy_interface == PHY_INTERFACE_MODE_SGMII ||
 	    plat->phy_interface == PHY_INTERFACE_MODE_1000BASEX) {
+		struct mdio_board_info *xpcs_info;
+
+		xpcs_info = devm_kzalloc(&pdev->dev,
+					 sizeof(*xpcs_info) + MII_BUS_ID_SIZE,
+					 GFP_KERNEL);
+		if (!xpcs_info) {
+			ret = -ENOMEM;
+			goto err_alloc_info;
+		}
+
+		xpcs_info->bus_id = (void *)xpcs_info + sizeof(*xpcs_info);
+		snprintf((char *)xpcs_info->bus_id, MII_BUS_ID_SIZE,
+			 "stmmac-%x", plat->bus_id);
+
+		snprintf(xpcs_info->modalias, MDIO_NAME_SIZE, "dwxpcs");
+
+		xpcs_info->mdio_addr = INTEL_MGBE_XPCS_ADDR;
+
+		ret = mdiobus_register_board_info(xpcs_info, 1);
+		if (ret)
+			goto err_alloc_info;
+
 		plat->mdio_bus_data->has_xpcs = true;
 		plat->mdio_bus_data->xpcs_an_inband = true;
 	}
@@ -600,7 +623,7 @@ static int intel_mgbe_common_data(struct pci_dev *pdev,
 		fwnode_handle_put(fixed_node);
 	}
 
-	/* Ensure mdio bus scan skips intel serdes and pcs-xpcs */
+	/* Ensure mdio bus PHY-scan skips intel serdes and pcs-xpcs */
 	plat->mdio_bus_data->phy_mask = 1 << INTEL_MGBE_ADHOC_ADDR;
 	plat->mdio_bus_data->phy_mask |= 1 << INTEL_MGBE_XPCS_ADDR;
 
@@ -618,6 +641,12 @@ static int intel_mgbe_common_data(struct pci_dev *pdev,
 	plat->msi_tx_base_vec = 1;
 
 	return 0;
+
+err_alloc_info:
+	clk_disable_unprepare(clk);
+	clk_unregister_fixed_rate(clk);
+
+	return ret;
 }
 
 static int ehl_common_data(struct pci_dev *pdev,
-- 
2.42.1


