Return-Path: <devicetree+bounces-269293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AZCN12woWmMvgQAu9opvQ
	(envelope-from <devicetree+bounces-269293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:55:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BDB1B94E7
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:55:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B53A6314527A
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 009F242B725;
	Fri, 27 Feb 2026 14:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNHx9uzj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD0C429834;
	Fri, 27 Feb 2026 14:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772204002; cv=none; b=HfoRtqmPykclzQvyhtaFhZXunjKQ+rJi7bvyV3iPUZfP7TFcoyxrJZvlOdoILIlTroUS6bidPzjB+C32aycN09QfJEjd0iFMKoqkwKtbJbXAIK0Ozki08FmgPnvC11GkxC6dx9gcpt3h4iLld+ezZ0HH9ysrCrUDgu/WspbrxvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772204002; c=relaxed/simple;
	bh=ld7NR675p8M5i366cnAgjhmDv51p+1WaNWwPE8ixVMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KQmDDzF/Y9RRLxX9vMw5oh6M2iCtYBwB3lVQ+b7BqRye6MtLynpeiHFp/pDTjmk7l+hhltIeAQcdOlsDEqJyUKZkSiZx6uLOvxUwvJOzhqZ9WXsMffQSMkS6Jfj8v0j0xqyEFJ22PnNeY0NG8OQdhWhvmeq6pmBl9ssZvT4FXjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNHx9uzj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D099C2BC9E;
	Fri, 27 Feb 2026 14:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772204002;
	bh=ld7NR675p8M5i366cnAgjhmDv51p+1WaNWwPE8ixVMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KNHx9uzj6ZyzCtHaKb4X2/uUbngS3GRRKfIFQBMUUUyQcfDdMJjXyhoDET2GwXoU9
	 tw6lz0GtjSQ5zymFWPwDZrCiU3t3aDLIAExSZmeBf1Zt//0SW2LeNuv1uuVksWcZvZ
	 Z7ql7nceE/JolyD6oqdDCGwPTx8t0Ao4gkUQFHtI7Z8tcenwS2k4NqrMr+bzi+WfkH
	 nX57vvuaxkD+zKPdBzgzB3inGqV5kFbtqcTekEqY4HJwlq9dGFD0RMkqlKV9M9cAKR
	 2mQVuNLRwK0UrmY03QLfHiwNEUw+xpRAgneTVjhPKJKpct/JeCUt4wAiScsFmUUjsh
	 Oyr65Nsmc0ZSw==
Date: Fri, 27 Feb 2026 20:23:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tzu-Hao Wei <twei@axiado.com>
Cc: SriNavmani A <srinavmani@axiado.com>,
	Prasad Bolisetty <pbolisetty@axiado.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
Subject: Re: [PATCH v2 2/4] phy: axiado: add Axiado eMMC PHY driver
Message-ID: <aaGv3q8czkrKyW42@vaman>
References: <20260206-axiado-ax3000-add-emmc-phy-driver-support-v2-0-a2f59e97a92d@axiado.com>
 <20260206-axiado-ax3000-add-emmc-phy-driver-support-v2-2-a2f59e97a92d@axiado.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260206-axiado-ax3000-add-emmc-phy-driver-support-v2-2-a2f59e97a92d@axiado.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269293-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,axiado.com:email]
X-Rspamd-Queue-Id: 44BDB1B94E7
X-Rspamd-Action: no action

On 06-02-26, 16:22, Tzu-Hao Wei wrote:
> From: SriNavmani A <srinavmani@axiado.com>
> 
> It provides the required configurations for Axiado eMMC PHY driver for
> HS200 mode.
> 
> Signed-off-by: SriNavmani A <srinavmani@axiado.com>
> Co-developed-by: Prasad Bolisetty <pbolisetty@axiado.com>
> Signed-off-by: Prasad Bolisetty <pbolisetty@axiado.com>
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
> ---
>  drivers/phy/Kconfig                  |   1 +
>  drivers/phy/Makefile                 |   1 +
>  drivers/phy/axiado/Kconfig           |  11 ++
>  drivers/phy/axiado/Makefile          |   1 +
>  drivers/phy/axiado/phy-axiado-emmc.c | 221 +++++++++++++++++++++++++++++++++++
>  5 files changed, 235 insertions(+)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 678dd0452f0aa0597773433f04d2a9ba77474d2a..b802274ea45a84bd36d7c0b7fb90e368a5c018b4 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -103,6 +103,7 @@ config PHY_NXP_PTN3222
>  
>  source "drivers/phy/allwinner/Kconfig"
>  source "drivers/phy/amlogic/Kconfig"
> +source "drivers/phy/axiado/Kconfig"
>  source "drivers/phy/broadcom/Kconfig"
>  source "drivers/phy/cadence/Kconfig"
>  source "drivers/phy/freescale/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index bfb27fb5a494283d7fd05dd670ebd1b12df8b1a1..f1b9e4a8673bcde3fdc0fdc06a3deddb5785ced1 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -15,6 +15,7 @@ obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
>  obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
>  obj-y					+= allwinner/	\
>  					   amlogic/	\
> +					   axiado/	\
>  					   broadcom/	\
>  					   cadence/	\
>  					   freescale/	\
> diff --git a/drivers/phy/axiado/Kconfig b/drivers/phy/axiado/Kconfig
> new file mode 100644
> index 0000000000000000000000000000000000000000..d159e0345345987c7f48dcd12d3237997735d2b5
> --- /dev/null
> +++ b/drivers/phy/axiado/Kconfig
> @@ -0,0 +1,11 @@
> +#
> +# PHY drivers for Axiado platforms
> +#
> +
> +config PHY_AX3000_EMMC
> +	tristate "Axiado eMMC PHY driver"
> +	depends on OF && (ARCH_AXIADO || COMPILE_TEST)
> +	select GENERIC_PHY
> +	help
> +	  Enables this to support for the AX3000 EMMC PHY driver.
> +	  If unsure, say N.
> diff --git a/drivers/phy/axiado/Makefile b/drivers/phy/axiado/Makefile
> new file mode 100644
> index 0000000000000000000000000000000000000000..1e2b1ba016092eaffdbd7acbd9cdc8577d79b35c
> --- /dev/null
> +++ b/drivers/phy/axiado/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_PHY_AX3000_EMMC)		+= phy-axiado-emmc.o
> diff --git a/drivers/phy/axiado/phy-axiado-emmc.c b/drivers/phy/axiado/phy-axiado-emmc.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..28d2a30c3b35ee7dba917487959e226941e8ea4b
> --- /dev/null
> +++ b/drivers/phy/axiado/phy-axiado-emmc.c
> @@ -0,0 +1,221 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Axiado eMMC PHY driver
> + *
> + * Copyright (C) 2017 Arasan Chip Systems Inc.
> + * Copyright (C) 2022-2025 Axiado Corporation (or its affiliates).

2026

> + *
> + * Based on Arasan Driver (sdhci-pci-arasan.c)
> + * sdhci-pci-arasan.c - Driver for Arasan PCI Controller with integrated phy.
> + */
> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +
> +/* Arasan eMMC 5.1 - PHY configuration registers */
> +#define CAP_REG_IN_S1_LSB		0x00
> +#define CAP_REG_IN_S1_MSB		0x04
> +#define PHY_CTRL_1			0x38
> +#define PHY_CTRL_2			0x3C

smaller hex case please, here and other places

> +#define PHY_CTRL_3			0x40
> +#define STATUS				0x50
> +
> +#define DLL_ENBL	BIT(26)
> +#define RTRIM_EN	BIT(21)
> +#define PDB_ENBL	BIT(23)
> +#define RETB_ENBL	BIT(1)
> +
> +#define REN_STRB	BIT(27)
> +#define REN_CMD		BIT(12)
> +#define REN_DAT0	BIT(13)
> +#define REN_DAT1	BIT(14)
> +#define REN_DAT2	BIT(15)
> +#define REN_DAT3	BIT(16)
> +#define REN_DAT4	BIT(17)
> +#define REN_DAT5	BIT(18)
> +#define REN_DAT6	BIT(19)
> +#define REN_DAT7	BIT(20)
> +#define REN_CMD_EN	(REN_CMD | REN_DAT0 | REN_DAT1 | REN_DAT2 | \
> +		REN_DAT3 | REN_DAT4 | REN_DAT5 | REN_DAT6 | REN_DAT7)
> +
> +/* Pull-UP Enable on CMD Line */
> +#define PU_CMD		BIT(3)
> +#define PU_DAT0		BIT(4)
> +#define PU_DAT1		BIT(5)
> +#define PU_DAT2		BIT(6)
> +#define PU_DAT3		BIT(7)
> +#define PU_DAT4		BIT(8)
> +#define PU_DAT5		BIT(9)
> +#define PU_DAT6		BIT(10)
> +#define PU_DAT7		BIT(11)
> +#define PU_CMD_EN (PU_CMD | PU_DAT0 | PU_DAT1 | PU_DAT2 | PU_DAT3 | \
> +		PU_DAT4 | PU_DAT5 | PU_DAT6 | PU_DAT7)

The bit define are used only once, why not define the cmd with
respective bits here

> +
> +/* Selection value for the optimum delay from 1-32 output tap lines */
> +#define OTAP_DLY	0x02
> +/* DLL charge pump current trim default [1000] */
> +#define DLL_TRM_ICP	0x08
> +/* Select the frequency range of DLL Operation */
> +#define FRQ_SEL	0x01
> +
> +#define OTAP_SEL_MASK		GENMASK(10, 7)
> +#define DLL_TRM_MASK		GENMASK(25, 22)
> +#define DLL_FRQSEL_MASK		GENMASK(27, 25)
> +
> +#define OTAP_SEL(x)		(FIELD_PREP(OTAP_SEL_MASK, x) | OTAPDLY_EN)
> +#define DLL_TRM(x)		(FIELD_PREP(DLL_TRM_MASK, x) | DLL_ENBL)
> +#define DLL_FRQSEL(x)	FIELD_PREP(DLL_FRQSEL_MASK, x)
> +
> +#define OTAPDLY_EN	BIT(11)
> +
> +#define SEL_DLY_RXCLK	BIT(18)
> +#define SEL_DLY_TXCLK	BIT(19)
> +
> +#define CALDONE_MASK	0x40
> +#define DLL_RDY_MASK	0x1
> +#define MAX_CLK_BUF0	BIT(20)
> +#define MAX_CLK_BUF1	BIT(21)
> +#define MAX_CLK_BUF2	BIT(22)
> +
> +#define CLK_MULTIPLIER	0xC008E
> +#define POLL_TIMEOUT_MS	3000
> +#define POLL_DELAY_US	100
> +
> +struct axiado_emmc_phy {
> +	void __iomem *reg_base;
> +	struct device *dev;
> +};
> +
> +static int axiado_emmc_phy_init(struct phy *phy)
> +{
> +	struct axiado_emmc_phy *ax_phy = phy_get_drvdata(phy);
> +	struct device *dev = ax_phy->dev;
> +	u32 val;
> +	int ret;
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_1);
> +	writel(val | RETB_ENBL | RTRIM_EN, ax_phy->reg_base + PHY_CTRL_1);
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_3);
> +	writel(val | PDB_ENBL, ax_phy->reg_base + PHY_CTRL_3);
> +
> +	ret = readl_poll_timeout(ax_phy->reg_base + STATUS, val,
> +				 val & CALDONE_MASK, POLL_DELAY_US,
> +				 POLL_TIMEOUT_MS * 1000);
> +	if (ret) {
> +		dev_err(dev, "PHY calibration timeout\n");
> +		return ret;
> +	}
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_1);
> +	writel(val | REN_CMD_EN | PU_CMD_EN, ax_phy->reg_base + PHY_CTRL_1);
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_2);
> +	writel(val | REN_STRB, ax_phy->reg_base + PHY_CTRL_2);
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_3);
> +	writel(val | MAX_CLK_BUF0 | MAX_CLK_BUF1 | MAX_CLK_BUF2,
> +	       ax_phy->reg_base + PHY_CTRL_3);
> +
> +	writel(CLK_MULTIPLIER, ax_phy->reg_base + CAP_REG_IN_S1_MSB);
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_3);
> +	writel(val | SEL_DLY_RXCLK | SEL_DLY_TXCLK,
> +	       ax_phy->reg_base + PHY_CTRL_3);
> +
> +	return 0;
> +}
> +
> +static int axiado_emmc_phy_power_on(struct phy *phy)
> +{
> +	struct axiado_emmc_phy *ax_phy = phy_get_drvdata(phy);
> +	struct device *dev = ax_phy->dev;
> +	u32 val;
> +	int ret;
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_1);
> +	writel(val | RETB_ENBL, ax_phy->reg_base + PHY_CTRL_1);
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_3);
> +	writel(val | PDB_ENBL, ax_phy->reg_base + PHY_CTRL_3);
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_2);
> +	writel(val | OTAP_SEL(OTAP_DLY), ax_phy->reg_base + PHY_CTRL_2);
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_1);
> +	writel(val | DLL_TRM(DLL_TRM_ICP), ax_phy->reg_base + PHY_CTRL_1);
> +
> +	val = readl(ax_phy->reg_base + PHY_CTRL_3);
> +	writel(val | DLL_FRQSEL(FRQ_SEL), ax_phy->reg_base + PHY_CTRL_3);
> +
> +	ret = read_poll_timeout(readl, val, val & DLL_RDY_MASK, POLL_DELAY_US,
> +				POLL_TIMEOUT_MS * 1000, false,
> +				ax_phy->reg_base + STATUS);
> +	if (ret) {
> +		dev_err(dev, "DLL ready timeout\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops axiado_emmc_phy_ops = {
> +	.init = axiado_emmc_phy_init,
> +	.power_on = axiado_emmc_phy_power_on,

no power_off?

-- 
~Vinod

