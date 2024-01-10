Return-Path: <devicetree+bounces-30898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DE48296E4
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 11:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 352912895C7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 10:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6E1C3F8E3;
	Wed, 10 Jan 2024 10:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="nrxJCeBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2303F8D9
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 10:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1704881130; x=1736417130;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=qiew8Q2EdZRHtClxluWOlp9Xekv6EqPJH7+5O7NGyYg=;
  b=nrxJCeBe8tpwECgB0eNklh2DMsGOCCu+0BaHTOOCx30yXtRvL6MzLl24
   pZa4sO5Sah9XQU5JeDwUcZQ6HaIgyscUBy/yuGW0wJ3d09B9JqwkBZlxZ
   6AejyrFDlp+4qJJHcBP0rlnAPmTkFuu5te+qi1JTBTUOmUe0K4LUPUS5R
   AFMJJbyCL1R/KiAbY4Y54YnxLWCVlkIs37PSg6vR6AZDzyzyH4TDRgZvw
   r9MabTZhzNwYwvKD8fB/EHHl0YAHdpj1b51v8Ip9toV21wnZCqpR7mxs4
   /9rNR5nD5ojBArxJptI8T88LhEZb7P3nHkZVc9vZLKU//slYgyJBFdWoV
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,184,1695679200"; 
   d="scan'208";a="34825193"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Jan 2024 11:05:28 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C6DC4280075;
	Wed, 10 Jan 2024 11:05:27 +0100 (CET)
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
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: [PATCH 1/1] arm64: dts: freescale: tqma9352: Update I2C eeprom compatible
Date: Wed, 10 Jan 2024 11:05:26 +0100
Message-Id: <20240110100526.478771-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Now that there is a dedicated compatible for the idendification page use
that instead. This also allows the removal the size and pagesize
properties.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
index f6e422dc2663e..9d2328c185c90 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
@@ -122,10 +122,8 @@ eeprom1: eeprom@57 {
 
 	/* protectable identification memory (part of M24C64-D @57) */
 	eeprom@5f {
-		compatible = "st,24c64", "atmel,24c64";
+		compatible = "atmel,24c64d-wl";
 		reg = <0x5f>;
-		size = <32>;
-		pagesize = <32>;
 		vcc-supply = <&reg_v3v3>;
 	};
 
-- 
2.34.1


