Return-Path: <devicetree+bounces-178179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 568D2ABAE77
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 09:32:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D49E7AAA07
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 07:30:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20B32AEE4;
	Sun, 18 May 2025 07:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="eCVbvOfP"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EDA14F104
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 07:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747553515; cv=none; b=CTKRqnusSQjqUy8neUR39Y1a/GlS1EEPI2xZn2fnXzS9LtZgv0uuxlWXjs8T7IvFSUHy+61Jp8/6mEIMOsw/wtn6BxkfHvPpbr8zfj+GhnNDycNQ0r8vXijUWijLQLJ481evIO3MKPdGopYF8aETWLyw9L8zX6wOjm1F7oXB6cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747553515; c=relaxed/simple;
	bh=XOfKlcHpaAmBHFvsgoHBSis/0u/rruHRv+okfXKDx/A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dLn1oxdCHYGn0Xf44j2tgre8beO3o+v67Jqd5gZg+GGCCz1hhtPZQErNOElDEqXE5JsdvEmBxN2vVoRA1RqwizLl84HTXT4PSLI1EE8T1MjH++S3QmHKS/1flKaJy8NqrfAnleBh+htnrr37b8DrdGwNy0E/JGTNPeRE/vauxVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=eCVbvOfP; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1747553502; x=1748158302;
	i=markus.stockhausen@gmx.de;
	bh=c8KQBTdbXv0FxD12DKxpqz9OLCrpUaS8jQpjuOxtQyA=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=eCVbvOfPRl2rK9BLAnDzEB5u7FKMYSrRo01sbXPRtVSvW38b1cpBANoK5yH/pmyF
	 Wb3BVtLh2kbufSqkxBOce1/nTx/YhxtrRd1UpTwX8Q3/D1kjcqjjGynQHnFOSMoaf
	 0dGM+sh4MuAhjcnxgO5ODY6vPbX1qqS+yTzuFj9sDJzcSWPm83NzR1BbUmgDjlctx
	 FbqA60CqjLvKhv7CyzB0hGIyDYFpKKxCQKSFhtNgTMLma/t7TF7VdR9GdKqdH5F+d
	 9Q9sEOtqUa6RJAnobxyiOQZgiqzjEftWBxdbskpwkBgE9DDEG2fBoEW2UQA76ys0U
	 p1pNJR4PD37B8ettnw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MpDJd-1ukQrq3ojf-00nhdz; Sun, 18
 May 2025 09:31:42 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz,
	daniel@makrotopia.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v7 2/2] phy: Realtek Otto SerDes driver
Date: Sun, 18 May 2025 03:31:34 -0400
Message-ID: <20250518073134.3357015-3-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250518073134.3357015-1-markus.stockhausen@gmx.de>
References: <20250518073134.3357015-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:MvehfwGUDR3dWLTB80VGxfaQ4opj+fBXYrKzAKxQH1KWkxwVoGw
 yRQnzyIq8liaQ99eYZke+J72BzDzspsYNZeTtm/cmDOswECBpYe2NRcuJWG0OPl0+2eA0y7
 mQl0lPTZQzejM3YgMj3h/b7J4phKo03f8OSk04oHQ1i/J8vg/pmoohgWtz2Kig/pSZRfexK
 pctAgMS7FrmFf85OgWU2A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:01O35IqN/QU=;FQNtJQegS/kVxrvN8GaA6DQtrYA
 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

The Realtek Otto platform is a series of 4 different MIPS32 based network
switch SoCs. They consist of:

 - RTL838x: 500MHz single core, up to 28 ports 20GBps switching capacity
 - RTL839x: 700MHz single core, up to 52 ports 100GBps switching capacity
 - RTL930x: 700MHz single core, up to 28 ports 120GBps switching capacity
 - RTL931x: 1.0GHz dual core, up to 52 ports 170GBps switching capacity

The SoCs have 6-14 SerDes that provide the interconnect between several
one, quad or octa port attached transceivers like the RTL8214FC.

This driver builts on top of several GPL source drops from different switc=
h
vendors and harmonizes the different programming models. The common basics
are:

 - A SerDes is controlled through registers that are organized into pages
 - A page consists of 32x 16 bit registers that cover various functions
 - Registers are either accessed through I/O addresses or an MDIO style bu=
s
 - The SerDes operate on different MII variants (mostly QSGMII & XGMII)

While some of the pages have meaningful names the registers within a page
cannot be identified. Use 2 digit hex notation for a consistent register
access in the code and debug interface.

The SerDes rely on heavy register modifications with lots of undocumented
features. This is even hardware specific (board, transceivers, ...) and
developers may not have access to all devices. Provide a debug interface
that allows to access the most important internals. With that patching
sequences can be developed that can be fed back as firmware files into
the driver. A generator for the firmware files is hosted on
https://github.com/plappermaul/realtek-firmware

Examples of other drivers with similar reset/register interfaces are:

 - gpu/drm/msm/adreno/a5xx_debugfs.c
 - gpu/drm/i915/i915_debugfs_params.c
 - gpu/drm/armada/armada_debugfs.c

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
=2D--

Changes in v7:
 - none, resend because v6 got lost

Changes in v6:

REMARK FOR REVIEW! Vinod requested to make use of FIELD helpers. Chris
requested to make use of regmap. This has been implemented throughout
the whole driver to the best possible extent. So a lot of coding has
changed. Additionally there was a misunderstanding about the Realtek
proprietary high speed SGMII and that it is different from normal
2500base-x. Mode handling was adapted.

 - make use of FIELD, GENMASK and regmap where possible
 - use MASK, REG, BPOS in defines always at the end for readability
 - Split & document SGMII/HSGMII mode handling
 - use sequence lengths instead of sequence end markers in firmware
 - Add firmware sequence pointer checks to avoid possible endless loops
 - Sort Kconfig and Makefile alphabetically
 - Sort function variables in reverse length
 - Add better explanation to magic values in rtsds_83xx_cmu_reset()
 - Relocate debugfs entries into driver specific subfolder
 - Replace -1 error codes with meaningful values

Changes in v5:

 - fix typos and punctuation in comments

Changes in v4:

 - drop hardcoded firmware name fallback
 - drop fwname from ctrl & conf structures as it is no longer used
 - fix kernel test robot warning about dev_info & size_t

Changes in v3:

REMARK FOR REVIEW! Because of helpful feedback and the problems that can
arise from different hardware designs and device configurations this patch
version was overhauled in several places. From now on patches can be
applied that are loaded from firmware files. For this a lot of locations
have been hardened to ensure that hardware is instructed the right way.
This allows for easier adaption and bug analysis when moving forward with
this driver in the future. So some changes might differ from the feedback
for v2.

 - designed/explained meaningful firmware format
 - converted patch sequences to be firmware loadable
 - determine/print chip version to verify DT compatibility
 - consolidated/simplified reset code paths
 - verify input in debug interface
 - added page names in code where known & possible
 - add multiple helpers for cleaner code
 - add possibility to modify registers from debug interface
 - fixed kernel buildbot warnings
 - changed comments to imperative style
 - recipient list according to get_maintainers

Changes in v2:

 - switched logic to internal patch sequences
 - added setup sequences for RTL838x and RTL839x
 - moved includes from header to source file
 - added helpers for better readability
=2D--
 drivers/phy/realtek/Kconfig               |   14 +
 drivers/phy/realtek/Makefile              |    1 +
 drivers/phy/realtek/phy-rtk-otto-serdes.c | 1577 +++++++++++++++++++++
 drivers/phy/realtek/phy-rtk-otto-serdes.h |  219 +++
 4 files changed, 1811 insertions(+)
 create mode 100644 drivers/phy/realtek/phy-rtk-otto-serdes.c
 create mode 100644 drivers/phy/realtek/phy-rtk-otto-serdes.h

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..fc38d258ccb5 100644
=2D-- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -3,6 +3,20 @@
 # Phy drivers for Realtek platforms
 #
=20
+if MACH_REALTEK_RTL || COMPILE_TEST
+
+config PHY_RTK_OTTO_SERDES
+	tristate "Realtek Otto Platform SerDes driver"
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Enable this to support Realtek SerDes in the RTL83xx and
+	  RTL93xx network SoCs. These are based on MIPS32 architecture
+	  and the SerDes connect to one to octa transceivers to build
+	  up switches with up to 52 ports.
+
+endif # MACH_REALTEK_RTL || COMPILE_TEST
+
 if ARCH_REALTEK || COMPILE_TEST
=20
 config PHY_RTK_RTD_USB2PHY
diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
index ed7b47ff8a26..ebd642c84427 100644
=2D-- a/drivers/phy/realtek/Makefile
+++ b/drivers/phy/realtek/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_PHY_RTK_OTTO_SERDES)       +=3D phy-rtk-otto-serdes.o
 obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)	+=3D phy-rtk-usb2.o
 obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)	+=3D phy-rtk-usb3.o
diff --git a/drivers/phy/realtek/phy-rtk-otto-serdes.c b/drivers/phy/realt=
ek/phy-rtk-otto-serdes.c
new file mode 100644
index 000000000000..ed5faea98be0
=2D-- /dev/null
+++ b/drivers/phy/realtek/phy-rtk-otto-serdes.c
@@ -0,0 +1,1577 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
+ * Copyright (c) 2025 Markus Stockhausen <markus.stockhausen@gmx.de>
+ */
+
+#include <linux/crc32.h>
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/firmware.h>
+#include <linux/module.h>
+#include <linux/mfd/syscon.h>
+#include <linux/of.h>
+#include <linux/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include "phy-rtk-otto-serdes.h"
+
+/* common helpers */
+
+static inline const char *rtsds_phy_modes(phy_interface_t interface)
+{
+	switch (interface) {
+	case PHY_INTERFACE_MODE_NA:
+		return "off";
+	case RTSDS_REALTEK_MODE_HSGMII:
+		return "realtek-hsgmii"; /* See rtsds_phy_set_mode() */
+	default:
+		return phy_modes(interface);
+	}
+}
+
+static inline int rtsds_write_bits_pos(struct regmap *map, unsigned int r=
eg,
+				       unsigned int bitpos, unsigned int mask, unsigned int val)
+{
+	return regmap_write_bits(map, reg, mask << bitpos, val << bitpos);
+}
+
+static inline int rtsds_read_bits_pos(struct regmap *map, unsigned int re=
g,
+				      unsigned int bitpos, unsigned int mask, unsigned int *val)
+{
+	int ret =3D regmap_read(map, reg, val);
+
+	*val =3D (*val >> bitpos) & mask;
+
+	return ret;
+}
+
+static inline bool rtsds_invalid_reg(struct rtsds_ctrl *ctrl, u32 sid, u3=
2 page, u32 reg)
+{
+	return (sid >=3D ctrl->cfg->sds_cnt || page >=3D ctrl->cfg->page_cnt || =
reg > 31);
+}
+
+static inline bool rtsds_invalid_sds(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	return (sid >=3D ctrl->cfg->sds_cnt);
+}
+
+static inline bool rtsds_invalid_mask(u32 mask, u32 val)
+{
+	return (val & mask) !=3D val;
+}
+
+static int rtsds_hwmode_to_phymode(struct rtsds_ctrl *ctrl, int hwmode)
+{
+	for (int m =3D 0; m < PHY_INTERFACE_MODE_MAX; m++)
+		if (ctrl->cfg->mode_map[m] =3D=3D hwmode)
+			return m;
+
+	return PHY_INTERFACE_MODE_MAX;
+}
+
+static void rtsds_check_and_fix_mode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode;
+
+	mutex_lock(&ctrl->lock);
+	mode =3D rtsds_hwmode_to_phymode(ctrl, ctrl->cfg->get_hwmode(ctrl, sid))=
;
+	if (unlikely(ctrl->sds[sid].mode !=3D mode)) {
+		/* Ouch, this should not occur. Nevertheless sync to keep driver operat=
ional. */
+		dev_err(ctrl->dev, "driver mode %s out of sync with hardware mode %s, f=
ixing\n",
+			rtsds_phy_modes(ctrl->sds[sid].mode), rtsds_phy_modes(mode));
+		ctrl->sds[sid].mode =3D mode;
+	}
+	mutex_unlock(&ctrl->lock);
+}
+
+static void rtsds_get_chip(struct rtsds_ctrl *ctrl)
+{
+	u32 val, act, reg;
+
+	if (ctrl->cfg->family =3D=3D RTSDS_838X_CFG_FAMILY) {
+		reg =3D RTSDS_838X_MODEL_NAME_INFO_REG;
+		act =3D RTSDS_83XX_SDS_CHIP_INFO_EN;
+	} else if (ctrl->cfg->family =3D=3D RTSDS_839X_CFG_FAMILY) {
+		reg =3D RTSDS_839X_MODEL_NAME_INFO_REG;
+		act =3D RTSDS_83XX_SDS_CHIP_INFO_EN;
+	} else {
+		reg =3D RTSDS_93XX_REG_MODEL_NAME_INFO;
+		act =3D RTSDS_93XX_SDS_CHIP_INFO_EN;
+	}
+
+	regmap_read(ctrl->regmap, reg, &val);
+	ctrl->soc.model_id =3D FIELD_GET(RTSDS_MODEL_ID_MASK, val);
+	ctrl->soc.model_version =3D FIELD_GET(RTSDS_MODEL_VERSION_MASK, val);
+
+	regmap_write(ctrl->regmap, reg + 4, act);
+	regmap_read(ctrl->regmap, reg + 4, &val);
+	ctrl->soc.chip_id =3D FIELD_GET(RTSDS_CHIP_ID_MASK, val);
+
+	if (ctrl->cfg->family =3D=3D RTSDS_838X_CFG_FAMILY ||
+	    ctrl->cfg->family =3D=3D RTSDS_839X_CFG_FAMILY)
+		ctrl->soc.chip_version =3D FIELD_GET(RTSDS_83XX_SDS_CHIP_RL_ID_MASK, va=
l);
+	else
+		ctrl->soc.chip_version =3D FIELD_GET(RTSDS_93XX_SDS_CHIP_RL_ID_MASK, va=
l);
+
+	snprintf(ctrl->soc.model_name, sizeof(ctrl->soc.model_name),
+		 "RTL%04X%c", ctrl->soc.model_id,
+		 ctrl->soc.model_version ? ctrl->soc.model_version + 64 : 0);
+
+	snprintf(ctrl->soc.chip_name, sizeof(ctrl->soc.chip_name),
+		 "%04X%c", ctrl->soc.chip_id,
+		 ctrl->soc.chip_version ? ctrl->soc.chip_version + 64 : 0);
+}
+
+/*
+ * A Realtek Otto SerDes is configured/patched by writing specific values=
 into its registers.
+ * These values are bound to the individual hardware and the transceivers=
 that are connected to
+ * it. Depending on the model, some of this might be integrated into the =
bootloader. To fully
+ * support different configurations allow the driver to load firmware fil=
es and run patch
+ * sequences.
+ *
+ * A firmware file contains a head, a directory and at the end the raw pa=
tch data. See
+ * structure rtsds_fw_head, rtsds_fw_dir an rtsds_fw_seq for more details=
.
+ *
+ * header
+ *	(u32) magic =3D 0x83009300, see RTSDS_FW_MAGIC
+ *	(u32) CRC checksum of the following data
+ *	(u32) filesize
+ *	(u32) directory size =3D number of sequences
+ *
+ * directory with one or more blocks consisting of
+ *	(u32) id of the sequence. See RTSDS_FW_EVT_xxx
+ *	(u32) offset in bytes of patch data for this directory entry
+ *	(u32) length in bytes of patch data for this directory entry
+ *	(u32) future use to avoid structure breakage
+ *
+ * patch data with one ore more blocks consisting of
+ *	(u16) action to process. See RTSDS_FW_OP_xxx
+ *	(u16) mode for which the command is to be executed. See RTSDS_FW_MODE_=
xxx
+ *	(u16) SerDes ports bitmask for which the command is to be executed
+ *	(u16) page for action
+ *	(u16) register for action
+ *	(u16) value for action
+ *	(u16) mask for write operations
+ *	(u16) future use to avoid structure breakage
+ */
+
+static const char *rtsds_fw_events[RTSDS_FW_EVT_MAX] =3D {
+	[RTSDS_FW_EVT_SETUP]		=3D "setup",
+	[RTSDS_FW_EVT_INIT]		=3D "init",
+	[RTSDS_FW_EVT_POWER_ON]		=3D "power-on",
+	[RTSDS_FW_EVT_PRE_SET_MODE]	=3D "pre-set-mode",
+	[RTSDS_FW_EVT_POST_SET_MODE]	=3D "post-set-mode",
+	[RTSDS_FW_EVT_PRE_RESET]	=3D "pre-reset",
+	[RTSDS_FW_EVT_POST_RESET]	=3D "post-reset",
+	[RTSDS_FW_EVT_PRE_POWER_OFF]	=3D "pre-power-off",
+	[RTSDS_FW_EVT_POST_POWER_OFF]	=3D "post-power-off",
+};
+
+static const u8 rtsds_fw_modes[PHY_INTERFACE_MODE_MAX] =3D {
+	[PHY_INTERFACE_MODE_1000BASEX]	=3D RTSDS_FW_MODE_1000BASEX,
+	[PHY_INTERFACE_MODE_100BASEX]	=3D RTSDS_FW_MODE_100BASEX,
+	[PHY_INTERFACE_MODE_10GBASER]	=3D RTSDS_FW_MODE_10GBASER,
+	[PHY_INTERFACE_MODE_2500BASEX]	=3D RTSDS_FW_MODE_2500BASEX,
+	[PHY_INTERFACE_MODE_NA]		=3D RTSDS_FW_MODE_ALL,
+	[PHY_INTERFACE_MODE_QSGMII]	=3D RTSDS_FW_MODE_QSGMII,
+	[PHY_INTERFACE_MODE_QUSGMII]	=3D RTSDS_FW_MODE_QUSGMII,
+	[PHY_INTERFACE_MODE_SGMII]	=3D RTSDS_FW_MODE_SGMII,
+	[PHY_INTERFACE_MODE_USXGMII]	=3D RTSDS_FW_MODE_USXGMII,
+	[PHY_INTERFACE_MODE_XGMII]	=3D RTSDS_FW_MODE_XGMII,
+	[RTSDS_REALTEK_MODE_HSGMII]	=3D RTSDS_FW_MODE_HSGMII,
+};
+
+static int rtsds_fw_load(struct rtsds_ctrl *ctrl)
+{
+	struct rtsds_fw_head *h;
+	const char *fwname;
+	const char *msg;
+	u32 checksum;
+
+	if (device_property_read_string(ctrl->dev, "firmware-name", &fwname)) {
+		dev_info(ctrl->dev, "firmware not configured, patching disabled\n");
+		return -EACCES;
+	}
+
+	if (firmware_request_nowarn(&ctrl->firmware, fwname, ctrl->dev) < 0) {
+		dev_err(ctrl->dev, "firmware %s not found, patching disabled\n", fwname=
);
+		return -ENOENT;
+	}
+
+	if (ctrl->firmware->size < 16) {
+		msg =3D "size to small";
+		goto error;
+	}
+
+	h =3D (struct rtsds_fw_head *)ctrl->firmware->data;
+	if (h->magic !=3D RTSDS_FW_MAGIC) {
+		msg =3D "magic mismatch";
+		goto error;
+	}
+
+	if (h->filesize !=3D ctrl->firmware->size) {
+		msg =3D "size mismatch";
+		goto error;
+	}
+
+	checksum =3D ~crc32(0xFFFFFFFFU, ctrl->firmware->data + 8, ctrl->firmwar=
e->size - 8);
+	if (h->checksum !=3D checksum) {
+		msg =3D "checksum mismatch";
+		goto error;
+	}
+
+	for (int i =3D 0; i < h->dirsize; i++)
+		if ((ctrl->firmware->size <=3D h->dir[i].offset) ||
+		    (ctrl->firmware->size < h->dir[i].offset + h->dir[i].len) ||
+		    (h->dir[i].len % sizeof(struct rtsds_fw_seq))) {
+			msg =3D "malformed sequence";
+			goto error;
+		}
+
+	dev_info(ctrl->dev, "firmware %s: loaded with %zu bytes, %d sequences\n"=
,
+		 fwname, ctrl->firmware->size, h->dirsize);
+
+	return 0;
+error:
+	dev_err(ctrl->dev, "firmware %s: %s, patching disabled\n", fwname, msg);
+	ctrl->firmware =3D NULL;
+	return -EINVAL;
+}
+
+static void rtsds_fw_get_sequence(struct rtsds_ctrl *ctrl, int evt,
+				  struct rtsds_fw_seq **seq, int *cnt)
+{
+	struct rtsds_fw_head *h;
+
+	*seq =3D NULL;
+	*cnt =3D 0;
+
+	if (!ctrl->firmware)
+		return;
+
+	h =3D (struct rtsds_fw_head *)ctrl->firmware->data;
+	for (int i =3D 0; i < h->dirsize; i++)
+		if (h->dir[i].evtid =3D=3D evt) {
+			*seq =3D (struct rtsds_fw_seq *)(ctrl->firmware->data + h->dir[i].offs=
et);
+			*cnt =3D h->dir[i].len / sizeof(struct rtsds_fw_seq);
+		}
+}
+
+static int rtsds_fw_run_event(struct rtsds_ctrl *ctrl, u32 sid, int evt)
+{
+	int cnt, ret, step =3D 0, delay =3D 0, mode =3D rtsds_fw_modes[ctrl->sds=
[sid].mode];
+	struct rtsds_fw_seq *seq;
+
+	if (evt >=3D RTSDS_FW_EVT_MAX ||
+	    sid >=3D ctrl->cfg->sds_cnt ||
+	    mode =3D=3D RTSDS_FW_MODE_UNDEFINED)
+		return -EINVAL;
+
+	rtsds_fw_get_sequence(ctrl, evt, &seq, &cnt);
+	if (!seq)
+		return 0;
+
+	seq--;
+	while (cnt) {
+		step++;	seq++; cnt--;
+
+		if (!(seq->ports & BIT(sid)) ||
+		    (seq->mode !=3D RTSDS_FW_MODE_ALL && seq->mode !=3D mode))
+			continue;
+
+		if (seq->action =3D=3D RTSDS_FW_OP_WAIT) {
+			delay =3D seq->val;
+			continue;
+		}
+
+		if (delay) {
+			dev_dbg(ctrl->dev, "%s/%03d: SDS %02d WAIT(%d)\n",
+				rtsds_fw_events[evt], step, sid, delay);
+
+			usleep_range(delay << 10, (delay + 1) << 10);
+		}
+
+		if (seq->action =3D=3D RTSDS_FW_OP_MASK) {
+			dev_dbg(ctrl->dev,
+				"%s/%03d: SDS %02d MASK(0x%04x, 0x%04x, 0x%04x, 0x%04x)\n",
+				rtsds_fw_events[evt], step, sid,
+				seq->page, seq->reg, seq->mask, seq->val);
+
+			ret =3D ctrl->cfg->write_bits(ctrl, sid, seq->page,
+						    seq->reg, seq->mask, seq->val);
+			if (ret) {
+				dev_err(ctrl->dev,
+					"sequence %s failed for SerDes %d at step %d, rc=3D%d",
+					rtsds_fw_events[evt], sid, step, ret);
+				return -EIO;
+			}
+		}
+	}
+
+	return 0;
+}
+
+/* common RTL838x and RTL839x helpers */
+
+static inline int rtsds_83xx_sds_5g(u32 sid)
+{
+	return (GENMASK(11, 10) | GENMASK(7, 0)) & BIT(sid);
+}
+
+static void rtsds_83xx_rx_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	u32 page, reg, bits;
+
+	if (rtsds_83xx_sds_5g(sid)) {
+		/* RTL838x or RTL839x 5G SerDes */
+		page =3D RTSDS_SDS_EXT_PAGE;
+		reg =3D 0x09;
+		bits =3D RTSDS_RX_SELF_BIT;
+	} else if (sid =3D=3D 8 || sid =3D=3D 12) {
+		/* RTL839x 10G SerDes */
+		page =3D RTSDS_ANA_TG_EXT_PAGE;
+		reg =3D 0x00;
+		bits =3D RTSDS_RX_SELF_10G_BIT;
+	} else
+		return;
+
+	ctrl->cfg->write_bits(ctrl, sid, page, reg, bits, bits);
+	usleep_range(100000, 101000);
+	ctrl->cfg->write_bits(ctrl, sid, page, reg, bits, 0);
+}
+
+static void rtsds_83xx_digital_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int bits;
+
+	/* soft reset */
+	bits =3D RTSDS_SOFT_RST_BIT;
+	ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x03, bits, bits);
+	usleep_range(100000, 101000);
+	ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x03, bits, 0);
+
+	/* SerDes RX/TX reset */
+	bits =3D RTSDS_SDS_EN_RX_BIT | RTSDS_SDS_EN_TX_BIT;
+	ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x00, bits, 0);
+	ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x00, bits, bits);
+}
+
+static void rtsds_83xx_cmu_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mask, bpos, hi =3D sid | 1;
+
+	if (ctrl->cfg->family =3D=3D RTSDS_838X_CFG_FAMILY) {
+		/*
+		 * 5G SerDes sequence for SDS_EXT_REG0. This is some very magic flippin=
g of
+		 * fields FRC_PDOWN, VAL_RXEN, FRC_RXEN, VAL_CMUEN & FRC_CMUEN. See fun=
ctions
+		 * rtl8380_serdes_rst() or _dal_maple_mac_serdes_rst() in GPL dumps.
+		 */
+		ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_EXT_PAGE, 0x00,
+				      RTSDS_FULL_REG_MASK, 0x4040);
+		ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_EXT_PAGE, 0x00,
+				      RTSDS_FULL_REG_MASK, 0x4740);
+		ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_EXT_PAGE, 0x00,
+				      RTSDS_FULL_REG_MASK, 0x47c0);
+		ctrl->cfg->write_bits(ctrl, sid, RTSDS_SDS_EXT_PAGE, 0x00,
+				      RTSDS_FULL_REG_MASK, 0x4000);
+	} else if (rtsds_83xx_sds_5g(sid)) {
+		/*
+		 * 5G SerDes sequence for undocumented shared CMU register in odd SerDe=
s.
+		 * See function rtl839x_serdes_rst() or sequence rtl839x_serdes_rst[] i=
n GPL
+		 * dumps. Bits 4, 5 are for even SerDes, bits 6, 7 are for odd SerDes.
+		 */
+		if (sid & 1) {
+			mask =3D GENMASK(7, 6); bpos =3D 6;
+		} else {
+			mask =3D GENMASK(5, 4); bpos =3D 4;
+		}
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_RG_EXT_PAGE, 0x01, mask, 1 <<=
 bpos);
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_RG_EXT_PAGE, 0x01, mask, 3 <<=
 bpos);
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_RG_EXT_PAGE, 0x01, mask, 0);
+	} else {
+		/*
+		 * 10G SerDes sequence for undocumented shared CMU register in odd SerD=
es.
+		 * See function rtl839x_serdes_rst() or sequences rtl839x_serdes8/12_rs=
t[]
+		 * in GPL dumps. Bits 0, 1 are for even SerDes, bits 2, 3 are for odd S=
erDes.
+		 */
+		if (sid & 1) {
+			mask =3D GENMASK(3, 2); bpos =3D 2;
+		} else {
+			mask =3D GENMASK(1, 0); bpos =3D 0;
+		}
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_TG_EXT_PAGE, 0x1d, mask, 1 <<=
 bpos);
+		usleep_range(500000, 501000);
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_TG_EXT_PAGE, 0x1d, mask, 3 <<=
 bpos);
+		ctrl->cfg->write_bits(ctrl, hi, RTSDS_ANA_TG_EXT_PAGE, 0x1d, mask, 0);
+	}
+}
+
+static int rtsds_83xx_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_83xx_rx_reset(ctrl, sid);
+	rtsds_83xx_cmu_reset(ctrl, sid);
+	rtsds_83xx_digital_reset(ctrl, sid);
+
+	return 0;
+}
+
+/* common RTL930x and RTL931x helpers */
+
+static inline int rtsds_rt93xx_io(struct rtsds_ctrl *ctrl, u32 sid, u32 p=
age, u32 reg, u32 cmd)
+{
+	int ret, val =3D FIELD_PREP(RTSDS_93XX_SDS_CMD_SID_MASK, sid) |
+		       FIELD_PREP(RTSDS_93XX_SDS_CMD_PAGE_MASK, page) |
+		       FIELD_PREP(RTSDS_93XX_SDS_CMD_REG_MASK, reg) |
+		       RTSDS_93XX_SDS_CMD_BUSY | cmd;
+
+	regmap_write(ctrl->regmap, ctrl->regbase, val);
+	ret =3D regmap_read_poll_timeout(ctrl->regmap, ctrl->regbase, val,
+				       !(val & RTSDS_93XX_SDS_CMD_BUSY), 30, 1000);
+
+	if (ret < 0) {
+		dev_err(ctrl->dev, "SerDes I/O timed out\n");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int rtsds_93xx_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u3=
2 reg)
+{
+	u32 val;
+
+	if (rtsds_rt93xx_io(ctrl, sid, page, reg, RTSDS_93XX_SDS_CMD_READ))
+		return -ETIMEDOUT;
+
+	regmap_read(ctrl->regmap, ctrl->regbase + 4, &val);
+
+	return val & RTSDS_FULL_REG_MASK;
+}
+
+static int rtsds_93xx_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 pa=
ge, u32 reg,
+				 u32 mask, u32 val)
+{
+	if (mask !=3D RTSDS_FULL_REG_MASK) {
+		int oldval =3D rtsds_93xx_read(ctrl, sid, page, reg);
+
+		if (oldval < 0)
+			return -EIO;
+		val |=3D oldval & ~mask;
+	}
+
+	regmap_write(ctrl->regmap, ctrl->regbase + 4, val);
+
+	return rtsds_rt93xx_io(ctrl, sid, page, reg, RTSDS_93XX_SDS_CMD_WRITE);
+}
+
+static int rtsds_93xx_reset(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int ret;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	if (ctrl->sds[sid].mode =3D=3D PHY_INTERFACE_MODE_NA)
+		return 0;
+
+	ret =3D ctrl->cfg->set_hwmode(ctrl, sid, ctrl->sds[sid].mode, PHY_INTERF=
ACE_MODE_NA);
+	if (!ret)
+		return ret;
+
+	return ctrl->cfg->set_hwmode(ctrl, sid, PHY_INTERFACE_MODE_NA, ctrl->sds=
[sid].mode);
+}
+
+/*
+ * The RTL838x has 6 SerDes. The 16 bit registers start at 0xbb00e780 and=
 are mapped directly into
+ * 32 bit memory addresses. High 16 bits are always empty. A "lower" memo=
ry block serves pages 0/3
+ * a "higher" memory block pages 1/2.
+ */
+
+static int rtsds_838x_reg_offset(u32 sid, u32 page, u32 reg)
+{
+	if (page =3D=3D 0 || page =3D=3D 3)
+		return (sid << 9) + (page << 7) + (reg << 2);
+	else
+		return 0xb80 + (sid << 8) + (page << 7) + (reg << 2);
+}
+
+static int rtsds_838x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u3=
2 reg)
+{
+	int offs, val;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg))
+		return -EINVAL;
+
+	offs =3D rtsds_838x_reg_offset(sid, page, reg);
+
+	/* read twice for link status latch */
+	if (page =3D=3D RTSDS_FIB_PAGE && reg =3D=3D 0x01)
+		regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	return val & RTSDS_FULL_REG_MASK;
+}
+
+static int rtsds_838x_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 pa=
ge, u32 reg,
+				 u32 mask, u32 val)
+{
+	int offs;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, =
val))
+		return -EINVAL;
+
+	offs =3D rtsds_838x_reg_offset(sid, page, reg);
+
+	/* read twice for link status latch */
+	if (page =3D=3D RTSDS_FIB_PAGE && reg =3D=3D 0x01)
+		regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	regmap_write_bits(ctrl->regmap, ctrl->regbase + offs, mask, val);
+
+	return 0;
+}
+
+static int rtsds_838x_has_submode(u32 sid)
+{
+	/* only SerDes 4 and 5 can have fiber modes */
+	return GENMASK(5, 4) & BIT(sid);
+}
+
+static int rtsds_838x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int ol=
d, int new)
+{
+	int combomode =3D ctrl->cfg->mode_map[new];
+	int submode =3D RTSDS_SUBMODE(combomode);
+	int mode =3D RTSDS_MODE(combomode);
+
+	if (rtsds_invalid_sds(ctrl, sid) || !combomode)
+		return -EINVAL;
+
+	if (rtsds_838x_has_submode(sid))
+		rtsds_write_bits_pos(ctrl->regmap,
+				     RTSDS_838X_INT_MODE_CTRL_REG,
+				     RTSDS_838X_SDS_SUBMODE_BPOS(sid),
+				     RTSDS_838X_SDS_SUBMODE_MASK, submode);
+	else if (submode !=3D 0)
+		return -EINVAL;
+
+	rtsds_write_bits_pos(ctrl->regmap,
+			     RTSDS_838X_SDS_MODE_SEL_REG,
+			     RTSDS_838X_SDS_MODE_BPOS(sid),
+			     RTSDS_838X_SDS_MODE_MASK, mode);
+
+	return 0;
+}
+
+static int rtsds_838x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode, submode =3D 0;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_read_bits_pos(ctrl->regmap,
+			    RTSDS_838X_SDS_MODE_SEL_REG,
+			    RTSDS_838X_SDS_MODE_BPOS(sid),
+			    RTSDS_838X_SDS_MODE_MASK, &mode);
+
+	if (rtsds_838x_has_submode(sid))
+		rtsds_read_bits_pos(ctrl->regmap,
+				    RTSDS_838X_INT_MODE_CTRL_REG,
+				    RTSDS_838X_SDS_SUBMODE_BPOS(sid),
+				    RTSDS_838X_SDS_SUBMODE_MASK, &submode);
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/*
+ * The RTL839x has 14 SerDes starting at 0xbb00a000. 0-7, 10, 11 are 5GBi=
t, 8, 9, 12, 13 are
+ * 10 GBit. Two adjacent SerDes are tightly coupled and share a 1024 byte=
s register area. Per 32
+ * bit address two registers are stored. The first register is stored in =
the lower 2 bytes ("on
+ * the right" due to big endian) and the second register in the upper 2 b=
ytes. The following
+ * register areas are known:
+ *
+ * - XSG0	(4 pages @ offset 0x000): for even SerDes
+ * - XSG1	(4 pages @ offset 0x100): for odd SerDes
+ * - TGRX	(4 pages @ offset 0x200): for even 10G SerDes
+ * - ANA_RG	(2 pages @ offset 0x300): for even 5G SerDes
+ * - ANA_RG	(2 pages @ offset 0x380): for odd 5G SerDes
+ * - ANA_TG	(2 pages @ offset 0x300): for even 10G SerDes
+ * - ANA_TG	(2 pages @ offset 0x380): for odd 10G SerDes
+ *
+ * The most consistent mapping that aligns to the RTL93xx devices is:
+ *
+ *		even 5G SerDes	odd 5G SerDes	even 10G SerDes	odd 10G SerDes
+ * Page 0:	XSG0/0		XSG1/0		XSG0/0		XSG1/0
+ * Page 1:	XSG0/1		XSG1/1		XSG0/1		XSG1/1
+ * Page 2:	XSG0/2		XSG1/2		XSG0/2		XSG1/2
+ * Page 3:	XSG0/3		XSG1/3		XSG0/3		XSG1/3
+ * Page 4:	<zero>		<zero>		TGRX/0		<zero>
+ * Page 5:	<zero>		<zero>		TGRX/1		<zero>
+ * Page 6:	<zero>		<zero>		TGRX/2		<zero>
+ * Page 7:	<zero>		<zero>		TGRX/3		<zero>
+ * Page 8:	ANA_RG		ANA_RG		<zero>		<zero>
+ * Page 9:	ANA_RG_EXT	ANA_RG_EXT	<zero>		<zero>
+ * Page 10:	<zero>		<zero>		ANA_TG		ANA_TG
+ * Page 11:	<zero>		<zero>		ANA_TG_EXT	ANA_TG_EXT
+ */
+
+static int rtsds_839x_reg_offset(u32 sid, u32 page, u32 reg)
+{
+	int offs =3D ((sid & 0xfe) << 9) + ((reg & 0xfe) << 1) + (page << 6);
+	int sds5g =3D rtsds_83xx_sds_5g(sid);
+
+	if (page < 4)
+		return offs + ((sid & 1) << 8);
+	else if ((page & 4) && (sid =3D=3D 8 || sid =3D=3D 12))
+		return offs + 0x100;
+	else if (page >=3D 8 && page <=3D 9 && sds5g)
+		return offs + 0x100 + ((sid & 1) << 7);
+	else if (page >=3D 10 && !sds5g)
+		return offs + 0x80 + ((sid & 1) << 7);
+
+	return -EINVAL; /* hole */
+}
+
+static int rtsds_839x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u3=
2 reg)
+{
+	int offs;
+	u32 val;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg))
+		return -EINVAL;
+
+	offs =3D rtsds_839x_reg_offset(sid, page, reg);
+	if (offs < 0)
+		return 0;
+
+	/* read twice for link status latch */
+	if (page =3D=3D RTSDS_FIB_PAGE && reg =3D=3D 0x01)
+		regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	rtsds_read_bits_pos(ctrl->regmap, ctrl->regbase + offs,
+			    RTSDS_839X_SDS_RW_BPOS(reg),
+			    RTSDS_FULL_REG_MASK, &val);
+
+	return val;
+}
+
+static int rtsds_839x_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 pa=
ge, u32 reg,
+				 u32 mask, u32 val)
+{
+	int offs;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, =
val))
+		return -EINVAL;
+
+	offs =3D rtsds_839x_reg_offset(sid, page, reg);
+	if (offs < 0)
+		return 0;
+
+	/* read twice for link status latch */
+	if (page =3D=3D RTSDS_FIB_PAGE && reg =3D=3D 0x01)
+		regmap_read(ctrl->regmap, ctrl->regbase + offs, &val);
+
+	rtsds_write_bits_pos(ctrl->regmap, ctrl->regbase + offs,
+			     RTSDS_839X_SDS_RW_BPOS(reg),
+			     mask, val);
+
+	return 0;
+}
+
+static int rtsds_839x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int ol=
d, int new)
+{
+	int combomode =3D ctrl->cfg->mode_map[new];
+	int submode =3D RTSDS_SUBMODE(combomode);
+	int mode =3D RTSDS_MODE(combomode);
+
+	if (rtsds_invalid_sds(ctrl, sid) || !combomode)
+		return -EINVAL;
+
+	rtsds_write_bits_pos(ctrl->regmap,
+			     RTSDS_839X_MAC_SDS_IF_CTL_REG(sid),
+			     RTSDS_839X_SDS_MODE_BPOS(sid),
+			     RTSDS_839X_SDS_MODE_MASK, mode);
+
+	rtsds_839x_write_bits(ctrl, sid, RTSDS_SDS_PAGE, 0x04,
+			      RTSDS_839X_SDS_SUBMODE_MASK,
+			      FIELD_PREP(RTSDS_839X_SDS_SUBMODE_MASK, submode));
+
+	return 0;
+}
+
+static int rtsds_839x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode, submode;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_read_bits_pos(ctrl->regmap,
+			    RTSDS_839X_MAC_SDS_IF_CTL_REG(sid),
+			    RTSDS_839X_SDS_MODE_BPOS(sid),
+			    RTSDS_839X_SDS_MODE_MASK, &mode);
+
+	submode =3D FIELD_GET(RTSDS_839X_SDS_SUBMODE_MASK,
+			    rtsds_839x_read(ctrl, sid, RTSDS_SDS_PAGE, 0x04));
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/*
+ * The RTL930x family has 12 SerdDes of three types. They are accessed th=
rough two IO registers at
+ * 0xbb0003b0 which simulate commands to an internal MDIO bus:
+ *
+ * - SerDes 0-1 exist on the RTL9301 and 9302B and are QSGMII capable
+ * - SerDes 2-9 are USXGMII capabable with either quad or single configur=
ation
+ * - SerDes 10-11 are 10GBase-R capable
+ */
+
+static int rtsds_930x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u3=
2 reg)
+{
+	if (rtsds_invalid_reg(ctrl, sid, page, reg))
+		return -EINVAL;
+
+	return rtsds_93xx_read(ctrl, sid, page, reg);
+}
+
+static int rtsds_930x_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 pa=
ge, u32 reg,
+				 u32 mask, u32 val)
+{
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, =
val))
+		return -EINVAL;
+
+	return rtsds_93xx_write_bits(ctrl, sid, page, reg, mask, val);
+}
+
+static void rtsds_930x_get_mode_regs(int sid,
+				     u32 *modereg, int *modebpos,
+				     u32 *subreg, int *subbpos)
+{
+	if (sid > 3) {
+		*subreg =3D RTSDS_930X_SDS_SUBMODE_CTRL1_REG;
+		*subbpos =3D (sid - 4) * 5;
+	} else {
+		*subreg =3D RTSDS_930X_SDS_SUBMODE_CTRL0_REG;
+		*subbpos =3D (sid - 2) * 5;
+	}
+
+	if (sid < 4) {
+		*modereg =3D RTSDS_930X_SDS_MODE_SEL_0_REG;
+		*modebpos =3D sid * 6;
+	} else if (sid < 8) {
+		*modereg =3D RTSDS_930X_SDS_MODE_SEL_1_REG;
+		*modebpos =3D (sid - 4) * 6;
+	} else if (sid < 10) {
+		*modereg =3D RTSDS_930X_SDS_MODE_SEL_2_REG;
+		*modebpos =3D (sid - 8) * 6;
+	} else {
+		*modereg =3D RTSDS_930X_SDS_MODE_SEL_3_REG;
+		*modebpos =3D (sid - 10) * 6;
+	}
+}
+
+static int rtsds_930x_has_submode(u32 sid)
+{
+	/* only SerDes 2-9 allow GMII 10G modes */
+	return GENMASK(9, 2) & BIT(sid);
+}
+
+static int rtsds_930x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int ol=
d, int new)
+{
+	int combomode =3D ctrl->cfg->mode_map[new];
+	u32 modereg, modebpos, subreg, subbpos;
+	int submode =3D RTSDS_SUBMODE(combomode);
+	int mode =3D RTSDS_MODE(combomode);
+
+	if (rtsds_invalid_sds(ctrl, sid) || !combomode)
+		return -EINVAL;
+
+	rtsds_930x_get_mode_regs(sid, &modereg, &modebpos, &subreg, &subbpos);
+
+	if (rtsds_930x_has_submode(sid))
+		rtsds_write_bits_pos(ctrl->regmap, subreg, subbpos,
+				     RTSDS_930X_SDS_SUBMODE_MASK, submode);
+	else if (submode !=3D 0)
+		return -EINVAL;
+
+	rtsds_write_bits_pos(ctrl->regmap, modereg, modebpos, RTSDS_930X_SDS_MOD=
E_MASK, mode);
+
+	return 0;
+}
+
+static int rtsds_930x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	u32 modereg, modebpos, subreg, subbpos, mode, submode =3D 0;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_930x_get_mode_regs(sid, &modereg, &modebpos, &subreg, &subbpos);
+
+	rtsds_read_bits_pos(ctrl->regmap, modereg, modebpos, RTSDS_930X_SDS_MODE=
_MASK, &mode);
+
+	if (rtsds_930x_has_submode(sid))
+		rtsds_read_bits_pos(ctrl->regmap, subreg, subbpos,
+				    RTSDS_930X_SDS_SUBMODE_MASK, &submode);
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/*
+ * The RTL931x family has 14 "frontend" SerDes that are cascaded. All ope=
rations (e.g. reset) work
+ * on this frontend view while their registers are distributed over a tot=
al of 32 background
+ * SerDes. Two types of SerDes exist:
+ *
+ * An "even" SerDes with numbers 0, 1, 2, 4, 6, 8, 10, 12 works on two ba=
ckground SerDes. 64 analog
+ * and 64 XGMII data pages are coming from a first background SerDes whil=
e another 64 XGMII pages
+ * are served from a second SerDes.
+ *
+ * The "odd" SerDes with numbers 3, 5, 7, 9, 11 & 13 SerDes consist of a =
total of 3 background
+ * SerDes (one analog and two XGMII) each with an own page/register set.
+ *
+ * Align this for readability by simulating a total of 576 pages and mix =
them as follows.
+ *
+ * frontend page		"even" frontend SerDes		"odd" frontend SerDes
+ * page 0x000-0x03f (analog):	page 0x000-0x03f back SDS	page 0x000-0x03f =
back SDS
+ * page 0x100-0x13f (XGMII1):	page 0x000-0x03f back SDS	page 0x000-0x03f =
back SDS+1
+ * page 0x200-0x23f (XGMII2):	page 0x000-0x03f back SDS+1	page 0x000-0x03=
f back SDS+2
+ */
+
+static int rtsds_931x_get_backing_sds(u32 sid, u32 page)
+{
+	int map[] =3D {0, 1, 2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23};
+	int back =3D map[sid];
+
+	if (page & 0xc0)
+		return -EINVAL; /* hole */
+
+	if ((sid & 1) && (sid !=3D 1))
+		back +=3D (page >> 8); /* distribute "odd" to 3 background SerDes */
+	else if (page >=3D 512)
+		back +=3D 1; /* distribute "even" to 2 background SerDes */
+
+	return back;
+}
+
+static int rtsds_931x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u3=
2 reg)
+{
+	int back;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg))
+		return -EINVAL;
+
+	back =3D rtsds_931x_get_backing_sds(sid, page);
+
+	return back < 0 ? 0 : rtsds_93xx_read(ctrl, back, page & 0x3f, reg);
+}
+
+static int rtsds_931x_write_bits(struct rtsds_ctrl *ctrl, u32 sid, u32 pa=
ge, u32 reg,
+				 u32 mask, u32 val)
+{
+	int back;
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, =
val))
+		return -EINVAL;
+
+	back =3D rtsds_931x_get_backing_sds(sid, page);
+
+	return back < 0 ? 0 : rtsds_93xx_write_bits(ctrl, back, page & 0x3f, reg=
, mask, val);
+}
+
+static int rtsds_931x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int ol=
d, int new)
+{
+	int combomode =3D ctrl->cfg->mode_map[new];
+	int submode =3D RTSDS_SUBMODE(combomode);
+	int mode =3D RTSDS_MODE(combomode);
+
+	if (rtsds_invalid_sds(ctrl, sid) || !combomode)
+		return -EINVAL;
+
+	if (old !=3D PHY_INTERFACE_MODE_NA && new =3D=3D PHY_INTERFACE_MODE_NA)
+		regmap_write_bits(ctrl->regmap, RTSDS_931X_PS_SDS_OFF_MODE_CTRL_REG,
+				  BIT(sid), BIT(sid));
+
+	rtsds_write_bits_pos(ctrl->regmap,
+			     RTSDS_931X_SERDES_MODE_CTRL_REG(sid),
+			     RTSDS_931X_SDS_MODE_BPOS(sid),
+			     RTSDS_931X_SDS_MODE_WRITE_MASK,
+			     RTSDS_931X_SDS_MODE_FORCE_SETUP | mode);
+
+	rtsds_931x_write_bits(ctrl, sid, 0x1f, 0x09,
+			      RTSDS_931X_SDS_SUBMODE_MASK,
+			      FIELD_PREP(RTSDS_931X_SDS_SUBMODE_MASK, submode));
+
+	if (old =3D=3D PHY_INTERFACE_MODE_NA && new !=3D PHY_INTERFACE_MODE_NA)
+		regmap_write_bits(ctrl->regmap, RTSDS_931X_PS_SDS_OFF_MODE_CTRL_REG,
+				  BIT(sid), 0);
+
+	return 0;
+}
+
+static int rtsds_931x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int mode, submode;
+
+	if (rtsds_invalid_sds(ctrl, sid))
+		return -EINVAL;
+
+	rtsds_read_bits_pos(ctrl->regmap,
+			     RTSDS_931X_SERDES_MODE_CTRL_REG(sid),
+			     RTSDS_931X_SDS_MODE_BPOS(sid),
+			     RTSDS_931X_SDS_MODE_READ_MASK, &mode);
+
+	submode =3D FIELD_GET(RTSDS_931X_SDS_SUBMODE_MASK, rtsds_931x_read(ctrl,=
 sid, 0x1f, 0x09));
+
+	return RTSDS_COMBOMODE(mode, submode);
+}
+
+/* phy controller functions */
+
+static int rtsds_phy_init(struct phy *phy)
+{
+	struct rtsds_macro *macro =3D phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	u32 sid =3D macro->sid;
+	int ret;
+
+	dev_dbg(ctrl->dev, "init SerDes %d\n", sid);
+
+	mutex_lock(&ctrl->lock);
+	ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_INIT);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "init failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_power_on(struct phy *phy)
+{
+	struct rtsds_macro *macro =3D phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	u32 sid =3D macro->sid;
+	int ret;
+
+	dev_dbg(ctrl->dev, "power on SerDes %d\n", sid);
+
+	mutex_lock(&ctrl->lock);
+	ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POWER_ON);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "power on failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_power_off(struct phy *phy)
+{
+	struct rtsds_macro *macro =3D phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	u32 sid =3D macro->sid;
+	int ret;
+
+	dev_dbg(ctrl->dev, "power off SerDes %d\n", sid);
+
+	mutex_lock(&ctrl->lock);
+	ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_POWER_OFF);
+	if (!ret)
+		ret =3D ctrl->cfg->set_hwmode(ctrl, sid,
+					    ctrl->sds[sid].mode, PHY_INTERFACE_MODE_NA);
+	if (!ret) {
+		ctrl->sds[sid].mode =3D PHY_INTERFACE_MODE_NA;
+		ctrl->sds[sid].speed =3D SPEED_UNKNOWN;
+		ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_POWER_OFF);
+	}
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "power off failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_set_mode_int(struct rtsds_ctrl *ctrl, u32 sid, int o=
ld, int new)
+{
+	int ret;
+
+	rtsds_check_and_fix_mode(ctrl, sid);
+
+	if (ctrl->sds[sid].mode =3D=3D new)
+		return 0;
+
+	dev_dbg(ctrl->dev, "switch SerDes %d from %s to %s (hw mode 0x%X)\n",
+		sid, rtsds_phy_modes(old), rtsds_phy_modes(new), ctrl->cfg->mode_map[ne=
w]);
+
+	mutex_lock(&ctrl->lock);
+	ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_SET_MODE);
+	if (!ret)
+		ret =3D ctrl->cfg->set_hwmode(ctrl, sid, ctrl->sds[sid].mode, new);
+	if (!ret) {
+		ctrl->sds[sid].mode =3D new;
+		ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_SET_MODE);
+	}
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "set mode failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_set_mode(struct phy *phy, enum phy_mode mode, int su=
bmode)
+{
+	struct rtsds_macro *macro =3D phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	u32 sid =3D macro->sid;
+	int new =3D submode;
+
+	if (mode !=3D PHY_MODE_ETHERNET)
+		return -EINVAL;
+	/*
+	 * The Realtek SerDes distinguishes between 2500base-x and a propietary =
2.5GBit SGMII
+	 * mode (aka HSGMII) that is acively used in the wild (e.g. Zyxel XGS121=
0-12). To provide
+	 * this non-standard mode follow /drivers/phy/qualcomm/phy-qcom-sgmii-et=
h.c that switches
+	 * between SGMII and HSGMII depending on the set speed. To simplify driv=
er coding track
+	 * the mode as RTSDS_REALTEK_MODE_HSGMII (reusing PHY_INTERFACE_MODE_INT=
ERNAL). Activating
+	 * this mode requires to set the SerDes mode to SGMII and the speed to 2=
500 before or
+	 * after. E.g.
+	 *
+	 * phy_ops->set_speed(SPEED_2500);
+	 * phy_ops->set_mode(PHY_INTERFACE_MODE_SGMII);
+	 */
+	if (new =3D=3D PHY_INTERFACE_MODE_SGMII && ctrl->sds[sid].speed =3D=3D S=
PEED_2500)
+		new =3D RTSDS_REALTEK_MODE_HSGMII;
+
+	return rtsds_phy_set_mode_int(ctrl, sid, ctrl->sds[sid].mode, new);
+}
+
+static int rtsds_phy_set_speed(struct phy *phy, int speed)
+{
+	struct rtsds_macro *macro =3D phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	u32 sid =3D macro->sid;
+
+	mutex_lock(&ctrl->lock);
+	ctrl->sds[sid].speed =3D speed;
+	mutex_unlock(&ctrl->lock);
+
+	/* See rtsds_phy_set_mode() */
+	if (speed =3D=3D SPEED_2500 && ctrl->sds[sid].mode =3D=3D PHY_INTERFACE_=
MODE_SGMII)
+		return rtsds_phy_set_mode(phy, PHY_MODE_ETHERNET, RTSDS_REALTEK_MODE_HS=
GMII);
+	if (speed =3D=3D SPEED_1000 && ctrl->sds[sid].mode =3D=3D RTSDS_REALTEK_=
MODE_HSGMII)
+		return rtsds_phy_set_mode(phy, PHY_MODE_ETHERNET, PHY_INTERFACE_MODE_SG=
MII);
+
+	return 0;
+}
+
+static int rtsds_phy_reset_int(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	int ret;
+
+	dev_dbg(ctrl->dev, "reset SerDes %d\n", sid);
+
+	mutex_lock(&ctrl->lock);
+	ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_RESET);
+	if (!ret)
+		ret =3D ctrl->cfg->reset(ctrl, sid);
+	if (!ret)
+		ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_RESET);
+	mutex_unlock(&ctrl->lock);
+
+	if (ret)
+		dev_err(ctrl->dev, "reset failed for SerDes %d\n", sid);
+
+	return ret;
+}
+
+static int rtsds_phy_reset(struct phy *phy)
+{
+	struct rtsds_macro *macro =3D phy_get_drvdata(phy);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	u32 sid =3D macro->sid;
+
+	return rtsds_phy_reset_int(ctrl, sid);
+}
+
+static const struct phy_ops rtsds_phy_ops =3D {
+	.init		=3D rtsds_phy_init,
+	.power_on	=3D rtsds_phy_power_on,
+	.power_off	=3D rtsds_phy_power_off,
+	.reset		=3D rtsds_phy_reset,
+	.set_mode	=3D rtsds_phy_set_mode,
+	.set_speed	=3D rtsds_phy_set_speed,
+	.owner		=3D THIS_MODULE,
+};
+
+/*
+ * The SerDes offer a lot of magic that sill needs to be uncovered. To he=
lp further development
+ * provide some basic debugging about registers, modes, reset and polarit=
y. All functions are
+ * run under the global lock to avoid inconsistencies.
+ */
+
+#ifdef CONFIG_DEBUG_FS
+
+#define RTSDS_PAGE_NAMES 48
+
+static const char *rtsds_page_name[RTSDS_PAGE_NAMES] =3D {
+	[0] =3D "SDS",		[1] =3D "SDS_EXT",
+	[2] =3D "FIB",		[3] =3D "FIB_EXT",
+	[4] =3D "DTE",		[5] =3D "DTE_EXT",
+	[6] =3D "TGX",		[7] =3D "TGX_EXT",
+	[8] =3D "ANA_RG",		[9] =3D "ANA_RG_EXT",
+	[10] =3D "ANA_TG",	[11] =3D "ANA_TG_EXT",
+	[31] =3D "ANA_WDIG",
+	[32] =3D "ANA_MISC",	[33] =3D "ANA_COM",
+	[34] =3D "ANA_SP",	[35] =3D "ANA_SP_EXT",
+	[36] =3D "ANA_1G",	[37] =3D "ANA_1G_EXT",
+	[38] =3D "ANA_2G",	[39] =3D "ANA_2G_EXT",
+	[40] =3D "ANA_3G",	[41] =3D "ANA_3G_EXT",
+	[42] =3D "ANA_5G",	[43] =3D "ANA_5G_EXT",
+	[44] =3D "ANA_6G",	[45] =3D "ANA_6G_EXT",
+	[46] =3D "ANA_10G",	[47] =3D "ANA_10G_EXT",
+};
+
+static int rtsds_dbg_mode_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro =3D dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	int hwmode, sid =3D macro->sid;
+
+	rtsds_check_and_fix_mode(ctrl, sid);
+
+	mutex_lock(&ctrl->lock);
+	hwmode =3D ctrl->cfg->get_hwmode(ctrl, sid);
+	mutex_unlock(&ctrl->lock);
+
+
+	seq_printf(seqf, "hw mode: 0x%X\n", hwmode);
+	seq_printf(seqf, "phy mode: %s\n", rtsds_phy_modes(ctrl->sds[sid].mode))=
;
+
+	return 0;
+}
+
+static ssize_t rtsds_dbg_mode_write(struct file *file, const char __user =
*userbuf,
+				    size_t count, loff_t *ppos)
+{
+	struct seq_file *seqf =3D file->private_data;
+	struct rtsds_macro *macro =3D dev_get_drvdata(seqf->private);
+	int ret, hwmode, phymode, sid =3D macro->sid;
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+
+	ret =3D kstrtou32_from_user(userbuf, count, 16, &hwmode);
+	if (ret)
+		return ret;
+
+	/* Allow only modes we have under control. */
+	phymode =3D rtsds_hwmode_to_phymode(ctrl, hwmode);
+	if (phymode =3D=3D PHY_INTERFACE_MODE_MAX)
+		return -EINVAL;
+
+	ret =3D rtsds_phy_set_mode_int(ctrl, sid, ctrl->sds[sid].mode, phymode);
+
+	return ret ? ret : count;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
+
+static int rtsds_dbg_reset_show(struct seq_file *seqf, void *unused)
+{
+	return 0;
+}
+
+static ssize_t rtsds_dbg_reset_write(struct file *file, const char __user=
 *userbuf,
+				     size_t count, loff_t *ppos)
+{
+	struct seq_file *seqf =3D file->private_data;
+	struct rtsds_macro *macro =3D dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	int ret, reset, sid =3D macro->sid;
+
+	/* SerDes can be reset with "echo 1 > reset" */
+	ret =3D kstrtou32_from_user(userbuf, count, 10, &reset);
+	if (ret || reset !=3D 1)
+		return -EINVAL;
+
+	ret =3D rtsds_phy_reset_int(ctrl, sid);
+
+	return ret ? ret : count;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_reset);
+
+static int rtsds_dbg_registers_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro =3D dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	u32 page =3D 0, reg, sid =3D macro->sid;
+
+	seq_printf(seqf, "%*s", 12, "");
+	for (int i =3D 0; i < 32; i++)
+		seq_printf(seqf, "   %02X", i);
+
+	mutex_lock(&ctrl->lock);
+	while (page < ctrl->cfg->page_cnt) {
+		if (page < RTSDS_PAGE_NAMES && rtsds_page_name[page])
+			seq_printf(seqf, "\n%*s: ", -11, rtsds_page_name[page]);
+		else if (page =3D=3D 64 || page =3D=3D 320) {
+			page +=3D 192;
+			seq_printf(seqf, "\n\nXGMII_%d    : ", page >> 8);
+		} else
+			seq_printf(seqf, "\nPAGE_%03X   : ", page);
+		for (reg =3D 0; reg < 0x20; reg++)
+			seq_printf(seqf, "%04X ", ctrl->cfg->read(ctrl, sid, page, reg));
+		page++;
+	}
+	seq_puts(seqf, "\n");
+	mutex_unlock(&ctrl->lock);
+
+	return 0;
+}
+
+static ssize_t rtsds_dbg_registers_write(struct file *file, const char __=
user *userbuf,
+				    size_t count, loff_t *ppos)
+{
+	struct seq_file *seqf =3D file->private_data;
+	struct rtsds_macro *macro =3D dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	int ret, sid =3D macro->sid;
+	u32 reg, page, val, mask;
+	u64 data;
+
+	/*
+	 * Due to many different devices and limited regional hardware access fo=
r developers,
+	 * improve analysis with write access to the SerDes registers. This allo=
ws testers to
+	 * build new patch sequences from the command line without creating new =
firmware files
+	 * and building new images.
+	 *
+	 * Input for a register change is a single hex value that concatenates t=
he page with
+	 * 12 bits, the register with 8 bits, the value and the mask with 16 bit=
s each.
+	 * E.g. "echo 0x10110f000300 > register" means "write 0x0300 with a mask=
 of 0x0f00
+	 * (leaving the other 12 bits as is) into register 0x11 of page 0x10".
+	 */
+
+	ret =3D kstrtou64_from_user(userbuf, count, 16, &data);
+	if (ret)
+		return ret;
+
+	page =3D FIELD_GET(RTSDS_DEBUG_PAGE_MASK, data);
+	reg =3D FIELD_GET(RTSDS_DEBUG_REG_MASK, data);
+	mask =3D FIELD_GET(RTSDS_DEBUG_FIELD_MASK, data);
+	val =3D FIELD_GET(RTSDS_DEBUG_VAL_MASK, data);
+
+	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(mask, =
val))
+		return -EINVAL;
+
+	mutex_lock(&ctrl->lock);
+	ret =3D ctrl->cfg->write_bits(ctrl, sid, page, reg, mask, val);
+	mutex_unlock(&ctrl->lock);
+
+	return ret ? ret : count;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_registers);
+
+static int rtsds_dbg_polarity_show(struct seq_file *seqf, void *unused)
+{
+	struct rtsds_macro *macro =3D dev_get_drvdata(seqf->private);
+	struct rtsds_ctrl *ctrl =3D macro->ctrl;
+	int val, sid =3D macro->sid;
+
+	mutex_lock(&ctrl->lock);
+	val =3D ctrl->cfg->read(ctrl, sid, RTSDS_SDS_PAGE, 0x00);
+	mutex_unlock(&ctrl->lock);
+
+	if (val < 0)
+		return -EIO;
+
+	seq_puts(seqf, "tx polarity: ");
+	seq_puts(seqf, val & RTSDS_INV_HSO_BIT ? "inverse" : "normal");
+	seq_puts(seqf, "\nrx polarity: ");
+	seq_puts(seqf, val & RTSDS_INV_HSI_BIT ? "inverse" : "normal");
+	seq_puts(seqf, "\n");
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
+
+static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	struct device *dev =3D &ctrl->sds[sid].phy->dev;
+	struct dentry *dir, *root;
+	char dirname[32];
+
+	root =3D debugfs_lookup("realtek_serdes", NULL);
+	if (!root)
+		root =3D debugfs_create_dir("realtek_serdes", NULL);
+
+	snprintf(dirname, sizeof(dirname), "serdes.%d", sid);
+	dir =3D debugfs_create_dir(dirname, root);
+
+	debugfs_create_file("mode", 0600, dir, dev, &rtsds_dbg_mode_fops);
+	debugfs_create_file("polarity", 0400, dir, dev, &rtsds_dbg_polarity_fops=
);
+	debugfs_create_file("registers", 0600, dir, dev, &rtsds_dbg_registers_fo=
ps);
+	debugfs_create_file("reset", 0200, dir, dev, &rtsds_dbg_reset_fops);
+}
+
+#endif /* CONFIG_DEBUG_FS */
+
+static void rtsds_setup(struct rtsds_ctrl *ctrl)
+{
+	int hwmode, ret;
+
+	for (u32 sid =3D 0; sid < ctrl->cfg->sds_cnt; sid++) {
+		/* switch off SerDes */
+		ret =3D ctrl->cfg->set_hwmode(ctrl, sid,
+					    PHY_INTERFACE_MODE_MAX, PHY_INTERFACE_MODE_NA);
+		if (!ret)
+			ret =3D rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_SETUP);
+		if (ret)
+			dev_err(ctrl->dev, "setup failed for SerDes %d\n", sid);
+
+		/* in any case sync back hardware status for consistency */
+		hwmode =3D ctrl->cfg->get_hwmode(ctrl, sid);
+		ctrl->sds[sid].mode =3D rtsds_hwmode_to_phymode(ctrl, hwmode);
+		ctrl->sds[sid].speed =3D SPEED_UNKNOWN;
+	}
+}
+
+static struct phy *rtsds_simple_xlate(struct device *dev,
+				      const struct of_phandle_args *args)
+{
+	struct rtsds_ctrl *ctrl =3D dev_get_drvdata(dev);
+	int sid, sid2, min_port, max_port;
+
+	/*
+	 * A SerDes is usually connected to Ethernet transceivers (e.g. RTL8218B=
). Some of them
+	 * make use of multiple links, e.g. 2x QSGMII. Transceivers themselves c=
an have multiple
+	 * ports. To make the driver understand this topology when looked up fro=
m controller, use
+	 * following translation for the first port of a transceiver package in =
the devicetree.
+	 *
+	 * Single port/single link: E.g. Switch port 8 connected to SerDes 1
+	 *
+	 * port@8 { phys =3D <&serdes 1  1 8 8>; };
+	 * port@8 { phys =3D <&serdes 1 -1 8 8>; }; (alternative notation)
+	 *
+	 * Multiport/single link: E.g. Switch ports 16 to 23 connected to SerDes=
 2
+	 *
+	 * port@16 { phys =3D <&serdes 2  2 16 23>; };
+	 * port@16 { phys =3D <&serdes 2 -1 16 23>; }; (alternative notation)
+	 *
+	 * Multiport/multilink: E.g. Switch ports 24 to 31 connected to SerDes 3=
 & 4
+	 *
+	 * port@24 { phys =3D <&serdes 3 4 24 27>; };
+	 * port@28 { phys =3D <&serdes 4 3 28 31>; };
+	 */
+
+	if (args->args_count !=3D 4)
+		return ERR_PTR(-EINVAL);
+
+	sid =3D args->args[0];
+	sid2 =3D args->args[1];
+	min_port =3D args->args[2];
+	max_port =3D args->args[3];
+
+	if (sid < 0 || sid >=3D ctrl->cfg->sds_cnt ||
+	    sid2 < -1 || sid2 >=3D ctrl->cfg->sds_cnt ||
+	    min_port < 0 || max_port < min_port)
+		return ERR_PTR(-EINVAL);
+
+	if (sid2 =3D=3D sid)
+		sid2 =3D -1;
+
+	ctrl->sds[sid].link =3D sid2;
+	if (sid2 >=3D 0)
+		ctrl->sds[sid2].link =3D sid;
+
+	ctrl->sds[sid].min_port =3D min_port;
+	ctrl->sds[sid].max_port =3D max_port;
+
+	return ctrl->sds[sid].phy;
+}
+
+static int rtsds_phy_create(struct rtsds_ctrl *ctrl, u32 sid)
+{
+	struct rtsds_macro *macro;
+
+	ctrl->sds[sid].phy =3D devm_phy_create(ctrl->dev, NULL, &rtsds_phy_ops);
+	if (IS_ERR(ctrl->sds[sid].phy))
+		return PTR_ERR(ctrl->sds[sid].phy);
+
+	macro =3D devm_kzalloc(ctrl->dev, sizeof(*macro), GFP_KERNEL);
+	if (!macro)
+		return -ENOMEM;
+
+	macro->sid =3D sid;
+	macro->ctrl =3D ctrl;
+	phy_set_drvdata(ctrl->sds[sid].phy, macro);
+
+	ctrl->sds[sid].link =3D -1;
+	ctrl->sds[sid].min_port =3D -1;
+	ctrl->sds[sid].max_port =3D -1;
+
+#ifdef CONFIG_DEBUG_FS
+	rtsds_dbg_init(ctrl, sid);
+#endif
+	return 0;
+}
+
+static int rtsds_probe(struct platform_device *pdev)
+{
+	struct device *dev =3D &pdev->dev;
+	struct phy_provider *provider;
+	struct rtsds_ctrl *ctrl;
+	int ret;
+
+	ctrl =3D devm_kzalloc(dev, sizeof(*ctrl), GFP_KERNEL);
+	if (!ctrl)
+		return -ENOMEM;
+
+	ctrl->regmap =3D syscon_node_to_regmap(dev->parent->of_node);
+	if (IS_ERR(ctrl->regmap)) {
+		dev_err(dev, "failed to get parent syscon regmap\n");
+		return PTR_ERR(ctrl->regmap);
+	}
+	regcache_cache_bypass(ctrl->regmap, true);
+
+	ret =3D device_property_read_u32(dev, "reg", &ctrl->regbase);
+	if (ret) {
+		dev_err(dev, "SerDes register base not defined\n");
+		return ret;
+	}
+
+	ctrl->dev =3D dev;
+	ctrl->cfg =3D (struct rtsds_cfg *)of_device_get_match_data(dev);
+
+	for (u32 sid =3D 0; sid < ctrl->cfg->sds_cnt; sid++) {
+		ret =3D rtsds_phy_create(ctrl, sid);
+		if (ret) {
+			dev_err(dev, "failed to create phy for SerDes %d\n", sid);
+			return ret;
+		}
+	}
+
+	mutex_init(&ctrl->lock);
+	dev_set_drvdata(dev, ctrl);
+
+	rtsds_get_chip(ctrl);
+	rtsds_fw_load(ctrl);
+	rtsds_setup(ctrl);
+
+	dev_info(dev, "%s (chip %s) initialized. %d SerDes, %d pages, 32 registe=
rs.",
+		 ctrl->soc.model_name, ctrl->soc.chip_name,
+		 ctrl->cfg->sds_cnt, ctrl->cfg->page_cnt);
+
+	provider =3D devm_of_phy_provider_register(dev, rtsds_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(provider);
+}
+
+static const struct rtsds_cfg rtsds_838x_cfg =3D {
+	.family		=3D RTSDS_838X_CFG_FAMILY,
+	.sds_cnt	=3D RTSDS_838X_CFG_SDS_CNT,
+	.page_cnt	=3D RTSDS_838X_CFG_PAGE_CNT,
+	.write_bits	=3D rtsds_838x_write_bits,
+	.read		=3D rtsds_838x_read,
+	.reset		=3D rtsds_83xx_reset,
+	.set_hwmode	=3D rtsds_838x_set_hwmode,
+	.get_hwmode	=3D rtsds_838x_get_hwmode,
+	.mode_map =3D {
+		[PHY_INTERFACE_MODE_1000BASEX]	=3D RTSDS_COMBOMODE(0x04, 0x01),
+		[PHY_INTERFACE_MODE_100BASEX]	=3D RTSDS_COMBOMODE(0x05, 0x01),
+		[PHY_INTERFACE_MODE_NA]		=3D RTSDS_COMBOMODE(0x00, 0x00),
+		[PHY_INTERFACE_MODE_QSGMII]	=3D RTSDS_COMBOMODE(0x06, 0x00),
+		[PHY_INTERFACE_MODE_SGMII]	=3D RTSDS_COMBOMODE(0x02, 0x02),
+		[RTSDS_REALTEK_MODE_HSGMII]	=3D RTSDS_COMBOMODE(0x12, 0x04),
+	},
+};
+
+static const struct rtsds_cfg rtsds_839x_cfg =3D {
+	.family		=3D RTSDS_839X_CFG_FAMILY,
+	.sds_cnt	=3D RTSDS_839X_CFG_SDS_CNT,
+	.page_cnt	=3D RTSDS_839X_CFG_PAGE_CNT,
+	.write_bits	=3D rtsds_839x_write_bits,
+	.read		=3D rtsds_839x_read,
+	.reset		=3D rtsds_83xx_reset,
+	.set_hwmode	=3D rtsds_839x_set_hwmode,
+	.get_hwmode	=3D rtsds_839x_get_hwmode,
+	.mode_map =3D {
+		[PHY_INTERFACE_MODE_1000BASEX]	=3D RTSDS_COMBOMODE(0x07, 0x00),
+		[PHY_INTERFACE_MODE_100BASEX]	=3D RTSDS_COMBOMODE(0x08, 0x00),
+		[PHY_INTERFACE_MODE_10GBASER]	=3D RTSDS_COMBOMODE(0x01, 0x00),
+		[PHY_INTERFACE_MODE_NA]		=3D RTSDS_COMBOMODE(0x00, 0x00),
+		[PHY_INTERFACE_MODE_QSGMII]	=3D RTSDS_COMBOMODE(0x06, 0x00),
+	},
+};
+
+static const struct rtsds_cfg rtsds_930x_cfg =3D {
+	.family		=3D RTSDS_930X_CFG_FAMILY,
+	.sds_cnt	=3D RTSDS_930X_CFG_SDS_CNT,
+	.page_cnt	=3D RTSDS_930X_CFG_PAGE_CNT,
+	.write_bits	=3D rtsds_930x_write_bits,
+	.read		=3D rtsds_930x_read,
+	.reset		=3D rtsds_93xx_reset,
+	.set_hwmode	=3D rtsds_930x_set_hwmode,
+	.get_hwmode	=3D rtsds_930x_get_hwmode,
+	.mode_map =3D {
+		[PHY_INTERFACE_MODE_1000BASEX]	=3D RTSDS_COMBOMODE(0x04, 0x00),
+		[PHY_INTERFACE_MODE_2500BASEX]	=3D RTSDS_COMBOMODE(0x16, 0x00),
+		[PHY_INTERFACE_MODE_10GBASER]	=3D RTSDS_COMBOMODE(0x1a, 0x00),
+		[PHY_INTERFACE_MODE_NA]		=3D RTSDS_COMBOMODE(0x1f, 0x00),
+		[PHY_INTERFACE_MODE_QSGMII]	=3D RTSDS_COMBOMODE(0x06, 0x00),
+		[PHY_INTERFACE_MODE_QUSGMII]	=3D RTSDS_COMBOMODE(0x0d, 0x02),
+		[PHY_INTERFACE_MODE_SGMII]	=3D RTSDS_COMBOMODE(0x02, 0x00),
+		[PHY_INTERFACE_MODE_USXGMII]	=3D RTSDS_COMBOMODE(0x0d, 0x00),
+		[PHY_INTERFACE_MODE_XGMII]	=3D RTSDS_COMBOMODE(0x10, 0x00),
+		[RTSDS_REALTEK_MODE_HSGMII]	=3D RTSDS_COMBOMODE(0x12, 0x00),
+	},
+};
+
+static const struct rtsds_cfg rtsds_931x_cfg =3D {
+	.family		=3D RTSDS_931X_CFG_FAMILY,
+	.sds_cnt	=3D RTSDS_931X_CFG_SDS_CNT,
+	.page_cnt	=3D RTSDS_931X_CFG_PAGE_CNT,
+	.write_bits	=3D rtsds_931x_write_bits,
+	.read		=3D rtsds_931x_read,
+	.reset		=3D rtsds_93xx_reset,
+	.set_hwmode	=3D rtsds_931x_set_hwmode,
+	.get_hwmode	=3D rtsds_931x_get_hwmode,
+	.mode_map =3D {
+		[PHY_INTERFACE_MODE_1000BASEX]	=3D RTSDS_COMBOMODE(0x1f, 0x39),
+		[PHY_INTERFACE_MODE_10GBASER]	=3D RTSDS_COMBOMODE(0x1f, 0x35),
+		[PHY_INTERFACE_MODE_NA]		=3D RTSDS_COMBOMODE(0x1f, 0x3f),
+		[PHY_INTERFACE_MODE_QSGMII]	=3D RTSDS_COMBOMODE(0x06, 0x00),
+		[PHY_INTERFACE_MODE_SGMII]	=3D RTSDS_COMBOMODE(0x02, 0x00),
+		[PHY_INTERFACE_MODE_USXGMII]	=3D RTSDS_COMBOMODE(0x0d, 0x00),
+		[PHY_INTERFACE_MODE_XGMII]	=3D RTSDS_COMBOMODE(0x0a, 0x00),
+		[RTSDS_REALTEK_MODE_HSGMII]	=3D RTSDS_COMBOMODE(0x12, 0x00),
+	},
+};
+
+static const struct of_device_id rtsds_compatible_ids[] =3D {
+	{ .compatible =3D "realtek,rtl8380m-serdes",	.data =3D &rtsds_838x_cfg }=
,
+	{ .compatible =3D "realtek,rtl8392m-serdes",	.data =3D &rtsds_839x_cfg }=
,
+	{ .compatible =3D "realtek,rtl9302b-serdes",	.data =3D &rtsds_930x_cfg }=
,
+	{ .compatible =3D "realtek,rtl9311-serdes",	.data =3D &rtsds_931x_cfg },
+	{},
+};
+MODULE_DEVICE_TABLE(of, rtsds_compatible_ids);
+
+static struct platform_driver rtsds_platform_driver =3D {
+	.probe		=3D rtsds_probe,
+	.driver		=3D {
+		.name	=3D "realtek,otto-serdes",
+		.of_match_table =3D rtsds_compatible_ids,
+	},
+};
+
+module_platform_driver(rtsds_platform_driver);
+
+MODULE_AUTHOR("Markus Stockhausen <markus.stockhausen@gmx.de>");
+MODULE_DESCRIPTION("SerDes driver for Realtek RTL83xx, RTL93xx switch SoC=
s");
+MODULE_LICENSE("GPL");
diff --git a/drivers/phy/realtek/phy-rtk-otto-serdes.h b/drivers/phy/realt=
ek/phy-rtk-otto-serdes.h
new file mode 100644
index 000000000000..e7d5b54a6834
=2D-- /dev/null
+++ b/drivers/phy/realtek/phy-rtk-otto-serdes.h
@@ -0,0 +1,219 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
+ * Copyright (c) 2025 Markus Stockhausen <markus.stockhausen@gmx.de>
+ */
+
+#ifndef _PHY_RTK_OTTO_SERDES_H
+#define _PHY_RTK_OTTO_SERDES_H
+
+#define RTSDS_CHIP_ID_MASK			GENMASK(15, 0)
+#define RTSDS_MODEL_ID_MASK			GENMASK(31, 16)
+#define RTSDS_MODEL_VERSION_MASK		GENMASK(15, 11)
+
+#define RTSDS_COMBOMODE(mode, submode)		(0x10000 | (mode << 8) | submode)
+#define RTSDS_MODE(combomode)			((combomode >> 8) & 0xff)
+#define RTSDS_SUBMODE(combomode)		(combomode & 0xff)
+
+#define RTSDS_INV_HSO_BIT			BIT(8)
+#define RTSDS_INV_HSI_BIT			BIT(9)
+#define RTSDS_SOFT_RST_BIT			BIT(6)
+#define RTSDS_SDS_EN_RX_BIT			BIT(1)
+#define RTSDS_SDS_EN_TX_BIT			BIT(0)
+#define RTSDS_RX_SELF_BIT			BIT(9)
+#define RTSDS_RX_SELF_10G_BIT			BIT(15)
+
+#define RTSDS_DEBUG_PAGE_MASK			GENMASK_ULL(45, 40)
+#define RTSDS_DEBUG_REG_MASK			GENMASK_ULL(39, 32)
+#define RTSDS_DEBUG_FIELD_MASK			GENMASK_ULL(31, 16)
+#define RTSDS_DEBUG_VAL_MASK			GENMASK_ULL(15, 0)
+
+#define RTSDS_SDS_PAGE				0x00
+#define RTSDS_SDS_EXT_PAGE			0x01
+#define RTSDS_FIB_PAGE				0x02
+#define RTSDS_FIB_EXT_PAGE			0x03
+#define RTSDS_ANA_RG_EXT_PAGE			0x09
+#define RTSDS_ANA_TG_EXT_PAGE			0x0b
+
+#define RTSDS_FULL_REG_MASK			GENMASK(15, 0)
+#define RTSDS_REALTEK_MODE_HSGMII		PHY_INTERFACE_MODE_INTERNAL
+
+#define RTSDS_838X_CFG_FAMILY			0x8380
+#define RTSDS_838X_CFG_PAGE_CNT			4
+#define RTSDS_838X_CFG_SDS_CNT			6
+
+#define RTSDS_838X_INT_MODE_CTRL_REG		0x005c
+#define RTSDS_838X_MODEL_NAME_INFO_REG		0x00d4
+#define RTSDS_838X_SDS_MODE_SEL_REG		0x0028
+
+#define RTSDS_838X_SDS_MODE_MASK		GENMASK(4, 0)
+#define RTSDS_838X_SDS_MODE_BPOS(sid)		(25 - sid * 5)
+#define RTSDS_838X_SDS_SUBMODE_MASK		GENMASK(2, 0)
+#define RTSDS_838X_SDS_SUBMODE_BPOS(sid)	((sid - 4) * 3)
+
+#define RTSDS_839X_CFG_FAMILY			0x8390
+#define RTSDS_839X_CFG_PAGE_CNT			12
+#define RTSDS_839X_CFG_SDS_CNT			14
+
+#define RTSDS_839X_MAC_SDS_IF_CTL_REG(sid)	(0x0008 + ((sid >> 1) & ~3))
+#define RTSDS_839X_MODEL_NAME_INFO_REG		0x0ff0
+
+#define RTSDS_839X_SDS_MODE_MASK		GENMASK(3, 0)
+#define RTSDS_839X_SDS_MODE_BPOS(sid)		((sid & 7) << 2)
+#define RTSDS_839X_SDS_SUBMODE_MASK		GENMASK(15, 12)
+#define RTSDS_839X_SDS_RW_BPOS(reg)		((reg << 4) & 0x10)
+
+#define RTSDS_83XX_SDS_CHIP_INFO_EN		0xa0000000
+#define RTSDS_83XX_SDS_CHIP_RL_ID_MASK		GENMASK(20, 16)
+
+#define RTSDS_930X_CFG_FAMILY			0x9300
+#define RTSDS_930X_CFG_PAGE_CNT			64
+#define RTSDS_930X_CFG_SDS_CNT			12
+
+#define RTSDS_930X_SDS_MODE_SEL_0_REG		0x0194
+#define RTSDS_930X_SDS_MODE_SEL_1_REG		0x02a0
+#define RTSDS_930X_SDS_MODE_SEL_2_REG		0x02a4
+#define RTSDS_930X_SDS_MODE_SEL_3_REG		0x0198
+#define RTSDS_930X_SDS_SUBMODE_CTRL0_REG	0x01cc
+#define RTSDS_930X_SDS_SUBMODE_CTRL1_REG	0x02d8
+
+#define RTSDS_930X_SDS_MODE_MASK		GENMASK(4, 0)
+#define RTSDS_930X_SDS_SUBMODE_MASK		GENMASK(4, 0)
+
+#define RTSDS_931X_SERDES_MODE_CTRL_REG(sid)	(0x13cc + (sid & ~3))
+#define RTSDS_931X_PS_SDS_OFF_MODE_CTRL_REG	0x13f4
+
+#define RTSDS_931X_CFG_FAMILY			0x9310
+#define RTSDS_931X_CFG_SDS_CNT			14
+#define RTSDS_931X_CFG_PAGE_CNT			576
+
+#define RTSDS_931X_SDS_MODE_FORCE_SETUP		0x80
+#define RTSDS_931X_SDS_MODE_READ_MASK		GENMASK(4, 0)
+#define RTSDS_931X_SDS_MODE_BPOS(sid)		((sid & 3) << 3)
+#define RTSDS_931X_SDS_MODE_WRITE_MASK		GENMASK(7, 0)
+#define RTSDS_931X_SDS_SUBMODE_MASK		GENMASK(11, 6)
+
+#define RTSDS_93XX_REG_MODEL_NAME_INFO		0x0004
+#define RTSDS_93XX_SDS_CHIP_INFO_EN		0xa0000
+#define RTSDS_93XX_SDS_CHIP_RL_ID_MASK		GENMASK(31, 28)
+
+#define RTSDS_93XX_SDS_CMD_READ			0
+#define RTSDS_93XX_SDS_CMD_WRITE		BIT(1)
+#define RTSDS_93XX_SDS_CMD_BUSY			BIT(0)
+#define RTSDS_93XX_SDS_CMD_SID_MASK		GENMASK(6, 2)
+#define RTSDS_93XX_SDS_CMD_PAGE_MASK		GENMASK(12, 7)
+#define RTSDS_93XX_SDS_CMD_REG_MASK		GENMASK(17, 13)
+
+/*
+ * All the following firmware constants are fixed and must not be changed=
. Otherwise existing
+ * firmware files in the wild will break. If new events, operations or mo=
des need to be added,
+ * new numbers have to be assigned and reordering is strictly forbidden.
+ */
+
+#define RTSDS_FW_MAGIC				0x83009300
+
+#define RTSDS_FW_EVT_UNDEFINED			0
+#define RTSDS_FW_EVT_INIT			1
+#define RTSDS_FW_EVT_POWER_ON			2
+#define RTSDS_FW_EVT_POST_POWER_OFF		3
+#define RTSDS_FW_EVT_POST_RESET			4
+#define RTSDS_FW_EVT_POST_SET_MODE		5
+#define RTSDS_FW_EVT_PRE_POWER_OFF		6
+#define RTSDS_FW_EVT_PRE_RESET			7
+#define RTSDS_FW_EVT_PRE_SET_MODE		8
+#define RTSDS_FW_EVT_SETUP			9
+#define RTSDS_FW_EVT_MAX			10 /* end marker */
+
+#define RTSDS_FW_OP_UNDEFINED			0
+#define RTSDS_FW_OP_MASK			1 /* modify register with <mask> and <value> *=
/
+#define RTSDS_FW_OP_WAIT			2 /* delay for <value> milliseconds */
+#define RTSDS_FW_OP_MAX				3 /* end marker */
+
+#define RTSDS_FW_MODE_UNDEFINED			0
+#define RTSDS_FW_MODE_ALL			1
+#define RTSDS_FW_MODE_HSGMII			2
+#define RTSDS_FW_MODE_SGMII			3
+#define RTSDS_FW_MODE_QSGMII			4
+#define RTSDS_FW_MODE_QUSGMII			5
+#define RTSDS_FW_MODE_USXGMII			6
+#define RTSDS_FW_MODE_XGMII			7
+#define RTSDS_FW_MODE_1000BASEX			8
+#define RTSDS_FW_MODE_100BASEX			9
+#define RTSDS_FW_MODE_10GBASER			10
+#define RTSDS_FW_MODE_2500BASEX			11
+#define RTSDS_FW_MODE_MAX			12 /* end marker */
+
+struct __packed rtsds_fw_dir {
+	uint32_t evtid;
+	uint32_t offset;
+	uint32_t len;
+	uint32_t _future_use;
+};
+
+struct __packed rtsds_fw_head {
+	u32 magic;
+	u32 checksum;
+	u32 filesize;
+	u32 dirsize;
+	struct rtsds_fw_dir dir[];
+};
+
+struct __packed rtsds_fw_seq {
+	u16 mode;
+	u16 ports;
+	u16 action;
+	u16 page;
+	u16 reg;
+	u16 mask;
+	u16 val;
+	u16 _future_use;
+};
+
+struct rtsds_sds {
+	struct phy *phy;
+	int mode;
+	int speed;
+	int link;
+	int min_port;
+	int max_port;
+};
+
+struct rtsds_soc {
+	u32 model_id;
+	u32 model_version;
+	char model_name[16];
+	u32 chip_id;
+	u32 chip_version;
+	char chip_name[16];
+};
+
+struct rtsds_ctrl {
+	struct rtsds_soc soc;
+	struct device *dev;
+	struct regmap *regmap;
+	u32 regbase;
+	struct mutex lock;
+	struct rtsds_cfg *cfg;
+	struct rtsds_sds sds[RTSDS_931X_CFG_SDS_CNT];
+	const struct firmware *firmware;
+};
+
+struct rtsds_macro {
+	struct rtsds_ctrl *ctrl;
+	u32 sid;
+};
+
+struct rtsds_cfg {
+	u32 family;
+	u32 sds_cnt;
+	u32 page_cnt;
+	void (*setup)(struct rtsds_ctrl *ctrl);
+	int (*read)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg);
+	int (*write_bits)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg, u=
32 mask, u32 val);
+	int (*reset)(struct rtsds_ctrl *ctrl, u32 idx);
+	int (*set_hwmode)(struct rtsds_ctrl *ctrl, u32 idx, int oldmode, int new=
mode);
+	int (*get_hwmode)(struct rtsds_ctrl *ctrl, u32 idx);
+	int mode_map[PHY_INTERFACE_MODE_MAX];
+};
+
+#endif /* _PHY_RTK_OTTO_SERDES_H */
=2D-=20
2.47.0


