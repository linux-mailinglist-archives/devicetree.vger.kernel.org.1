Return-Path: <devicetree+bounces-241553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 91670C7FB3F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:46:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 59DC64E488E
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 09:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D50CA2F7468;
	Mon, 24 Nov 2025 09:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ujPQW/a+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF9C2F5A30
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763977573; cv=none; b=W8MWv1vlEUgPIKcVkKXzE7LTFSntw2e4moSwxryqk8wfMnAG+9szCgLScBEreE8lWTX5NyoxXvX0TvlY1h4dCdEyUr7vIpjZx+WRUwPTdZjSKQ1jjOys2y+ZhcZ0gWRcw8ndXWXXkqJgkWZRa/eFNFUqKOHc7vgKczAiH8RorFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763977573; c=relaxed/simple;
	bh=GvhnLHHW7HBFdV8tBSKTGXczZ4GrdqjqziHr6fuEobc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=aM7v6G+a2h7NJDpatzdkEmp12hs7HuL0ARosqyfcuIzTdw1G0nLPERG2hFdm5hCw4fLzx5jnSFo6emSGjjpc4wKf2JA2SxI/6FrNm8S9Eh+0NhGbfmUDaB1WAupU8TZnWVV833aDGA6qT5k/bbh0UzY2KQEOZmCn9+HeaRS9VPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ujPQW/a+; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b32ff5d10so2955620f8f.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 01:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763977569; x=1764582369; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+I1OH/e0SJaMpBEtI1yR0MCQld8hsjGMPHYDntH09Zs=;
        b=ujPQW/a+LuPMO0cnx5yf6GZiQ4JvZBYbWrcyLlriKvI42udF+ie3CFXlHnjkdsPMqB
         5kfgmDlBYLp4H1aMbKMbDLSvpptbviFJZTyijMAgboxROLf9YWQ00QoP2meNx37GmL7Y
         qAteXBuJW0kz8b4t0BrZ2WiOutLKh0by+C+XAdbkq1X+kSjduckmyGUdzkgMDExFRtWz
         jGVqqPE9wEdSjEeKBK1HNpmYV34wSsbGHcWOb2A/biDpWNgg1OkhMgOzeXqrNUmHW4U1
         M6BbuzWp+L0+kcQ15hicx8pWjYuUdFRVfiROPiuTLsZ6trPBntS7+N4bC3zjzVNdxupt
         5/Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763977569; x=1764582369;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+I1OH/e0SJaMpBEtI1yR0MCQld8hsjGMPHYDntH09Zs=;
        b=sy92qsjuXBGwyOXHFOiWRQIB1OWEyYYpdSugBjwLQOvRkiWrdxmbLgYz453kjZa0Y7
         DANlrpxz/7WMm9891PMmK1qT+Rp6CoPPVr6fPgF7ILJ1KPObZMwnHdprscH06niH3e9o
         cpv2/lpyHgS8GJSSUQCA8M5zczwpA+DXy96PGzQ2PXu8qYrf1CvwYfFvliR6ZB8/mm0s
         4Jd2cl+cKeaz0KnbF3Ck3FjedN4g3X9w5IcTF0mepHtaA3kUwhWD2Q7pjerwyr775YK2
         0I4qASVlX4N6B0VNrx7qZyRkrJ91P9FuAoedyxD67qXlvpjML10WXe1d8xtL+ykKp4XU
         OI7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUQjCFWnRuJqAq4CCLbKr1Wy67BA2Nb+A6AAt6kqrJVAHLiKN3YqDfUp9MUnFHjevNLPSMujfH9nrgo@vger.kernel.org
X-Gm-Message-State: AOJu0YzoWsJSzurQfGC27RWzlpBv1B22JboDMLYbJIpgHJIDdt6hrnAY
	qPaxaUWcnf6fnGEMp27tu2l1TeTAmbF87tVFwOuHk4Wcb9qvhWKZPsTG9gkxFAch8U4=
X-Gm-Gg: ASbGncuYF+MdrYZKz7v7yr/KGpaGhPjL49yH4gJFvkQaj6sMzEh1r4BeHD80PbEVa73
	+2kyGhOq5BhwLyrsDPsaBvF7Czcs/dl6pfigH9UqaPMCG95jtpgJ0Gbnh0eNphIlLx/xs2q0HIa
	vI5HAN9wT03T/aPxDcpchWkTJlCa38EX1ju0I19YLBJUBxvVigZ9btLZvUrSS7cRnYKGJrdMMPp
	yXPdWz+fGWLdEDemmSQa829FOJgyyCbmBsDfAqhBXDOfUPYHS5W5aBdn7oPe7xytPYDbp4I0HIg
	ya9kLR6yRe2+FPBrtOC/4uJysV1zfes2MCcudhWE35em4OAqhl3bwhMgQlq9lZKJHdYPv9hoGxU
	hbxnBK4y3GtDjW5pvIewlHeWFLLtqidPXZiCZEFS8BZqRjNcYps9RXZcjb6G/8UdA8AF6c6pkfF
	zTkwZZholYWA==
X-Google-Smtp-Source: AGHT+IHffWkX/Jj2vv2LF1SqqQ/0xrDubJ3urk0u5EZ0rxXKVAimRLIjEeCTq1HtkDUWFcvXmAc7fg==
X-Received: by 2002:a05:6000:4010:b0:42b:3dbe:3a37 with SMTP id ffacd0b85a97d-42cc1302285mr12809439f8f.10.1763977568979;
        Mon, 24 Nov 2025 01:46:08 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:4e2e:74ae:77df:106f])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-42cb7fba20esm27521911f8f.37.2025.11.24.01.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:46:08 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>
Cc: Xianwei Zhao <xianwei.zhao@amlogic.com>,  Chuan Liu
 <chuan.liu@amlogic.com>,  Neil Armstrong <neil.armstrong@linaro.org>,
  Kevin Hilman <khilman@baylibre.com>,  "Stephen Boyd" <sboyd@kernel.org>,
  Michael Turquette <mturquette@baylibre.com>,  "Dmitry Rokosov"
 <ddrokosov@sberdevices.ru>,  robh+dt <robh+dt@kernel.org>,  Rob Herring
 <robh@kernel.org>,  devicetree <devicetree@vger.kernel.org>,  linux-clk
 <linux-clk@vger.kernel.org>,  linux-amlogic
 <linux-amlogic@lists.infradead.org>,  linux-kernel
 <linux-kernel@vger.kernel.org>,  linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v5 0/5] add support for T7 family clock controller
In-Reply-To: <20251121105934.1759745-1-jian.hu@amlogic.com> (Jian Hu's message
	of "Fri, 21 Nov 2025 18:59:29 +0800")
References: <20251121105934.1759745-1-jian.hu@amlogic.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Mon, 24 Nov 2025 10:46:08 +0100
Message-ID: <1jy0nvu5jz.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri 21 Nov 2025 at 18:59, Jian Hu <jian.hu@amlogic.com> wrote:

> It introduces three clock controllers:
> - SCMI clock controller: these clocks are managed by the SCP and handled through SCMI.
> - PLL clock controller.
> - peripheral clock controller.
>
> Changes v5 since v4 at [4]:
> - rename rtc and cec dualdiv clocks
> - rename dsp clocks
> - rename anakin clocks
> - rename fdiv2_divn to 25m and fix its parent
> - add flag for T7_COMP_GATE
> - use T7_COMP_SEL/DIV/GATE to define glitch clocks
> - add CLK_SET_RATE_NO_REPARENT for t7_eth_rmii_sel and rtc
> - move module_platform_driver after clock driver

Looks good to me, just a few minor comments.

It is too late of this cycle. Please check the comments and re-send on
the next -rc1

>
> Changes v4 since v3 at [3]:
> - drop amlogic_t7_pll_probe, use meson_clkc_mmio_probe instead
> - add CLK_DIVIDER_MAX_AT_ZERO for pcie_pll_od clk
> - add frac for hifi_dco_pll_dco
> - add l_detect for mclk_pll_dco
> - drop v3 5/6 patch, and use MESON_PCLK
> - drop SPI_PWM_CLK_XX macro and use MESON_COMP_XX
> - drop the register's prefix
>
> Changes v3 since v2 at [2]:
> - update T7 PLL YAML
> - add 't7_' prefix for t7 clock name and variable in t7-pll.c and t7-peripherals.c
> - correct v1 patch link
> - add new macro MESON_PCLK_V2
> - update the driver,header,yaml file license
>
> Changes v2 since v1 at [1]:
> - add CLK_MESON import
> - add const for clkc_regmap_config in PLL driver
> - fix eth_rmii_sel parent
> - update T7 PLL YAML file
>
> [1]: https://lore.kernel.org/all/20241231060047.2298871-1-jian.hu@amlogic.com
> [2]: https://lore.kernel.org/all/20250108094025.2664201-1-jian.hu@amlogic.com
> [3]: https://lore.kernel.org/all/20250509074825.1933254-1-jian.hu@amlogic.com
> [4]: https://lore.kernel.org/all/20251030094345.2571222-1-jian.hu@amlogic.com
> Jian Hu (5):
>   dt-bindings: clock: add Amlogic T7 PLL clock controller
>   dt-bindings: clock: add Amlogic T7 SCMI clock controller
>   dt-bindings: clock: add Amlogic T7 peripherals clock controller
>   clk: meson: t7: add support for the T7 SoC PLL clock
>   clk: meson: t7: add t7 clock peripherals controller driver
>
>  .../clock/amlogic,t7-peripherals-clkc.yaml    |  116 ++
>  .../bindings/clock/amlogic,t7-pll-clkc.yaml   |  114 ++
>  drivers/clk/meson/Kconfig                     |   27 +
>  drivers/clk/meson/Makefile                    |    2 +
>  drivers/clk/meson/t7-peripherals.c            | 1266 +++++++++++++++++
>  drivers/clk/meson/t7-pll.c                    | 1068 ++++++++++++++
>  .../clock/amlogic,t7-peripherals-clkc.h       |  228 +++
>  .../dt-bindings/clock/amlogic,t7-pll-clkc.h   |   56 +
>  include/dt-bindings/clock/amlogic,t7-scmi.h   |   47 +
>  9 files changed, 2924 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,t7-peripherals-clkc.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,t7-pll-clkc.yaml
>  create mode 100644 drivers/clk/meson/t7-peripherals.c
>  create mode 100644 drivers/clk/meson/t7-pll.c
>  create mode 100644 include/dt-bindings/clock/amlogic,t7-peripherals-clkc.h
>  create mode 100644 include/dt-bindings/clock/amlogic,t7-pll-clkc.h
>  create mode 100644 include/dt-bindings/clock/amlogic,t7-scmi.h

-- 
Jerome

