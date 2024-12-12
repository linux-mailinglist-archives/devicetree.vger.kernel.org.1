Return-Path: <devicetree+bounces-130078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AE89EDE8A
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 05:33:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFF4B188752F
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 04:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16DF215FD01;
	Thu, 12 Dec 2024 04:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="IMTcTnuq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com [185.125.188.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B3D126BEE
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 04:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733978030; cv=none; b=AICVsAMl7Lr9U2ZOynbpUqlmMp1VuoRgzFYEsi0ip+qsC0LFf6w2w9HWQDyfx7fGDf6f2JDGQGRPnugI5ccSXVrAHFDUoJW4tG0Hz0iG1hvvaG5xLexI9QHoLhJOhIMDDWk7RGfAXSSN8M5nvY0PZovfyUGv2U5DNRMC/Ntd9PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733978030; c=relaxed/simple;
	bh=PMs2GHuEC0WMAygkzyRD14nrCVi9mxXi44DYx2IFWvo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bDvTn9oNRO4i0gqQgawsIA2Drii/1YiBN6LYirg9cFAJoZ4Fos83r9kxqIu71ek8MwpkS4DzzXiCllawWNJvio3g+ou5J1abx/i3CJZiQoZAGer/Or2rVGfUyrr0jWogEqRwvkfoqeyL/RSNkTXAebV0QX8Sq5l9Woo/UdtgGCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=IMTcTnuq; arc=none smtp.client-ip=185.125.188.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from hwang4-ThinkPad-T14s-Gen-2a.conference (1.general.hwang4.uk.vpn [10.172.195.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id A23B040241;
	Thu, 12 Dec 2024 04:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1733978020;
	bh=O0PYJ7WKUwAnlFfWJXCfHd+2GPlJxAHzQS2LGo+pJDk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=IMTcTnuqnmCxsOrW+zIWj45SFRoQ6c3iOb4HWubzq3zQTEaZck0FZWea8xIKHMilZ
	 W5Z0l9YE/16+X0ULiPoZ3qXx2DdN9MQKx+khnUfxtDzfiOdGVFN8XGUcdpgJSpPlTy
	 2RlUsj6XF63oQ5hRnyvfowKZQvl0UVypAmnODQAcZoomdHE0Ucn/EEZvH6Xdie+gJI
	 xiRBp8zF9tkf8FXdNcvJxjE6Mar50YzUp9poLm9AQ/Bcgvs7s7rkub0J6T0E/A8jdT
	 XsvlfpMnbf8xHEKP/BlTdh0/Pw0oDJt3CZP2THP2UjqFH5yaKe7zckdH86eMWVdTo7
	 L2YTl2R30DXEw==
From: Hui Wang <hui.wang@canonical.com>
To: linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org
Cc: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	hui.wang@canonical.com
Subject: [PATCH] ARM: dts: nxp: imx6qdl: add dr_mode to usbotg
Date: Thu, 12 Dec 2024 12:31:26 +0800
Message-Id: <20241212043126.73045-1-hui.wang@canonical.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For the chipidea usb driver, if the dr_mode is not set, it will set
the device to otg mode by default, so here the dr_mode has not been
set for a long time. But some testcases need to parse the dr_mode from
DT and decide the follow-up test strategy, here set the dr_mode to otg
explicitly for QA's testcases.

Signed-off-by: Hui Wang <hui.wang@canonical.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
index d2200c9db25a..285fb7314a88 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi
@@ -982,6 +982,7 @@ usbotg: usb@2184000 {
 				clocks = <&clks IMX6QDL_CLK_USBOH3>;
 				fsl,usbphy = <&usbphy1>;
 				fsl,usbmisc = <&usbmisc 0>;
+				dr_mode = "otg";
 				ahb-burst-config = <0x0>;
 				tx-burst-size-dword = <0x10>;
 				rx-burst-size-dword = <0x10>;
-- 
2.34.1


