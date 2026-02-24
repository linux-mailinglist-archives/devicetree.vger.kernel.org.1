Return-Path: <devicetree+bounces-267806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEsdNIx6nWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:16:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E48185320
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:16:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FF263112F77
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 640AE376484;
	Tue, 24 Feb 2026 10:12:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27842376BCD
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 10:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771927949; cv=none; b=okeJAkUWAk1O03r+gBp8wTwCrrn02M43n6zQP+N1uUu4BmkpzWVRb9x5jcifEVpeRhxcbU1loERSaJTLVAUCT3oO5WOKzUOrpEuZJ13Vw3DmFoHUi5YV7Xl+o8VzFY8BLTb21qI5N5EpXyRZVPP8Ui1QDF1GMEhDUev+nxRNR14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771927949; c=relaxed/simple;
	bh=kmHh44FZsa3rxzWJvlfXCZh4dPqQQq3icjPEAY94HL4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Y2PBXcQufa3NT1DIBMt92HpYRRRsfR4MfVM3q2exD1yjTzkFUyqa21AHYyejCxFUsJw99kXEEVUeVvhAes+L2ZYBZbGyVrO+3EVa8PRGNCBCZsxposakkPUAdN23mjQDXuJ6ZkAOV6MsuscB4KhAESYFowXcdcM9l4akYc9mBzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vupOt-0007Jy-Iy; Tue, 24 Feb 2026 11:12:19 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vupOr-002Nj2-35;
	Tue, 24 Feb 2026 11:12:19 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vupOt-000000005QA-0wYu;
	Tue, 24 Feb 2026 11:12:19 +0100
Message-ID: <21bba957f7e317617ddb20af03fe46c0e5a1d9bb.camel@pengutronix.de>
Subject: Re: [PATCH v9 2/3] reset: add Sky1 soc reset support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Gary Yang <gary.yang@cixtech.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, cix-kernel-upstream@cixtech.com
Date: Tue, 24 Feb 2026 11:12:19 +0100
In-Reply-To: <20260224092111.2198005-3-gary.yang@cixtech.com>
References: <20260224092111.2198005-1-gary.yang@cixtech.com>
	 <20260224092111.2198005-3-gary.yang@cixtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-267806-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 50E48185320
X-Rspamd-Action: no action

On Di, 2026-02-24 at 17:21 +0800, Gary Yang wrote:
> Add support for the resets on Cix's Sky1 SoC.
> There are two reset controllers on Cix Sky1 Soc. One is located in S0
> domain, and the other is located in S5 domain.

The second controller is not in S0 domain anymore?
This change was not explained in the change log.

This seems to contradict a comment in=20
"cix,sky1-s5-system-control" -> variant_sky1 -> sky1_src_signals:

	/* reset group1 for s0 domain modules */

> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  drivers/reset/Kconfig      |   7 +
>  drivers/reset/Makefile     |   1 +
>  drivers/reset/reset-sky1.c | 367 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 375 insertions(+)
>  create mode 100644 drivers/reset/reset-sky1.c
>=20
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 6e5d6deffa7d..0aaac1b88d02 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -291,6 +291,13 @@ config RESET_SIMPLE
>  	   - SiFive FU740 SoCs
>  	   - Sophgo SoCs
> =20
> +config RESET_SKY1
> +	bool "Cix Sky1 reset controller"
> +	depends on OF && REGMAP_MMIO

Select REGMAP_MMIO instead.

> +	depends on ARCH_CIX || COMPILE_TEST
> +	help
> +	  This enables the reset controller for Cix Sky1.
> +
>  config RESET_SOCFPGA
>  	bool "SoCFPGA Reset Driver" if COMPILE_TEST && (!ARM || !ARCH_INTEL_SOC=
FPGA)
>  	default ARM && ARCH_INTEL_SOCFPGA
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 9c3e484dfd81..0d2e1329561d 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -37,6 +37,7 @@ obj-$(CONFIG_RESET_RZG2L_USBPHY_CTRL) +=3D reset-rzg2l-=
usbphy-ctrl.o
>  obj-$(CONFIG_RESET_RZV2H_USB2PHY) +=3D reset-rzv2h-usb2phy.o
>  obj-$(CONFIG_RESET_SCMI) +=3D reset-scmi.o
>  obj-$(CONFIG_RESET_SIMPLE) +=3D reset-simple.o
> +obj-$(CONFIG_RESET_SKY1) +=3D reset-sky1.o
>  obj-$(CONFIG_RESET_SOCFPGA) +=3D reset-socfpga.o
>  obj-$(CONFIG_RESET_SPACEMIT) +=3D reset-spacemit.o
>  obj-$(CONFIG_RESET_SUNPLUS) +=3D reset-sunplus.o
> diff --git a/drivers/reset/reset-sky1.c b/drivers/reset/reset-sky1.c
> new file mode 100644
> index 000000000000..fb8a919fd3f7
> --- /dev/null
> +++ b/drivers/reset/reset-sky1.c
> @@ -0,0 +1,367 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + *
> + * CIX System Reset Controller (SRC) driver
> + *
> + * Author: Jerry Zhu <jerry.zhu@cixtech.com>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset-controller.h>
> +
> +#include <dt-bindings/reset/cix,sky1-rst.h>
> +#include <dt-bindings/reset/cix,sky1-rst-fch.h>
> +
> +#define SKY1_RESET_SLEEP_MIN_US		50
> +#define SKY1_RESET_SLEEP_MAX_US		100
> +
> +struct sky1_src_signal {
> +	unsigned int offset;
> +	unsigned int bit;
> +};
> +
> +struct sky1_src_variant {
> +	const struct sky1_src_signal *signals;
> +	unsigned int signals_num;
> +};
> +
> +struct sky1_src {
> +	struct reset_controller_dev rcdev;
> +	const struct sky1_src_signal *signals;
> +	struct regmap *regmap;
> +};
> +
> +enum {
> +	CSU_PM_RESET				=3D 0x304,
> +	SENSORFUSION_RESET			=3D 0x308,
> +	SENSORFUSION_NOC_RESET			=3D 0x30c,
> +	RESET_GROUP0_S0_DOMAIN_0		=3D 0x400,
> +	RESET_GROUP0_S0_DOMAIN_1		=3D 0x404,
> +	RESET_GROUP1_USB_PHYS			=3D 0x408,
> +	RESET_GROUP1_USB_CONTROLLERS		=3D 0x40c,
> +	RESET_GROUP0_RCSU			=3D 0x800,
> +	RESET_GROUP1_RCSU			=3D 0x804,
> +};
> +
> +static const struct sky1_src_signal sky1_src_signals[] =3D {
> +	/* reset group1 for s0 domain modules */
> +	[SKY1_CSU_PM_RESET_N]		=3D { CSU_PM_RESET, BIT(0) },
> +	[SKY1_SENSORFUSION_RESET_N]	=3D { SENSORFUSION_RESET, BIT(0) },
> +	[SKY1_SENSORFUSION_NOC_RESET_N]	=3D { SENSORFUSION_NOC_RESET, BIT(0) },
> +	[SKY1_DDRC_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(0) },
> +	[SKY1_GIC_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(1) },
> +	[SKY1_CI700_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(2) },
> +	[SKY1_SYS_NI700_RESET_N]	=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(3) },
> +	[SKY1_MM_NI700_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(4) },
> +	[SKY1_PCIE_NI700_RESET_N]	=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(5) },
> +	[SKY1_GPU_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(6) },
> +	[SKY1_NPUTOP_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(7) },
> +	[SKY1_NPUCORE0_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(8) },
> +	[SKY1_NPUCORE1_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(9) },
> +	[SKY1_NPUCORE2_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(10) },
> +	[SKY1_VPU_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(11) },
> +	[SKY1_ISP_SRESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(12) },
> +	[SKY1_ISP_ARESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(13) },
> +	[SKY1_ISP_HRESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(14) },
> +	[SKY1_ISP_GDCRESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(15) },
> +	[SKY1_DPU_RESET0_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(16) },
> +	[SKY1_DPU_RESET1_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(17) },
> +	[SKY1_DPU_RESET2_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(18) },
> +	[SKY1_DPU_RESET3_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(19) },
> +	[SKY1_DPU_RESET4_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(20) },
> +	[SKY1_DP_RESET0_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(21) },
> +	[SKY1_DP_RESET1_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(22) },
> +	[SKY1_DP_RESET2_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(23) },
> +	[SKY1_DP_RESET3_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(24) },
> +	[SKY1_DP_RESET4_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(25) },
> +	[SKY1_DP_PHY_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_0, BIT(26) },
> +
> +	/* reset group1 for s0 domain modules */
> +	[SKY1_AUDIO_HIFI5_RESET_N]	=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(0) },
> +	[SKY1_AUDIO_HIFI5_NOC_RESET_N]	=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(1) }=
,
> +	[SKY1_CSIDPHY_PRST0_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(2) },
> +	[SKY1_CSIDPHY_CMNRST0_N]	=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(3) },
> +	[SKY1_CSI0_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(4) },
> +	[SKY1_CSIDPHY_PRST1_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(5) },
> +	[SKY1_CSIDPHY_CMNRST1_N]	=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(6) },
> +	[SKY1_CSI1_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(7) },
> +	[SKY1_CSI2_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(8) },
> +	[SKY1_CSI3_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(9) },
> +	[SKY1_CSIBRDGE0_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(10) },
> +	[SKY1_CSIBRDGE1_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(11) },
> +	[SKY1_CSIBRDGE2_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(12) },
> +	[SKY1_CSIBRDGE3_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(13) },
> +	[SKY1_GMAC0_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(14) },
> +	[SKY1_GMAC1_RST_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(15) },
> +	[SKY1_PCIE0_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(16) },
> +	[SKY1_PCIE1_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(17) },
> +	[SKY1_PCIE2_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(18) },
> +	[SKY1_PCIE3_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(19) },
> +	[SKY1_PCIE4_RESET_N]		=3D { RESET_GROUP0_S0_DOMAIN_1, BIT(20) },
> +
> +	/* reset group1 for usb phys */
> +	[SKY1_USB_DP_PHY0_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(0) },
> +	[SKY1_USB_DP_PHY1_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(1) },
> +	[SKY1_USB_DP_PHY2_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(2) },
> +	[SKY1_USB_DP_PHY3_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(3) },
> +	[SKY1_USB_DP_PHY0_RST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(4) },
> +	[SKY1_USB_DP_PHY1_RST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(5) },
> +	[SKY1_USB_DP_PHY2_RST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(6) },
> +	[SKY1_USB_DP_PHY3_RST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(7) },
> +	[SKY1_USBPHY_SS_PST_N]			=3D { RESET_GROUP1_USB_PHYS, BIT(8) },
> +	[SKY1_USBPHY_SS_RST_N]			=3D { RESET_GROUP1_USB_PHYS, BIT(9) },
> +	[SKY1_USBPHY_HS0_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(10) },
> +	[SKY1_USBPHY_HS1_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(11) },
> +	[SKY1_USBPHY_HS2_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(12) },
> +	[SKY1_USBPHY_HS3_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(13) },
> +	[SKY1_USBPHY_HS4_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(14) },
> +	[SKY1_USBPHY_HS5_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(15) },
> +	[SKY1_USBPHY_HS6_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(16) },
> +	[SKY1_USBPHY_HS7_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(17) },
> +	[SKY1_USBPHY_HS8_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(18) },
> +	[SKY1_USBPHY_HS9_PRST_N]		=3D { RESET_GROUP1_USB_PHYS, BIT(19) },
> +
> +	/* reset group1 for usb controllers */
> +	[SKY1_USBC_SS0_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(0) },
> +	[SKY1_USBC_SS1_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(1) },
> +	[SKY1_USBC_SS2_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(2) },
> +	[SKY1_USBC_SS3_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(3) },
> +	[SKY1_USBC_SS4_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(4) },
> +	[SKY1_USBC_SS5_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(5) },
> +	[SKY1_USBC_SS0_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(6) },
> +	[SKY1_USBC_SS1_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(7) },
> +	[SKY1_USBC_SS2_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(8) },
> +	[SKY1_USBC_SS3_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(9) },
> +	[SKY1_USBC_SS4_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(10) },
> +	[SKY1_USBC_SS5_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(11) },
> +	[SKY1_USBC_HS0_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(12) },
> +	[SKY1_USBC_HS1_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(13) },
> +	[SKY1_USBC_HS2_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(14) },
> +	[SKY1_USBC_HS3_PRST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(15) },
> +	[SKY1_USBC_HS0_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(16) },
> +	[SKY1_USBC_HS1_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(17) },
> +	[SKY1_USBC_HS2_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(18) },
> +	[SKY1_USBC_HS3_RST_N]		=3D { RESET_GROUP1_USB_CONTROLLERS, BIT(19) },
> +
> +	/* reset group0 for rcsu */
> +	[SKY1_AUDIO_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(0) },
> +	[SKY1_CI700_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(1) },
> +	[SKY1_CSI_RCSU0_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(2) },
> +	[SKY1_CSI_RCSU1_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(3) },
> +	[SKY1_CSU_PM_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(4) },
> +	[SKY1_DDR_BROADCAST_RCSU_RESET_N]	=3D { RESET_GROUP0_RCSU, BIT(5) },
> +	[SKY1_DDR_CTRL_RCSU_0_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(6) },
> +	[SKY1_DDR_CTRL_RCSU_1_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(7) },
> +	[SKY1_DDR_CTRL_RCSU_2_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(8) },
> +	[SKY1_DDR_CTRL_RCSU_3_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(9) },
> +	[SKY1_DDR_TZC400_RCSU_0_RESET_N]	=3D { RESET_GROUP0_RCSU, BIT(10) },
> +	[SKY1_DDR_TZC400_RCSU_1_RESET_N]	=3D { RESET_GROUP0_RCSU, BIT(11) },
> +	[SKY1_DDR_TZC400_RCSU_2_RESET_N]	=3D { RESET_GROUP0_RCSU, BIT(12) },
> +	[SKY1_DDR_TZC400_RCSU_3_RESET_N]	=3D { RESET_GROUP0_RCSU, BIT(13) },
> +	[SKY1_DP0_RCSU_RESET_N]			=3D { RESET_GROUP0_RCSU, BIT(14) },
> +	[SKY1_DP1_RCSU_RESET_N]			=3D { RESET_GROUP0_RCSU, BIT(15) },
> +	[SKY1_DP2_RCSU_RESET_N]			=3D { RESET_GROUP0_RCSU, BIT(16) },
> +	[SKY1_DP3_RCSU_RESET_N]			=3D { RESET_GROUP0_RCSU, BIT(17) },
> +	[SKY1_DP4_RCSU_RESET_N]			=3D { RESET_GROUP0_RCSU, BIT(18) },
> +	[SKY1_DPU0_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(19) },
> +	[SKY1_DPU1_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(20) },
> +	[SKY1_DPU2_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(21) },
> +	[SKY1_DPU3_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(22) },
> +	[SKY1_DPU4_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(23) },
> +	[SKY1_DSU_RCSU_RESET_N]			=3D { RESET_GROUP0_RCSU, BIT(24) },
> +	[SKY1_FCH_RCSU_RESET_N]			=3D { RESET_GROUP0_RCSU, BIT(25) },
> +	[SKY1_GICD_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(26) },
> +	[SKY1_GMAC_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(27) },
> +	[SKY1_GPU_RCSU_RESET_N]			=3D { RESET_GROUP0_RCSU, BIT(28) },
> +	[SKY1_ISP_RCSU0_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(29) },
> +	[SKY1_ISP_RCSU1_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(30) },
> +	[SKY1_NI700_MMHUB_RCSU_RESET_N]		=3D { RESET_GROUP0_RCSU, BIT(31) },
> +
> +	/* reset group1 for rcsu */
> +	[SKY1_NPU_RCSU_RESET_N]			=3D { RESET_GROUP1_RCSU, BIT(0) },
> +	[SKY1_NI700_PCIE_RCSU_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(1) },
> +	[SKY1_PCIE_X421_RCSU_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(2) },
> +	[SKY1_PCIE_X8_RCSU_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(3) },
> +	[SKY1_SF_RCSU_RESET_N]			=3D { RESET_GROUP1_RCSU, BIT(4) },
> +	[SKY1_RCSU_SMMU_MMHUB_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(5) },
> +	[SKY1_RCSU_SMMU_PCIEHUB_RESET_N]	=3D { RESET_GROUP1_RCSU, BIT(6) },
> +	[SKY1_RCSU_SYSHUB_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(7) },
> +	[SKY1_NI700_SMN_RCSU_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(8) },
> +	[SKY1_NI700_SYSHUB_RCSU_RESET_N]	=3D { RESET_GROUP1_RCSU, BIT(9) },
> +	[SKY1_RCSU_USB2_HOST0_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(10) },
> +	[SKY1_RCSU_USB2_HOST1_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(11) },
> +	[SKY1_RCSU_USB2_HOST2_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(12) },
> +	[SKY1_RCSU_USB2_HOST3_RESET_N]		=3D { RESET_GROUP1_RCSU, BIT(13) },
> +	[SKY1_RCSU_USB3_TYPEA_DRD_RESET_N]	=3D { RESET_GROUP1_RCSU, BIT(14) },
> +	[SKY1_RCSU_USB3_TYPEC_DRD_RESET_N]	=3D { RESET_GROUP1_RCSU, BIT(15) },
> +	[SKY1_RCSU_USB3_TYPEC_HOST0_RESET_N]	=3D { RESET_GROUP1_RCSU, BIT(16) }=
,
> +	[SKY1_RCSU_USB3_TYPEC_HOST1_RESET_N]	=3D { RESET_GROUP1_RCSU, BIT(17) }=
,
> +	[SKY1_RCSU_USB3_TYPEC_HOST2_RESET_N]	=3D { RESET_GROUP1_RCSU, BIT(18) }=
,
> +	[SKY1_VPU_RCSU_RESET_N]			=3D { RESET_GROUP1_RCSU, BIT(19) },
> +};
> +
> +static const struct sky1_src_variant variant_sky1 =3D {
> +	.signals =3D sky1_src_signals,
> +	.signals_num =3D ARRAY_SIZE(sky1_src_signals),
> +};
> +
> +enum {
> +	FCH_SW_RST_FUNC			=3D 0x8,
> +	FCH_SW_RST_BUS			=3D 0xc,
> +	FCH_SW_XSPI			=3D 0x10,
> +};
> +
> +static const struct sky1_src_signal sky1_src_fch_signals[] =3D {
> +	/* resets for fch_sw_rst_func */
> +	[SW_I3C0_RST_FUNC_G_N]	=3D { FCH_SW_RST_FUNC, BIT(0) },
> +	[SW_I3C0_RST_FUNC_I_N]	=3D { FCH_SW_RST_FUNC, BIT(1) },
> +	[SW_I3C1_RST_FUNC_G_N]	=3D { FCH_SW_RST_FUNC, BIT(2) },
> +	[SW_I3C1_RST_FUNC_I_N]	=3D { FCH_SW_RST_FUNC, BIT(3) },
> +	[SW_UART0_RST_FUNC_N]	=3D { FCH_SW_RST_FUNC, BIT(4) },
> +	[SW_UART1_RST_FUNC_N]	=3D { FCH_SW_RST_FUNC, BIT(5) },
> +	[SW_UART2_RST_FUNC_N]	=3D { FCH_SW_RST_FUNC, BIT(6) },
> +	[SW_UART3_RST_FUNC_N]	=3D { FCH_SW_RST_FUNC, BIT(7) },
> +	[SW_TIMER_RST_FUNC_N]	=3D { FCH_SW_RST_FUNC, BIT(20) },
> +
> +	/* resets for fch_sw_rst_bus */
> +	[SW_I3C0_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(0) },
> +	[SW_I3C1_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(1) },
> +	[SW_DMA_RST_AXI_N]	=3D { FCH_SW_RST_BUS, BIT(2) },
> +	[SW_UART0_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(4) },
> +	[SW_UART1_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(5) },
> +	[SW_UART2_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(6) },
> +	[SW_UART3_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(7) },
> +	[SW_SPI0_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(8) },
> +	[SW_SPI1_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(9) },
> +	[SW_I2C0_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(12) },
> +	[SW_I2C1_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(13) },
> +	[SW_I2C2_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(14) },
> +	[SW_I2C3_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(15) },
> +	[SW_I2C4_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(16) },
> +	[SW_I2C5_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(17) },
> +	[SW_I2C6_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(18) },
> +	[SW_I2C7_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(19) },
> +	[SW_GPIO_RST_APB_N]	=3D { FCH_SW_RST_BUS, BIT(21) },
> +
> +	/* resets for fch_sw_xspi */
> +	[SW_XSPI_REG_RST_N]	=3D { FCH_SW_XSPI, BIT(0) },
> +	[SW_XSPI_SYS_RST_N]	=3D { FCH_SW_XSPI, BIT(1) },
> +};
> +
> +static const struct sky1_src_variant variant_sky1_fch =3D {
> +	.signals =3D sky1_src_fch_signals,
> +	.signals_num =3D ARRAY_SIZE(sky1_src_fch_signals),
> +};
> +
> +static struct sky1_src *to_sky1_src(struct reset_controller_dev *rcdev)
> +{
> +	return container_of(rcdev, struct sky1_src, rcdev);
> +}
> +
> +static int sky1_reset_set(struct reset_controller_dev *rcdev,
> +			  unsigned long id, bool assert)
> +{
> +	struct sky1_src *sky1src =3D to_sky1_src(rcdev);
> +	const struct sky1_src_signal *signal =3D &sky1src->signals[id];
> +	unsigned int value =3D assert ? 0 : sky1src->signals[id].bit;

This could be shortened to:

	unsigned int value =3D assert ? 0 : signal->bit;

> +
> +	return regmap_update_bits(sky1src->regmap,
> +				  signal->offset, signal->bit, value);
> +}
> +
> +static int sky1_reset_assert(struct reset_controller_dev *rcdev,
> +			     unsigned long id)
> +{
> +	sky1_reset_set(rcdev, id, true);
> +	usleep_range(SKY1_RESET_SLEEP_MIN_US,
> +		     SKY1_RESET_SLEEP_MAX_US);
> +	return 0;
> +}
> +
> +static int sky1_reset_deassert(struct reset_controller_dev *rcdev,
> +			       unsigned long id)
> +{
> +	sky1_reset_set(rcdev, id, false);
> +	usleep_range(SKY1_RESET_SLEEP_MIN_US,
> +		     SKY1_RESET_SLEEP_MAX_US);
> +	return 0;
> +}
> +
> +static int sky1_reset(struct reset_controller_dev *rcdev,
> +		      unsigned long id)
> +{
> +	sky1_reset_assert(rcdev, id);
> +	sky1_reset_deassert(rcdev, id);
> +	return 0;
> +}
> +
> +static int sky1_reset_status(struct reset_controller_dev *rcdev,
> +			     unsigned long id)
> +{
> +	unsigned int value =3D 0;
> +	struct sky1_src *sky1src =3D to_sky1_src(rcdev);
> +	const struct sky1_src_signal *signal =3D &sky1src->signals[id];
> +
> +	regmap_read(sky1src->regmap, signal->offset, &value);
> +	return !(value & signal->bit);
> +}
> +
> +static const struct reset_control_ops sky1_src_ops =3D {
> +	.reset    =3D sky1_reset,
> +	.assert   =3D sky1_reset_assert,
> +	.deassert =3D sky1_reset_deassert,
> +	.status   =3D sky1_reset_status
> +};
> +
> +static int sky1_reset_probe(struct platform_device *pdev)
> +{
> +	struct sky1_src *sky1src;
> +	struct device *dev =3D &pdev->dev;
> +	const struct sky1_src_variant *variant;
> +
> +	sky1src =3D devm_kzalloc(dev, sizeof(*sky1src), GFP_KERNEL);
> +	if (!sky1src)
> +		return -ENOMEM;
> +
> +	variant =3D of_device_get_match_data(dev);
> +
> +	sky1src->regmap =3D device_node_to_regmap(dev->of_node);
> +	if (IS_ERR(sky1src->regmap)) {
> +		dev_err(dev, "Unable to get sky1-src regmap");
> +		return PTR_ERR(sky1src->regmap);

This can be simplified with dev_err_probe().

regards
Philipp

