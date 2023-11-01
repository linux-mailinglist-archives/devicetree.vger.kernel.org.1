Return-Path: <devicetree+bounces-13409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF867DE00C
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 12:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 932D528138E
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05FD110959;
	Wed,  1 Nov 2023 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcVPN4FC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD59F10A09
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 11:03:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F27AC433CC;
	Wed,  1 Nov 2023 11:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698836632;
	bh=O8as42x5ndOrDmGNnepxKUAmwZWt7aj9xgh7RSmq0xE=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=EcVPN4FC2mluKKCX1eQ7d3QqQmvsmK0A3D4RSSJrU94aT+fNNR0wZVfAfabEanq3l
	 n+KQbq8ZaF3MZA3AlS7mycp1D4cCPOur3frgYVCs5PZrRYQ6i//nSQLp/lmVRbJMNr
	 EpHTsMCXoNTw29VQxRCD1MivBapi3AqSOtBaev1r/yyKg70qxLI3a+QFK+ewHzUvpR
	 LLg7JnxS574QJq1z0//VR8UIzI0k8V9OMJ8sJtx2kPSGYFjuVibWdj6i/+NZO+G85i
	 Tu0nixkvIEWUlh5rKxWq8hSznMzip6zcwYBU5geUbcXUhdFlVcYnTT2icMui2DvQ9H
	 YeIqAS6pkizKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AA1C4332F;
	Wed,  1 Nov 2023 11:03:52 +0000 (UTC)
From:
 Stefan Kerkmann via B4 Relay <devnull+s.kerkmann.pengutronix.de@kernel.org>
Date: Wed, 01 Nov 2023 12:03:37 +0100
Subject: [PATCH] ARM: dts: imx6q: skov: fix ethernet clock regression
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231101-v6-6-topic-imx6q-dt-v1-1-274f6c13c7d5@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAIgwQmUC/x3MMQqAMAxA0atIZgNp1QxeRRxKjZpBW1sRQby7x
 fEN/z+QJalk6KsHklyaNewFpq7Ar25fBHUqBku2MYYMXoyMZ4jqUbebD5xOtI6IpXUdzRZKGZP
 Mev/XYXzfD+iNzBhlAAAA
To: Shawn Guo <shawnguo@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698836631; l=1806;
 i=s.kerkmann@pengutronix.de; s=20231101; h=from:subject:message-id;
 bh=I+le/prsadbXxCLhWl2Zg97MQQpgF73MgSjiwEzuvl8=;
 b=Y+NN+IswQatXB+MvnetAR6jYvducRyXvRD32cp/WZG8JC6mjw+Is/4Ttha1e1elBXyySc2C1e
 aC/HO99jTjCDlag06tyKRjNs6anVp/TZXV/YRsW7EggaDCLAYHZlFUw
X-Developer-Key: i=s.kerkmann@pengutronix.de; a=ed25519;
 pk=tqGkJoWHUyszJPfH6R854H1WT2BhbUdJMbIrIzZCg5s=
X-Endpoint-Received:
 by B4 Relay for s.kerkmann@pengutronix.de/20231101 with auth_id=94
X-Original-From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Reply-To: <s.kerkmann@pengutronix.de>

From: Stefan Kerkmann <s.kerkmann@pengutronix.de>

A regression was introduced in the Skov specific i.MX6 flavor
reve-mi1010ait-1cp1 device tree causing the external ethernet controller
to not being selected as the clock source for the i.MX6 ethernet MAC,
resulting in a none functional ethernet interface. The root cause is
that the ethernet clock selection is now part of the clocks node, which
is overwritten in the specific device tree and wasn't updated to contain
these ethernet clocks.

Fixes: c89614079e44 ("ARM: dts: imx6qdl-skov-cpu: configure ethernet reference clock parent")
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
This patch fixes a small regression in the device tree for the Skov
specific i.MX6 flavor reve-mi1010ait-1cp1 which caused a none functional
ethernet interface.
---
 arch/arm/boot/dts/nxp/imx/imx6q-skov-reve-mi1010ait-1cp1.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-skov-reve-mi1010ait-1cp1.dts b/arch/arm/boot/dts/nxp/imx/imx6q-skov-reve-mi1010ait-1cp1.dts
index a3f247c722b4..0342a79ccd5d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-skov-reve-mi1010ait-1cp1.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-skov-reve-mi1010ait-1cp1.dts
@@ -37,9 +37,9 @@ panel_in: endpoint {
 
 &clks {
 	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>,
-			  <&clks IMX6QDL_CLK_LDB_DI1_SEL>;
+			  <&clks IMX6QDL_CLK_LDB_DI1_SEL>, <&clks IMX6QDL_CLK_ENET_REF_SEL>;
 	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>,
-				 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
+				 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>, <&clk50m_phy>;
 };
 
 &hdmi {

---
base-commit: 05d3ef8bba77c1b5f98d941d8b2d4aeab8118ef1
change-id: 20231101-v6-6-topic-imx6q-dt-2a006e4a50f2

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>


