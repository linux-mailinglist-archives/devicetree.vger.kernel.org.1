Return-Path: <devicetree+bounces-25428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 661228133CC
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 222272832B0
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7B85B5B5;
	Thu, 14 Dec 2023 15:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="IR31Oc7N"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBFB7BD
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 07:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702566166; x=1734102166;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Kz43bxizq4u5ISfmmDA1EvjOR6n7FJnUUjw9zBhUOVU=;
  b=IR31Oc7N1FXCRvvTF0Hnsjz5gc4rfmPQc8wTFiT5pzBWqptdk1Ofgw3N
   wDb/GpMPuLNqu0TCXrHs9fO2M4xl0rqu0okDh4vQDsHGL+xzBizn7fBq4
   BYXVfi31NayFjtN23fgmsTn/+h0zPEE+ZeJ/mzTqAG8YxAOGNZ4YAxFBF
   y1dx2TL9z7QmFtHL/RCOhQUqTZDiHRgzepN67jzKSRBPFyEM3fCGTrak7
   nvbdxePwV9A312l7eq37zDzXtpXqigi/nUIfWHWbKHR/mGBRS/fHErzh9
   g3ZxhREPINhHu3cMK3hzokxDHhOexQskH6QFKdi3Hax5k+1lbXwIIirR0
   A==;
X-IronPort-AV: E=Sophos;i="6.04,275,1695679200"; 
   d="scan'208";a="34513396"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2023 16:02:44 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DE730280075;
	Thu, 14 Dec 2023 16:02:43 +0100 (CET)
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
Subject: [PATCH 0/5] TQMa8Xx (imx8qxp) audio support
Date: Thu, 14 Dec 2023 16:02:38 +0100
Message-Id: <20231214150243.1991532-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

this series adds audio support for TQMa8Xx on MBa8Xx.
The first 4 patches add the necessary nodes for providing clocks and SAI,
which are used in the last patch. Patch 5 depends on [1], but right now it is
to show a consumer.

Best regards,
Alexander

[1] https://lore.kernel.org/all/20231214142327.1962914-1-alexander.stein@ew.tq-group.com/

Alexander Stein (5):
  arm64: dts: imx8qxp: Add ACM input clock gates
  arm64: dts: imx8qxp: Add audio clock mux node
  arm64: dts: imx8qxp: Add audio SAI nodes
  arm64: dts: imx8qxp: Add mclkout clock gates
  arm64: dts: imx8qxp: mba8xx: Add analog audio output on MBa8Xx

 .../boot/dts/freescale/imx8-ss-audio.dtsi     | 330 ++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi    |   7 +
 arch/arm64/boot/dts/freescale/mba8xx.dtsi     |  27 +-
 3 files changed, 361 insertions(+), 3 deletions(-)

-- 
2.34.1


