Return-Path: <devicetree+bounces-39582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6988784DA7E
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 08:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FC9A282C60
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 07:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DBE69308;
	Thu,  8 Feb 2024 07:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Az9uZUNF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CCB1692F6
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 07:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707375836; cv=none; b=LFDvQkLZHWeJz+yHMrJi4diKpJPvpalGWBUJF/o7VCF0sXijvur5lajkrMYd1chFqnBh+Gksv+nHqGvrX+SlEpd5iUYElbp0xedvauEEhQ5vZUn35ykNoAn9fk8YhgI4iZwpRcCIB0u7I2KuLCC4gkFX01OKmGxipzHZdS4PNuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707375836; c=relaxed/simple;
	bh=6DsORvEmejRtEOVGoNdfhXZEkUVKae5VsoODLUcYRew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=byIxVVFLT6XmgiOTflpNqxAEC69HQlxTvsv8owwR/nle8ms+b8aTt6PyXnuEKYKUYdh/6uzTpThppND8UqArCwYKZN3PrmepU+oeODw3//kfgw5YthCRUVDe8RLrZE+C+8ZWCzr2bIlJansY5pC/ncJMmunsfoMe4TWTrOgrWvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Az9uZUNF; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-60499a12ca0so12692147b3.2
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 23:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707375833; x=1707980633; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ItNa2OSY0Nv1qDwlIUF1X1v3KlKAB+NJMSqHeRdweVk=;
        b=Az9uZUNFmWbu7HF8bzyhyCduevyi6kF/P9PEcT4ahq69bEPH4lJgRK+IGZTXrkzKHO
         z2Dymude7IahfyAFVbS5hJxARoTQQu3jcVi3mP561RwN5m2SSzRUCmVB9sJUOBtCe8JL
         DEsXCtP1QVGQsr3Ta/Y5EFe+T1Ew7Unpg+w3Fg+SUWAT892J4BN4m+888wBi5l5+L+LV
         TWcvu3L+4hu/5U10v9GaqtCdK7kDhcGnwSoiOiy+Sc7N0SlSs0VFDt4m820KiDpni3Gf
         Y9oWFWNc7lJ/2VFzPmAfWT9A3qihF75+3IyB805P/zDwij9WfF/4OeTFPjPfPWFcKeq9
         GYdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707375833; x=1707980633;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ItNa2OSY0Nv1qDwlIUF1X1v3KlKAB+NJMSqHeRdweVk=;
        b=HgYoeXNhycHj1vLkwQEmtr2Pv363DXfyS8KuwCYPkPZGOC45j9t8ZYhA0h02ckxWLt
         lFmaog6h8dbf+uI+CXktWYde+tQF2jSN2o+Tt4fiIKX0azhK+q4+8nook6t9pl2eDy07
         1I3sMyy2mNmggWyj+FQxhJuOGxI1QHOBpVH43rJKi3HgfEpRwAysfXoA/dAlkRnGb/8H
         DJgTZ3YQUG4v5dT4qxtqYPZiaxjm84dfA1K6yzmTrRKmWxbdsRuTdOOORQTs6aO8xwcP
         +iiWElbP1dl5tN55xaZj6mzzE9I7sluR5mQ0jXX5p6mLnBeyrnHI5IUUaYS7TeN11BI0
         cQ3g==
X-Gm-Message-State: AOJu0YzVweY6O6kKZxsVG6CCqDU4IsErPYVYqNlPE0g3Nt4UXoPvxK0B
	ASrS0TnrfTSYnrEQ7wLLnZgtBeWZSsCGUweAamejIDyaBiSQzZHrZSJQ4dAEkdOBKoQqxM7KxgN
	p9dpIKNsmHoJLEIP7NMkKgZ0ji1hS9pFz+cJt5A==
X-Google-Smtp-Source: AGHT+IGqXOjhKCJljujpjrgacoqGODBBcpmYXcEFd6pRbzjJTNnxpK0UhXUmmJzFgrVngzj5CyhaIdp9vMZc1J90PR4=
X-Received: by 2002:a81:f111:0:b0:604:2c60:d5d4 with SMTP id
 h17-20020a81f111000000b006042c60d5d4mr7300896ywm.21.1707375833395; Wed, 07
 Feb 2024 23:03:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240208062836.19767-1-quic_tdas@quicinc.com> <20240208062836.19767-4-quic_tdas@quicinc.com>
In-Reply-To: <20240208062836.19767-4-quic_tdas@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 8 Feb 2024 09:03:41 +0200
Message-ID: <CAA8EJpoN5Q66Svq8fkCUDHbsGoYT0COOSH4vueyL1-Jk0AhkVw@mail.gmail.com>
Subject: Re: [PATCH 3/5] clk: qcom: sc7280: Update the transition delay for GDSC
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Feb 2024 at 08:29, Taniya Das <quic_tdas@quicinc.com> wrote:
>
> The GDSC default values are being updated and they can cause issues
> in the GDSC FSM state.

It reads as if new values can cause issues with the FSM.

> While at it also update the force mem core
> for UFS ICE clock.

Separate patch, please.

>
> Fixes: fae7617bb142 ("clk: qcom: Add video clock controller driver for SC7280")
> Fixes: 1daec8cfebc2 ("clk: qcom: camcc: Add camera clock controller driver for SC7280")
> Fixes: a3cc092196ef ("clk: qcom: Add Global Clock controller (GCC) driver for SC7280")
> Fixes: 3e0f01d6c7e7 ("clk: qcom: Add graphics clock controller driver for SC7280")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  drivers/clk/qcom/camcc-sc7280.c   | 19 +++++++++++++++++++
>  drivers/clk/qcom/gcc-sc7280.c     | 13 +++++++++++++
>  drivers/clk/qcom/gpucc-sc7280.c   |  7 +++++++
>  drivers/clk/qcom/videocc-sc7280.c |  7 +++++++
>  4 files changed, 46 insertions(+)
>
> diff --git a/drivers/clk/qcom/camcc-sc7280.c b/drivers/clk/qcom/camcc-sc7280.c
> index 49f046ea857c..4849b0e8c846 100644
> --- a/drivers/clk/qcom/camcc-sc7280.c
> +++ b/drivers/clk/qcom/camcc-sc7280.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>
>  #include <linux/clk-provider.h>
> @@ -2247,6 +2248,9 @@ static struct clk_branch cam_cc_sleep_clk = {
>
>  static struct gdsc cam_cc_titan_top_gdsc = {
>         .gdscr = 0xc194,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "cam_cc_titan_top_gdsc",
>         },
> @@ -2256,6 +2260,9 @@ static struct gdsc cam_cc_titan_top_gdsc = {
>
>  static struct gdsc cam_cc_bps_gdsc = {
>         .gdscr = 0x7004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "cam_cc_bps_gdsc",
>         },
> @@ -2265,6 +2272,9 @@ static struct gdsc cam_cc_bps_gdsc = {
>
>  static struct gdsc cam_cc_ife_0_gdsc = {
>         .gdscr = 0xa004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "cam_cc_ife_0_gdsc",
>         },
> @@ -2274,6 +2284,9 @@ static struct gdsc cam_cc_ife_0_gdsc = {
>
>  static struct gdsc cam_cc_ife_1_gdsc = {
>         .gdscr = 0xb004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "cam_cc_ife_1_gdsc",
>         },
> @@ -2283,6 +2296,9 @@ static struct gdsc cam_cc_ife_1_gdsc = {
>
>  static struct gdsc cam_cc_ife_2_gdsc = {
>         .gdscr = 0xb070,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "cam_cc_ife_2_gdsc",
>         },
> @@ -2292,6 +2308,9 @@ static struct gdsc cam_cc_ife_2_gdsc = {
>
>  static struct gdsc cam_cc_ipe_0_gdsc = {
>         .gdscr = 0x8004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "cam_cc_ipe_0_gdsc",
>         },
> diff --git a/drivers/clk/qcom/gcc-sc7280.c b/drivers/clk/qcom/gcc-sc7280.c
> index 2b661df5de26..5f3bfb6f4fbb 100644
> --- a/drivers/clk/qcom/gcc-sc7280.c
> +++ b/drivers/clk/qcom/gcc-sc7280.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2020-2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>
>  #include <linux/clk-provider.h>
> @@ -3094,6 +3095,9 @@ static struct clk_branch gcc_wpss_rscp_clk = {
>
>  static struct gdsc gcc_pcie_0_gdsc = {
>         .gdscr = 0x6b004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "gcc_pcie_0_gdsc",
>         },
> @@ -3112,6 +3116,9 @@ static struct gdsc gcc_pcie_1_gdsc = {
>
>  static struct gdsc gcc_ufs_phy_gdsc = {
>         .gdscr = 0x77004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "gcc_ufs_phy_gdsc",
>         },
> @@ -3121,6 +3128,9 @@ static struct gdsc gcc_ufs_phy_gdsc = {
>
>  static struct gdsc gcc_usb30_prim_gdsc = {
>         .gdscr = 0xf004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0xf,
>         .pd = {
>                 .name = "gcc_usb30_prim_gdsc",
>         },
> @@ -3467,6 +3477,9 @@ static int gcc_sc7280_probe(struct platform_device *pdev)
>         regmap_update_bits(regmap, 0x71004, BIT(0), BIT(0));
>         regmap_update_bits(regmap, 0x7100C, BIT(13), BIT(13));
>
> +       /* FORCE_MEM_CORE_ON for ufs phy ice core clocks */
> +       qcom_branch_set_force_mem_core(regmap, gcc_ufs_phy_ice_core_clk, true);
> +
>         ret = qcom_cc_register_rcg_dfs(regmap, gcc_dfs_clocks,
>                         ARRAY_SIZE(gcc_dfs_clocks));
>         if (ret)
> diff --git a/drivers/clk/qcom/gpucc-sc7280.c b/drivers/clk/qcom/gpucc-sc7280.c
> index 1490cd45a654..0eea4cf7954d 100644
> --- a/drivers/clk/qcom/gpucc-sc7280.c
> +++ b/drivers/clk/qcom/gpucc-sc7280.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>
>  #include <linux/clk-provider.h>
> @@ -379,6 +380,9 @@ static struct clk_branch gpu_cc_sleep_clk = {
>
>  static struct gdsc cx_gdsc = {
>         .gdscr = 0x106c,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0x2,
>         .gds_hw_ctrl = 0x1540,
>         .pd = {
>                 .name = "cx_gdsc",
> @@ -389,6 +393,9 @@ static struct gdsc cx_gdsc = {
>
>  static struct gdsc gx_gdsc = {
>         .gdscr = 0x100c,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0x2,
>         .clamp_io_ctrl = 0x1508,
>         .pd = {
>                 .name = "gx_gdsc",
> diff --git a/drivers/clk/qcom/videocc-sc7280.c b/drivers/clk/qcom/videocc-sc7280.c
> index 615695d82319..b07895c459e8 100644
> --- a/drivers/clk/qcom/videocc-sc7280.c
> +++ b/drivers/clk/qcom/videocc-sc7280.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>
>  #include <linux/clk-provider.h>
> @@ -232,6 +233,9 @@ static struct clk_branch video_cc_venus_ahb_clk = {
>
>  static struct gdsc mvs0_gdsc = {
>         .gdscr = 0x3004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0x6,
>         .pd = {
>                 .name = "mvs0_gdsc",
>         },
> @@ -241,6 +245,9 @@ static struct gdsc mvs0_gdsc = {
>
>  static struct gdsc mvsc_gdsc = {
>         .gdscr = 0x2004,
> +       .en_rest_wait_val = 0x2,
> +       .en_few_wait_val = 0x2,
> +       .clk_dis_wait_val = 0x6,
>         .pd = {
>                 .name = "mvsc_gdsc",
>         },
> --
> 2.17.1
>
>


-- 
With best wishes
Dmitry

