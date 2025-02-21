Return-Path: <devicetree+bounces-149277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FDAA3EF93
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 10:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19C3A188F756
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D1E92036F9;
	Fri, 21 Feb 2025 09:08:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA71202C38
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 09:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740128899; cv=none; b=ryTh2uPPgxhgWq9IzGWQANz0JEm+eKyQuDemYEbiholBBQXxdMeepl8zkK8RDGOUhpURitxp/x9GcwOglxnobvr80P/6bgryGKoPKgMRExZLsR9M1KeMfxh6pgELkC8yZ4kP07+HES6pPg/JNRXU51bPnrcbC+8XTn+TE2R3pL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740128899; c=relaxed/simple;
	bh=aLhpoR2Qz3WvtScp8s0/CscGnBuMdFhEXXNXBzl3Hq4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mwzAN8q16L46n+jIbcOIxoWft5bwXIfEtMZ5cN2gVSNzzLQ6ObCGOhpBCcBNkqYp4UZhOExrjzUAAa2nF7itN4kxKYR68R8hEJfiWEi6MJ9gSCLxqQrJx4E0VFJfoRrjmojmTsm1XaG6NnoJ3tVMNE3o7i8HqNiFOIeyxlYk1OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tlP0n-0006M5-JE; Fri, 21 Feb 2025 10:07:57 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tlP0k-0024nY-2Z;
	Fri, 21 Feb 2025 10:07:54 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tlP0k-0002L0-29;
	Fri, 21 Feb 2025 10:07:54 +0100
Message-ID: <d31a48ebfc0f91de615af75e313caa6afbdd597d.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] PCI: sophgo-dwc: Add Sophgo SG2044 PCIe driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Inochi Amaoto <inochiama@gmail.com>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?=
 <kw@linux.com>,  Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Niklas Cassel <cassel@kernel.org>,  Shashank Babu
 Chinta Venkata <quic_schintav@quicinc.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li
	 <looong.bin@gmail.com>
Date: Fri, 21 Feb 2025 10:07:54 +0100
In-Reply-To: <20250221013758.370936-3-inochiama@gmail.com>
References: <20250221013758.370936-1-inochiama@gmail.com>
	 <20250221013758.370936-3-inochiama@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
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

On Fr, 2025-02-21 at 09:37 +0800, Inochi Amaoto wrote:
> Add support for DesignWare-based PCIe controller in SG2044 SoC.
>=20
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  drivers/pci/controller/dwc/Kconfig          |  10 +
>  drivers/pci/controller/dwc/Makefile         |   1 +
>  drivers/pci/controller/dwc/pcie-dw-sophgo.c | 282 ++++++++++++++++++++
>  3 files changed, 293 insertions(+)
>  create mode 100644 drivers/pci/controller/dwc/pcie-dw-sophgo.c
>=20
[...]
> diff --git a/drivers/pci/controller/dwc/pcie-dw-sophgo.c b/drivers/pci/co=
ntroller/dwc/pcie-dw-sophgo.c
> new file mode 100644
> index 000000000000..a4ca4f1e26e0
> --- /dev/null
> +++ b/drivers/pci/controller/dwc/pcie-dw-sophgo.c
> @@ -0,0 +1,282 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PCIe host controller driver for Sophgo SoCs.
> + *
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/irqchip/chained_irq.h>
> +#include <linux/irqdomain.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/phy/phy.h>
> +#include <linux/property.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>

Drop this ...

> +
> +#include "pcie-designware.h"
> +
> +#define to_sophgo_pcie(x)		dev_get_drvdata((x)->dev)
> +
> +#define PCIE_INT_SIGNAL			0xc48
> +#define PCIE_INT_EN			0xca0
> +
> +#define PCIE_SIGNAL_INTX_SHIFT		5
> +
> +#define PCIE_INT_EN_INTX_SHIFT		1
> +#define PCIE_INT_EN_INT_SII		BIT(0)
> +#define PCIE_INT_EN_INT_INTA		BIT(1)
> +#define PCIE_INT_EN_INT_INTB		BIT(2)
> +#define PCIE_INT_EN_INT_INTC		BIT(3)
> +#define PCIE_INT_EN_INT_INTD		BIT(4)
> +#define PCIE_INT_EN_INT_MSI		BIT(5)
> +
> +struct sophgo_pcie {
> +	struct dw_pcie pci;
> +	void __iomem *app_base;
> +	struct clk_bulk_data *clks;
> +	unsigned int clk_cnt;
> +	struct reset_control *rst;

... and this. It is unused.


regards
Philipp

