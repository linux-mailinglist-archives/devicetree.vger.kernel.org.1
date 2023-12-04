Return-Path: <devicetree+bounces-21251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C45802F2B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C04221F2112B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F97B1D692;
	Mon,  4 Dec 2023 09:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="NmdrRMqz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2F21109
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 01:47:49 -0800 (PST)
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BFB1F44448
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 09:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701683267;
	bh=ocWHzI4I/IJpjMhErnBIZA0ZO+r+qla4DpGX2b6C1P0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=NmdrRMqz6Dn8pVCxdLH0b38V1DL0b54B2JMSS/NCd7mJDPKWRg4MPVWLNFlC2pQ4o
	 6TbXJTyt+RQuBq+MfuUnR9+2ddn/0yXKRlZNyDhMy167W16hTaExy7ufwdus3NZ1qS
	 qguGFa9MRVcJfQ6Upz0VoEyV9dlnJXGlNxCcVkxnXFVJ4WSVrUYVSYw58P1Huy30Sn
	 nqam6XoCwPjmcLlgczDJOpUG2BZaj3cgixf78zHxY3QlgLMzMjEUT3hWba5tfQ2cuQ
	 7ZWek5il3sTfdjzp2TBbtIrpXqzdj9IfdPUoxJkagc61qa2mhAFLQCJT7803/ONhqw
	 RTvhs9YALp1uA==
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-6d811dc2a60so3843264a34.0
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 01:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701683266; x=1702288066;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ocWHzI4I/IJpjMhErnBIZA0ZO+r+qla4DpGX2b6C1P0=;
        b=gAcf9BDg6DitefYU4AllLeuwGXFwfroZM8HyouK+gk/OeWwXdXF38RXbvma5Dmu2UT
         QMPVP0jnv8r6ZCiTlkR+6qb667hoyk2GjOuc0LYJZX6MfZ1/a1UvbR+ZbewllqI/Popp
         T2Inhum71vtVHXJI6/hRjP7UP7rBVp7P6jYGSuLPF8CTnR3D4eBE9Jv9sZ7pX2CsVewo
         vhgATaKyQAyT+BEqeBZVl1n1xPxha5r0NFgUB2WO22UAaLpdmZCgLF+H+upbAoS16eS3
         ZZb1dqFyrv1OrD+3GAQMb1l4bWb5vECQ0gQtl6AqYUrVwX9KFQQBS8m6lliGoHDcAJel
         NuPQ==
X-Gm-Message-State: AOJu0Yycl9Gq3st1J9HNq6y0CMkvfK8g5V72zM5pv9U/tpExjbww34jb
	ioyFDtAwIInhIAXDmkzqfmrZ9uDkQDbGrvzh+JlXrDmI1bvY0RaEmc+o3b2n6qhPp33Mq6rj++q
	+N1jmzFnNhVuGZcTfOdll472TXVuuOJ92TiCk3fvUtg5XnTwyrj7wV1Q=
X-Received: by 2002:a9d:7f0e:0:b0:6d8:74e2:6372 with SMTP id j14-20020a9d7f0e000000b006d874e26372mr3825850otq.76.1701683266653;
        Mon, 04 Dec 2023 01:47:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgZV7GOcP10ElEBcdLXqU6APkmXlqtrKTI9+ZUsE1OOlySmmnZwzKu0ALesi4xbldlngNAXeDz6+sW1IKUSAA=
X-Received: by 2002:a9d:7f0e:0:b0:6d8:74e2:6372 with SMTP id
 j14-20020a9d7f0e000000b006d874e26372mr3825830otq.76.1701683266357; Mon, 04
 Dec 2023 01:47:46 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 4 Dec 2023 01:47:45 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231129-th1520_mmc_dts-v7-2-c77fc19caa6f@baylibre.com>
References: <20231129-th1520_mmc_dts-v7-0-c77fc19caa6f@baylibre.com> <20231129-th1520_mmc_dts-v7-2-c77fc19caa6f@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 4 Dec 2023 01:47:45 -0800
Message-ID: <CAJM55Z-qc7gc0fO-K8byqvpOBjDxFD4dP57mFHuijvpOzBWObQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
To: Drew Fustini <dfustini@baylibre.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jason Kridner <jkridner@beagleboard.org>, Robert Nelson <robertcnelson@beagleboard.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Drew Fustini wrote:
> Add node for the SDHCI fixed clock. Add mmc0 node for the first mmc
> controller instance which is typically connected to the eMMC device.
> Add mmc1 node for the second mmc controller instance which is typically
> connected to microSD slot.
>
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index ba4d2c673ac8..af4fdcd82e0b 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -146,6 +146,13 @@ uart_sclk: uart-sclk-clock {
>  		#clock-cells = <0>;
>  	};
>
> +	sdhci_clk: sdhci-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <198000000>;
> +		clock-output-names = "sdhci_clk";
> +		#clock-cells = <0>;
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		interrupt-parent = <&plic>;
> @@ -304,6 +311,24 @@ dmac0: dma-controller@ffefc00000 {
>  			status = "disabled";
>  		};
>
> +		mmc0: mmc@ffe7080000 {
> +			compatible = "thead,th1520-dwcmshc";
> +			reg = <0xff 0xe7080000 0x0 0x10000>;
> +			interrupts = <62 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&sdhci_clk>;
> +			clock-names = "core";
> +			status = "disabled";
> +		};
> +
> +		mmc1: mmc@ffe7090000 {
> +			compatible = "thead,th1520-dwcmshc";
> +			reg = <0xff 0xe7090000 0x0 0x10000>;
> +			interrupts = <64 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&sdhci_clk>;
> +			clock-names = "core";
> +			status = "disabled";
> +		};
> +

Hi Drew,

This doesn't seem to match the documentation shared here:
https://lore.kernel.org/linux-riscv/5f437109d2be2b8843f549a661054a2e3ec0d66e.camel@xry111.site/
From the TH1520 System User Manual.pdf in there, I'd expect something like

	emmc: mmc@ffe7080000 {
		compatible = "thead,th1520-dwcmshc";
		reg = <0xff 0xe7080000 0x0 0x10000>;
		...
	};

	sdio0: mmc@ffe7090000 {
		compatible = "thead,th1520-dwcmshc";
		reg = <0xff 0xe7090000 0x0 0x10000>;
		...
	};

	sdio1: mmc@ffe70a0000 {
		compatible = "thead,th1520-dwcmshc";
		reg = <0xff 0xe70a0000 0x0 0x10000>;
		...
	};

/Emil

