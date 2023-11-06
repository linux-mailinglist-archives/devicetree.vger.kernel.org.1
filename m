Return-Path: <devicetree+bounces-14041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4877E1D7E
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:52:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4535B20D02
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3B2168B6;
	Mon,  6 Nov 2023 09:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="i1hmhlyu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E281516420
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 09:52:08 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20598DB;
	Mon,  6 Nov 2023 01:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1699264327; x=1730800327;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ZP9WhhosrANe1NvtbDJgPxGVAfnOD3q9Ntyr22Iq7+M=;
  b=i1hmhlyuU8rHQIZhywrPby9gCqSuiC0deHipX9Ol5+0KKEnBMfgbGKiF
   3S+GWshMZ+NzDDL034EXl2nzGv4lmOLSnoUWqdofY89aFBz9ugBBY6oeH
   iwwm9Ci7qrMprtHWfOMMkAiH3NFtoRlZRv1Td/JX1MmNgYq4ygcNaJVuq
   dARS8xYxFShpgz8aoX1zEQI1bi9MMDMcHyH7YlP8n2qutZ+hSGrhuanJF
   TMLqewKz3dOA/hIPGE6LUSL8svkSEkt+cbjyX9Ed2eSBn+EVUvBgbG5QE
   0hTyI3Uol9LBG+cb705HB6kNssoQRL906RXzm2iUMZA83nCMq0WUnNs+r
   A==;
X-IronPort-AV: E=Sophos;i="6.03,281,1694728800"; 
   d="scan'208";a="33823099"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Nov 2023 10:52:05 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DB77E28007F;
	Mon,  6 Nov 2023 10:52:04 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philippe Schenker <philippe.schenker@toradex.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] imx8qm/imx8qxp: Support for inverted PWM
Date: Mon,  6 Nov 2023 10:52:02 +0100
Message-Id: <20231106095205.231210-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

this small series adds support for inverted PWM output i.MX8QM/QXP.
Driver is already there, but #pwm-cells needs to be adjusted in DT.
While at it, also DT bindings constraints are added to ensure the proper value.

Thanks
Alexander

Alexander Stein (3):
  dt-bindings: pwm: imx-pwm: Add constraints for #pwm-cells
  arm64: dts: freescale: imx8-ss-lsio: Fix #pwm-cells
  arm64: dts: freescale: imx8-ss-dma: Fix #pwm-cells

 .../devicetree/bindings/pwm/imx-pwm.yaml      | 20 ++++++++++++++++---
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi |  2 +-
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      |  8 ++++----
 3 files changed, 22 insertions(+), 8 deletions(-)

-- 
2.34.1


