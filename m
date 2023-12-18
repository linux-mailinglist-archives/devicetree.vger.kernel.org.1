Return-Path: <devicetree+bounces-26571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8CA816F8D
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EDAD1C23E16
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B3C3D540;
	Mon, 18 Dec 2023 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="KYUyhFSb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484513A1D8
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904106; x=1734440106;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=p5I4TcGJ1Ezqj2sezo0MIRP2FDEiKxPZifKvwSrzigc=;
  b=KYUyhFSbqwgPAAlvcQ2Mo0BKxyWguwiJp266ESxE1nsxK4Pd4Llw4AWf
   4Gml3+17f7hlhexV8yveIt7PFQXVaUL9ZU2lemYhU+i48DaB6Yq7NcGpX
   g9FINMmVs2OBhvt7T+O4ztFmYgmv9wRvEPfhYyO1jvxs6O5UADI2UfPDe
   8MsglCktyZSXG59HpEG5w8xzRiDhiJL5FQQ89+H+1yNJ6aDcOgh3JXOlY
   dcRmsOB3BC2AQO7tIRYNF00UgNT4uRAhah1BPVcklqhDzFHl7FHLo3Su0
   NA1fI8t1W/tjUBd2Q92FSdALlV7qqp5f6SIvc4cPk56WE0lpintCyjatq
   w==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562692"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:00 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7EEAE280075;
	Mon, 18 Dec 2023 13:54:59 +0100 (CET)
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
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/23] ARM: dts: imx7[d]-mba7: disable USB OC on USB host and USB OTG2
Date: Mon, 18 Dec 2023 13:54:39 +0100
Message-Id: <20231218125459.2769733-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

USB host is an HSIC interface directly connected to a USB hub. USB OTG2
is a direct connection to Mini PCIe interface without any OC signaling.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 1 +
 arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index c2be1a75f70d..2aef830cf1f2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -590,6 +590,7 @@ &uart7 {
 };
 
 &usbh {
+	disable-over-current;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
index 4ea1801a7aed..d3a6b81fb1dc 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-mba7.dts
@@ -112,6 +112,7 @@ &usbotg2 {
 	srp-disable;
 	hnp-disable;
 	adp-disable;
+	disable-over-current;
 	dr_mode = "host";
 	status = "okay";
 };
-- 
2.34.1


