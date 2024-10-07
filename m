Return-Path: <devicetree+bounces-108644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D78993392
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 18:38:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C6F41F230EA
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 16:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 943621DD522;
	Mon,  7 Oct 2024 16:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="ApLZm8qD"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2704C1DC18E
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 16:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728319025; cv=none; b=ipuuO4se2QinwzCwDyQHPSBlqLJU9b+StmJQSnLc7lWDzkUTKuOO5EiVfbkuPOIkQEplBJwVCyH5/ZeaCZQPFb1iLA41lZQzDWcW3U7BL547fA9a2f96s7TFXaKTI+agSNY8noYhYZtLQ39rF+C5gEFJFyze3LQUsaNwkSiXrCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728319025; c=relaxed/simple;
	bh=a5oX2HiIIPVmSPTbdeG4n36APZbjAHJU4csJAKrEmYM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AIKoRhg97JlO2tjh20+/WqTXxn0Ld+dPEgokP9ncWojEdhvXvftLMp+1YYLCTzHggLTpwfMyOBuI8wVgFaB5MLSJa+yVnP4SJTWTVoMMGIz3VIujRHtbbDGiWal5zVkSJMaJkHavVlUkZvT5Rq4jncqYz946AzJQEDiqwjbTNxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=ApLZm8qD; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728318987; x=1728923787;
	i=markus.stockhausen@gmx.de;
	bh=bgSn0O6BXShULsVEObQzCSZRW0/xCAvRAFQsab1tNH8=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=ApLZm8qDQk9NeYvPuO7F7NfguLFP/wxWs+jBrYuEdUijkf7mBCkdyoC4l50vuFSI
	 4klfMTRzdc5YyShOQnUkW84WY2Os0F7/2xAsE3UStjUSG34GmXsiVIADZuDOGmfTf
	 Y1L1OZP2dIaX3pDrkpSOBQeF4AI9M8E12khgcQyLrYSRZeCsk5P06i0kSRBCDlP8n
	 7jizxWwN7YJYIbatO+cYyCD6J6zFMTUp/brvnuR00GPOKj7PyloV+9mmYIzogLdpf
	 BIaRZbrdK6vs9pTc1aXu2X3kLrmmN2axytuxU9T6JLO0ddKC1mTPrW9+Cm6VUFNxx
	 eCcHDCwg40ni9lVwTw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.45]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MacSe-1tZvMH2zdq-00fq1Y; Mon, 07
 Oct 2024 18:36:27 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org,
	krzk@kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v2 3/3] phy: Integrate Realtek Otto SerDes driver into build system
Date: Mon,  7 Oct 2024 12:36:23 -0400
Message-ID: <20241007163623.3274510-4-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:OJUu2MnLIGziuljRNM7vToeXOrPjoHlcXWxwTjDl5vXwmTFVpHk
 OjCReMHYukIi5xahzUpPDPyZ77rblXRZt/vTRy0WeIdKpSU134luDZutwrRKwmtVUsFFFFl
 paS+JGZkJkxc5OUUT/xvdFayj+0jQd7WgdNkBFAh/XCta20XEewXynk8/rbaDG10sOCzSc3
 FqkV0n/GvM9JgZk+gW5lw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:yIPAjd0kYkY=;UX+OkX8JhcyQgHNMEymxOIsSBb8
 nQ+XPKKis09YkQDJuyznCCLQ3+ju+ZtqhfnZkiCQdqoI9B4KsGI9RRBvSfE8bJyDDOul+yeu5
 KqTgO6/HVk+HUaENAsTmh5j6+ZwW2889VMhcD9qzMCPIhma1L/NVKWUnlp7oQ7iGWtUxA5TuJ
 Zg8oFYehGK/pvl3o8XeVvJuiXc6Ozos4lvpAK8i0IxuvrjufR5ILUMCisdghofZlIppyatLw6
 lC0QnUGufEuzPXWGLC7Z90sWHkzoyZWc6I7m6AyOKs3StFZ9COfKgZaZXplwtV7z87HsBBDEh
 JLs8SHZBmny2N1V3roNOjfFKSD15xI/08ioZH2lD236OIYQWDvP/C71FKHTxbG6fKHni8x67a
 MZdFERcoH7b75mPwm3ZQt+56L8lhy0MW6QswdO3A+zMCjlAmOUskSWMXE6214cH8+HzJxjWWe
 nlb7Z6yMfWWerOU06/GnONtZo/r/Z0mXQOENXr671TfbfEa/hG5HC3V64dZGxEjcBeoXtbLbS
 rc7mJGdKWR2JwvcWJ4p7xI6+bkeLDn8Y1y+baoWLx/tWKjOzbXlvDXGstoSvdt54UHFB25tU6
 wf+II5A5cDAVJ9bMziL3St3+J1maXXkgQSM35TtsXrB5ck3LoQgoKzt5p+HDkyYRHSKPDSAeg
 2co4TiTCrrqjhRc50aBkanM1QiqXeKz/e/4zX71WaXpP300/RrKDjazfeuL0kF0a1VP+kaEoe
 y2IYEXetRb8OIimLqIQuM3gqWZ3zKFrVOnzNt1tBVOicrEnJpmEdWvvv9wvwXMxlcfNA3IqMV
 r+YAoE7BCMrybMBby+zaytfQ==

Add the driver to the build system. The Otto platform currently has
only some drivers upstream and is missing a lot of platform bits.
Use only the bare minimum of dependencies.

Changes in v2:
- Change naming convention
- Add more help text

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
=2D--
 drivers/phy/realtek/Kconfig  | 10 ++++++++++
 drivers/phy/realtek/Makefile |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..021b4c4e700a 100644
=2D-- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -30,3 +30,13 @@ config PHY_RTK_RTD_USB3PHY
 	  of the parameters.

 endif # ARCH_REALTEK || COMPILE_TEST
+
+config PHY_RTK_OTTO_SERDES
+	tristate "SerDes driver for the Realtek Otto platform"
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Enable this to support Realtek SerDes in the RTL83xx and
+	  RTL93xx network SoCs. These are based on MIPS32 architecture
+	  and the SerDes connect to one to octa transceivers to build
+	  up switches with up to 52 ports.
diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
index ed7b47ff8a26..34e607f33961 100644
=2D-- a/drivers/phy/realtek/Makefile
+++ b/drivers/phy/realtek/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)	+=3D phy-rtk-usb2.o
 obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)	+=3D phy-rtk-usb3.o
+obj-$(CONFIG_PHY_RTK_OTTO_SERDES)	+=3D phy-rtk-otto-serdes.o
=2D-
2.46.2


