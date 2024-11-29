Return-Path: <devicetree+bounces-122655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4459D1CE1
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 02:02:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A803CB21383
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 01:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4700C200CB;
	Tue, 19 Nov 2024 01:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="SSL5OvTo"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D69A93D
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 01:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731978153; cv=none; b=GL2wmtzrFEmem8fUiLY2/R9588XlTXfhjTstnbYUGxcOlnXgE0PBB1LQ5K9+4fgwhA8eh3kYpT1U+dHZ32cFoDzG+wusXHss9Pxv6uVVKkAuxoIGazshKr23QFX60BRn0r9l6gIgIS76LVsbxJ5MHYxMYMOhT4pYv6Z2hq3Fnps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731978153; c=relaxed/simple;
	bh=BZ4KiRgocvh7f4B4BW5PKSx7f0JYl5FiBTRzrLvDFaQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=tp89Mt86R3HBtg+ISCduGhw2NQ7//06BiFgza8Aq4Tov/ITrL3POsn8FtxKK8WkVJ0mZjW00XWfqAye+xkH6BK8h2e3hNsxX4bTp6eH7mAI9BxL4uytXJMr2ZASNCZRy49hvRJHdcqZ2kwLy2fKTfMJNlHPdVQ0JHc3t+uYFNRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=SSL5OvTo; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 8B7532C035A;
	Tue, 19 Nov 2024 14:02:27 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1731978147;
	bh=8LU64DIu2Bu5jpW1jn8umOMUFQCUfyz8X7nA1sSY5hE=;
	h=Date:From:Subject:To:References:In-Reply-To:From;
	b=SSL5OvToECW/xR0TYJpZJtWnqevHWNRptRf1kUjMsmoq9CjoQWyAg3dISfjU416tA
	 lWqgcZcN4PL85NUIXY1qt6XYTK4OvMylljg5/wMcSaNt4ZRWqPslCSbPjVlNrjVSPf
	 96e+0t4szfhmxzNKDvcnRh76LgSCz2sVedYcVMsGdE9SE//85CmGPs42qgJk9ppihm
	 gCYNVeGIwuswJDH0wvuoeRdA7+UdvcmTHvhEfW18gNBv5rCVwpm7o3T3rlkh01HCsA
	 0p6nX3q1hoStkbQVrIfcNCksuBCSskNk46fFkNyPzGFwvxeMgKaFhG2XtcLmGQ9m0Y
	 kXvb/8OZhXVOw==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B673be3a30000>; Tue, 19 Nov 2024 14:02:27 +1300
Received: from [10.33.22.30] (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 5C6D513EDD7;
	Tue, 19 Nov 2024 14:02:27 +1300 (NZDT)
Message-ID: <94bd6f0b-c982-492e-af2f-b92fb53e0522@alliedtelesis.co.nz>
Date: Tue, 19 Nov 2024 14:02:27 +1300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
To: Markus Stockhausen <markus.stockhausen@gmx.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
 <20241017162400.3881609-3-markus.stockhausen@gmx.de>
Content-Language: en-US
In-Reply-To: <20241017162400.3881609-3-markus.stockhausen@gmx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Gam0nhXL c=1 sm=1 tr=0 ts=673be3a3 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=IkcTkHD0fZMA:10 a=VlfZXiiP6vEA:10 a=sNsHWNkWwW_PPySh2wYA:9 a=yXdWDY-migExFgkA:21 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Hi Markus,

On 18/10/24 05:24, Markus Stockhausen wrote:
> The Realtek Otto platform is a series of 4 different MIPS32 based network
> switch SoCs. They consist of:
>
>   - RTL838x: 500MHz single core, up to 28 ports 20GBps switching capacity
>   - RTL839x: 700MHz single core, up to 52 ports 100GBps switching capacity
>   - RTL930x: 700MHz single core, up to 28 ports 120GBps switching capacity
>   - RTL931x: 1.0GHz dual core, up to 52 ports 170GBps switching capacity
>
> The SoCs have 6-14 SerDes that provide the interconnect between several
> one, quad or octa port attached transceivers like the RTL8214FC.
>
> This driver builts on top of several GPL source drops from different switch
> vendors and harmonizes the different programming models. The common basics
> are:
>
>   - A SerDes is controlled through registers that are organized into pages
>   - A page consists of 32x 16 bit registers that cover various functions
>   - Registers are either accessed through I/O addresses or an MDIO style bus
>   - The SerDes operate on different MII variants (mostly QSGMII & XGMII)
>
> While some of the pages have meaningful names the registers within a page
> cannot be identified. Use 2 digit hex notation for a consistent register
> access in the code and debug interface.
>
> The SerDes rely on heavy register modifications with lots of undocumented
> features. This is even hardware specific (board, transceivers, ...) and
> developers may not have access to all devices. Provide a debug interface
> that allows to access the most important internals. With that patching
> sequences can be developed that can be fed back as firmware files into
> the driver.
>
> Examples of other drivers with similar reset/register interfaces are:
>
>   - gpu/drm/msm/adreno/a5xx_debugfs.c
>   - gpu/drm/i915/i915_debugfs_params.c
>   - gpu/drm/armada/armada_debugfs.c
>
> Signed-off-by: Markus Stockhausen<markus.stockhausen@gmx.de>
> ---
>
> Changes in v5:
>
>   - fix typos and punctuation in comments
>
> Changes in v4:
>
>   - drop hardcoded firmware name fallback
>   - drop fwname from ctrl & conf structures as it is no longer used
>   - fix kernel test robot warning about dev_info & size_t
>
> Changes in v3:
>
> REMARK FOR REVIEW! Because of helpful feedback and the problems that can
> arise from different hardware designs and device configurations this patch
> version was overhauled in several places. From now on patches can be
> applied that are loaded from firmware files. For this a lot of locations
> have been hardened to ensure that hardware is instructed the right way.
> This allows for easier adaption and bug analysis when moving forward with
> this driver in the future. So some changes might differ from the feedback
> for v2.
>
>   - designed/explained meaningful firmware format
>   - converted patch sequences to be firmware loadable
>   - determine/print chip version to verify DT compatibility
>   - consolidated/simplified reset code paths
>   - verify input in debug interface
>   - added page names in code where known & possible
>   - add multiple helpers for cleaner code
>   - add possibility to modify registers from debug interface
>   - fixed kernel buildbot warnings
>   - changed comments to imperative style
>   - recipient list according to get_maintainers
>
> Changes in v2:
>
>   - switched logic to internal patch sequences
>   - added setup sequences for RTL838x and RTL839x
>   - moved includes from header to source file
>   - added helpers for better readability
>
> ---
>   drivers/phy/realtek/Kconfig               |   10 +
>   drivers/phy/realtek/Makefile              |    1 +
>   drivers/phy/realtek/phy-rtk-otto-serdes.c | 1355 +++++++++++++++++++++
>   drivers/phy/realtek/phy-rtk-otto-serdes.h |  169 +++
>   4 files changed, 1535 insertions(+)
>   create mode 100644 drivers/phy/realtek/phy-rtk-otto-serdes.c
>   create mode 100644 drivers/phy/realtek/phy-rtk-otto-serdes.h
>
> diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
> index 75ac7e7c31ae..021b4c4e700a 100644
> --- a/drivers/phy/realtek/Kconfig
> +++ b/drivers/phy/realtek/Kconfig
> @@ -30,3 +30,13 @@ config PHY_RTK_RTD_USB3PHY
>   	  of the parameters.
>
>   endif # ARCH_REALTEK || COMPILE_TEST
> +
> +config PHY_RTK_OTTO_SERDES
> +	tristate "SerDes driver for the Realtek Otto platform"
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support Realtek SerDes in the RTL83xx and
> +	  RTL93xx network SoCs. These are based on MIPS32 architecture
> +	  and the SerDes connect to one to octa transceivers to build
> +	  up switches with up to 52 ports.
> diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
> index ed7b47ff8a26..34e607f33961 100644
> --- a/drivers/phy/realtek/Makefile
> +++ b/drivers/phy/realtek/Makefile
> @@ -1,3 +1,4 @@
>   # SPDX-License-Identifier: GPL-2.0
>   obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)	+= phy-rtk-usb2.o
>   obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)	+= phy-rtk-usb3.o
> +obj-$(CONFIG_PHY_RTK_OTTO_SERDES)	+= phy-rtk-otto-serdes.o
> diff --git a/drivers/phy/realtek/phy-rtk-otto-serdes.c b/drivers/phy/realtek/phy-rtk-otto-serdes.c
> new file mode 100644
> index 000000000000..c2b3197dc566
> --- /dev/null
> +++ b/drivers/phy/realtek/phy-rtk-otto-serdes.c
> @@ -0,0 +1,1355 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
> + * Copyright (c) 2024 Markus Stockhausen<markus.stockhausen@gmx.de>
> + */
> +
> +#include <linux/crc32.h>
> +#include <linux/debugfs.h>
> +#include <linux/delay.h>
> +#include <linux/firmware.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +
> +#include "phy-rtk-otto-serdes.h"
> +
> +/*
> + * A Realtek Otto SerDes is configured/patched by writing specific values into its registers.
> + * These values are bound to the individual hardware and the transceivers that are connected to
> + * it. Depending on the model, some of this might be integrated into the bootloader. To fully
> + * support different configurations allow the driver to load firmware files and run patch
> + * sequences.
> + *
> + * A firmware file contains a head, a directory and at the end the raw patch data. See
> + * structure rtsds_fw_head, rtsds_fw_dir an rtsds_fw_seq for more details.
> + *
> + * header
> + *	(u32) magic = 0x83009300, see RTSDS_FW_MAGIC
> + *	(u32) CRC checksum of the following data
> + *	(u32) filesize
> + *	(u32) directory size = number of sequences
> + *
> + * directory with n elements consisting of
> + *	(u32) id of the sequence. See RTSDS_FW_EVT_xxx
> + *	(u32) offset of patch data for this directory entry
> + *
> + * patch data with x elements consisting of
> + *	(u16) action to process. See RTSDS_FW_OP_xxx
> + *	(u16) mode for which the command is to be executed. See RTSDS_FW_MODE_xxx
> + *	(u16) SerDes ports bitmask for which the command is to be executed
> + *	(u16) page for action
> + *	(u16) register for action
> + *	(u16) value for action
> + *	(u16) mask for write operations
> + *	(u16) future use to avoid structure breakage
> + */

Did you create any tooling for generating these or extracting them from 
a vendor code/binary drop?

> +
> +static const char *rtsds_fw_events[RTSDS_FW_EVT_CNT] = {
> +	[RTSDS_FW_EVT_SETUP]		= "setup",
> +	[RTSDS_FW_EVT_INIT]		= "init",
> +	[RTSDS_FW_EVT_POWER_ON]		= "power-on",
> +	[RTSDS_FW_EVT_PRE_SET_MODE]	= "pre-set-mode",
> +	[RTSDS_FW_EVT_POST_SET_MODE]	= "post-set-mode",
> +	[RTSDS_FW_EVT_PRE_RESET]	= "pre-reset",
> +	[RTSDS_FW_EVT_POST_RESET]	= "post-reset",
> +	[RTSDS_FW_EVT_PRE_POWER_OFF]	= "pre-power-off",
> +	[RTSDS_FW_EVT_POST_POWER_OFF]	= "post-power-off",
> +};
> +
> +static const u8 rtsds_fw_modes[PHY_INTERFACE_MODE_MAX] = {
> +	[PHY_INTERFACE_MODE_NA]		= RTSDS_FW_MODE_ALL,
> +	[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_FW_MODE_QSGMII,
> +	[PHY_INTERFACE_MODE_XGMII]	= RTSDS_FW_MODE_XGMII,
> +	[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_FW_MODE_USXGMII,
> +	[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_FW_MODE_1000BASEX,
> +	[PHY_INTERFACE_MODE_2500BASEX]	= RTSDS_FW_MODE_2500BASEX,
> +	[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_FW_MODE_10GBASER,
> +};
> +
> +static int rtsds_fw_load(struct rtsds_ctrl *ctrl)
> +{
> +	struct rtsds_fw_head *h;
> +	u32 checksum;
> +	const char *msg;
> +	const char *fwname;
> +
> +	if (device_property_read_string(ctrl->dev, "firmware-name", &fwname)) {
> +		dev_info(ctrl->dev, "firmware not configured, patching disabled\n");
> +		return 0;
> +	}
> +
> +	if (firmware_request_nowarn(&ctrl->firmware, fwname, ctrl->dev) < 0) {
> +		msg = "not found";
> +		goto error;
> +	}
> +
> +	if (ctrl->firmware->size < 16) {
> +		msg = "size to small";
> +		goto error;
> +	}
> +
> +	h = (struct rtsds_fw_head *)ctrl->firmware->data;
> +	if (h->magic != RTSDS_FW_MAGIC) {
> +		msg = "magic mismatch";
> +		goto error;
> +	}
> +
> +	if (h->filesize != ctrl->firmware->size) {
> +		msg = "size mismatch";
> +		goto error;
> +	}
> +
> +	checksum = ~crc32(0xFFFFFFFFU, ctrl->firmware->data + 8, ctrl->firmware->size - 8);
> +	if (h->checksum != checksum) {
> +		msg = "checksum mismatch";
> +		goto error;
> +	}
> +
> +	dev_info(ctrl->dev, "firmware %s: loaded with %zu bytes, %d sequences\n",
> +		 fwname, ctrl->firmware->size, h->dirsize);
> +
> +	return 0;
> +error:
> +	dev_err(ctrl->dev, "firmware %s: %s, patching disabled\n", fwname, msg);
> +	ctrl->firmware = NULL;
> +	return -EINVAL;
> +}
> +
> +static struct rtsds_fw_seq *rtsds_fw_get_sequence(struct rtsds_ctrl *ctrl, int evt)
> +{
> +	int i;
> +	struct rtsds_fw_head *h;
> +
> +	if (!ctrl->firmware)
> +		return NULL;
> +
> +	h = (struct rtsds_fw_head *)ctrl->firmware->data;
> +	for (i = 0; i < h->dirsize; i++)
> +		if (h->dir[i].evtid == evt)
> +			return (struct rtsds_fw_seq *)(ctrl->firmware->data + h->dir[i].offset);
> +
> +	return NULL;
> +}
> +
> +static int rtsds_fw_run_event(struct rtsds_ctrl *ctrl, u32 sid, int evt)
> +{
> +	int ret, step = 1, delay = 0, mode = rtsds_fw_modes[ctrl->sds[sid].mode];
> +	struct rtsds_fw_seq *seq;
> +
> +	if (evt >= RTSDS_FW_EVT_CNT || sid >= ctrl->conf->sds_cnt)
> +		return -EINVAL;
> +
> +	seq = rtsds_fw_get_sequence(ctrl, evt);
> +	if (!seq)
> +		return 0;
> +
> +	while (seq->action != RTSDS_FW_OP_STOP) {
> +		if (!(seq->ports & BIT(sid)) ||
> +		    (seq->mode != RTSDS_FW_MODE_ALL && seq->mode != mode)) {
> +			step++;	seq++;
> +			continue;
> +		}
> +
> +		if (seq->action == RTSDS_FW_OP_WAIT)
> +			delay = seq->val;
> +
> +		if (delay) {
> +			dev_dbg(ctrl->dev, "%s/%03d: SDS %02d WAIT(%d)\n",
> +				rtsds_fw_events[evt], step, sid, delay);
> +
> +			usleep_range(delay << 10, (delay + 1) << 10);
> +		}
> +
> +		if (seq->action == RTSDS_FW_OP_MASK) {
> +			dev_dbg(ctrl->dev,
> +				"%s/%03d: SDS %02d MASK(0x%04x, 0x%04x, 0x%04x, 0x%04x, 0x%04x, 0x%04x)\n",
> +				rtsds_fw_events[evt], step, sid, seq->mode, seq->ports,
> +				seq->page, seq->reg, seq->val, seq->mask);
> +
> +			ret = ctrl->conf->mask(ctrl, sid, seq->page,
> +					       seq->reg, seq->val, seq->mask);
> +			if (ret) {
> +				dev_err(ctrl->dev,
> +					"sequence %s failed for SerDes %d at step %d, rc=%d",
> +					rtsds_fw_events[evt], sid, step, ret);
> +				return -EIO;
> +			}
> +		}
> +
> +		step++; seq++;
> +	}
> +
> +	return 0;
> +}
> +
> +/* common helpers */
> +
> +static inline bool rtsds_invalid_reg(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	return (sid >= ctrl->conf->sds_cnt || page >= ctrl->conf->page_cnt || reg > 31);
> +}
> +
> +static inline bool rtsds_invalid_sds(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	return (sid >= ctrl->conf->sds_cnt);
> +}
> +
> +static inline bool rtsds_invalid_mask(u32 val, u32 mask)
> +{
> +	return (val & mask) != val;
> +}
> +
> +static int rtsds_hwmode_to_phymode(struct rtsds_ctrl *ctrl, int hwmode)
> +{
> +	for (int m = 0; m < PHY_INTERFACE_MODE_MAX; m++)
> +		if (ctrl->conf->mode_map[m] == hwmode)
> +			return m;
> +
> +	return PHY_INTERFACE_MODE_MAX;
> +}
> +
> +static void rtsds_get_chip(struct rtsds_ctrl *ctrl)
> +{
> +	u32 val, shift = 28;
> +	void __iomem __force *reg;
> +
> +	if (ctrl->conf->family == RTSDS_838X_FAMILY)
> +		reg = RTSDS_838X_MODEL_NAME_INFO;
> +	else if (ctrl->conf->family == RTSDS_839X_FAMILY)
> +		reg = RTSDS_839X_MODEL_NAME_INFO;
> +	else {
> +		reg = RTSDS_93XX_MODEL_NAME_INFO;
> +		shift = 16;
> +	}
> +
> +	val = ioread32(reg);
> +	ctrl->soc.model_id = val >> 16;
> +	ctrl->soc.model_version = (val >> 11) & 0x1f;
> +
> +	iomask32(0xf << shift, 0xa << shift, reg + 4);
> +	val = ioread32(reg + 4);
> +	ctrl->soc.chip_id = val & 0xffff;
> +	ctrl->soc.chip_version = (val >> (44 - shift)) & 0x1f;
> +
> +	snprintf(ctrl->soc.model_name, sizeof(ctrl->soc.model_name),
> +		 "RTL%04X%c", ctrl->soc.model_id,
> +		 ctrl->soc.model_version ? ctrl->soc.model_version + 64 : 0);
> +
> +	snprintf(ctrl->soc.chip_name, sizeof(ctrl->soc.chip_name),
> +		 "%04X%c", ctrl->soc.chip_id,
> +		 ctrl->soc.chip_version ? ctrl->soc.chip_version + 64 : 0);
> +}
> +
> +/* common RTL838x and RTL839x helpers */
> +
> +static inline int rtsds_83xx_sds_5g(u32 sid)
> +{
> +	return 0xcff & BIT(sid);
> +}
> +
> +static void rtsds_83xx_rx_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	u32 page, reg, bits, sds5g = rtsds_83xx_sds_5g(sid);
> +
> +	if (sds5g) {
> +		/* RTL838x or RTL839x 5G SerDes */
> +		page = RTSDS_PAGE_SDS_EXT;
> +		reg = 0x09;
> +		bits = RTSDS_BIT_RX_SELF;
> +	} else if (sid == 8 || sid == 12) {
> +		/* RTL839x 10G SerDes */
> +		page = RTSDS_PAGE_ANA_TG_EXT;
> +		reg = 0x00;
> +		bits = RTSDS_BIT_RX_SELF_10G;
> +	} else
> +		return;
> +
> +	ctrl->conf->mask(ctrl, sid, page, reg, bits, bits);
> +	usleep_range(100000, 101000);
> +	ctrl->conf->mask(ctrl, sid, page, reg, 0, bits);
> +}
> +
> +static void rtsds_83xx_digital_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int bits;
> +
> +	/* soft reset */
> +	bits = RTSDS_BIT_SOFT_RST;
> +	ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS, 0x03, bits, bits);
> +	usleep_range(100000, 101000);
> +	ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS, 0x03, 0, bits);
> +
> +	/* SerDes RX/TX reset */
> +	bits = RTSDS_BIT_SDS_EN_RX | RTSDS_BIT_SDS_EN_TX;
> +	ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS, 0x00, 0, bits);
> +	ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS, 0x00, bits, bits);
> +}
> +
> +static void rtsds_83xx_cmu_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int  mask, shift, hi = sid | 1, sds5g = rtsds_83xx_sds_5g(sid);
> +
> +	if (ctrl->conf->family == RTSDS_838X_FAMILY) {
> +		/* 5G SerDes sequence for register with bits CMU_EN, RXEN, PDOWN */
> +		ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS_EXT, 0x00, 0x4040, 0xffff);
> +		ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS_EXT, 0x00, 0x4740, 0xffff);
> +		ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS_EXT, 0x00, 0x47c0, 0xffff);
> +		ctrl->conf->mask(ctrl, sid, RTSDS_PAGE_SDS_EXT, 0x00, 0x4000, 0xffff);
> +	} else if (sds5g) {
> +		shift = 4 + ((sid & 1) << 2);
> +		mask = 3 << shift;
> +		/* 5G SerDes sequence for undocumented shared CMU register at offset 0x3C0 */
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_RG_EXT, 0x01, 1 << shift, mask);
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_RG_EXT, 0x01, 3 << shift, mask);
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_RG_EXT, 0x01, 0, mask);
> +	} else {
> +		shift = (sid & 1) << 2;
> +		mask = 3 << shift;
> +		/* 10G SerDes sequence for undocumented shared CMU register at offset 0x3F8 */
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_TG_EXT, 0x1d, 1 << shift, mask);
> +		usleep_range(500000, 501000);
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_TG_EXT, 0x1d, 3 << shift, mask);
> +		ctrl->conf->mask(ctrl, hi, RTSDS_PAGE_ANA_TG_EXT, 0x1d, 0, mask);
> +	}
> +}
> +
> +static int rtsds_83xx_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_83xx_rx_reset(ctrl, sid);
> +	rtsds_83xx_cmu_reset(ctrl, sid);
> +	rtsds_83xx_digital_reset(ctrl, sid);
> +
> +	return 0;
> +}
> +
> +/* common RTL930x and RTL931x helpers */
> +
> +static inline int rtsds_rt93xx_io(struct rtsds_ctrl *ctrl, int cmd)
> +{
> +	int cnt = 100;
> +
> +	iowrite32(cmd | RTSDS_93XX_SDS_BUSY, ctrl->base);
> +	while (--cnt && (ioread32(ctrl->base) & RTSDS_93XX_SDS_BUSY))
> +		usleep_range(30, 60);
Could probably use some variation of readl_poll_timeout() here.
> +
> +	return cnt ? 0 : -EIO;
> +}
> +
> +static int rtsds_93xx_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	int cmd = (sid << 2) | (page << 7) | (reg << 13) | RTSDS_93XX_SDS_READ;
> +
> +	if (rtsds_rt93xx_io(ctrl, cmd))
> +		return -EIO;
> +
> +	return ioread32(ctrl->base + 4) & 0xffff;
> +}
> +
> +static int rtsds_93xx_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	int cmd = (sid << 2) | (page << 7) | (reg << 13) | RTSDS_93XX_SDS_WRITE;
> +
> +	if (mask != 0xffff) {
> +		int oldval = rtsds_93xx_read(ctrl, sid, page, reg);
> +
> +		if (oldval < 0)
> +			return -EIO;
> +		val |= oldval & ~mask;
> +	}
> +
> +	iowrite32(val, ctrl->base + 4);
> +	return rtsds_rt93xx_io(ctrl, cmd);
> +}
> +
> +static int rtsds_93xx_reset(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int ret, hwcur, hwoff, pwr = 0;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	if (ctrl->sds[sid].mode == PHY_INTERFACE_MODE_NA)
> +		return 0;
> +
> +	hwoff = ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA];
> +	hwcur = ctrl->conf->mode_map[ctrl->sds[sid].mode];
> +
> +	if (ctrl->conf->family == RTSDS_931X_FAMILY) {
> +		pwr = ioread32(RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
> +		iowrite32(pwr | BIT(sid), RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
> +	}
> +
> +	ret = ctrl->conf->set_hwmode(ctrl, sid, hwoff);
> +	if (!ret)
> +		ret = ctrl->conf->set_hwmode(ctrl, sid, hwcur);
> +
> +	if (ctrl->conf->family == RTSDS_931X_FAMILY)
> +		iowrite32(pwr, RTSDS_931X_PS_SERDES_OFF_MODE_CTRL);
> +
> +	return ret;
> +}
> +
> +/*
> + * The RTL838x has 6 SerDes. The 16 bit registers start at 0xbb00e780 and are mapped directly into
> + * 32 bit memory addresses. High 16 bits are always empty. A "lower" memory block serves pages 0/3
> + * a "higher" memory block pages 1/2.
> + */
> +
> +static int rtsds_838x_reg_offset(u32 sid, u32 page, u32 reg)
> +{
> +	if (page == 0 || page == 3)
> +		return (sid << 9) + (page << 7) + (reg << 2);
> +	else
> +		return 0xb80 + (sid << 8) + (page << 7) + (reg << 2);
> +}
> +
> +static int rtsds_838x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	int offs;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg))
> +		return -EINVAL;
> +
> +	offs = rtsds_838x_reg_offset(sid, page, reg);
> +
> +	/* read twice for link status latch */
> +	if (page == RTSDS_PAGE_FIB && reg == 0x01)
> +		ioread32(ctrl->base + offs);
> +
> +	return ioread32(ctrl->base + offs);
> +}
> +
> +static int rtsds_838x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	int offs;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	offs = rtsds_838x_reg_offset(sid, page, reg);
> +
> +	/* read twice for link status latch */
> +	if (page == RTSDS_PAGE_FIB && reg == 0x01)
> +		ioread32(ctrl->base + offs);
> +
> +	iomask32(mask, val, ctrl->base + offs);
> +
> +	return 0;
> +}
> +
> +static int rtsds_838x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
> +{
> +	int shift, mode = RTSDS_MODE(combomode), submode = RTSDS_SUBMODE(combomode);
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	if (sid >= 4) {
> +		shift = (sid - 4) * 3;
> +		iomask32(0x7 << shift, (submode & 0x7) << shift, RTSDS_838X_INT_MODE_CTRL);
> +	} else if (submode != 0)
> +		return -EINVAL;
> +
> +	shift = 25 - sid * 5;
> +	iomask32(0x1f << shift, (mode & 0x1f) << shift, RTSDS_838X_SDS_MODE_SEL);
> +
> +	return 0;
> +}
> +
> +static int rtsds_838x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int shift, mode, submode = 0;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	if (sid >= 4) {
> +		shift = (sid - 4) * 3;
> +		submode = (ioread32(RTSDS_838X_INT_MODE_CTRL) >> shift) & 0x7;
> +	}
> +
> +	shift = 25 - sid * 5;
> +	mode = (ioread32(RTSDS_838X_SDS_MODE_SEL) >> shift) & 0x1f;
> +
> +	return RTSDS_COMBOMODE(mode, submode);
> +}
> +
> +/*
> + * The RTL839x has 14 SerDes starting at 0xbb00a000. 0-7, 10, 11 are 5GBit, 8, 9, 12, 13 are
> + * 10GIt. Two adjacent SerDes are tightly coupled and share a 1024 bytes register area. Per 32 bit
10GIt -> 10GBit
> + * address two registers are stored. The first register is stored in the lower 2 bytes ("on the
> + * right" due to big endian) and the second register in the upper 2 bytes. We know the following
> + * register areas:
> + *
> + * - XSG0	(4 pages @ offset 0x000): for even SerDes
> + * - XSG1	(4 pages @ offset 0x100): for odd SerDes
> + * - TGRX	(4 pages @ offset 0x200): for even 10G SerDes
> + * - ANA_RG	(2 pages @ offset 0x300): for even 5G SerDes
> + * - ANA_RG	(2 pages @ offset 0x380): for odd 5G SerDes
> + * - ANA_TG	(2 pages @ offset 0x300): for even 10G SerDes
> + * - ANA_TG	(2 pages @ offset 0x380): for odd 10G SerDes
> + *
> + * The most consistent mapping that aligns to the RTL93xx devices is:
> + *
> + *		even 5G SerDes	odd 5G SerDes	even 10G SerDes	odd 10G SerDes
> + * Page 0:	XSG0/0		XSG1/0		XSG0/0		XSG1/0
> + * Page 1:	XSG0/1		XSG1/1		XSG0/1		XSG1/1
> + * Page 2:	XSG0/2		XSG1/2		XSG0/2		XSG1/2
> + * Page 3:	XSG0/3		XSG1/3		XSG0/3		XSG1/3
> + * Page 4:	<zero>		<zero>		TGRX/0		<zero>
> + * Page 5:	<zero>		<zero>		TGRX/1		<zero>
> + * Page 6:	<zero>		<zero>		TGRX/2		<zero>
> + * Page 7:	<zero>		<zero>		TGRX/3		<zero>
> + * Page 8:	ANA_RG		ANA_RG		<zero>		<zero>
> + * Page 9:	ANA_RG_EXT	ANA_RG_EXT	<zero>		<zero>
> + * Page 10:	<zero>		<zero>		ANA_TG		ANA_TG
> + * Page 11:	<zero>		<zero>		ANA_TG_EXT	ANA_TG_EXT
> + */
> +
> +static int rtsds_839x_reg_offset(u32 sid, u32 page, u32 reg)
> +{
> +	int offs = ((sid & 0xfe) << 9) + ((reg & 0xfe) << 1) + (page << 6);
> +	int sds5g = rtsds_83xx_sds_5g(sid);
> +
> +	if (page < 4)
> +		return offs + ((sid & 1) << 8);
> +	else if ((page & 4) && (sid == 8 || sid == 12))
> +		return offs + 0x100;
> +	else if (page >= 8 && page <= 9 && sds5g)
> +		return offs + 0x100 + ((sid & 1) << 7);
> +	else if (page >= 10 && !sds5g)
> +		return offs + 0x80 + ((sid & 1) << 7);
> +
> +	return -1; /* hole */
> +}
> +
> +static int rtsds_839x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	int offs, shift = (reg << 4) & 0x10;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg))
> +		return -EINVAL;
> +
> +	offs = rtsds_839x_reg_offset(sid, page, reg);
> +	if (offs < 0)
> +		return 0;
> +
> +	/* read twice for link status latch */
> +	if (page == RTSDS_PAGE_FIB && reg == 0x01)
> +		ioread32(ctrl->base + offs);
> +
> +	return (ioread32(ctrl->base + offs) >> shift) & 0xffff;
> +}
> +
> +static int rtsds_839x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	int oldval, offs;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	offs = rtsds_839x_reg_offset(sid, page, reg);
> +	if (offs < 0)
> +		return 0;
> +
> +	/* read twice for link status latch */
> +	if (page == RTSDS_PAGE_FIB && reg == 0x01)
> +		ioread32(ctrl->base + offs);
> +
> +	oldval = ioread32(ctrl->base + offs);
> +	val = reg & 1 ? (oldval & ~(mask << 16)) | (val << 16) : (oldval & ~mask) | val;
> +	iowrite32(val, ctrl->base + offs);
> +
> +	return 0;
> +}
> +
> +static int rtsds_839x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
> +{
> +	int shift = (sid & 7) << 2, offs = (sid >> 1) & ~3;
> +	int mode = RTSDS_MODE(combomode), submode = RTSDS_SUBMODE(combomode);
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_839x_mask(ctrl, sid, RTSDS_PAGE_SDS, 0x04, (submode << 12) & 0xf000, 0xf000);
> +	iomask32(0xf << shift, (mode & 0xf) << shift, RTSDS_839X_MAC_SERDES_IF_CTRL + offs);
> +
> +	return 0;
> +}
> +
> +static int rtsds_839x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int mode, submode, shift = (sid & 7) << 2, offs = (sid >> 1) & ~3;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	submode = (rtsds_839x_read(ctrl, sid, RTSDS_PAGE_SDS, 0x04) >> 12) & 0xf;
> +	mode = (ioread32(RTSDS_839X_MAC_SERDES_IF_CTRL + offs) >> shift) & 0xf;
> +
> +	return RTSDS_COMBOMODE(mode, submode);
> +}
> +
> +/*
> + * The RTL930x family has 12 SerdDes of three types. They are accessed through two IO registers at
> + * 0xbb0003b0 which simulate commands to an internal MDIO bus:
> + *
> + * - SerDes 0-1 exist on the RTL9301 and 9302B and are QSGMII capable
> + * - SerDes 2-9 are USXGMII capabable with either quad or single configuration
> + * - SerDes 10-11 are 10GBase-R capable
> + */
> +
> +static int rtsds_930x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg))
> +		return -EINVAL;
> +
> +	return rtsds_93xx_read(ctrl, sid, page, reg);
> +}
> +
> +static int rtsds_930x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	return rtsds_93xx_mask(ctrl, sid, page, reg, val, mask);
> +}
> +
> +static void rtsds_930x_mode_offset(int sid,
> +				   void __iomem __force **modereg, int *modeshift,
> +				   void __iomem __force **subreg, int *subshift)
> +{
> +	if (sid > 3) {
> +		*subreg = RTSDS_930X_SDS_SUBMODE_CTRL1;
> +		*subshift = (sid - 4) * 5;
> +	} else {
> +		*subreg = RTSDS_930X_SDS_SUBMODE_CTRL0;
> +		*subshift = (sid - 2) * 5;
> +	}
> +
> +	if (sid < 4) {
> +		*modeshift = sid * 6;
> +		*modereg = RTSDS_930X_SDS_MODE_SEL_0;
> +	} else if (sid < 8) {
> +		*modeshift = (sid - 4) * 6;
> +		*modereg = RTSDS_930X_SDS_MODE_SEL_1;
> +	} else if (sid < 10) {
> +		*modeshift = (sid - 8) * 6;
> +		*modereg = RTSDS_930X_SDS_MODE_SEL_2;
> +	} else {
> +		*modeshift = (sid - 10) * 6;
> +		*modereg = RTSDS_930X_SDS_MODE_SEL_3;
> +	}
> +}
> +
> +static int rtsds_930x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
> +{
> +	int modeshift, subshift;
> +	int mode = RTSDS_MODE(combomode);
> +	int submode = RTSDS_SUBMODE(combomode);
> +	void __iomem __force *modereg, *subreg;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_930x_mode_offset(sid, &modereg, &modeshift, &subreg, &subshift);
> +	if (sid >= 2 && sid <= 9)
> +		iomask32(0x1f << subshift, (submode & 0x1f) << subshift, subreg);
> +	else if (submode != 0)
> +		return -EINVAL;
> +	iomask32(0x1f << modeshift, (mode & 0x1f) << modeshift, modereg);
> +
> +	return 0;
> +}
> +
> +static int rtsds_930x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int modeshift, subshift, mode, submode = 0;
> +	void __iomem __force *modereg, *subreg;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_930x_mode_offset(sid, &modereg, &modeshift, &subreg, &subshift);
> +	mode = (ioread32(modereg) >> modeshift) & 0x1f;
> +	if (sid >= 2 && sid <= 9)
> +		submode = (ioread32(subreg) >> subshift) & 0x1f;
> +
> +	return RTSDS_COMBOMODE(mode, submode);
> +}
> +
> +/*
> + * The RTL931x family has 14 "frontend" SerDes that are cascaded. All operations (e.g. reset) work
> + * on this frontend view while their registers are distributed over a total of 32 background
> + * SerDes. Two types of SerDes exist:
> + *
> + * An "even" SerDes with numbers 0, 1, 2, 4, 6, 8, 10, 12 works on two background SerDes. 64 analog
> + * and 64 XGMII data pages are coming from a first background SerDes while another 64 XGMII pages
> + * are served from a second SerDes.
> + *
> + * The "odd" SerDes with numbers 3, 5, 7, 9, 11 & 13 SerDes consist of a total of 3 background
> + * SerDes (one analog and two XGMII) each with an own page/register set.
> + *
> + * Align this for readability by simulating a total of 576 pages and mix them as follows.
> + *
> + * frontend page		"even" frontend SerDes		"odd" frontend SerDes
> + * page 0x000-0x03f (analog):	page 0x000-0x03f back SDS	page 0x000-0x03f back SDS
> + * page 0x100-0x13f (XGMII1):	page 0x000-0x03f back SDS	page 0x000-0x03f back SDS+1
> + * page 0x200-0x23f (XGMII2):	page 0x000-0x03f back SDS+1	page 0x000-0x03f back SDS+2
> + */
> +
> +static int rtsds_931x_sds_offset(u32 sid, u32 page)
> +{
> +	int map[] = {0, 1, 2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23};
> +	int backsid = map[sid];
> +
> +	if (page & 0xc0)
> +		return -1; /* hole */
> +
> +	if ((sid & 1) && (sid != 1))
> +		backsid += (page >> 8); /* distribute "odd" to 3 background SerDes */
> +	else if (page >= 512)
> +		backsid += 1; /* distribute "even" to 2 background SerDes */
> +
> +	return backsid;
> +}
> +
> +static int rtsds_931x_read(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg)
> +{
> +	int backsid;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg))
> +		return -EINVAL;
> +
> +	backsid = rtsds_931x_sds_offset(sid, page);
> +
> +	return backsid < 0 ? 0 : rtsds_93xx_read(ctrl, backsid, page & 0x3f, reg);
> +}
> +
> +static int rtsds_931x_mask(struct rtsds_ctrl *ctrl, u32 sid, u32 page, u32 reg, u32 val, u32 mask)
> +{
> +	int backsid;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	backsid = rtsds_931x_sds_offset(sid, page);
> +
> +	return backsid < 0 ? 0 : rtsds_93xx_mask(ctrl, backsid, page & 0x3f, reg, val, mask);
> +}
> +
> +static int rtsds_931x_set_hwmode(struct rtsds_ctrl *ctrl, u32 sid, int combomode)
> +{
> +	int shift = (sid & 3) << 3, offs = sid & ~3;
> +	int mode = RTSDS_MODE(combomode);
> +	int submode = RTSDS_SUBMODE(combomode);
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	rtsds_931x_mask(ctrl, sid, 0x1f, 0x09, (submode & 0x3f) << 6, 0x0fc0);
> +	iomask32(0xff << shift, ((mode | RTSDS_931X_SDS_FORCE_SETUP) & 0xff) << shift,
> +		 RTSDS_931X_SERDES_MODE_CTRL + offs);
> +
> +	return 0;
> +}
> +
> +static int rtsds_931x_get_hwmode(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int mode, submode, shift = (sid & 3) << 3, offs = sid & ~3;
> +
> +	if (rtsds_invalid_sds(ctrl, sid))
> +		return -EINVAL;
> +
> +	submode = (rtsds_931x_read(ctrl, sid, 0x1f, 0x09) >> 6) & 0x3f;
> +	mode = (ioread32(RTSDS_931X_SERDES_MODE_CTRL + offs) >> shift) & 0x1f;
> +
> +	return RTSDS_COMBOMODE(mode, submode);
> +}
> +
> +/* phy controller functions */
> +
> +static int rtsds_phy_init(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +	int ret;
> +
> +	dev_dbg(ctrl->dev, "init SerDes %d\n", sid);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_INIT);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "init failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_power_on(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +	int ret;
> +
> +	dev_dbg(ctrl->dev, "power on SerDes %d\n", sid);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POWER_ON);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "power on failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_power_off(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +	int ret;
> +
> +	dev_dbg(ctrl->dev, "power off SerDes %d\n", sid);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_POWER_OFF);
> +	if (!ret)
> +		ret = ctrl->conf->set_hwmode(ctrl, sid,
> +					     ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA]);
> +	if (!ret)
> +		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_POWER_OFF);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "power off failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_set_mode_int(struct rtsds_ctrl *ctrl, u32 sid, int phymode, int hwmode)
> +{
> +	int ret;
> +
> +	if (ctrl->conf->get_hwmode(ctrl, sid) == hwmode)
> +		return 0;
> +
> +	dev_dbg(ctrl->dev, "switch SerDes %d to %s (hw mode %X)\n",
> +		sid, phy_modes(phymode), hwmode);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_SET_MODE);
> +	if (!ret)
> +		ret = ctrl->conf->set_hwmode(ctrl, sid, hwmode);
> +	if (!ret) {
> +		ctrl->sds[sid].mode = phymode;
> +		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_SET_MODE);
> +	}
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "set mode failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +
> +	if (mode != PHY_MODE_ETHERNET)
> +		return -EINVAL;
> +
> +	return rtsds_phy_set_mode_int(ctrl, sid, submode, ctrl->conf->mode_map[submode]);
> +}
> +
> +static int rtsds_phy_reset_int(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	int ret;
> +
> +	dev_dbg(ctrl->dev, "reset SerDes %d\n", sid);
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_PRE_RESET);
> +	if (!ret)
> +		ret = ctrl->conf->reset(ctrl, sid);
> +	if (!ret)
> +		ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_POST_RESET);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (ret)
> +		dev_err(ctrl->dev, "reset failed for SerDes %d\n", sid);
> +
> +	return ret;
> +}
> +
> +static int rtsds_phy_reset(struct phy *phy)
> +{
> +	struct rtsds_macro *macro = phy_get_drvdata(phy);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 sid = macro->sid;
> +
> +	return rtsds_phy_reset_int(ctrl, sid);
> +}
> +
> +static const struct phy_ops rtsds_phy_ops = {
> +	.init		= rtsds_phy_init,
> +	.power_on	= rtsds_phy_power_on,
> +	.power_off	= rtsds_phy_power_off,
> +	.reset		= rtsds_phy_reset,
> +	.set_mode	= rtsds_phy_set_mode,
> +	.owner		= THIS_MODULE,
> +};
> +
> +/*
> + * The SerDes offer a lot of magic that sill needs to be uncovered. To help further development
> + * provide some basic debugging about registers, modes, reset and polarity. All functions are
> + * run under the global lock to avoid inconsistencies.
> + */
> +
> +#ifdef CONFIG_DEBUG_FS
> +
> +#define RTSDS_PAGE_NAMES 48
> +
> +static const char *rtsds_page_name[RTSDS_PAGE_NAMES] = {
> +	[0] = "SDS",		[1] = "SDS_EXT",
> +	[2] = "FIB",		[3] = "FIB_EXT",
> +	[4] = "DTE",		[5] = "DTE_EXT",
> +	[6] = "TGX",		[7] = "TGX_EXT",
> +	[8] = "ANA_RG",		[9] = "ANA_RG_EXT",
> +	[10] = "ANA_TG",	[11] = "ANA_TG_EXT",
> +	[31] = "ANA_WDIG",
> +	[32] = "ANA_MISC",	[33] = "ANA_COM",
> +	[34] = "ANA_SP",	[35] = "ANA_SP_EXT",
> +	[36] = "ANA_1G",	[37] = "ANA_1G_EXT",
> +	[38] = "ANA_2G",	[39] = "ANA_2G_EXT",
> +	[40] = "ANA_3G",	[41] = "ANA_3G_EXT",
> +	[42] = "ANA_5G",	[43] = "ANA_5G_EXT",
> +	[44] = "ANA_6G",	[45] = "ANA_6G_EXT",
> +	[46] = "ANA_10G",	[47] = "ANA_10G_EXT",
> +};
> +
> +static int rtsds_dbg_mode_show(struct seq_file *seqf, void *unused)
> +{
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int mode, sid = macro->sid;
> +
> +	mutex_lock(&ctrl->lock);
> +	mode = ctrl->conf->get_hwmode(ctrl, sid);
> +	mutex_unlock(&ctrl->lock);
> +
> +	seq_printf(seqf, "hw mode: 0x%X\n", mode);
> +	seq_puts(seqf, "phy mode: ");
> +
> +	if (ctrl->sds[sid].mode == PHY_INTERFACE_MODE_NA)
> +		seq_puts(seqf, "off\n");
> +	else
> +		seq_printf(seqf, "%s\n", phy_modes(ctrl->sds[sid].mode));
> +
> +	return 0;
> +}
> +
> +static ssize_t rtsds_dbg_mode_write(struct file *file, const char __user *userbuf,
> +				    size_t count, loff_t *ppos)
> +{
> +	struct seq_file *seqf = file->private_data;
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int ret, hwmode, phymode, sid = macro->sid;
> +
> +	ret = kstrtou32_from_user(userbuf, count, 16, &hwmode);
> +	if (ret)
> +		return ret;
> +
> +	/* Allow only modes we have under control. */
> +	phymode = rtsds_hwmode_to_phymode(ctrl, hwmode);
> +	if (phymode == PHY_INTERFACE_MODE_MAX)
> +		return -EINVAL;
> +
> +	ret = rtsds_phy_set_mode_int(ctrl, sid, phymode, hwmode);
> +
> +	return ret ? ret : count;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_mode);
> +
> +static int rtsds_dbg_reset_show(struct seq_file *seqf, void *unused)
> +{
> +	return 0;
> +}
> +
> +static ssize_t rtsds_dbg_reset_write(struct file *file, const char __user *userbuf,
> +				     size_t count, loff_t *ppos)
> +{
> +	struct seq_file *seqf = file->private_data;
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int ret, reset, sid = macro->sid;
> +
> +	ret = kstrtou32_from_user(userbuf, count, 10, &reset);
> +	if (ret || reset != 1)
> +		return -EINVAL;
> +
> +	ret = rtsds_phy_reset_int(ctrl, sid);
> +
> +	return ret ? ret : count;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_reset);
> +
> +static int rtsds_dbg_registers_show(struct seq_file *seqf, void *unused)
> +{
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	u32 page = 0, reg, sid = macro->sid;
> +
> +	seq_printf(seqf, "%*s", 12, "");
> +	for (int i = 0; i < 32; i++)
> +		seq_printf(seqf, "   %02X", i);
> +
> +	mutex_lock(&ctrl->lock);
> +	while (page < ctrl->conf->page_cnt) {
> +		if (page < RTSDS_PAGE_NAMES && rtsds_page_name[page])
> +			seq_printf(seqf, "\n%*s: ", -11, rtsds_page_name[page]);
> +		else if (page == 64 || page == 320) {
> +			page += 192;
> +			seq_printf(seqf, "\n\nXGMII_%d    : ", page >> 8);
> +		} else
> +			seq_printf(seqf, "\nPAGE_%03X   : ", page);
> +		for (reg = 0; reg < 0x20; reg++)
> +			seq_printf(seqf, "%04X ", ctrl->conf->read(ctrl, sid, page, reg));
> +		page++;
> +	}
> +	seq_puts(seqf, "\n");
> +	mutex_unlock(&ctrl->lock);
> +
> +	return 0;
> +}
> +
> +static ssize_t rtsds_dbg_registers_write(struct file *file, const char __user *userbuf,
> +				    size_t count, loff_t *ppos)
> +{
> +	struct seq_file *seqf = file->private_data;
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int ret, sid = macro->sid;
> +	u32 reg, page, val, mask;
> +	u64 data;
> +
> +	/*
> +	 * Due to many different devices and limited regional hardware access for developers,
> +	 * improve analysis with write access to the SerDes registers. This allows testers to
> +	 * build new patch sequences from the command line without creating new firmware files
> +	 * and building new images.
> +	 */
> +
> +	ret = kstrtou64_from_user(userbuf, count, 16, &data);
> +	if (ret)
> +		return ret;
> +
> +	page = (data >> 40) & 0x3ff;
> +	reg = (data >> 32) & 0xff;
> +	val = (data >> 16) & 0xffff;
> +	mask = data & 0xffff;
> +
> +	if (rtsds_invalid_reg(ctrl, sid, page, reg) || rtsds_invalid_mask(val, mask))
> +		return -EINVAL;
> +
> +	mutex_lock(&ctrl->lock);
> +	ret = ctrl->conf->mask(ctrl, sid, page, reg, val, mask);
> +	mutex_unlock(&ctrl->lock);
> +
> +	return ret ? ret : count;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_registers);
> +
> +static int rtsds_dbg_polarity_show(struct seq_file *seqf, void *unused)
> +{
> +	struct rtsds_macro *macro = dev_get_drvdata(seqf->private);
> +	struct rtsds_ctrl *ctrl = macro->ctrl;
> +	int val, sid = macro->sid;
> +
> +	mutex_lock(&ctrl->lock);
> +	val = ctrl->conf->read(ctrl, sid, RTSDS_PAGE_SDS, 0x00);
> +	mutex_unlock(&ctrl->lock);
> +
> +	if (val < 0)
> +		return -EIO;
> +
> +	seq_puts(seqf, "tx polarity: ");
> +	seq_puts(seqf, val & RTSDS_BIT_INV_HSO ? "inverse" : "normal");
> +	seq_puts(seqf, "\nrx polarity: ");
> +	seq_puts(seqf, val & RTSDS_BIT_INV_HSI ? "inverse" : "normal");
> +	seq_puts(seqf, "\n");
> +
> +	return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
> +
> +static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	debugfs_create_file("mode", 0600, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_mode_fops);
> +
> +	debugfs_create_file("reset", 0200, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_reset_fops);
> +
> +	debugfs_create_file("polarity", 0400, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_polarity_fops);
> +
> +	debugfs_create_file("registers", 0600, ctrl->sds[sid].phy->debugfs,
> +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_registers_fops);
> +}
> +#endif /* CONFIG_DEBUG_FS */
> +
> +static void rtsds_setup(struct rtsds_ctrl *ctrl)
> +{
> +	int hwmode, ret;
> +
> +	for (u32 sid = 0; sid < ctrl->conf->sds_cnt; sid++) {
> +		/* switch off SerDes */
> +		hwmode = ctrl->conf->mode_map[PHY_INTERFACE_MODE_NA];
> +		ret = ctrl->conf->set_hwmode(ctrl, sid, hwmode);
> +		if (!ret)
> +			ret = rtsds_fw_run_event(ctrl, sid, RTSDS_FW_EVT_SETUP);
> +		if (ret)
> +			dev_err(ctrl->dev, "setup failed for SerDes %d\n", sid);
> +
> +		/* in any case sync back hardware status for consistency */
> +		hwmode = ctrl->conf->get_hwmode(ctrl, sid);
> +		ctrl->sds[sid].mode = rtsds_hwmode_to_phymode(ctrl, hwmode);
> +	}
> +}
> +
> +static struct phy *rtsds_simple_xlate(struct device *dev,
> +				      const struct of_phandle_args *args)
> +{
> +	struct rtsds_ctrl *ctrl = dev_get_drvdata(dev);
> +	int sid, sid2, min_port, max_port;
> +
> +	/*
> +	 * A SerDes is usually connected to Ethernet transceivers (e.g. RTL8218B). Some of them
> +	 * make use of multiple links, e.g. 2x QSGMII. Transceivers themselves can have multiple
> +	 * ports. To make the driver understand this topology when looked up from controller, use
> +	 * following translation for the first port of a transceiver package in the devicetree.
> +	 *
> +	 * Single port/single link: E.g. Switch port 8 connected to SerDes 1
> +	 *
> +	 * port@8 { phys = <&serdes 1  1 8 8>; };
> +	 * port@8 { phys = <&serdes 1 -1 8 8>; }; (alternative notation)
> +	 *
> +	 * Multiport/single link: E.g. Switch ports 16 to 23 connected to SerDes 2
> +	 *
> +	 * port@16 { phys = <&serdes 2  2 16 23>; };
> +	 * port@16 { phys = <&serdes 2 -1 16 23>; }; (alternative notation)
> +	 *
> +	 * Multiport/multilink: E.g. Switch ports 24 to 31 connected to SerDes 3 & 4
> +	 *
> +	 * port@24 { phys = <&serdes 3 4 24 27>; };
> +	 * port@28 { phys = <&serdes 4 3 28 31>; };
> +	 */
> +
> +	if (args->args_count != 4)
> +		return ERR_PTR(-EINVAL);
> +
> +	sid = args->args[0];
> +	sid2 = args->args[1];
> +	min_port = args->args[2];
> +	max_port = args->args[3];
> +
> +	if (sid < 0 || sid >= ctrl->conf->sds_cnt ||
> +	    sid2 < -1 || sid2 >= ctrl->conf->sds_cnt ||
> +	    min_port < 0 || max_port < min_port)
> +		return ERR_PTR(-EINVAL);
> +
> +	if (sid2 == sid)
> +		sid2 = -1;
> +
> +	ctrl->sds[sid].link = sid2;
> +	if (sid2 >= 0)
> +		ctrl->sds[sid].link = sid;
> +
> +	ctrl->sds[sid].min_port = min_port;
> +	ctrl->sds[sid].max_port = max_port;
> +
> +	return ctrl->sds[sid].phy;
> +}
> +
> +static int rtsds_phy_create(struct rtsds_ctrl *ctrl, u32 sid)
> +{
> +	struct rtsds_macro *macro;
> +
> +	ctrl->sds[sid].phy = devm_phy_create(ctrl->dev, NULL, &rtsds_phy_ops);
> +	if (IS_ERR(ctrl->sds[sid].phy))
> +		return PTR_ERR(ctrl->sds[sid].phy);
> +
> +	macro = devm_kzalloc(ctrl->dev, sizeof(*macro), GFP_KERNEL);
> +	if (!macro)
> +		return -ENOMEM;
> +
> +	macro->sid = sid;
> +	macro->ctrl = ctrl;
> +	phy_set_drvdata(ctrl->sds[sid].phy, macro);
> +
> +	ctrl->sds[sid].link = -1;
> +	ctrl->sds[sid].min_port = -1;
> +	ctrl->sds[sid].max_port = -1;
> +
> +#ifdef CONFIG_DEBUG_FS
> +	rtsds_dbg_init(ctrl, sid);
> +#endif
> +	return 0;
> +}
> +
> +static int rtsds_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *provider;
> +	struct rtsds_ctrl *ctrl;
> +	int ret;
> +
> +	ctrl = devm_kzalloc(dev, sizeof(*ctrl), GFP_KERNEL);
> +	if (!ctrl)
> +		return -ENOMEM;
> +
> +	ctrl->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(ctrl->base)) {
> +		dev_err(dev, "failed to map SerDes memory\n");
> +		return PTR_ERR(ctrl->base);
> +	}

To make this work with the dts definitions I've landed this needs to be 
using something like syscon_node_to_regmap(). I think you can probably 
still handle the mmio case with something that tries 
syscon_node_to_regmap() and falls back to regmap_init_mmio() if that 
fails. It would mean changing the ioread32()/iowrite32() to 
regmap_read()/regmap_write(). There's a few places that you're dealing 
with latched registers so we might need to be careful to avoid regmap 
caching those reads.

> +
> +	ctrl->dev = dev;
> +	ctrl->conf = (struct rtsds_conf *)of_device_get_match_data(dev);
> +
> +	for (u32 sid = 0; sid < ctrl->conf->sds_cnt; sid++) {
> +		ret = rtsds_phy_create(ctrl, sid);
> +		if (ret) {
> +			dev_err(dev, "failed to create phy for SerDes %d\n", sid);
> +			return ret;
> +		}
> +	}
> +
> +	mutex_init(&ctrl->lock);
> +	dev_set_drvdata(dev, ctrl);
> +	provider = devm_of_phy_provider_register(dev, rtsds_simple_xlate);
> +
> +	rtsds_get_chip(ctrl);
> +	rtsds_fw_load(ctrl);
> +	rtsds_setup(ctrl);
> +
> +	dev_info(dev, "%s (chip %s) initialized. %d SerDes, %d pages, 32 registers.",
> +		 ctrl->soc.model_name, ctrl->soc.chip_name,
> +		 ctrl->conf->sds_cnt, ctrl->conf->page_cnt);
> +
> +	return PTR_ERR_OR_ZERO(provider);
> +}
> +
> +static const struct rtsds_conf rtsds_838x_conf = {
> +	.family		= RTSDS_838X_FAMILY,
> +	.sds_cnt	= RTSDS_838X_SDS_CNT,
> +	.page_cnt	= RTSDS_838X_PAGE_CNT,
> +	.mask		= rtsds_838x_mask,
> +	.read		= rtsds_838x_read,
> +	.reset		= rtsds_83xx_reset,
> +	.set_hwmode	= rtsds_838x_set_hwmode,
> +	.get_hwmode	= rtsds_838x_get_hwmode,
> +	.mode_map = {
> +		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0x00, 0x00),
> +		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(0x04, 0x01),
> +		[PHY_INTERFACE_MODE_100BASEX]	= RTSDS_COMBOMODE(0x05, 0x01),
> +		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(0x06, 0x00),
> +	},
> +};
> +
> +static const struct rtsds_conf rtsds_839x_conf = {
> +	.family		= RTSDS_839X_FAMILY,
> +	.sds_cnt	= RTSDS_839X_SDS_CNT,
> +	.page_cnt	= RTSDS_839X_PAGE_CNT,
> +	.mask		= rtsds_839x_mask,
> +	.read		= rtsds_839x_read,
> +	.reset		= rtsds_83xx_reset,
> +	.set_hwmode	= rtsds_839x_set_hwmode,
> +	.get_hwmode	= rtsds_839x_get_hwmode,
> +	.mode_map = {
> +		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0x00, 0x00),
> +		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(0x01, 0x00),
> +		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(0x07, 0x00),
> +		[PHY_INTERFACE_MODE_100BASEX]	= RTSDS_COMBOMODE(0x08, 0x00),
> +		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(0x06, 0x00),
> +		[PHY_INTERFACE_MODE_SGMII]	= RTSDS_COMBOMODE(0x07, 0x05),
> +	},
> +};
> +
> +static const struct rtsds_conf rtsds_930x_conf = {
> +	.family		= RTSDS_930X_FAMILY,
> +	.sds_cnt	= RTSDS_930X_SDS_CNT,
> +	.page_cnt	= RTSDS_930X_PAGE_CNT,
> +	.mask		= rtsds_930x_mask,
> +	.read		= rtsds_930x_read,
> +	.reset		= rtsds_93xx_reset,
> +	.set_hwmode	= rtsds_930x_set_hwmode,
> +	.get_hwmode	= rtsds_930x_get_hwmode,
> +	.mode_map = {
> +		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0x1f, 0x00),
> +		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(0x1a, 0x00),
> +		[PHY_INTERFACE_MODE_2500BASEX]  = RTSDS_COMBOMODE(0x16, 0x00),
> +		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(0x04, 0x00),
> +		[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_COMBOMODE(0x0d, 0x00),
> +		[PHY_INTERFACE_MODE_QUSGMII]	= RTSDS_COMBOMODE(0x0d, 0x02),
> +		[PHY_INTERFACE_MODE_XGMII]	= RTSDS_COMBOMODE(0x10, 0x00),
> +		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(0x06, 0x00),
> +	},
> +};
> +
> +static const struct rtsds_conf rtsds_931x_conf = {
> +	.family		= RTSDS_931X_FAMILY,
> +	.sds_cnt	= RTSDS_931X_SDS_CNT,
> +	.page_cnt	= RTSDS_931X_PAGE_CNT,
> +	.mask		= rtsds_931x_mask,
> +	.read		= rtsds_931x_read,
> +	.reset		= rtsds_93xx_reset,
> +	.set_hwmode	= rtsds_931x_set_hwmode,
> +	.get_hwmode	= rtsds_931x_get_hwmode,
> +	.mode_map = {
> +		[PHY_INTERFACE_MODE_NA]		= RTSDS_COMBOMODE(0x1f, 0x3f),
> +		[PHY_INTERFACE_MODE_10GBASER]	= RTSDS_COMBOMODE(0x1f, 0x35),
> +		[PHY_INTERFACE_MODE_1000BASEX]	= RTSDS_COMBOMODE(0x1f, 0x39),
> +		[PHY_INTERFACE_MODE_USXGMII]	= RTSDS_COMBOMODE(0x0d, 0x00),
> +		[PHY_INTERFACE_MODE_XGMII]	= RTSDS_COMBOMODE(0x0a, 0x00),
> +		[PHY_INTERFACE_MODE_QSGMII]	= RTSDS_COMBOMODE(0x06, 0x00),
> +	},
> +};
> +
> +static const struct of_device_id rtsds_compatible_ids[] = {
> +	{ .compatible = "realtek,rtl8380m-serdes",	.data = &rtsds_838x_conf },
> +	{ .compatible = "realtek,rtl8392m-serdes",	.data = &rtsds_839x_conf },
> +	{ .compatible = "realtek,rtl9302b-serdes",	.data = &rtsds_930x_conf },
> +	{ .compatible = "realtek,rtl9311-serdes",	.data = &rtsds_931x_conf },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, rtsds_compatible_ids);
> +
> +static struct platform_driver rtsds_platform_driver = {
> +	.probe		= rtsds_probe,
> +	.driver		= {
> +		.name	= "realtek,otto-serdes",
> +		.of_match_table = rtsds_compatible_ids,
> +	},
> +};
> +
> +module_platform_driver(rtsds_platform_driver);
> +
> +MODULE_AUTHOR("Markus Stockhausen<markus.stockhausen@gmx.de>");
> +MODULE_DESCRIPTION("SerDes driver for Realtek RTL83xx, RTL93xx switch SoCs");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/phy/realtek/phy-rtk-otto-serdes.h b/drivers/phy/realtek/phy-rtk-otto-serdes.h
> new file mode 100644
> index 000000000000..410f67f24787
> --- /dev/null
> +++ b/drivers/phy/realtek/phy-rtk-otto-serdes.h
> @@ -0,0 +1,169 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Realtek RTL838x, RTL839x, RTL930x & RTL931x SerDes PHY driver
> + * Copyright (c) 2024 Markus Stockhausen<markus.stockhausen@gmx.de>
> + */
> +
> +#ifndef _PHY_RTK_OTTO_SERDES_H
> +#define _PHY_RTK_OTTO_SERDES_H
> +
> +#define RTSDS_SWITCH_ADDR_BASE		(0xbb000000)

I think this should come from the devicetree. I've now got the switch 
block defined in the dts for the RTL930x. We'll need to add it for the 
other variants.

I think this also suggests that the syscon approach is a good one as the 
registers are scattered about.

> +#define RTSDS_REG(x)			((void __iomem __force *)RTSDS_SWITCH_ADDR_BASE + (x))
> +#define iomask32(mask, value, addr)	iowrite32((ioread32(addr) & ~(mask)) | (value), addr)
> +
> +#define RTSDS_PAGE_SDS				0x00
> +#define RTSDS_PAGE_SDS_EXT			0x01
> +#define RTSDS_PAGE_FIB				0x02
> +#define RTSDS_PAGE_FIB_EXT			0x03
> +#define RTSDS_PAGE_ANA_RG_EXT			0x09
> +#define RTSDS_PAGE_ANA_TG_EXT			0x0b
> +
> +#define RTSDS_BIT_INV_HSO			BIT(8)
> +#define RTSDS_BIT_INV_HSI			BIT(9)
> +#define RTSDS_BIT_SOFT_RST			BIT(6)
> +#define RTSDS_BIT_SDS_EN_RX			BIT(1)
> +#define RTSDS_BIT_SDS_EN_TX			BIT(0)
> +#define RTSDS_BIT_RX_SELF			BIT(9)
> +#define RTSDS_BIT_RX_SELF_10G			BIT(15)
> +
> +#define RTSDS_838X_FAMILY			0x8380
> +#define RTSDS_838X_SDS_CNT			6
> +#define RTSDS_838X_PAGE_CNT			4
> +#define RTSDS_838X_INT_MODE_CTRL		RTSDS_REG(0x005c)
> +#define RTSDS_838X_MODEL_NAME_INFO		RTSDS_REG(0x00d4)
> +#define RTSDS_838X_SDS_MODE_SEL			RTSDS_REG(0x0028)
> +
> +#define RTSDS_839X_FAMILY			0x8390
> +#define RTSDS_839X_SDS_CNT			14
> +#define RTSDS_839X_PAGE_CNT			12
> +#define RTSDS_839X_MAC_SERDES_IF_CTRL		RTSDS_REG(0x0008)
> +#define RTSDS_839X_MODEL_NAME_INFO		RTSDS_REG(0x0ff0)
> +
> +#define RTSDS_930X_FAMILY			0x9300
> +#define RTSDS_930X_SDS_CNT			12
> +#define RTSDS_930X_PAGE_CNT			64
> +#define RTSDS_930X_MODEL_NAME_INFO		RTSDS_REG(0x0004)
Looks like RTSDS_930X_MODEL_NAME_INFO is unused.
> +#define RTSDS_930X_SDS_MODE_SEL_0		RTSDS_REG(0x0194)
> +#define RTSDS_930X_SDS_MODE_SEL_1		RTSDS_REG(0x02a0)
> +#define RTSDS_930X_SDS_MODE_SEL_2		RTSDS_REG(0x02a4)
> +#define RTSDS_930X_SDS_MODE_SEL_3		RTSDS_REG(0x0198)
> +#define RTSDS_930X_SDS_SUBMODE_CTRL0		RTSDS_REG(0x01cc)
> +#define RTSDS_930X_SDS_SUBMODE_CTRL1		RTSDS_REG(0x02d8)
> +
> +#define RTSDS_931X_FAMILY			0x9310
> +#define RTSDS_931X_SDS_CNT			14
> +#define RTSDS_931X_PAGE_CNT			576
> +#define RTSDS_931X_SERDES_MODE_CTRL		RTSDS_REG(0x13cc)
> +#define RTSDS_931X_PS_SERDES_OFF_MODE_CTRL	RTSDS_REG(0x13f4)
> +#define RTSDS_931X_SDS_FORCE_SETUP		0x80
> +
> +#define RTSDS_93XX_SDS_READ			0
> +#define RTSDS_93XX_SDS_WRITE			BIT(1)
> +#define RTSDS_93XX_SDS_BUSY			BIT(0)
> +#define RTSDS_93XX_MODEL_NAME_INFO		RTSDS_REG(0x0004)
> +
> +#define RTSDS_COMBOMODE(mode, submode)		(0x10000 | (mode << 8) | submode)
> +#define RTSDS_MODE(combomode)			((combomode >> 8) & 0xff)
> +#define RTSDS_SUBMODE(combomode)		(combomode & 0xff)
> +
> +/*
> + * All the following firmware constants are fixed and must not be changed. Otherwise existing
> + * firmware files in the wild will break. If new events, operations or modes need to be added,
> + * new id numbers have to be assigned and reordering is strictly forbidden.
> + */
> +
> +#define RTSDS_FW_MAGIC				0x83009300
> +
> +#define RTSDS_FW_EVT_SETUP			0
> +#define RTSDS_FW_EVT_INIT			1
> +#define RTSDS_FW_EVT_POWER_ON			2
> +#define RTSDS_FW_EVT_PRE_SET_MODE		3
> +#define RTSDS_FW_EVT_POST_SET_MODE		4
> +#define RTSDS_FW_EVT_PRE_RESET			5
> +#define RTSDS_FW_EVT_POST_RESET			6
> +#define RTSDS_FW_EVT_PRE_POWER_OFF		7
> +#define RTSDS_FW_EVT_POST_POWER_OFF		8
> +#define RTSDS_FW_EVT_CNT			9
> +
> +#define RTSDS_FW_OP_STOP			0
> +#define RTSDS_FW_OP_MASK			1
> +#define RTSDS_FW_OP_WAIT			2
> +
> +#define RTSDS_FW_MODE_ALL			0
> +#define RTSDS_FW_MODE_QSGMII			1
> +#define RTSDS_FW_MODE_XGMII			2
> +#define RTSDS_FW_MODE_USXGMII			3
> +#define RTSDS_FW_MODE_1000BASEX			4
> +#define RTSDS_FW_MODE_2500BASEX			5
> +#define RTSDS_FW_MODE_10GBASER			6
> +
> +struct __packed rtsds_fw_dir {
> +	uint32_t evtid;
> +	uint32_t offset;
> +};
> +
> +struct __packed rtsds_fw_head {
> +	u32 magic;
> +	u32 checksum;
> +	u32 filesize;
> +	u32 dirsize;
> +	struct rtsds_fw_dir dir[];
> +};
> +
> +struct __packed rtsds_fw_seq {
> +	u16 action;
> +	u16 mode;
> +	u16 ports;
> +	u16 page;
> +	u16 reg;
> +	u16 val;
> +	u16 mask;
> +	u16 align;
> +};
> +
> +struct rtsds_sds {
> +	struct phy *phy;
> +	int mode;
> +	int link;
> +	int min_port;
> +	int max_port;
> +};
> +
> +struct rtsds_soc {
> +	u32 model_id;
> +	u32 model_version;
> +	char model_name[16];
> +	u32 chip_id;
> +	u32 chip_version;
> +	char chip_name[16];
> +};
> +
> +struct rtsds_ctrl {
> +	struct rtsds_soc soc;
> +	struct device *dev;
> +	void __iomem *base;
> +	struct mutex lock;
> +	struct rtsds_conf *conf;
> +	struct rtsds_sds sds[RTSDS_931X_SDS_CNT];
> +	const struct firmware *firmware;
> +};
> +
> +struct rtsds_macro {
> +	struct rtsds_ctrl *ctrl;
> +	u32 sid;
> +};
> +
> +struct rtsds_conf {
> +	u32 family;
> +	u32 sds_cnt;
> +	u32 page_cnt;
> +	void (*setup)(struct rtsds_ctrl *ctrl);
> +	int (*read)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg);
> +	int (*mask)(struct rtsds_ctrl *ctrl, u32 idx, u32 page, u32 reg, u32 val, u32 mask);
> +	int (*reset)(struct rtsds_ctrl *ctrl, u32 idx);
> +	int (*set_hwmode)(struct rtsds_ctrl *ctrl, u32 idx, int mode);
> +	int (*get_hwmode)(struct rtsds_ctrl *ctrl, u32 idx);
> +	int mode_map[PHY_INTERFACE_MODE_MAX];
> +};
> +
> +#endif /* _PHY_RTK_OTTO_SERDES_H */
> --
> 2.46.2

