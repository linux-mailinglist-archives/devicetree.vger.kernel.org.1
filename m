Return-Path: <devicetree+bounces-12012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AB97D7706
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 23:46:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32F0528114E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54E3347AE;
	Wed, 25 Oct 2023 21:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwAbudX9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BD4358BB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 21:45:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FB8DC433C7;
	Wed, 25 Oct 2023 21:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698270359;
	bh=D7K9D5FkQxgI+SxQC2ZWcKW+hmigiiDTP+3F/4Ccoos=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=jwAbudX9bC9v0VbbXMfuHgmVqzQuXUqOLU4dWO87PvFwb66c9JF6EgyOGqeih7bFH
	 q2p1WxFlZKTO+rZjt6AbBHWETd6deW6TIHCCwSAmXK1kRu8Z8d9vKc57NVM1RFD0nI
	 L5uSZMNQyxs4/aZBM+y7/J0HixEBFgODVTU8C9b72h5GFif1AK+AMT9KfNvldB9eWr
	 e2PgGWY/WL9bdWHOfmbOlzzGxTQoo1V3sLhkU9fnF/uwSjHIkx6ewHc4Y3znTDQcrB
	 yEbKCuKGrzhc17pwd0MoFyzRx/LpCBR5+iWCJNqlZsbJBPSTo3mscgBR/vRo6YVXA6
	 z0PblSkximmiw==
Message-ID: <a939ef1a4c2cad763fe484cc943f44d5.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-8-c89b59594caf@linaro.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org> <20231025-topic-sm8650-upstream-clocks-v1-8-c89b59594caf@linaro.org>
Subject: Re: [PATCH 08/10] clk: qcom: add the SM8650 Display Clock Controller driver
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Date: Wed, 25 Oct 2023 14:45:57 -0700
User-Agent: alot/0.10

Quoting Neil Armstrong (2023-10-25 00:32:45)
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index c04b6526f4f3..5bf25e8d033c 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -842,6 +842,15 @@ config SM_DISPCC_8550
>           Say Y if you want to support display devices and functionality =
such as
>           splash screen.
> =20
> +config SM_DISPCC_8650
> +       tristate "SM8650 Display Clock Controller"
> +       depends on SM_GCC_8650

selects?

We use selects instead of depends so that the driver can be built-in or
modular regardless of parent clks that provide clks to this device.
Orphan clk handling resolves issues with the driver registering clks
before parents. And with fw_devlink the driver isn't even attempted to
probe before the GCC driver is probed so there's no build dependency
between these drivers.

> +       help
> +         Support for the display clock controller on Qualcomm Technologi=
es, Inc
> +         SM8650 devices.
> +         Say Y if you want to support display devices and functionality =
such as
> +         splash screen.
> +
>  config SM_GCC_4450
>         tristate "SM4450 Global Clock Controller"
>         depends on ARM64 || COMPILE_TEST
> diff --git a/drivers/clk/qcom/dispcc-sm8650.c b/drivers/clk/qcom/dispcc-s=
m8650.c
> new file mode 100644
> index 000000000000..7cb91306e895
> --- /dev/null
> +++ b/drivers/clk/qcom/dispcc-sm8650.c
> @@ -0,0 +1,1806 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2023, Linaro Ltd.
> + */
> +
> +#include <linux/clk.h>

Is this include used?

> +#include <linux/clk-provider.h>
> +#include <linux/err.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>

Is this mod_devicetable.h?

> +#include <linux/of.h>

Is this include used?

> +#include <linux/regmap.h>
> +#include <linux/pm_runtime.h>
> +
> +#include <dt-bindings/clock/qcom,sm8650-dispcc.h>
> +
> +#include "common.h"
> +#include "clk-alpha-pll.h"
> +#include "clk-branch.h"
> +#include "clk-pll.h"
> +#include "clk-rcg.h"
> +#include "clk-regmap.h"
> +#include "clk-regmap-divider.h"
> +#include "clk-regmap-mux.h"

Is this include used?

> +#include "reset.h"
> +#include "gdsc.h"
> +

