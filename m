Return-Path: <devicetree+bounces-58693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4AF8A2D3C
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:22:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A90C0B22EDB
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 11:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452C15466B;
	Fri, 12 Apr 2024 11:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QsFTjLBg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC5F53370;
	Fri, 12 Apr 2024 11:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712920935; cv=none; b=ejAWqLY5/bNfOqQdXpSAQSqTEk6VDHdsJR7jprbcQ7AEfBNY5cSHOT//ErOJjuoI8D27LhsPGeSQlEBMqWL2yQ6FBbdycGadSVLy5UfIC0M7coAGm9TsiP9ymUIsa4WcjXT4+LDVq5fGPEHwNVRlH6IgYerrIIOVSJCzj8XtHYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712920935; c=relaxed/simple;
	bh=BgnKU89W58T2Cj2AvK40uvS6fDiN9uPmKQK891klQTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OZ29pVum0HIgZOyNhVqKoJ26O9se2Pq8S6xJU6H+qQuNn23wzK13s1+Kge1AuhXEoAFp9kYGnnFONX7NiA/GoE1ljwwAfskIIoZtiJTKDjv3Zb6Z0M4/KnDMwVJasG0hz/aar5iLWWKTKr8hmCMKIQk3nVJxyduZOtqiWVCeIIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QsFTjLBg; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-516d04fc04bso1276766e87.2;
        Fri, 12 Apr 2024 04:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712920930; x=1713525730; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MVzhS8oEXt2bJ2YhDU1H9RBfoFdeBzYULOYPOvUpB64=;
        b=QsFTjLBgEBjbDIijxhPs/zJy3BcBK/eik/KgF4EMFeY4K0Ykp82yyBrgZ5wSv35ZF5
         GLusSw3pMt25F3UG3aaLGTv2zoJ6tgq2gDk9yXofHt+IFNa/QQliJ3slbEjElEKdvLY9
         Fkw9pup1FQwFvV7LxuVq9vB9+yuiGChfKO0Vgz8+Y1CFxpn/EY1BVN17d7qci6US/Soe
         XT3VvmjLMCDbTp1qWfgWTTtBCzVRrk9p9KIKXSb297w5Kh0dVjJXh0rX9010K3qegi3b
         +DzV/xeYTOl4uULc/Gua7Q2PSVI7W/Y6HmUcfFXLUmSiNIVO5R4VdJmSZsJdR623NRio
         w1/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712920930; x=1713525730;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MVzhS8oEXt2bJ2YhDU1H9RBfoFdeBzYULOYPOvUpB64=;
        b=br2yvSroXnTao1wlooue4SPRo90/V80Tb4Ju3bjYtGqjdTS2Vd5J3g8j4T48S87Pwg
         k1B759dvgLbN3qLWcyQVSdQRA2O1OpSlStwG6035dIqMVaQFWtv5gg+HkLbnmCy/cVPe
         MsqF2icF1iAiglhaiLllr0TB+gM9ipn3FWU9v/q2AGKAzyuYroScMbNGSviwVmSZsCvG
         YCH2uDyvrZlkG5fCsT3AR+WQ/10eXPHIpv3SRuvKCRbopHUVutMlpjQg4fXwJTqaZ6a/
         mvrncYxNM3ib/wy8lM/KXUjY7dtrlVfOR6jQZE5RuX3IDlEPvt3mPEUzzVv4DIGHXcFT
         NrJg==
X-Forwarded-Encrypted: i=1; AJvYcCX1UuBc9uJBjxrNI181ja92SL6I3juf4zus+54Hn65OmMjGaZUlcJwWsp/SmQHZxhH5LwQlm8pgbG0pFX37hxSvbY0E9u+kzy6xXDqgKRbB89SlrakF+x/apLIhCJHOnDVw+5mQo1u7U7k7arjjEeHsRbHe4AzE2LpnLVBMbNTGkLIQRt6l+9U8
X-Gm-Message-State: AOJu0YwrqY5J1TptOxVp6wcBQPd0NSEehqGNxdAylbQTVPjnyUdRTOlX
	njHBbveKzu/zxRYt+GZPlFKq04P22TvHIpITdma1gi2wApaH6kb0
X-Google-Smtp-Source: AGHT+IEjuN7nxxhPFS4PZQo6Zpk4mN5n4QOHBx/ekBmYUc06xvojmZepsTPeQc0alTRpq2zfP8NMvQ==
X-Received: by 2002:a05:6512:48c8:b0:515:acda:77f0 with SMTP id er8-20020a05651248c800b00515acda77f0mr1888099lfb.29.1712920930297;
        Fri, 12 Apr 2024 04:22:10 -0700 (PDT)
Received: from fedora ([213.255.186.46])
        by smtp.gmail.com with ESMTPSA id u6-20020a05651206c600b005169e97aab4sm499393lff.113.2024.04.12.04.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 04:22:09 -0700 (PDT)
Date: Fri, 12 Apr 2024 14:22:05 +0300
From: Matti Vaittinen <mazziesaccount@gmail.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [RFC PATCH v2 3/6] mfd: support ROHM BD96801 PMIC core
Message-ID: <67dd3897ff6e76228f3183fff28a0937c750b679.1712920132.git.mazziesaccount@gmail.com>
References: <cover.1712920132.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jE9+uYxT2ZeV4U96"
Content-Disposition: inline
In-Reply-To: <cover.1712920132.git.mazziesaccount@gmail.com>


--jE9+uYxT2ZeV4U96
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The ROHM BD96801 PMIC is highly customizable automotive grade PMIC
which integrates regulator and watchdog funtionalities.

Provide IRQ and register accesses for regulator/watchdog drivers.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>

---
Changelog: RFCv1 =3D> RFCv2
- Work-around the IRQ domain name conflict
- Add watchdog IRQ
- Various styling fixes based on review by Lee
---
 drivers/mfd/Kconfig              |  13 +
 drivers/mfd/Makefile             |   1 +
 drivers/mfd/rohm-bd96801.c       | 476 +++++++++++++++++++++++++++++++
 include/linux/mfd/rohm-bd96801.h | 211 ++++++++++++++
 include/linux/mfd/rohm-generic.h |   1 +
 5 files changed, 702 insertions(+)
 create mode 100644 drivers/mfd/rohm-bd96801.c
 create mode 100644 include/linux/mfd/rohm-bd96801.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 4b023ee229cf..9e874453d94d 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2089,6 +2089,19 @@ config MFD_ROHM_BD957XMUF
 	  BD9573MUF Power Management ICs. BD9576 and BD9573 are primarily
 	  designed to be used to power R-Car series processors.
=20
+config MFD_ROHM_BD96801
+	tristate "ROHM BD96801 Power Management IC"
+	depends on I2C=3Dy
+	depends on OF
+	select REGMAP_I2C
+	select REGMAP_IRQ
+	select MFD_CORE
+	help
+	  Select this option to get support for the ROHM BD96801 Power
+	  Management IC. The ROHM BD96801 is a highly scalable Power Management
+	  IC for industrial and automotive use. The BD96801 can be used as a
+	  master PMIC in a chained PMIC solution with suitable companion PMICs.
+
 config MFD_STM32_LPTIMER
 	tristate "Support for STM32 Low-Power Timer"
 	depends on (ARCH_STM32 && OF) || COMPILE_TEST
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index c66f07edcd0e..e792892d4a8b 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -264,6 +264,7 @@ obj-$(CONFIG_RAVE_SP_CORE)	+=3D rave-sp.o
 obj-$(CONFIG_MFD_ROHM_BD71828)	+=3D rohm-bd71828.o
 obj-$(CONFIG_MFD_ROHM_BD718XX)	+=3D rohm-bd718x7.o
 obj-$(CONFIG_MFD_ROHM_BD957XMUF)	+=3D rohm-bd9576.o
+obj-$(CONFIG_MFD_ROHM_BD96801)	+=3D rohm-bd96801.o
 obj-$(CONFIG_MFD_STMFX) 	+=3D stmfx.o
 obj-$(CONFIG_MFD_KHADAS_MCU) 	+=3D khadas-mcu.o
 obj-$(CONFIG_MFD_ACER_A500_EC)	+=3D acer-ec-a500.o
diff --git a/drivers/mfd/rohm-bd96801.c b/drivers/mfd/rohm-bd96801.c
new file mode 100644
index 000000000000..5a8a74d92873
--- /dev/null
+++ b/drivers/mfd/rohm-bd96801.c
@@ -0,0 +1,476 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2024 ROHM Semiconductors
+ *
+ * ROHM BD96801 PMIC driver
+ */
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
+#include <linux/property.h>
+#include <linux/regmap.h>
+#include <linux/types.h>
+
+#include <linux/mfd/rohm-bd96801.h>
+#include <linux/mfd/rohm-generic.h>
+
+static const struct resource regulator_errb_irqs[] =3D {
+	DEFINE_RES_IRQ_NAMED(BD96801_OTP_ERR_STAT, "bd96801-otp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_DBIST_ERR_STAT, "bd96801-dbist-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_EEP_ERR_STAT, "bd96801-eep-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_ABIST_ERR_STAT, "bd96801-abist-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_PRSTB_ERR_STAT, "bd96801-prstb-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_DRMOS1_ERR_STAT, "bd96801-drmoserr1"),
+	DEFINE_RES_IRQ_NAMED(BD96801_DRMOS2_ERR_STAT, "bd96801-drmoserr2"),
+	DEFINE_RES_IRQ_NAMED(BD96801_SLAVE_ERR_STAT, "bd96801-slave-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_VREF_ERR_STAT, "bd96801-vref-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_TSD_ERR_STAT, "bd96801-tsd"),
+	DEFINE_RES_IRQ_NAMED(BD96801_UVLO_ERR_STAT, "bd96801-uvlo-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_OVLO_ERR_STAT, "bd96801-ovlo-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_OSC_ERR_STAT, "bd96801-osc-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_PON_ERR_STAT, "bd96801-pon-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_POFF_ERR_STAT, "bd96801-poff-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_CMD_SHDN_ERR_STAT, "bd96801-cmd-shdn-err"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_INT_PRSTB_WDT_ERR, "bd96801-prstb-wdt-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_INT_CHIP_IF_ERR, "bd96801-chip-if-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_INT_SHDN_ERR_STAT, "bd96801-int-shdn-err"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_PVIN_ERR_STAT, "bd96801-buck1-pvin-err=
"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OVP_ERR_STAT, "bd96801-buck1-ovp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_UVP_ERR_STAT, "bd96801-buck1-uvp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_SHDN_ERR_STAT, "bd96801-buck1-shdn-err=
"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_PVIN_ERR_STAT, "bd96801-buck2-pvin-err=
"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OVP_ERR_STAT, "bd96801-buck2-ovp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_UVP_ERR_STAT, "bd96801-buck2-uvp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_SHDN_ERR_STAT, "bd96801-buck2-shdn-err=
"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_PVIN_ERR_STAT, "bd96801-buck3-pvin-err=
"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OVP_ERR_STAT, "bd96801-buck3-ovp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_UVP_ERR_STAT, "bd96801-buck3-uvp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_SHDN_ERR_STAT, "bd96801-buck3-shdn-err=
"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_PVIN_ERR_STAT, "bd96801-buck4-pvin-err=
"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OVP_ERR_STAT, "bd96801-buck4-ovp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_UVP_ERR_STAT, "bd96801-buck4-uvp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_SHDN_ERR_STAT, "bd96801-buck4-shdn-err=
"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_PVIN_ERR_STAT, "bd96801-ldo5-pvin-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_OVP_ERR_STAT, "bd96801-ldo5-ovp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_UVP_ERR_STAT, "bd96801-ldo5-uvp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_SHDN_ERR_STAT, "bd96801-ldo5-shdn-err"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_PVIN_ERR_STAT, "bd96801-ldo6-pvin-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_OVP_ERR_STAT, "bd96801-ldo6-ovp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_UVP_ERR_STAT, "bd96801-ldo6-uvp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_SHDN_ERR_STAT, "bd96801-ldo6-shdn-err"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_PVIN_ERR_STAT, "bd96801-ldo7-pvin-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_OVP_ERR_STAT, "bd96801-ldo7-ovp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_UVP_ERR_STAT, "bd96801-ldo7-uvp-err"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_SHDN_ERR_STAT, "bd96801-ldo7-shdn-err"),
+};
+
+static const struct resource regulator_intb_irqs[] =3D {
+	DEFINE_RES_IRQ_NAMED(BD96801_TW_STAT, "bd96801-core-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OCPH_STAT, "bd96801-buck1-overcurr-h"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OCPL_STAT, "bd96801-buck1-overcurr-l"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OCPN_STAT, "bd96801-buck1-overcurr-n"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_OVD_STAT, "bd96801-buck1-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_UVD_STAT, "bd96801-buck1-undervolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK1_TW_CH_STAT, "bd96801-buck1-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OCPH_STAT, "bd96801-buck2-overcurr-h"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OCPL_STAT, "bd96801-buck2-overcurr-l"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OCPN_STAT, "bd96801-buck2-overcurr-n"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_OVD_STAT, "bd96801-buck2-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_UVD_STAT, "bd96801-buck2-undervolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK2_TW_CH_STAT, "bd96801-buck2-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OCPH_STAT, "bd96801-buck3-overcurr-h"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OCPL_STAT, "bd96801-buck3-overcurr-l"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OCPN_STAT, "bd96801-buck3-overcurr-n"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_OVD_STAT, "bd96801-buck3-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_UVD_STAT, "bd96801-buck3-undervolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK3_TW_CH_STAT, "bd96801-buck3-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OCPH_STAT, "bd96801-buck4-overcurr-h"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OCPL_STAT, "bd96801-buck4-overcurr-l"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OCPN_STAT, "bd96801-buck4-overcurr-n"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_OVD_STAT, "bd96801-buck4-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_UVD_STAT, "bd96801-buck4-undervolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_BUCK4_TW_CH_STAT, "bd96801-buck4-thermal"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_OCPH_STAT, "bd96801-ldo5-overcurr"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_OVD_STAT, "bd96801-ldo5-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO5_UVD_STAT, "bd96801-ldo5-undervolt"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_OCPH_STAT, "bd96801-ldo6-overcurr"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_OVD_STAT, "bd96801-ldo6-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO6_UVD_STAT, "bd96801-ldo6-undervolt"),
+
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_OCPH_STAT, "bd96801-ldo7-overcurr"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_OVD_STAT, "bd96801-ldo7-overvolt"),
+	DEFINE_RES_IRQ_NAMED(BD96801_LDO7_UVD_STAT, "bd96801-ldo7-undervolt"),
+};
+
+enum {
+	WDG_CELL =3D 0,
+	REGULATOR_CELL,
+};
+
+static struct mfd_cell bd96801_mfd_cells[] =3D {
+	[WDG_CELL] =3D { .name =3D "bd96801-wdt", },
+	[REGULATOR_CELL] =3D { .name =3D "bd96801-pmic", },
+};
+
+static const struct regmap_range bd96801_volatile_ranges[] =3D {
+	/* Status regs */
+	regmap_reg_range(BD96801_REG_WD_FEED, BD96801_REG_WD_FAILCOUNT),
+	regmap_reg_range(BD96801_REG_WD_ASK, BD96801_REG_WD_ASK),
+	regmap_reg_range(BD96801_REG_WD_STATUS, BD96801_REG_WD_STATUS),
+	regmap_reg_range(BD96801_REG_PMIC_STATE, BD96801_REG_INT_LDO7_INTB),
+	/* Registers which do not update value unless PMIC is in STBY */
+	regmap_reg_range(BD96801_REG_SSCG_CTRL, BD96801_REG_SHD_INTB),
+	regmap_reg_range(BD96801_REG_BUCK_OVP, BD96801_REG_BOOT_OVERTIME),
+	/*
+	 * LDO control registers have single bit (LDO MODE) which does not
+	 * change when we write it unless PMIC is in STBY. It's safer to not
+	 * cache it.
+	 */
+	regmap_reg_range(BD96801_LDO5_VOL_LVL_REG, BD96801_LDO7_VOL_LVL_REG),
+};
+
+static const struct regmap_access_table volatile_regs =3D {
+	.yes_ranges =3D bd96801_volatile_ranges,
+	.n_yes_ranges =3D ARRAY_SIZE(bd96801_volatile_ranges),
+};
+
+/*
+ * For ERRB we need main register bit mapping as bit(0) indicates active I=
RQ
+ * in one of the first 3 sub IRQ registers, For INTB we can use default 1 =
to 1
+ * mapping.
+ */
+static unsigned int bit0_offsets[] =3D {0, 1, 2};	/* System stat, 3 regist=
ers */
+static unsigned int bit1_offsets[] =3D {3};	/* Buck 1 stat */
+static unsigned int bit2_offsets[] =3D {4};	/* Buck 2 stat */
+static unsigned int bit3_offsets[] =3D {5};	/* Buck 3 stat */
+static unsigned int bit4_offsets[] =3D {6};	/* Buck 4 stat */
+static unsigned int bit5_offsets[] =3D {7};	/* LDO 5 stat */
+static unsigned int bit6_offsets[] =3D {8};	/* LDO 6 stat */
+static unsigned int bit7_offsets[] =3D {9};	/* LDO 7 stat */
+
+static struct regmap_irq_sub_irq_map errb_sub_irq_offsets[] =3D {
+	REGMAP_IRQ_MAIN_REG_OFFSET(bit0_offsets),
+	REGMAP_IRQ_MAIN_REG_OFFSET(bit1_offsets),
+	REGMAP_IRQ_MAIN_REG_OFFSET(bit2_offsets),
+	REGMAP_IRQ_MAIN_REG_OFFSET(bit3_offsets),
+	REGMAP_IRQ_MAIN_REG_OFFSET(bit4_offsets),
+	REGMAP_IRQ_MAIN_REG_OFFSET(bit5_offsets),
+	REGMAP_IRQ_MAIN_REG_OFFSET(bit6_offsets),
+	REGMAP_IRQ_MAIN_REG_OFFSET(bit7_offsets),
+};
+
+static const struct regmap_irq bd96801_errb_irqs[] =3D {
+	/* Reg 0x52 Fatal ERRB1 */
+	REGMAP_IRQ_REG(BD96801_OTP_ERR_STAT, 0, BD96801_OTP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_DBIST_ERR_STAT, 0, BD96801_DBIST_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_EEP_ERR_STAT, 0, BD96801_EEP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_ABIST_ERR_STAT, 0, BD96801_ABIST_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_PRSTB_ERR_STAT, 0, BD96801_PRSTB_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_DRMOS1_ERR_STAT, 0, BD96801_DRMOS1_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_DRMOS2_ERR_STAT, 0, BD96801_DRMOS2_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_SLAVE_ERR_STAT, 0, BD96801_SLAVE_ERR_MASK),
+	/* 0x53 Fatal ERRB2 */
+	REGMAP_IRQ_REG(BD96801_VREF_ERR_STAT, 1, BD96801_VREF_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_TSD_ERR_STAT, 1, BD96801_TSD_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_UVLO_ERR_STAT, 1, BD96801_UVLO_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_OVLO_ERR_STAT, 1, BD96801_OVLO_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_OSC_ERR_STAT, 1, BD96801_OSC_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_PON_ERR_STAT, 1, BD96801_PON_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_POFF_ERR_STAT, 1, BD96801_POFF_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_CMD_SHDN_ERR_STAT, 1, BD96801_CMD_SHDN_ERR_MASK),
+	/* 0x54 Fatal INTB shadowed to ERRB */
+	REGMAP_IRQ_REG(BD96801_INT_PRSTB_WDT_ERR, 2, BD96801_INT_PRSTB_WDT_ERR_MA=
SK),
+	REGMAP_IRQ_REG(BD96801_INT_CHIP_IF_ERR, 2, BD96801_INT_CHIP_IF_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_INT_SHDN_ERR_STAT, 2, BD96801_INT_SHDN_ERR_MASK),
+	/* Reg 0x55 BUCK1 ERR IRQs */
+	REGMAP_IRQ_REG(BD96801_BUCK1_PVIN_ERR_STAT, 3, BD96801_OUT_PVIN_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_OVP_ERR_STAT, 3, BD96801_OUT_OVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_UVP_ERR_STAT, 3, BD96801_OUT_UVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_SHDN_ERR_STAT, 3, BD96801_OUT_SHDN_ERR_MASK),
+	/* Reg 0x56 BUCK2 ERR IRQs */
+	REGMAP_IRQ_REG(BD96801_BUCK2_PVIN_ERR_STAT, 4, BD96801_OUT_PVIN_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_OVP_ERR_STAT, 4, BD96801_OUT_OVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_UVP_ERR_STAT, 4, BD96801_OUT_UVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_SHDN_ERR_STAT, 4, BD96801_OUT_SHDN_ERR_MASK),
+	/* Reg 0x57 BUCK3 ERR IRQs */
+	REGMAP_IRQ_REG(BD96801_BUCK3_PVIN_ERR_STAT, 5, BD96801_OUT_PVIN_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_OVP_ERR_STAT, 5, BD96801_OUT_OVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_UVP_ERR_STAT, 5, BD96801_OUT_UVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_SHDN_ERR_STAT, 5, BD96801_OUT_SHDN_ERR_MASK),
+	/* Reg 0x58 BUCK4 ERR IRQs */
+	REGMAP_IRQ_REG(BD96801_BUCK4_PVIN_ERR_STAT, 6, BD96801_OUT_PVIN_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_OVP_ERR_STAT, 6, BD96801_OUT_OVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_UVP_ERR_STAT, 6, BD96801_OUT_UVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_SHDN_ERR_STAT, 6, BD96801_OUT_SHDN_ERR_MASK),
+	/* Reg 0x59 LDO5 ERR IRQs */
+	REGMAP_IRQ_REG(BD96801_LDO5_PVIN_ERR_STAT, 7, BD96801_OUT_PVIN_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO5_OVP_ERR_STAT, 7, BD96801_OUT_OVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO5_UVP_ERR_STAT, 7, BD96801_OUT_UVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO5_SHDN_ERR_STAT, 7, BD96801_OUT_SHDN_ERR_MASK),
+	/* Reg 0x5a LDO6 ERR IRQs */
+	REGMAP_IRQ_REG(BD96801_LDO6_PVIN_ERR_STAT, 8, BD96801_OUT_PVIN_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO6_OVP_ERR_STAT, 8, BD96801_OUT_OVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO6_UVP_ERR_STAT, 8, BD96801_OUT_UVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO6_SHDN_ERR_STAT, 8, BD96801_OUT_SHDN_ERR_MASK),
+	/* Reg 0x5b LDO7 ERR IRQs */
+	REGMAP_IRQ_REG(BD96801_LDO7_PVIN_ERR_STAT, 9, BD96801_OUT_PVIN_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO7_OVP_ERR_STAT, 9, BD96801_OUT_OVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO7_UVP_ERR_STAT, 9, BD96801_OUT_UVP_ERR_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO7_SHDN_ERR_STAT, 9, BD96801_OUT_SHDN_ERR_MASK),
+};
+
+static const struct regmap_irq bd96801_intb_irqs[] =3D {
+	/* STATUS SYSTEM INTB */
+	REGMAP_IRQ_REG(BD96801_TW_STAT, 0, BD96801_TW_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_WDT_ERR_STAT, 0, BD96801_WDT_ERR_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_I2C_ERR_STAT, 0, BD96801_I2C_ERR_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_CHIP_IF_ERR_STAT, 0, BD96801_CHIP_IF_ERR_STAT_MASK=
),
+	/* STATUS BUCK1 INTB */
+	REGMAP_IRQ_REG(BD96801_BUCK1_OCPH_STAT, 1, BD96801_BUCK_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_OCPL_STAT, 1, BD96801_BUCK_OCPL_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_OCPN_STAT, 1, BD96801_BUCK_OCPN_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_OVD_STAT, 1, BD96801_BUCK_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_UVD_STAT, 1, BD96801_BUCK_UVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK1_TW_CH_STAT, 1, BD96801_BUCK_TW_CH_STAT_MASK),
+	/* BUCK 2 INTB */
+	REGMAP_IRQ_REG(BD96801_BUCK2_OCPH_STAT, 2, BD96801_BUCK_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_OCPL_STAT, 2, BD96801_BUCK_OCPL_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_OCPN_STAT, 2, BD96801_BUCK_OCPN_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_OVD_STAT, 2, BD96801_BUCK_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_UVD_STAT, 2, BD96801_BUCK_UVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK2_TW_CH_STAT, 2, BD96801_BUCK_TW_CH_STAT_MASK),
+	/* BUCK 3 INTB */
+	REGMAP_IRQ_REG(BD96801_BUCK3_OCPH_STAT, 3, BD96801_BUCK_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_OCPL_STAT, 3, BD96801_BUCK_OCPL_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_OCPN_STAT, 3, BD96801_BUCK_OCPN_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_OVD_STAT, 3, BD96801_BUCK_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_UVD_STAT, 3, BD96801_BUCK_UVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK3_TW_CH_STAT, 3, BD96801_BUCK_TW_CH_STAT_MASK),
+	/* BUCK 4 INTB */
+	REGMAP_IRQ_REG(BD96801_BUCK4_OCPH_STAT, 4, BD96801_BUCK_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_OCPL_STAT, 4, BD96801_BUCK_OCPL_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_OCPN_STAT, 4, BD96801_BUCK_OCPN_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_OVD_STAT, 4, BD96801_BUCK_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_UVD_STAT, 4, BD96801_BUCK_UVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_BUCK4_TW_CH_STAT, 4, BD96801_BUCK_TW_CH_STAT_MASK),
+	/* LDO5 INTB */
+	REGMAP_IRQ_REG(BD96801_LDO5_OCPH_STAT, 5, BD96801_LDO_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO5_OVD_STAT, 5, BD96801_LDO_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO5_UVD_STAT, 5, BD96801_LDO_UVD_STAT_MASK),
+	/* LDO6 INTB */
+	REGMAP_IRQ_REG(BD96801_LDO6_OCPH_STAT, 6, BD96801_LDO_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO6_OVD_STAT, 6, BD96801_LDO_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO6_UVD_STAT, 6, BD96801_LDO_UVD_STAT_MASK),
+	/* LDO7 INTB */
+	REGMAP_IRQ_REG(BD96801_LDO7_OCPH_STAT, 7, BD96801_LDO_OCPH_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO7_OVD_STAT, 7, BD96801_LDO_OVD_STAT_MASK),
+	REGMAP_IRQ_REG(BD96801_LDO7_UVD_STAT, 7, BD96801_LDO_UVD_STAT_MASK),
+};
+
+static struct regmap_irq_chip bd96801_irq_chip_errb =3D {
+	.name =3D "bd96801-irq-errb",
+	.main_status =3D BD96801_REG_INT_MAIN,
+	.num_main_regs =3D 1,
+	.irqs =3D &bd96801_errb_irqs[0],
+	.num_irqs =3D ARRAY_SIZE(bd96801_errb_irqs),
+	.status_base =3D BD96801_REG_INT_SYS_ERRB1,
+	.mask_base =3D BD96801_REG_MASK_SYS_ERRB,
+	.ack_base =3D BD96801_REG_INT_SYS_ERRB1,
+	.init_ack_masked =3D true,
+	.num_regs =3D 10,
+	.irq_reg_stride =3D 1,
+	.sub_reg_offsets =3D &errb_sub_irq_offsets[0],
+};
+
+static struct regmap_irq_chip bd96801_irq_chip_intb =3D {
+	.name =3D "bd96801-irq-intb",
+	.main_status =3D BD96801_REG_INT_MAIN,
+	.num_main_regs =3D 1,
+	.irqs =3D &bd96801_intb_irqs[0],
+	.num_irqs =3D ARRAY_SIZE(bd96801_intb_irqs),
+	.status_base =3D BD96801_REG_INT_SYS_INTB,
+	.mask_base =3D BD96801_REG_MASK_SYS_INTB,
+	.ack_base =3D BD96801_REG_INT_SYS_INTB,
+	.init_ack_masked =3D true,
+	.num_regs =3D 8,
+	.irq_reg_stride =3D 1,
+};
+
+static const struct regmap_config bd96801_regmap_config =3D {
+	.reg_bits =3D 8,
+	.val_bits =3D 8,
+	.volatile_table =3D &volatile_regs,
+	.cache_type =3D REGCACHE_RBTREE,
+};
+
+static int bd96801_i2c_probe(struct i2c_client *i2c)
+{
+	int i, ret, intb_irq, errb_irq, num_regu_irqs, num_intb, num_errb =3D 0;
+	int wdg_irq_no;
+	struct regmap_irq_chip_data *intb_irq_data, *errb_irq_data;
+	struct irq_domain *intb_domain, *errb_domain;
+	struct resource wdg_irq;
+	const struct fwnode_handle *fwnode;
+	struct resource *regulator_res;
+	struct regmap *regmap;
+
+	fwnode =3D dev_fwnode(&i2c->dev);
+	if (!fwnode)
+		return dev_err_probe(&i2c->dev, -EINVAL, "no fwnode\n");
+
+	intb_irq =3D fwnode_irq_get_byname(fwnode, "intb");
+	if (intb_irq < 0)
+		return dev_err_probe(&i2c->dev, intb_irq, "No INTB IRQ configured\n");
+
+	num_intb =3D  ARRAY_SIZE(regulator_intb_irqs);
+
+	/* ERRB may be omitted if processor is powered by the PMIC */
+	errb_irq =3D fwnode_irq_get_byname(fwnode, "errb");
+	if (errb_irq < 0)
+		errb_irq =3D 0;
+
+	if (errb_irq)
+		num_errb =3D ARRAY_SIZE(regulator_errb_irqs);
+
+	num_regu_irqs =3D num_intb + num_errb;
+
+	regulator_res =3D kcalloc(num_regu_irqs, sizeof(*regulator_res), GFP_KERN=
EL);
+	if (!regulator_res)
+		return -ENOMEM;
+
+	regmap =3D devm_regmap_init_i2c(i2c, &bd96801_regmap_config);
+	if (IS_ERR(regmap)) {
+		ret =3D dev_err_probe(&i2c->dev, PTR_ERR(regmap),
+				    "regmap initialization failed\n");
+		goto free_out;
+	}
+
+	ret =3D devm_regmap_add_irq_chip(&i2c->dev, regmap, intb_irq,
+				       IRQF_ONESHOT, 0, &bd96801_irq_chip_intb,
+				       &intb_irq_data);
+	if (ret) {
+		dev_err_probe(&i2c->dev, ret, "Failed to add INTB irq_chip\n");
+		goto free_out;
+	}
+
+	intb_domain =3D regmap_irq_get_domain(intb_irq_data);
+	/*
+	 * Here we create two regmap IRQ controllers because the device
+	 * provides two physical IRQ lines, each providing various IRQs for
+	 * which the reasons can be read from the status registers. The
+	 * preferred approach is to have own regmap IRQ controller / HWIRQ.
+	 * The regmap IRQ creates an IRQ domain for each controller. This ends
+	 * up creating two IRQ domains with the same name - because
+	 * the name is derived from the device-tree node. Domain names are
+	 * used to create debugfs entries, so we would end up with debugFS name
+	 * collision when two IRQ domains are created for single device.
+	 * Workaround here is to use the irq_domain_update_bus_token() which
+	 * renames the IRQ domain by appending '-1' at the end of the domain
+	 * name.
+	 *
+	 * FIXME: We should either find a way to create an IRQ domain with a
+	 * specific name, and allow regmap IRQ to utilize this, or allow
+	 * regmap IRQ controller to have multiple HWIRQs.
+	 */
+	irq_domain_update_bus_token(intb_domain, DOMAIN_BUS_WIRED);
+
+	/*
+	 * MFD core code is built to handle only one IRQ domain. BD96801
+	 * has two domains so we do IRQ mapping here and provide the
+	 * already mapped IRQ numbers to sub-devices.
+	 */
+	for (i =3D 0; i < num_intb; i++) {
+		struct resource *res =3D &regulator_res[i];
+
+		*res =3D regulator_intb_irqs[i];
+		res->start =3D res->end =3D irq_create_mapping(intb_domain,
+							    res->start);
+	}
+
+	wdg_irq_no =3D irq_create_mapping(intb_domain, BD96801_WDT_ERR_STAT);
+	wdg_irq =3D DEFINE_RES_IRQ_NAMED(wdg_irq_no, "bd96801-wdg");
+	bd96801_mfd_cells[WDG_CELL].resources =3D &wdg_irq;
+	bd96801_mfd_cells[WDG_CELL].num_resources =3D 1;
+
+	if (num_errb) {
+		ret =3D devm_regmap_add_irq_chip(&i2c->dev, regmap, errb_irq,
+					       IRQF_ONESHOT, 0,
+					       &bd96801_irq_chip_errb,
+					       &errb_irq_data);
+		if (ret) {
+			dev_err_probe(&i2c->dev, ret,
+				      "Failed to add ERRB (%d) irq_chip\n",
+				      errb_irq);
+			goto free_out;
+		}
+		errb_domain =3D regmap_irq_get_domain(errb_irq_data);
+
+		for (i =3D 0; i < num_errb; i++) {
+			struct resource *res =3D &regulator_res[num_intb + i];
+
+			*res =3D regulator_errb_irqs[i];
+			res->start =3D res->end =3D irq_create_mapping(errb_domain,
+								   res->start);
+		}
+	}
+
+	bd96801_mfd_cells[REGULATOR_CELL].resources =3D regulator_res;
+	bd96801_mfd_cells[REGULATOR_CELL].num_resources =3D num_regu_irqs;
+
+	ret =3D devm_mfd_add_devices(&i2c->dev, PLATFORM_DEVID_AUTO, bd96801_mfd_=
cells,
+				   ARRAY_SIZE(bd96801_mfd_cells), NULL, 0, NULL);
+	if (ret)
+		dev_err_probe(&i2c->dev, ret, "Failed to create subdevices\n");
+
+free_out:
+	kfree(regulator_res);
+
+	return ret;
+}
+
+static const struct of_device_id bd96801_of_match[] =3D {
+	{ .compatible =3D "rohm,bd96801", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, bd96801_of_match);
+
+static struct i2c_driver bd96801_i2c_driver =3D {
+	.driver =3D {
+		.name =3D "rohm-bd96801",
+		.of_match_table =3D bd96801_of_match,
+	},
+	.probe =3D bd96801_i2c_probe,
+};
+
+static int __init bd96801_i2c_init(void)
+{
+	return i2c_add_driver(&bd96801_i2c_driver);
+}
+
+/* Initialise early so consumer devices can complete system boot */
+subsys_initcall(bd96801_i2c_init);
+
+static void __exit bd96801_i2c_exit(void)
+{
+	i2c_del_driver(&bd96801_i2c_driver);
+}
+module_exit(bd96801_i2c_exit);
+
+MODULE_AUTHOR("Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>");
+MODULE_DESCRIPTION("ROHM BD96801 Power Management IC driver");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/mfd/rohm-bd96801.h b/include/linux/mfd/rohm-bd96=
801.h
new file mode 100644
index 000000000000..26538783e7d5
--- /dev/null
+++ b/include/linux/mfd/rohm-bd96801.h
@@ -0,0 +1,211 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Copyright (C) 2024 ROHM Semiconductors */
+
+#ifndef __MFD_BD96801_H__
+#define __MFD_BD96801_H__
+
+#define BD96801_REG_SSCG_CTRL		0x09
+#define BD96801_REG_SHD_INTB            0x20
+#define BD96801_LDO5_VOL_LVL_REG	0x2c
+#define BD96801_LDO6_VOL_LVL_REG	0x2d
+#define BD96801_LDO7_VOL_LVL_REG	0x2e
+#define BD96801_REG_BUCK_OVP		0x30
+#define BD96801_REG_BUCK_OVD		0x35
+#define BD96801_REG_LDO_OVP		0x31
+#define BD96801_REG_LDO_OVD		0x36
+#define BD96801_REG_BOOT_OVERTIME	0x3a
+#define BD96801_REG_WD_TMO		0x40
+#define BD96801_REG_WD_CONF		0x41
+#define BD96801_REG_WD_FEED		0x42
+#define BD96801_REG_WD_FAILCOUNT	0x43
+#define BD96801_REG_WD_ASK		0x46
+#define BD96801_REG_WD_STATUS		0x4a
+#define BD96801_REG_PMIC_STATE		0x4f
+#define BD96801_REG_EXT_STATE		0x50
+
+#define BD96801_STATE_STBY		0x09
+
+/* IRQ register area */
+#define BD96801_REG_INT_MAIN		0x51
+
+/*
+ * The BD96801 has two physical IRQ lines, INTB and ERRB.
+ *
+ * The 'main status register' is located at 0x51.
+ * The ERRB status registers are located at 0x52 ... 0x5B
+ * INTB status registers are at range 0x5c ... 0x63
+ */
+#define BD96801_REG_INT_SYS_ERRB1	0x52
+#define BD96801_REG_INT_SYS_INTB	0x5c
+#define BD96801_REG_INT_LDO7_INTB	0x63
+
+/* MASK registers */
+#define BD96801_REG_MASK_SYS_INTB	0x73
+#define BD96801_REG_MASK_SYS_ERRB	0x69
+
+#define BD96801_MAX_REGISTER		0x7a
+
+#define BD96801_OTP_ERR_MASK		BIT(0)
+#define BD96801_DBIST_ERR_MASK		BIT(1)
+#define BD96801_EEP_ERR_MASK		BIT(2)
+#define BD96801_ABIST_ERR_MASK		BIT(3)
+#define BD96801_PRSTB_ERR_MASK		BIT(4)
+#define BD96801_DRMOS1_ERR_MASK		BIT(5)
+#define BD96801_DRMOS2_ERR_MASK		BIT(6)
+#define BD96801_SLAVE_ERR_MASK		BIT(7)
+#define BD96801_VREF_ERR_MASK		BIT(0)
+#define BD96801_TSD_ERR_MASK		BIT(1)
+#define BD96801_UVLO_ERR_MASK		BIT(2)
+#define BD96801_OVLO_ERR_MASK		BIT(3)
+#define BD96801_OSC_ERR_MASK		BIT(4)
+#define BD96801_PON_ERR_MASK		BIT(5)
+#define BD96801_POFF_ERR_MASK		BIT(6)
+#define BD96801_CMD_SHDN_ERR_MASK	BIT(7)
+#define BD96801_INT_PRSTB_WDT_ERR_MASK	BIT(0)
+#define BD96801_INT_CHIP_IF_ERR_MASK	BIT(3)
+#define BD96801_INT_SHDN_ERR_MASK	BIT(7)
+#define BD96801_OUT_PVIN_ERR_MASK	BIT(0)
+#define BD96801_OUT_OVP_ERR_MASK	BIT(1)
+#define BD96801_OUT_UVP_ERR_MASK	BIT(2)
+#define BD96801_OUT_SHDN_ERR_MASK	BIT(7)
+
+/* ERRB IRQs */
+enum {
+	/* Reg 0x52, 0x53, 0x54 - ERRB system IRQs */
+	BD96801_OTP_ERR_STAT,
+	BD96801_DBIST_ERR_STAT,
+	BD96801_EEP_ERR_STAT,
+	BD96801_ABIST_ERR_STAT,
+	BD96801_PRSTB_ERR_STAT,
+	BD96801_DRMOS1_ERR_STAT,
+	BD96801_DRMOS2_ERR_STAT,
+	BD96801_SLAVE_ERR_STAT,
+	BD96801_VREF_ERR_STAT,
+	BD96801_TSD_ERR_STAT,
+	BD96801_UVLO_ERR_STAT,
+	BD96801_OVLO_ERR_STAT,
+	BD96801_OSC_ERR_STAT,
+	BD96801_PON_ERR_STAT,
+	BD96801_POFF_ERR_STAT,
+	BD96801_CMD_SHDN_ERR_STAT,
+	BD96801_INT_PRSTB_WDT_ERR,
+	BD96801_INT_CHIP_IF_ERR,
+	BD96801_INT_SHDN_ERR_STAT,
+
+	/* Reg 0x55 BUCK1 ERR IRQs */
+	BD96801_BUCK1_PVIN_ERR_STAT,
+	BD96801_BUCK1_OVP_ERR_STAT,
+	BD96801_BUCK1_UVP_ERR_STAT,
+	BD96801_BUCK1_SHDN_ERR_STAT,
+
+	/* Reg 0x56 BUCK2 ERR IRQs */
+	BD96801_BUCK2_PVIN_ERR_STAT,
+	BD96801_BUCK2_OVP_ERR_STAT,
+	BD96801_BUCK2_UVP_ERR_STAT,
+	BD96801_BUCK2_SHDN_ERR_STAT,
+
+	/* Reg 0x57 BUCK3 ERR IRQs */
+	BD96801_BUCK3_PVIN_ERR_STAT,
+	BD96801_BUCK3_OVP_ERR_STAT,
+	BD96801_BUCK3_UVP_ERR_STAT,
+	BD96801_BUCK3_SHDN_ERR_STAT,
+
+	/* Reg 0x58 BUCK4 ERR IRQs */
+	BD96801_BUCK4_PVIN_ERR_STAT,
+	BD96801_BUCK4_OVP_ERR_STAT,
+	BD96801_BUCK4_UVP_ERR_STAT,
+	BD96801_BUCK4_SHDN_ERR_STAT,
+
+	/* Reg 0x59 LDO5 ERR IRQs */
+	BD96801_LDO5_PVIN_ERR_STAT,
+	BD96801_LDO5_OVP_ERR_STAT,
+	BD96801_LDO5_UVP_ERR_STAT,
+	BD96801_LDO5_SHDN_ERR_STAT,
+
+	/* Reg 0x5a LDO6 ERR IRQs */
+	BD96801_LDO6_PVIN_ERR_STAT,
+	BD96801_LDO6_OVP_ERR_STAT,
+	BD96801_LDO6_UVP_ERR_STAT,
+	BD96801_LDO6_SHDN_ERR_STAT,
+
+	/* Reg 0x5b LDO7 ERR IRQs */
+	BD96801_LDO7_PVIN_ERR_STAT,
+	BD96801_LDO7_OVP_ERR_STAT,
+	BD96801_LDO7_UVP_ERR_STAT,
+	BD96801_LDO7_SHDN_ERR_STAT,
+};
+
+/* INTB IRQs */
+enum {
+	/* Reg 0x5c (System INTB) */
+	BD96801_TW_STAT,
+	BD96801_WDT_ERR_STAT,
+	BD96801_I2C_ERR_STAT,
+	BD96801_CHIP_IF_ERR_STAT,
+
+	/* Reg 0x5d (BUCK1 INTB) */
+	BD96801_BUCK1_OCPH_STAT,
+	BD96801_BUCK1_OCPL_STAT,
+	BD96801_BUCK1_OCPN_STAT,
+	BD96801_BUCK1_OVD_STAT,
+	BD96801_BUCK1_UVD_STAT,
+	BD96801_BUCK1_TW_CH_STAT,
+
+	/* Reg 0x5e (BUCK2 INTB) */
+	BD96801_BUCK2_OCPH_STAT,
+	BD96801_BUCK2_OCPL_STAT,
+	BD96801_BUCK2_OCPN_STAT,
+	BD96801_BUCK2_OVD_STAT,
+	BD96801_BUCK2_UVD_STAT,
+	BD96801_BUCK2_TW_CH_STAT,
+
+	/* Reg 0x5f (BUCK3 INTB)*/
+	BD96801_BUCK3_OCPH_STAT,
+	BD96801_BUCK3_OCPL_STAT,
+	BD96801_BUCK3_OCPN_STAT,
+	BD96801_BUCK3_OVD_STAT,
+	BD96801_BUCK3_UVD_STAT,
+	BD96801_BUCK3_TW_CH_STAT,
+
+	/* Reg 0x60 (BUCK4 INTB)*/
+	BD96801_BUCK4_OCPH_STAT,
+	BD96801_BUCK4_OCPL_STAT,
+	BD96801_BUCK4_OCPN_STAT,
+	BD96801_BUCK4_OVD_STAT,
+	BD96801_BUCK4_UVD_STAT,
+	BD96801_BUCK4_TW_CH_STAT,
+
+	/* Reg 0x61 (LDO5 INTB) */
+	BD96801_LDO5_OCPH_STAT, //bit [0]
+	BD96801_LDO5_OVD_STAT,	//bit [3]
+	BD96801_LDO5_UVD_STAT,  //bit [4]
+
+	/* Reg 0x62 (LDO6 INTB) */
+	BD96801_LDO6_OCPH_STAT, //bit [0]
+	BD96801_LDO6_OVD_STAT,	//bit [3]
+	BD96801_LDO6_UVD_STAT,  //bit [4]
+
+	/* Reg 0x63 (LDO7 INTB) */
+	BD96801_LDO7_OCPH_STAT, //bit [0]
+	BD96801_LDO7_OVD_STAT,	//bit [3]
+	BD96801_LDO7_UVD_STAT,  //bit [4]
+};
+
+/* IRQ MASKs */
+#define BD96801_TW_STAT_MASK		BIT(0)
+#define BD96801_WDT_ERR_STAT_MASK	BIT(1)
+#define BD96801_I2C_ERR_STAT_MASK	BIT(2)
+#define BD96801_CHIP_IF_ERR_STAT_MASK	BIT(3)
+
+#define BD96801_BUCK_OCPH_STAT_MASK	BIT(0)
+#define BD96801_BUCK_OCPL_STAT_MASK	BIT(1)
+#define BD96801_BUCK_OCPN_STAT_MASK	BIT(2)
+#define BD96801_BUCK_OVD_STAT_MASK	BIT(3)
+#define BD96801_BUCK_UVD_STAT_MASK	BIT(4)
+#define BD96801_BUCK_TW_CH_STAT_MASK	BIT(5)
+
+#define BD96801_LDO_OCPH_STAT_MASK	BIT(0)
+#define BD96801_LDO_OVD_STAT_MASK	BIT(3)
+#define BD96801_LDO_UVD_STAT_MASK	BIT(4)
+
+#endif
diff --git a/include/linux/mfd/rohm-generic.h b/include/linux/mfd/rohm-gene=
ric.h
index 4eeb22876bad..e7d4e6afe388 100644
--- a/include/linux/mfd/rohm-generic.h
+++ b/include/linux/mfd/rohm-generic.h
@@ -16,6 +16,7 @@ enum rohm_chip_type {
 	ROHM_CHIP_TYPE_BD71828,
 	ROHM_CHIP_TYPE_BD71837,
 	ROHM_CHIP_TYPE_BD71847,
+	ROHM_CHIP_TYPE_BD96801,
 	ROHM_CHIP_TYPE_AMOUNT
 };
=20
--=20
2.43.2


--=20
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =3D]=20

--jE9+uYxT2ZeV4U96
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmYZGV0ACgkQeFA3/03a
ocXPTAgAlwAJMP17psUrDOa3Y+5RYmcAac0o3qhcCwSpQKaumBvIu7YR6ONH3sH/
di5FSpc2/HBmiu3iUw3P1Z7W17H02VKSOHE3DGO4ZibOTv1eDlf57uJ6JEw4eY8U
Wym+8LGIMw1D2IltZJop4CrcUwBrvIp28B720DebBqQ2qTPXJ6lJfo5GONw2lDbN
1Fx3iVX8xYgRcM1VuS2Ed5UdB5yJQfQcDQAJ+boMfQhJmkpDAprSNGMMVEKPNiZT
gSkcrOmISaxztnoFjZVY+v3tV5JJC2H3NY5K2FyOsU4foHjIphqQQUM4V4mtosCA
s7jes7MP0QVTd/2TumefEKtvFPpl/g==
=kZKr
-----END PGP SIGNATURE-----

--jE9+uYxT2ZeV4U96--

