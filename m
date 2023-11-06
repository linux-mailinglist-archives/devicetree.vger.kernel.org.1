Return-Path: <devicetree+bounces-14168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA307E2804
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:01:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A4EDD2810B8
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 15:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325DE28DBD;
	Mon,  6 Nov 2023 15:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUTy7kEF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD8128DBB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 15:01:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EE65C433C7;
	Mon,  6 Nov 2023 15:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699282913;
	bh=R/cSiyOAFRrqVhth3W2n5h61tFeVSdShjJRDQj6czH0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZUTy7kEFxYsF/koXOeL9ejldwPeR/VMnlbzSAsKZczqy5XRzb+OfUaZG3VAlG2kQS
	 thRBrISP/mcyuHif2TfZM7A/Yw106zfROyEIZTGQN8Om4RW1Aa8CDTVpzB+bckC+Vp
	 yXa7s5lX1p0u2J3AcCTx/nOeNqf0KSkE9Nrm3hkO6YDmcg4gWoQtmoTIZN+LzXMnp1
	 YaBoFQohLbxhKyIM+1VaLfnPLwcvsm/7pZRnBKzz0+XsEXQf7UVHPv1J+obnd8Mi8V
	 gN7hFzEdjVHwBRekbFUi0iRrUdb5bpiYeNlfb7kpvQIQ4bCormrcd9/Er50Vh/x+zj
	 W5RSB+DvZf4Cg==
Date: Mon, 6 Nov 2023 22:49:33 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 0/2] pwm: add driver for T-THEAD TH1520 SoC
Message-ID: <ZUj8/fhitNf8fRMf@xhacker>
References: <20231005130519.3864-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231005130519.3864-1-jszhang@kernel.org>

On Thu, Oct 05, 2023 at 09:05:17PM +0800, Jisheng Zhang wrote:
> T-HEAD SoCs such as the TH1520 contain a PWM controller used to
> control the LCD backlight, fan and so on. Add the PWM driver support
> for it.
> 
> Since the clk part isn't mainlined, so SoC dts(i) changes are not
> included in this series. However, it can be tested by using fixed-clock.
> 
> since v2:
>  - collect Reviewed-by tag
>  - add CTRL_ prefix for THEAD_PWM_CTRL register bit macros
>  - use pm_runtime_resume_and_get() instead of pm_runtime_get_sync() and
>    check its return value.
>  - remove unnecessary casts
>  - call pm_runtime_put_sync() when pwm channel is disabled
>  - use devm_pm_runtime_enable() and then drop .remove()
>  - properly consider if pwm is programmed by bootloader or other
>    pre-linux env.
>  - simplify thead_pwm_runtime_resume() code as Uwe suggested
>  - bool ever_started -> u8 channel_ever_started since we have 6 channels
>  - use 3 for #pwm-cells 
> 
> since v1:
>  - update commit msg and yaml filename to address Conor's comment
>  - use devm_clk_get_enabled() and devm_pwmchip_add()
>  - implement .get_state()
>  - properly handle overflow
>  - introduce thead_pwm_from_chip() inline function
>  - document Limitations
>  - address pm_runtime_get/put pingpong comment
> 
> 
> Jisheng Zhang (2):
>   dt-bindings: pwm: Add T-HEAD PWM controller
>   pwm: add T-HEAD PWM driver

Hi Thierry, Uwe,

Kind ping, is there any chance for this series to be merged for v6.7?

Thanks
> 
>  .../bindings/pwm/thead,th1520-pwm.yaml        |  44 +++
>  drivers/pwm/Kconfig                           |  11 +
>  drivers/pwm/Makefile                          |   1 +
>  drivers/pwm/pwm-thead.c                       | 270 ++++++++++++++++++
>  4 files changed, 326 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
>  create mode 100644 drivers/pwm/pwm-thead.c
> 
> -- 
> 2.40.1
> 

