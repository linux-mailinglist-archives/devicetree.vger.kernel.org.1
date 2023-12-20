Return-Path: <devicetree+bounces-27453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9C081A7F5
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 22:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1214E1C22C29
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 21:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E22AD4A9A6;
	Wed, 20 Dec 2023 21:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UX26fLtB"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D536495E6;
	Wed, 20 Dec 2023 21:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703107075;
	bh=+RjvHjYs7Ly/7dUu4Rtv02Ibjy7DY40baKUxOdv15t0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UX26fLtBltQLDfl6IO5pdDv2SuawwozyOGYVKQ+IowOLGizdyNh0ZImU7To3Jvvjl
	 kO8SYHlOQD4LkD41djuEAxfvv11QQpwPbJALTSU5VLM+bRRN2s+sS9sMHBi4C1+fht
	 E5SiOFFLNqPrabdGBJ1CeCWAuD7FLoNj8JBuVzYM31Ip8h1QpaGLmY52etVlW2he8q
	 08cGrYPB92GTsyhC0Db/CGKnTJGpSBhxRzixIwKI+aRnpSnVeD+B/rH1Ag+k4lfu3n
	 NNu8dOFhacxrhpAZgUE9o1cH4lORiD2pfCbBqwEW3vlsBZCs0X4OkTQd/z1JC+BiPv
	 X/XEpbDWAVVdw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6D39D3781FF9;
	Wed, 20 Dec 2023 21:17:55 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Richard Cochran <richardcochran@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Jacob Keller <jacob.e.keller@intel.com>
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	kernel@collabora.com,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Subject: [PATCH v6 3/4] riscv: dts: starfive: visionfive-v1: Setup ethernet phy
Date: Wed, 20 Dec 2023 23:17:41 +0200
Message-ID: <20231220211743.2490518-4-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231220211743.2490518-1-cristian.ciocaltea@collabora.com>
References: <20231220211743.2490518-1-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The StarFive VisionFive V1 SBC uses a Motorcomm YT8521 PHY supporting
RGMII-ID, but requires manual adjustment of the RX internal delay to
work properly.

The default RX delay provided by the driver is 1.95 ns, which proves to
be too high. Applying a 50% reduction seems to mitigate the issue.

Also note this adjustment is not necessary on BeagleV Starlight SBC,
which uses a Microchip PHY.  Hence, there is no indication of a
misbehaviour on the GMAC side, but most likely the issue stems from
the Motorcomm PHY.

While at it, drop the redundant gpio include, which is already provided
by jh7100-common.dtsi.

Co-developed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 .../jh7100-starfive-visionfive-v1.dts         | 22 ++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7100-starfive-visionfive-v1.dts b/arch/riscv/boot/dts/starfive/jh7100-starfive-visionfive-v1.dts
index e82af72f1aaf..692c696e1ab4 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-starfive-visionfive-v1.dts
+++ b/arch/riscv/boot/dts/starfive/jh7100-starfive-visionfive-v1.dts
@@ -6,7 +6,6 @@
 
 /dts-v1/;
 #include "jh7100-common.dtsi"
-#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "StarFive VisionFive V1";
@@ -18,3 +17,24 @@ gpio-restart {
 		priority = <224>;
 	};
 };
+
+&gmac {
+	phy-handle = <&phy>;
+};
+
+/*
+ * The board uses a Motorcomm YT8521 PHY supporting RGMII-ID, but requires
+ * manual adjustment of the RX internal delay to work properly.  The default
+ * RX delay provided by the driver (1.95ns) is too high, but applying a 50%
+ * reduction seems to mitigate the issue.
+ *
+ * It is worth noting the adjustment is not necessary on BeagleV Starlight SBC,
+ * which uses a Microchip PHY.  Hence, most likely the Motorcomm PHY is the one
+ * responsible for the misbehaviour, not the GMAC.
+ */
+&mdio {
+	phy: ethernet-phy@0 {
+		reg = <0>;
+		rx-internal-delay-ps = <900>;
+	};
+};
-- 
2.43.0


