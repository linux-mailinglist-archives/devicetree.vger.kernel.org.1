Return-Path: <devicetree+bounces-260188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNpkJ1GZeWkNxwEAu9opvQ
	(envelope-from <devicetree+bounces-260188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 06:06:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 051679D235
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 06:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 130ED300A629
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 05:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A1E4331A71;
	Wed, 28 Jan 2026 05:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V8GZrAHm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF8E78F3E
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769576764; cv=none; b=iNqYt1PpV5/SBpE2Sb75A34NJ93K1ol7NmjTVD9W59syJofeOCn7lGNYVFhGNxq2qwLtLR0GnqgCCFiCIR2VPBgKule7fSzsjgJhwp2GaXS85PLS6bGz4pvenQitwYbdl0rVOpqEqKAc7oqcnJtA7D8TjtmFyIHAUijdueOOhqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769576764; c=relaxed/simple;
	bh=oVvyqYd4qWPHGv5pGoRjzKPFmVfR/DQ8l8BxnYcGVUo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q1vZS8KeHIMTv7kVkIvxyfqJ9033sC15Tk772Z2ZthTyMpCeZDZECSr1Wf6RWJR2V5GTsKMv4FHcALhYxW3FsN5CJI8M03HiMt7/Ez5dksUMmeH3CeFZMSL42HumC5BZVZhM+CuTRGfta9iur9iMSbcjvXRt5ke2RCM9hbmz124=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V8GZrAHm; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a07fac8aa1so47277675ad.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 21:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769576763; x=1770181563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sK4p8AbcNLvlqa+RZXsOEdBM7mQdQ2CRB4EPV5C/zSw=;
        b=V8GZrAHmO4Jkks0h9SzcOVhN1iTkpg3njJ53zHAUgd29tLdcDT1++NNMoDjSulpif0
         kwnJ98L0wlu6v6JEDJ/DkjeSslf0xeuZhyv0GgZ+XmwDejHTJMggjnPVdZorRXeDMp4q
         D+dqPjx1nuy6qdlqAWnRtCNMyEQKONdQj54IPNjwfDpb5OYNBUXweGo7Oro83uqbTP/+
         JLfkjFYBBQtGIl3+OSQemreq2VgcEA9Vs0aF/tBSGeWj3CepGOlUXpBAdEpW1a1qVyZN
         79RJw8gIlgwBDqG2RounngAcLbhkEwVGr/klF+K0LI7/9qaVwaNFh17nTdiBPxw6Ojdf
         Nkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769576763; x=1770181563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sK4p8AbcNLvlqa+RZXsOEdBM7mQdQ2CRB4EPV5C/zSw=;
        b=HJnADBTAz1B0D4vmAYb2RmrQ8PVbsi0QzYpK1q6LBq96njDVl3Jv3Y2F2fACUTutcG
         nrab3vBE3WRo899ux4I6FjNDxYNQlsq4snG6SUfzjZAM3ZZS8QMCmurHYCMKnn/FD67p
         Hjl/S7TdAwav8W6pTWJckqpdXevn71v5SivPEfGOV+ZVqJyTPbeKGzcMqKqNiPg8fjZP
         V0/eJ3Yjoc4xdngXId45Luuv+aH8jSpC3E4qhZdpBi4pYTJeciDezvChW7wm/j/mKo29
         7eDN8Lg49CDCoXwpr1ipJYkYqgvP9XnhhOb0g8ycctw1rSudxt3FPgtyJsg2oyJVJMUY
         C6Jw==
X-Forwarded-Encrypted: i=1; AJvYcCVqdXRL5gdUnwCoI2vxWPwQG/k+odKuPuTg3lRkgoKQoK2BAY8P00w/kGFex7bCvuldHJ4v4cTvd8Hg@vger.kernel.org
X-Gm-Message-State: AOJu0YyIk/pN84CcdWUliSmbEQoCIj7FSaxJtNVOwc/bRnwZ01b1d52K
	2i4OWB3ktV6nHopP1Jx6gEdTxjX/OjjT2dsDiCKccDxS2b0LdWRAxjdV
X-Gm-Gg: AZuq6aKtfzer1I68zUzrsHnXvrNFTN5YR4V8Xnj6fCqeoduK45RM3lyg2kgJsBarQWb
	HgoDqwSQ0rT+kl6yTSbfkC9YNYEJwo1tM34KfasLd/2kv+OaFIlzzvYMIGkzn4+zKU4p2QXD0el
	uawtWVGDt5BuJ+YDFmtiXVXWZKThNT8ZxyOj9bYwiNdmsmQHPuGhkTvBSrsk9tUMOcaTprkWhx1
	XUFjC78HJV5TldbapfJYAs1Izg+ELHnVd9eDCV9fSAT2FXHkt817ja3l4pX61qGXEZZv07brAw3
	Yc262iVG38EYNNluxI/tfKBp5oipkvejdzjXST9XBfgY4sCaOYkIVGfSGL3duXRHe2CCuqMXuFN
	khJj3Y5hDqQk9chO5972Q/mPBoeT4ndSQORNubLB9dYfVsuNV/7nrEHv2eBxqbbsRZEuzZdmWPY
	ZoTzMDoeFuJ+/UtB8gS/5PXAfO/ko8SddHNKiEKvoqUXbkTWQqiDeGJWM=
X-Received: by 2002:a17:902:e808:b0:295:24ab:fb06 with SMTP id d9443c01a7336-2a870d645ecmr37710295ad.22.1769576762557;
        Tue, 27 Jan 2026 21:06:02 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b3ee952sm9736025ad.14.2026.01.27.21.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 21:06:02 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: shawnguo@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zaq14760@gmail.com,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH v2 1/1] arm64: dts: freescale: add pixpaper display overlay for i.MX93 FRDM
Date: Wed, 28 Jan 2026 13:05:49 +0800
Message-ID: <20260128050549.3337279-2-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260128050549.3337279-1-onlywig@gmail.com>
References: <20260127025740.2601841-1-onlywig@gmail.com>
 <20260128050549.3337279-1-onlywig@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-260188-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,i.mx:url]
X-Rspamd-Queue-Id: 051679D235
X-Rspamd-Action: no action

Enable Open-EP Community pixpaper-213-c support on NXP i.MX93.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |  4 ++
 .../freescale/imx93-11x11-frdm-pixpaper.dtso  | 51 +++++++++++++++++++
 2 files changed, 55 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index ce8f937c2315..c2727f8061e2 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -398,6 +398,10 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-9x9-qsb-i3c.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-frdm.dtb
+
+imx93-11x11-frdm-pixpaper-dtbs += imx93-11x11-frdm.dtb imx93-11x11-frdm-pixpaper.dtbo
+dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-frdm-pixpaper.dtb
+
 dtb-$(CONFIG_ARCH_MXC) += imx93-14x14-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-kontron-bl-osm-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-nash.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
new file mode 100644
index 000000000000..1111503b08af
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-frdm-pixpaper.dtso
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Overlay for Mayqueen (Open-EP Community) pixpaper display
+ * support on NXP FRDM i.MX 93 Development Board
+ *
+ * Copyright (C) 2026 Wig Cheng <onlywig@gmail.com>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include "imx93-pinfunc.h"
+
+/dts-v1/;
+/plugin/;
+
+&iomuxc {
+	pinctrl_lpspi3: lpspi3grp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO08__GPIO2_IO08		0x3fe /* SPI3 CE0 */
+			MX93_PAD_GPIO_IO09__LPSPI3_SIN		0x3fe /* SPI3 MISO */
+			MX93_PAD_GPIO_IO10__LPSPI3_SOUT		0x3fe /* SPI3 MOSI */
+			MX93_PAD_GPIO_IO11__LPSPI3_SCK		0x3fe /* SPI3 CLK */
+		>;
+	};
+
+	pinctrl_epd_ctrl: epdctrlgrp {
+		fsl,pins = <
+			MX93_PAD_GPIO_IO05__GPIO2_IO05		0x31e /* DC pin */
+			MX93_PAD_GPIO_IO06__GPIO2_IO06		0x31e /* RESET pin */
+			MX93_PAD_GPIO_IO26__GPIO2_IO26		0x31e /* BUSY pin */
+		>;
+	};
+};
+
+&lpspi3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpspi3>, <&pinctrl_epd_ctrl>;
+	cs-gpios = <&gpio2 8 GPIO_ACTIVE_LOW>;
+	fsl,spi-num-chipselects = <1>;
+	status = "okay";
+
+	display@0 {
+		compatible = "mayqueen,pixpaper";
+		reg = <0>;
+		spi-max-frequency = <5000000>;
+		reset-gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
+		dc-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		busy-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
+	};
+};
-- 
2.43.0


