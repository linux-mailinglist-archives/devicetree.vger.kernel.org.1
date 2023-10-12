Return-Path: <devicetree+bounces-8285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6E57C77CC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:19:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9223A282809
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E466A3D388;
	Thu, 12 Oct 2023 20:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDq3ZB8Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43353CCFE
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:19:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B5FFC433C7;
	Thu, 12 Oct 2023 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697141993;
	bh=1w9tmt3+s2Cw6gjksSzd4+LnjhCxmFxThwc7u2OEO40=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=kDq3ZB8Yzrdfi+09U4iPx/0bycBidEiPLQhB7JjcFFAK8Lbgbq+204TE0qvE0geMr
	 IsLBuwR4c/WMDO5N5RAsg4OwdhtqKcHRsQ/ch7SUm/v/QrnYfC+KMXKdv8LwaCdqIf
	 YfqSm5JzU6xvlezsAlTmUU5rs7GMV+ZS6pO2E7ARPfLJvdvjF2zo6xvewp3k8v/vha
	 t52xxy8238rabB9uRmFSyXq/rf0gs7cbOsWYlGx03wowKIHVH2XYIZrEtmQmL5FLZ8
	 g39uxc13xMEDPWCyLbIwgSCJVRN24EnK2g8Vj+79UP8F8ZZCSnAyEJNs3xOKti/7Id
	 ZPRkOzWbppIEw==
Message-ID: <c656a6b8ac2feefda16e6d1d548a9f80.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231011090028.1706653-4-quic_imrashai@quicinc.com>
References: <20231011090028.1706653-1-quic_imrashai@quicinc.com> <20231011090028.1706653-4-quic_imrashai@quicinc.com>
Subject: Re: [PATCH V2 3/4] clk: qcom: Add ECPRICC driver support for QDU1000 and QRU1000
From: Stephen Boyd <sboyd@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Imran Shaik <quic_imrashai@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>
Date: Thu, 12 Oct 2023 13:19:51 -0700
User-Agent: alot/0.10

Quoting Imran Shaik (2023-10-11 02:00:27)
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index 3194c8beb06d..60a981ff2bac 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -667,6 +667,14 @@ config QDU_GCC_1000
>           QRU1000 devices. Say Y if you want to use peripheral
>           devices such as UART, SPI, I2C, USB, SD, PCIe, etc.
> =20
> +config QDU_ECPRICC_1000
> +       tristate "QDU1000/QRU1000 ECPRI Clock Controller"

This needs a 'depends on ARM64 || COMPILE_TEST' type of line here.

> +       select QDU_GCC_1000
> +       help
> +         Support for the ECPRI clock controller on QDU1000 and
> +         QRU1000 devices. Say Y if you want to support the ECPRI
> +         clock controller functionality such as Ethernet.
> +
>  config SDM_GCC_845
>         tristate "SDM845/SDM670 Global Clock Controller"
>         depends on ARM64 || COMPILE_TEST
> diff --git a/drivers/clk/qcom/ecpricc-qdu1000.c b/drivers/clk/qcom/ecpric=
c-qdu1000.c
> new file mode 100644
> index 000000000000..e26912f3dd39
> --- /dev/null
> +++ b/drivers/clk/qcom/ecpricc-qdu1000.c
> @@ -0,0 +1,2466 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2022-2023, Qualcomm Innovation Center, Inc. All rights =
reserved.
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/module.h>
> +#include <linux/of.h>

What is the of.h include for? Did you mean mod_devicetable.h instead of
of_device_id?

> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +

