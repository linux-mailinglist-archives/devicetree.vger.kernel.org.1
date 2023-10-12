Return-Path: <devicetree+bounces-8025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBD17C6772
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:16:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1E381C2107C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAFAA1C6AD;
	Thu, 12 Oct 2023 08:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="gW2AFibV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDE91C2BB
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:16:03 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B050BA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697098561; x=1728634561;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tTGL5JRenY6lRIU1b+n2+XjbW0hZHtARMEnqic83P/E=;
  b=gW2AFibVDmyjO6acDSnm0KYqChlI59WucVbuhDOdjTBbZCCACZ5I7sQw
   LpKsgEI/oCJ9+DFiHlRa0/o7kUEz/tMALILhNxpX/RdHgZTBq6DjUZmAD
   vHXM4WrY1raq1ANBSqZo/kz28tH33vilh9gWyIoDrOqOo1UrD2EZnsx7h
   NxAsvPrWCXSQW7exHe4wR6f+oWmmxxrS8p7epMqWmE7O+gsNvfln5HpfV
   foLGqAttrbd/fAsBpISw0I8kMiP1+56QKX21SnseZFBP+cczDm+XN02TO
   B88ovmNUCxnS7C+QyzQYxkO6mWfTVomrRwNlfT+0FXNIgfrTWdD2MrFWc
   A==;
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="33423294"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2023 10:15:57 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 21CD8280082;
	Thu, 12 Oct 2023 10:15:57 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] ARM: dts: imx7s: Add missing #thermal-sensor-cells
Date: Thu, 12 Oct 2023 10:15:56 +0200
Message-Id: <20231012081556.2723552-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012081556.2723552-1-alexander.stein@ew.tq-group.com>
References: <20231012081556.2723552-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

imx-thermal.yaml is referencing thermal-sensor.yaml, thus this property
is required. Fixes the dtbs_check warning:
arch/arm/boot/dts/nxp/imx/imx7d-mba7.dtb: tempmon:
 '#thermal-sensor-cells' is a required property
  from schema $id: http://devicetree.org/schemas/thermal/imx-thermal.yaml#

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7s.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7s.dtsi b/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
index 608eeac4213b4..b563383be6951 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7s.dtsi
@@ -609,6 +609,7 @@ tempmon: tempmon {
 					nvmem-cells = <&tempmon_calib>,	<&fuse_grade>;
 					nvmem-cell-names = "calib", "temp_grade";
 					clocks = <&clks IMX7D_PLL_SYS_MAIN_CLK>;
+					#thermal-sensor-cells = <0>;
 				};
 			};
 
-- 
2.34.1


