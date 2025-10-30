Return-Path: <devicetree+bounces-233281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F169C20805
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 15:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D0E0426F4D
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B07F230BF6;
	Thu, 30 Oct 2025 14:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="rmpFv0MC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2A8126BF1
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 14:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761833210; cv=none; b=QfVvN6iwVisbqsYcHmKIAmKCfEQTKZhndoqF2PnF4+nfWk6/m+17Dy+sDjn1eJ4mExcTpPjdbRQhJVgbotoVXY4N+K7mPRaAoXcyrZdhzARTKP3Wx1UlRfVIj1NmBlaqyOHCwEub9AGP3sh5HRp5qOIBmFfxE9uiyH0dDLRrGQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761833210; c=relaxed/simple;
	bh=vlrXieZJIM0Rlm26RWHo1ECEZXEB57lq6Fdh4/guU8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GK8lKPI93dx257+RWfmSpqvOqlqitD68PCAwNvkjzw/gV8/TKlv+qpy1Q+Ik8IyE6HfRgQi//7bIOL703bJf0kuJw1XhVrzLxqikpvwpd167KoRCWBlvOTWQNUmb5T1uqA6y9eN7zK7Nv0hXl3Qzqzuseh8zslaqXAwwhh3Tht4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=rmpFv0MC; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1761833201;
 bh=11fSyszQtR3jkoioIebSh0k83RLr07LvekxLFqOoF38=;
 b=rmpFv0MCFYgKoBUSIgJHo6N8yf8sAKdFvtG9ZrNtHT0HDKR1UDRTi23nfFSGYLtMVQgaJvNwJ
 kFHUBUCfpPjinps0Czw2tGCC5ATfu1WSU9VpdvHWo2wFLN7oe1XpC9FILUJkN+stgyBu3LlzazO
 Tu+GkPEfBjzD508ORv2s9mdlrbxmwb3egUPUquKd1w7no+Xu2tPhQVmRhg7hIJaDh/JVcTa7gFR
 FNjr67weGDgMEYU4Sp4kijBsFmYfhxcs7FxeT55RRVjh5TF8mp9V6wl7mgPbz5D9P0BUSHDRfQC
 rW2dw/8GyBGI8vfergAdUNJc8rgnZc4bLvQcOCPYbhmA==
X-Forward-Email-ID: 69036e450fa9097cfdeb6e32
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.4.1
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <241e4a1d-039c-4738-b492-6325ad354b2e@kwiboo.se>
Date: Thu, 30 Oct 2025 14:55:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/7] dt-bindings: clock: rockchip: Add RK3506 clock and
 reset unit
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, sugar.zhang@rock-chips.com,
 heiko@sntech.de, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 huangtao@rock-chips.com, finley.xiao@rock-chips.com
References: <20251027084147.4148739-1-zhangqing@rock-chips.com>
 <20251027084147.4148739-7-zhangqing@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251027084147.4148739-7-zhangqing@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Elaine,

On 10/27/2025 9:41 AM, Elaine Zhang wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Add device tree bindings for clock and reset unit on RK3506 SoC.
> Add clock and reset IDs for RK3506 SoC.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> ---
>  .../bindings/clock/rockchip,rk3506-cru.yaml   |  51 ++++
>  .../dt-bindings/clock/rockchip,rk3506-cru.h   | 285 ++++++++++++++++++
>  .../dt-bindings/reset/rockchip,rk3506-cru.h   | 211 +++++++++++++
>  3 files changed, 547 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3506-cru.yaml
>  create mode 100644 include/dt-bindings/clock/rockchip,rk3506-cru.h
>  create mode 100644 include/dt-bindings/reset/rockchip,rk3506-cru.h

[snip]

> diff --git a/include/dt-bindings/reset/rockchip,rk3506-cru.h b/include/dt-bindings/reset/rockchip,rk3506-cru.h
> new file mode 100644
> index 000000000000..f38cc066009b
> --- /dev/null
> +++ b/include/dt-bindings/reset/rockchip,rk3506-cru.h
> @@ -0,0 +1,211 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) 2023-2025 Rockchip Electronics Co., Ltd.
> + * Author: Finley Xiao <finley.xiao@rock-chips.com>
> + */
> +
> +#ifndef _DT_BINDINGS_REST_ROCKCHIP_RK3506_H
> +#define _DT_BINDINGS_REST_ROCKCHIP_RK3506_H
> +
> +/* CRU-->SOFTRST_CON00 */
> +#define SRST_NCOREPORESET0_AC		0
> +#define SRST_NCOREPORESET1_AC		1
> +#define SRST_NCOREPORESET2_AC		2
> +#define SRST_NCORESET0_AC		3
> +#define SRST_NCORESET1_AC		4
> +#define SRST_NCORESET2_AC		5
> +#define SRST_NL2RESET_AC		6
> +#define SRST_ARESETN_CORE_BIU_AC	7
> +#define SRST_HRESETN_M0_AC		8
> +
> +/* CRU-->SOFTRST_CON02 */
> +#define SRST_NDBGRESET			9
> +#define SRST_PRESETN_CORE_BIU		10
> +#define SRST_RESETN_PMU			11
> +
> +/* CRU-->SOFTRST_CON03 */
> +#define SRST_PRESETN_DBG		12
> +#define SRST_POTRESETN_DBG		13
> +#define SRST_PRESETN_CORE_GRF		14
> +#define SRST_RESETN_CORE_EMA_DETECT	15
> +#define SRST_RESETN_REF_PVTPLL_CORE	16
> +#define SRST_PRESETN_GPIO1		17
> +#define SRST_DBRESETN_GPIO1		18
> +
> +/* CRU-->SOFTRST_CON04 */
> +#define SRST_ARESETN_CORE_PERI_BIU	19
> +#define SRST_ARESETN_DSMC		20
> +#define SRST_PRESETN_DSMC		21
> +#define SRST_RESETN_FLEXBUS		22
> +#define SRST_ARESETN_FLEXBUS		23
> +#define SRST_HRESETN_FLEXBUS		24
> +#define SRST_ARESETN_DSMC_SLV		25
> +#define SRST_HRESETN_DSMC_SLV		26
> +#define SRST_RESETN_DSMC_SLV		27
> +
> +/* CRU-->SOFTRST_CON05 */
> +#define SRST_ARESETN_BUS_BIU		28
> +#define SRST_HRESETN_BUS_BIU		29
> +#define SRST_PRESETN_BUS_BIU		30
> +#define SRST_ARESETN_SYSRAM		31
> +#define SRST_HRESETN_SYSRAM		32
> +#define SRST_ARESETN_DMAC0		33
> +#define SRST_ARESETN_DMAC1		34
> +#define SRST_HRESETN_M0			35
> +#define SRST_RESETN_M0_JTAG		36
> +#define SRST_HRESETN_CRYPTO		37

Is there a reason why this (and the RV1126B) reset names now include the
RESETN name in all reset constant?

For RK3528 and prior mainline SoCs the RESETN part of the name has been
striped from the constant, suggest we also strip the RESETN part for
RK3506 and RV1126B for consistency with other RK SoCs.

Regards,
Jonas

[snip]

