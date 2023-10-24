Return-Path: <devicetree+bounces-11257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 864807D4F9B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:16:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE60E1F2227A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE32E262AE;
	Tue, 24 Oct 2023 12:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="GCdzVcMD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C337914F82
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:16:34 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1AD9A2
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 05:16:32 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 419ED420AE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698149788;
	bh=thwvxYYMUVPSY3nzBc7xApM08Kssn5NAFL9o/BCJG0g=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=GCdzVcMDl3yKio9zf1Tcxxo++Xsyf51R6f64l9afkdGXMSmsknkrIw6/Zpjx/eAWr
	 B8439IsTEVfwGmDsq/d90xFfI1+zc68fZNX5GD939TEB2w49o27YQB14ZZJL/dsC4j
	 ldGO87BBz6/fajM4weA1XZZ2GYh39tzkLGSrJC9IpWXbHrhaunUqN6UdiWtx24gmhK
	 s48TKR8diJpujTWT5cEJC6APhwU+vKePQN1PZsN7aVTqFQnN03jBKg4SoDWRwLDUH9
	 Kg9cF0lw8bewqoHWibF7ZVMGAUXW6S8KptvzqWRmAAPXJEwMXIG9bD6EyILtw/6zzr
	 0xs8eBnqPzusQ==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41cc72fca99so59999961cf.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 05:16:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698149786; x=1698754586;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=thwvxYYMUVPSY3nzBc7xApM08Kssn5NAFL9o/BCJG0g=;
        b=GOQh3y0tnH3Xc7g8ltFnI82XMEWIhoA+tD3rCIdXEx8eShkSKpMl7NxstxxH4jAIsx
         tfrm2Sxn53h9m8DaeROqJ9w3RJjtSvlQKEt5L3IO2AtPCVlNHbG0gQii8QsG78ndXhyC
         BVSHoJikat4c2MfA/cLXWZKYIjBWyrZW5vm1X/7y2xpNvXwFldq8bjuEITdecxknNmAA
         QS8Am2rK3c1Hcxle69TK+NihoKaSZ2vm49HXXCoCFHUZUVSqHaik25GNpm0YJALmNNyM
         OpchHjPrG9pkq0CYO+0+1A3SysLEeuCs0Xv40HQdnl+ZJGMyicj7yuYjQjsbJ8hj2K/1
         pBeQ==
X-Gm-Message-State: AOJu0Ywk/wDSGBbXM83oQHYbsjsn75Orxmw3syhOwN6sneipMG3Efar8
	GUQcbQ/p4+2ia6bUsT/9NeYlpwm7NEHVv2mA9j7RPZ5LXB/OPkRzmL75CZfEtxr+WJ7yf2HLiuM
	xSH8QjYTEm9IFHJznz5Gfxn+n9EnW84KpfHQv7QEF/R0QTdYzm95Dwc4=
X-Received: by 2002:a05:622a:2d2:b0:418:152d:bf4 with SMTP id a18-20020a05622a02d200b00418152d0bf4mr13460081qtx.51.1698149786495;
        Tue, 24 Oct 2023 05:16:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOE0qGS2pSUMsJf2A8W5Ex0DMIs+jJV1IcL5+p/qejHg+bJIzitFRzRk24ZJkjngpmMhUlqv5mwknRsepuX1A=
X-Received: by 2002:a05:622a:2d2:b0:418:152d:bf4 with SMTP id
 a18-20020a05622a02d200b00418152d0bf4mr13460067qtx.51.1698149786276; Tue, 24
 Oct 2023 05:16:26 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 24 Oct 2023 05:16:25 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231023-th1520-mmc-v3-6-abc5e7491166@baylibre.com>
References: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com> <20231023-th1520-mmc-v3-6-abc5e7491166@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 24 Oct 2023 05:16:25 -0700
Message-ID: <CAJM55Z-OBUsnybSLTxB8RHwsYuWhsMKVH3x8ana4=LeZ98Yv1Q@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] riscv: dts: thead: Enable BeagleV Ahead eMMC and microSD
To: Drew Fustini <dfustini@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org, Han Gao <gaohan@iscas.ac.cn>, 
	linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Robert Nelson <robertcnelson@beagleboard.org>, Jason Kridner <jkridner@beagleboard.org>, 
	Xi Ruoyao <xry111@xry111.site>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Drew Fustini wrote:
> Add mmc0 properties for the eMMC device and add mmc1 properties for
> the microSD slot. Set the frequency for the sdhci clock.
>
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> index 70e8042c8304..c4e748827889 100644
> --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> @@ -52,6 +52,10 @@ &uart_sclk {
>  	clock-frequency = <100000000>;
>  };
>
> +&sdhci_clk {
> +	clock-frequency = <198000000>;
> +};
> +
>  &dmac0 {
>  	status = "okay";
>  };
> @@ -59,3 +63,19 @@ &dmac0 {
>  &uart0 {
>  	status = "okay";
>  };
> +
> +&mmc0 {
> +	bus-width = <8>;
> +	max-frequency = <198000000>;
> +	mmc-hs400-1_8v;
> +	non-removable;
> +	no-sdio;
> +	no-sd;
> +	status = "okay";
> +};
> +
> +&mmc1 {
> +	max-frequency = <198000000>;
> +	bus-width = <4>;
> +	status = "okay";
> +};

Hi Drew,

For the StarFive device tree files we've agreed on sorting by / node, clock
references, and then other node references alphabetically. I'm not
insisting you should do the same, but it would be nice with some system to make
it clear where new node refences should go. Or maybe I'm just not seeing the
system you're already following.

/Emil

>
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

