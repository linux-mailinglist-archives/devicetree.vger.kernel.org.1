Return-Path: <devicetree+bounces-118796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D27589BB8F2
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 16:26:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01A751C21CF6
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0807F1BF80C;
	Mon,  4 Nov 2024 15:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="kVzrRKxl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A4B1B6CF9
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 15:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730733979; cv=none; b=gyq7m1O2R8JFUVe/C4mUl5IcHs8KbgEFRARzjDgU5d/WLInaT2cqWHKkDKomVAu2LVv3e1ZKgJCl4Lg1KUcOpNB344IE3WH+qf9lS1BO4sK7q3DkZrmt3+TBhL9ukhSCyRM8RgJEkXLEXua01V1mxf7IDJvMbqXlgU9NtfZ15js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730733979; c=relaxed/simple;
	bh=CtoZUHAkaZDFFBjdZ9IJcA40bV8tZE+w4HbODT1BmmY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oIozgwq0nusj15u/j2IasrOecFkWGCQs6uMGs0GjzF+7LlLGrxj82D4zHRWNQTYIkCloY2q8GEBvWaHD+fM3rfnyX8J8eC5n69tynQ0g0cHnrpVWppsvgGhe7MHrLD8otnWMYq/xyoq/ZHGN4/eFGz11OWF8Q2G0vUhAb7+dbe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=kVzrRKxl; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DF2043F181
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 15:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1730733967;
	bh=nLr3ejFwtoxSfGD1Ta6KgkGyD7K+B1kTs0x5zuGkEZk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=kVzrRKxlsAvcQ3jCLNGGtXvEV5QYknKX2pgQ2w2m4AZV5GQso5vCArh3wQzjsquac
	 ZAYJGg2JJjLAc6gVntmxz7MXeGyeIn3phYGCud1GeEdHUPaayHPC8byy5QITjXu8JZ
	 YysEpPIAPQArKSTZz/CKTmLUw7rQyVf4JtlyxqhuvOZF1uwONYla3d2beEqAau9qGC
	 3Y5r/ORdwVxziQKCcDVTGDrGAo6BcnryvBS6KYh6wAG8evWjuvGi6hcDcPNrqH8BGX
	 jbOZ3Y+hOj3Pu0XYFnSLUTIKFeTfUFiQ2V6a7OZ2TGFhgLAplN3mljlbYYeiaIZlB0
	 5qq4aMga/BmdQ==
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-286efde9783so4471653fac.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 07:26:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730733967; x=1731338767;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nLr3ejFwtoxSfGD1Ta6KgkGyD7K+B1kTs0x5zuGkEZk=;
        b=HEVj6tdhyhV8ky4xVxCE55fgSYPcLqbscQIh0tE4ts8xdpO9MhCjlVPGap5sk+2rad
         IjQerpxuTf6T/xlct6YvdS7Y05gYMCm9t+xnbctaM2NbbRNViNeZ+PDyXDfkrKO9MgDe
         JqziTJOvfrwqni36BM7Z7SWC7eqboblOjf7cGrV7XeZz+S8Stwapp59X4E6yO0EFODtX
         Cz0K6jrOtip/Tx8lI2xzsxuXO9o3b6nCDgu2ZQ+elare4B/5GQl5JxIrLMH4PEvxfn5l
         loFGzSuMbKkvWGZ8GQ7QO7+16xHZG9Q/PrHW2gvqtuvPgZcFS6kooJD3gHQyB3G7JW3L
         3+BQ==
X-Gm-Message-State: AOJu0YyaJZp9ZmhRDM4sXZruZkeYFmwj1NUKtoOyTJuAtnOvNfY1kqWV
	WufLXUR/wjxo7dHoxxEYgpbmLKL4eiBSOu341K1uEEnL/596ib7jurnYYLq2jXZSTXqZp56HiLC
	Xr/P2wWEpnvYSBf+Z87wNeFKRciWinhQ51v7z5GH2FAaVSCPNeAeuBbemz1yFjjHQzGprTsbU8x
	0LHonB/9CFvXxVQOi6nmYal0tHOc0xmLZNUq1kkK8W54JIq5akhQ==
X-Received: by 2002:a05:6870:288b:b0:288:9adc:3670 with SMTP id 586e51a60fabf-2949f014f50mr9303473fac.29.1730733966807;
        Mon, 04 Nov 2024 07:26:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFI6nEYtynrseYyifqqJ8kASO1RznklWY9IpKRVpE1rUdJvI3XiQYgw4TZWQo4G/Mik6kNigtEeGNqK5f7LQ4I=
X-Received: by 2002:a05:6870:288b:b0:288:9adc:3670 with SMTP id
 586e51a60fabf-2949f014f50mr9303458fac.29.1730733966540; Mon, 04 Nov 2024
 07:26:06 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 4 Nov 2024 07:26:06 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241102000843.1301099-12-samuel.holland@sifive.com>
References: <20241102000843.1301099-1-samuel.holland@sifive.com> <20241102000843.1301099-12-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 4 Nov 2024 07:26:06 -0800
Message-ID: <CAJM55Z-caGvqZXDTtbj0LknAJVgj1s5_p0SaN3kJog1950L0yg@mail.gmail.com>
Subject: Re: [PATCH 11/11] riscv: dts: starfive: jh7100: Use physical memory
 ranges for DMA
To: Samuel Holland <samuel.holland@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Alexandre Ghiti <alexghiti@rivosinc.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Samuel Holland wrote:
> JH7100 provides a physical memory region which is a noncached alias of
> normal cacheable DRAM. Now that Linux can apply PMAs by selecting
> between aliases of a physical memory region, any page of DRAM can be
> marked as noncached for use with DMA, and the preallocated DMA pool is
> no longer needed. This allows portable kernels to boot on JH7100 boards.
>
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
> ---
>
>  arch/riscv/Kconfig.errata                     | 19 ------------
>  .../boot/dts/starfive/jh7100-common.dtsi      | 30 ++++---------------
>  2 files changed, 6 insertions(+), 43 deletions(-)
>
> diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
> index 2806ed7916c7..fc2c7fb2caff 100644
> --- a/arch/riscv/Kconfig.errata
> +++ b/arch/riscv/Kconfig.errata
> @@ -53,25 +53,6 @@ config ERRATA_SIFIVE_CIP_1200
>
>  	  If you don't know what to do here, say "Y".
>
> -config ERRATA_STARFIVE_JH7100
> -	bool "StarFive JH7100 support"
> -	depends on ARCH_STARFIVE
> -	depends on !DMA_DIRECT_REMAP
> -	depends on NONPORTABLE
> -	select DMA_GLOBAL_POOL

Hi Samuel,

Thank you for working on this!

The JH7100 still need the RISCV_NONSTANDARD_CACHE_OPS from the sifive-ccache
driver for streaming DMA, so if I just remove the 3 lines above instead of the
whole ERRATE_STARFIVE_JH7110 (and enable RISCV_ISA_SVPBMT) this series works on
my Starlight board.

> -	select RISCV_DMA_NONCOHERENT
> -	select RISCV_NONSTANDARD_CACHE_OPS
> -	select SIFIVE_CCACHE
> -	default n
> -	help
> -	  The StarFive JH7100 was a test chip for the JH7110 and has
> -	  caches that are non-coherent with respect to peripheral DMAs.
> -	  It was designed before the Zicbom extension so needs non-standard
> -	  cache operations through the SiFive cache controller.
> -
> -	  Say "Y" if you want to support the BeagleV Starlight and/or
> -	  StarFive VisionFive V1 boards.
> -
>  config ERRATA_THEAD
>  	bool "T-HEAD errata"
>  	depends on RISCV_ALTERNATIVE
> diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> index ae1a6aeb0aea..34885fe40e2d 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> @@ -9,8 +9,14 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/pinctrl-starfive-jh7100.h>
> +#include <dt-bindings/riscv/physical-memory.h>
>
>  / {
> +	riscv,physical-memory-regions =
> +		<0x00 0x00000000 0x40 0x00000000 (PMA_RW | PMA_IO) 0x0>,
> +		<0x00 0x80000000 0x08 0x00000000 (PMA_RWXA | PMA_NONCOHERENT_MEMORY) 0x0>,
> +		<0x10 0x00000000 0x08 0x00000000 (PMA_RWX | PMA_NONCACHEABLE_MEMORY | PMR_ALIAS(1)) 0x0>;
> +

The size and placement of the DMA pool was kind of arbitrary but the above is
a feature of the SoC, so should be moved to jh7100.dtsi instead.

>  	aliases {
>  		mmc0 = &sdio0;
>  		mmc1 = &sdio1;
> @@ -42,30 +48,6 @@ led-ack {
>  		};
>  	};
>
> -	reserved-memory {
> -		#address-cells = <2>;
> -		#size-cells = <2>;
> -		ranges;
> -
> -		dma-reserved@fa000000 {
> -			reg = <0x0 0xfa000000 0x0 0x1000000>;
> -			no-map;
> -		};
> -
> -		linux,dma@107a000000 {
> -			compatible = "shared-dma-pool";
> -			reg = <0x10 0x7a000000 0x0 0x1000000>;
> -			no-map;
> -			linux,dma-default;
> -		};
> -	};
> -
> -	soc {
> -		dma-ranges = <0x00 0x80000000 0x00 0x80000000 0x00 0x7a000000>,
> -			     <0x00 0xfa000000 0x10 0x7a000000 0x00 0x01000000>,
> -			     <0x00 0xfb000000 0x00 0xfb000000 0x07 0x85000000>;
> -	};
> -
>  	wifi_pwrseq: wifi-pwrseq {
>  		compatible = "mmc-pwrseq-simple";
>  		reset-gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
> --
> 2.45.1
>

