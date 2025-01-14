Return-Path: <devicetree+bounces-138409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA77A10454
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:35:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC70D3A1D57
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 940633DAC03;
	Tue, 14 Jan 2025 10:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gmzPRxu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1F33DABE9
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736850902; cv=none; b=uv1qXVMYQ4f8SddTCmww4L3F0VH3+apKb3cjzvQ10E/fK/VD72/ykxFeUMo7mxxfAi7rcaYyGoLGxaaA4k0KOj6IDx52IxK+y0/z2183tL9cWSqyzvCwRSE8AVFkTylbFdL8oo1Ll3eQvEKU/VoJkZg/ugjmKMJarVQJIp/9wYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736850902; c=relaxed/simple;
	bh=oBY+3eZc51Y6fF6g/l8GEc6MeyGaj+xttfDQd4bfPhE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KirmENhLy/AaY/slAGPZyydCjbWDk+DBFzSAfUEyTAevgqs8ROVGHxo3IoVJg9aAY0UlRtgoWnaF4vbhjYTOV5mH3ZUqDdhKENgtb0mws68qY8a8imsKegQ75raOb7bdj+D7Cv6DyJ1LpaKcr+8WVytggpbxbs0Vxief3KImOkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gmzPRxu/; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-540201cfedbso4852956e87.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 02:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736850897; x=1737455697; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=T82zNstFBnDSTTkW/x3AxhknKVdFYWE7bW1yyO8UUJc=;
        b=gmzPRxu/O9WthVoXIcfrpQWp3mNRQRuQnLIFI+Yk2GGYuFtoEvFABbxrLFbzFyKli6
         lB0LnXCU+44vF4KjLCogQoXIbDhLL79r1bkO+uPkupWeNFz3thx7uwjZXCvnXw7s/EG8
         zZhPuyPYsU+SNfvgVt4UBXK4l1TpnbWhsR7Kpk0Sy0jPBayJ5kkjQnh5AIC1RhFmutCr
         FIxJ1a9VRFpGAPDW/VpEk230NiTOwUqq6Db/lGtKSrqGaEL30DQE04qPtaie7A0x6K7H
         MmRrhlCtprYLwBtj6ayfANmNp2xd0yzpkr0XUBJxhwVfovZ+fxTx5fMFFuREAwwpdTz8
         tncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736850897; x=1737455697;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T82zNstFBnDSTTkW/x3AxhknKVdFYWE7bW1yyO8UUJc=;
        b=rJny3Xg0V1vxC5GWmUa8bvtJg+K6zcJEBOSazbsLSwsGXRcvagjS0TvNWRsjs0Bm0U
         AHcL62HxbNY9bZemIRrXHev9i6lFbfzrfqWWp9zR6R0quMYEfLsAKLm815yn+4Ryvie1
         JEtpy4Oz7UySn+DxMLido7OEj8xWReQYkQ9qiZ3xkYBguYfsjpEXSGAWHxbg0DtEivJ2
         TVD76kmHTdbuC/TDp5aTmGEU2gVZOUv++WcrRLL0Xg1k4XCbkwR7BYWT7s9uSw/IsafT
         iO0bxq7PBVlUMhbof6hT8mmuY5puJsXw27zwE7q3s52TX+8eqU/K8RGtVrDeye2b3yF4
         Y7Qg==
X-Forwarded-Encrypted: i=1; AJvYcCVFvn8fbVtdSXno7len60JZ91ZUPEqKdJV9598Nqlv8bq2Y8n7mJsbAuDjHa3rbhwIagQLY7TT2WNIU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy87qF7C+M5o3swn4LGoUumzE/94l9dEozVYZqF5NWK3wRlXL/x
	QQwmPPiKo9fcsW9maWU2ZY+omL8IqAhj8feEcZxB9gIFfYBd6+85nw4Bkgo7jeE=
X-Gm-Gg: ASbGnctkLNtTqKBFbbfzYQVd9H3L+53cOULIKPZ7EAgCOtncIu8W9q95+N4FGnXsDAo
	w6bX+pQMb81s0iBS633/aJlLt3d9O5df5B6CJcs+sQJ02OsvA5H3T42lq9GH98GIdZ7d71KLuuH
	0hV3cmRGwowD7qDNOEUgBLAvFiFAqdATOP6G2Hr45zyygU790sc0H4SqxOvegXgvjoVmAR0TLCE
	t+k1noMaWWDuXAapXSu1Bzme9ObeBZXt4BHAPaREcnIu8a9Llu5Vnzrc3DtJhuev7K6Z8FcZbNt
	qJmAuqwadFyl4XAJsXcJvAI2x46x5XGwNN1r
X-Google-Smtp-Source: AGHT+IFwrbLGTrG2dyiu5uP2+GJnDGK0/StK5LmN5McezpTF9gNRaaageIc+tg7gnEcGTINdnMPa7w==
X-Received: by 2002:a05:6512:ba9:b0:540:2223:9b20 with SMTP id 2adb3069b0e04-542845d1b75mr6413752e87.53.1736850897244;
        Tue, 14 Jan 2025 02:34:57 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49ee9sm1623927e87.52.2025.01.14.02.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:34:56 -0800 (PST)
Date: Tue, 14 Jan 2025 12:34:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 5/7] phy: qcom: Add M31 based eUSB2 PHY driver
Message-ID: <rpwm6gimdb4zyvyusovfbfaw4uxrossm6elayebvt2gusb7zwk@67w7672qpcto>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-5-09afe1dc2524@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_usb_master-v1-5-09afe1dc2524@quicinc.com>

On Mon, Jan 13, 2025 at 01:52:11PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> On SM8750, the eUSB2 PHY used is M31 based. Add the initialization
> sequences to bring it out of reset, and to initialize the associated eUSB2
> repeater as well.

What does M31 mean? What is the relationship between the eUSB and USB
M31 PHYs?

> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/phy/qualcomm/Kconfig              |  12 +-
>  drivers/phy/qualcomm/Makefile             |   1 +
>  drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 269 ++++++++++++++++++++++++++++++
>  3 files changed, 281 insertions(+), 1 deletion(-)

Please run the patch through checkpatch.pl --strict

> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..e15529673e358db914936a60fa605c872cd2511a
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -0,0 +1,269 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +
> +#define USB_PHY_UTMI_CTRL0		(0x3c)
> +
> +#define USB_PHY_UTMI_CTRL5		(0x50)
> +
> +#define USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
> +#define FSEL				(0x7 << 4)

GENMASK()

> +#define FSEL_38_4_MHZ_VAL		(0x6 << 4)

FIELD_PREP

> +
> +#define USB_PHY_HS_PHY_CTRL2		(0x64)
> +
> +#define USB_PHY_CFG0			(0x94)
> +#define USB_PHY_CFG1			(0x154)
> +
> +#define USB_PHY_FSEL_SEL		(0xb8)
> +
> +#define USB_PHY_XCFGI_39_32		(0x16c)
> +#define USB_PHY_XCFGI_71_64		(0x17c)
> +#define USB_PHY_XCFGI_31_24		(0x168)
> +#define USB_PHY_XCFGI_7_0		(0x15c)
> +
> +#define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
> +{				\
> +	.off = o,		\
> +	.mask = b,		\
> +	.val = v,		\
> +}
> +
> +struct m31_phy_tbl_entry {
> +	u32 off;
> +	u32 mask;
> +	u32 val;
> +};
> +
> +struct m31_eusb2_priv_data {
> +	const struct m31_phy_tbl_entry	*setup_seq;
> +	unsigned int			setup_seq_nregs;
> +	const struct m31_phy_tbl_entry	*override_seq;
> +	unsigned int			override_seq_nregs;
> +	const struct m31_phy_tbl_entry	*reset_seq;
> +	unsigned int			reset_seq_nregs;
> +	unsigned int			fsel;
> +};
> +
> +static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, BIT(1), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, BIT(1), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG1, BIT(0), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_FSEL_SEL, BIT(0), 1),
> +};
> +
> +static const struct m31_phy_tbl_entry m31_eusb_phy_override_tbl[] = {
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_39_32, GENMASK(3, 2), 0),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_71_64, GENMASK(3, 0), 7),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_31_24, GENMASK(2, 0), 0),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_7_0, GENMASK(1, 0), 0),
> +};
> +
> +static const struct m31_phy_tbl_entry m31_eusb_phy_reset_tbl[] = {
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL2, BIT(3), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL2, BIT(2), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL0, BIT(0), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, BIT(1), 1),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, BIT(2), 0),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, BIT(1), 0),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL2, BIT(3), 0),
> +	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, BIT(1), 0),
> +};
> +
> +struct m31eusb2_phy {
> +	struct phy			*phy;
> +	void __iomem			*base;
> +	const struct m31_eusb2_priv_data	*data;
> +
> +	struct regulator		*vreg;
> +	struct clk			*clk;
> +	struct reset_control		*reset;
> +
> +	struct phy *repeater;
> +};
> +
> +static void msm_m31_eusb2_write_readback(void __iomem *base, u32 offset,
> +					const u32 mask, u32 val)
> +{
> +	u32 write_val, tmp = readl_relaxed(base + offset);
> +
> +	tmp &= ~mask;
> +	write_val = tmp | val;
> +
> +	writel_relaxed(write_val, base + offset);
> +
> +	tmp = readl_relaxed(base + offset);
> +	tmp &= mask;
> +
> +	if (tmp != val)
> +		pr_err("write: %x to offset: %x FAILED\n", val, offset);
> +}
> +
> +static void m31eusb2_phy_write_sequence(struct m31eusb2_phy *phy,
> +					const struct m31_phy_tbl_entry *tbl,
> +					int num)
> +{
> +	int i;
> +
> +	for (i = 0 ; i < num; i++, tbl++) {
> +		dev_dbg(&phy->phy->dev, "Offset:%x BitMask:%x Value:%x",
> +					tbl->off, tbl->mask, tbl->val);
> +
> +		msm_m31_eusb2_write_readback(phy->base,
> +					tbl->off, tbl->mask,
> +					tbl->val << __ffs(tbl->mask));

could you please check, what actually gets written? I suspect there
should be a -1 here.

> +	}
> +}
> +
> +static int m31eusb2_phy_init(struct phy *uphy)
> +{
> +	struct m31eusb2_phy *phy = phy_get_drvdata(uphy);
> +	const struct m31_eusb2_priv_data *data = phy->data;
> +	int ret;
> +
> +	ret = regulator_enable(phy->vreg);
> +	if (ret) {
> +		dev_err(&uphy->dev, "failed to enable regulator, %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = phy_init(phy->repeater);
> +	if (ret) {
> +		dev_err(&uphy->dev, "repeater init failed. %d\n", ret);
> +		goto disable_vreg;
> +	}
> +
> +	if (ret) {
> +		dev_err(&uphy->dev, "failed to enable cfg ahb clock, %d\n", ret);
> +		goto disable_repeater;
> +	}
> +
> +	/* Perform phy reset */
> +	reset_control_assert(phy->reset);
> +	udelay(5);
> +	reset_control_deassert(phy->reset);
> +
> +	m31eusb2_phy_write_sequence(phy, data->setup_seq, data->setup_seq_nregs);
> +	msm_m31_eusb2_write_readback(phy->base,
> +					USB_PHY_HS_PHY_CTRL_COMMON0, FSEL,
> +					data->fsel);
> +	m31eusb2_phy_write_sequence(phy, data->override_seq, data->override_seq_nregs);
> +	m31eusb2_phy_write_sequence(phy, data->reset_seq, data->reset_seq_nregs);
> +
> +	return 0;
> +
> +disable_repeater:
> +	phy_exit(phy->repeater);
> +disable_vreg:
> +	regulator_disable(phy->vreg);
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

