Return-Path: <devicetree+bounces-8002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9B07C6695
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 09:42:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9060B1C20FA0
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 07:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB5F10795;
	Thu, 12 Oct 2023 07:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="FfHeO2/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947FC10785
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 07:42:43 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C643CF5
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 00:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697096561; x=1728632561;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=wKPUZ7DSVDKeWT6JRlIvJwpRH4xUA9cTmE5jiBzf9hM=;
  b=FfHeO2/ZSt/+xpDI6uMXrqXN55KOvdG6JezfUSkYgQH+s6hivCft15mM
   YOl8ZjesvEEKJf5Q1g7Oeoa70fZxJ3/Z13l8oE1LTyVttuDu+OT7uYwq8
   8VHzRFYMUF3jos7CL4IBfI6QdkxNLwXJq39kkPoC9wAbAeVYuVRLewi8u
   xgUBAD6JCT2eILiNIWPCDxkomm/FTfSZycmHt44FFMGsPKm7LK0QxeP8m
   8UgckxPqqnPTtRqLJsyP3xPrxQkUI2tKeyLyajB5RZLLXV3vzmNWfMkN/
   8EI/HIjzWlMuiqkD5fEOGQuAlIbgPOEhcYm3GYhFL8uVIZRwDsbO6+e8d
   g==;
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="33421875"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 12 Oct 2023 09:42:36 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A6E1D280084;
	Thu, 12 Oct 2023 09:42:36 +0200 (CEST)
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
Subject: [PATCH v2 1/2] arm64: dts: freescale: tqma9352-mba93xxla: add 'chassis-type' property
Date: Thu, 12 Oct 2023 09:42:35 +0200
Message-Id: <20231012074236.2708881-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012074236.2708881-1-alexander.stein@ew.tq-group.com>
References: <20231012074236.2708881-1-alexander.stein@ew.tq-group.com>
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

Add the chassis-type property to tqma9352-mba93xxla.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
index f06139bdff97e..f0d0bf84f6ba5 100644
--- a/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352-mba93xxla.dts
@@ -18,6 +18,7 @@ /{
 	model = "TQ-Systems i.MX93 TQMa93xxLA on MBa93xxLA SBC";
 	compatible = "tq,imx93-tqma9352-mba93xxla",
 		     "tq,imx93-tqma9352", "fsl,imx93";
+	chassis-type = "embedded";
 
 	chosen {
 		stdout-path = &lpuart1;
-- 
2.34.1


