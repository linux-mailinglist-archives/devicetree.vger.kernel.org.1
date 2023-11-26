Return-Path: <devicetree+bounces-18958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAEA7F9363
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 16:36:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93FD7B20D11
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 15:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F0AD26A;
	Sun, 26 Nov 2023 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="QuQ2hnbz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E74A2E1
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 07:35:47 -0800 (PST)
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F2D0C40C59
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701012946;
	bh=XKvEfE/yT+1u6a5zCoBgvHyNpleLhtsW9IihC1CtfgY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=QuQ2hnbzOdmjQTzOrN5UKqDY8TitkA7LUk8K3ZxfX7KE2TD5VtTM8sq/+y5Yd8PG3
	 J6CyBQa31rkfKDFvquyJo+xAX9LOPdCMn11yxYDgpj3/+IJWa19jAzZxlX9qWacVf9
	 GWe8gGJFyUcOgeBagFsy3ZWRrAny5xTDJhtLIbR9840JfDFf+5vXw8t4Li6BflYMCN
	 oBFB6vQYv+coDoOc7zsFKiCEiEgF/NCAwlO/SMclJE8E0XtiGd1CVoTQ+INuevOaee
	 eadzABWyRSSOV02mmvenSvN0DYQndjIG0XE0Uvcc1uUJDhmcfoSOx7JQOTC3C8Y23L
	 wMmqtzkxlO9hA==
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-1f950d4e1f8so4726592fac.2
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 07:35:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701012944; x=1701617744;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XKvEfE/yT+1u6a5zCoBgvHyNpleLhtsW9IihC1CtfgY=;
        b=BEuT6r8zG7wsMoPFGg60Cit85gAHlZ2CXFiiXMdCv4Dl5Uv7vNDLe54+3o6NmYqJhZ
         RTKZEMMQSW94LrPb1kiVgwdr+Ni3ceDvIGtKbn5UE8lZGr7BJYRxUHrXzumQeiPnj7MN
         fZ1Gwi86uQxFbfDKlHsWBPkAXQ6b3Pny/+Aa9BNQiw/i9r3Cmc0DtYOHa+egeo7uIBtD
         +adkVMYwTIfV0caZh677MVmxeuU9GwYtYa7RjxF8naB4e1lBetra/Oo8Y0++qyCMV4aO
         2MEXo5VlCo7QKBXfq2KgOvm+0CWhAZhHZwIaiiFb9YOtn5/zZZgsHehw+HJiTxabm1/I
         2hBA==
X-Gm-Message-State: AOJu0YzWh9URlvHyluCEwQSVrbj0VN2v5ztdiPBoWFydW182Uz+Bcoa2
	wEIDFcRqo0DPvhEY0SQqq0xaNNrqewCYaogCBtxS3c+4d5MKxEwrOhcwX37ZujCxorV8dAzuDHv
	y7m4ZwI/Kkxm/GzCJucSUbm0Kp44bUTfcAKqlDQKUosAkhFaANZLPluWXdzhic68=
X-Received: by 2002:a05:6870:3c8b:b0:1f5:c6f9:b76d with SMTP id gl11-20020a0568703c8b00b001f5c6f9b76dmr12642870oab.49.1701012944494;
        Sun, 26 Nov 2023 07:35:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGPyr6YtnSTxDyRnhJ4O+RkJcUnFuikgx1HgSKh7dR1BpfbqeB2EhGJO7dnreod0RXfNNu8Voklx2OIMwDo9gc=
X-Received: by 2002:a05:6870:3c8b:b0:1f5:c6f9:b76d with SMTP id
 gl11-20020a0568703c8b00b001f5c6f9b76dmr12642845oab.49.1701012944216; Sun, 26
 Nov 2023 07:35:44 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 26 Nov 2023 16:35:43 +0100
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231126-unlighted-favorably-4627f2361a59@spud>
References: <20231126-unlighted-favorably-4627f2361a59@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sun, 26 Nov 2023 16:35:43 +0100
Message-ID: <CAJM55Z8-xJfxeV1xJrKXDpsGV05QV4C3JP3myRRBEq6dNfdPLQ@mail.gmail.com>
Subject: Re: [PATCH v1] riscv: dts: microchip: move timebase-frequency to mpfs.dtsi
To: Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor.dooley@microchip.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>
> The timebase-frequency on PolarFire SoC is not set by an oscillator on
> the board, but rather by an internal divider, so move the property to
> mpfs.dtsi.
>
> This looks to be copy-pasta from the SiFive Unleashed as the comments
> in both places were almost identical. In the Unleashed's case this looks
> to actually be valid, as the clock is provided by a crystal on the PCB.
>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Makes sense to me.

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
> CC: Conor Dooley <conor.dooley@microchip.com>
> CC: Daire McNamara <daire.mcnamara@microchip.com>
> CC: Rob Herring <robh+dt@kernel.org>
> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Palmer Dabbelt <palmer@dabbelt.com>
> CC: linux-riscv@lists.infradead.org
> CC: devicetree@vger.kernel.org
> ---
>  arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts | 7 -------
>  arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dts | 7 -------
>  arch/riscv/boot/dts/microchip/mpfs-polarberry.dts | 7 -------
>  arch/riscv/boot/dts/microchip/mpfs-sev-kit.dts    | 7 -------
>  arch/riscv/boot/dts/microchip/mpfs-tysom-m.dts    | 7 -------
>  arch/riscv/boot/dts/microchip/mpfs.dtsi           | 1 +
>  6 files changed, 1 insertion(+), 35 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
> index 90b261114763..dce96f27cc89 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
> +++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
> @@ -8,9 +8,6 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/leds/common.h>
>
> -/* Clock frequency (in Hz) of the rtcclk */
> -#define RTCCLK_FREQ		1000000
> -
>  / {
>  	model = "Microchip PolarFire-SoC Icicle Kit";
>  	compatible = "microchip,mpfs-icicle-reference-rtlv2210", "microchip,mpfs-icicle-kit",
> @@ -29,10 +26,6 @@ chosen {
>  		stdout-path = "serial1:115200n8";
>  	};
>
> -	cpus {
> -		timebase-frequency = <RTCCLK_FREQ>;
> -	};
> -
>  	leds {
>  		compatible = "gpio-leds";
>
> diff --git a/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dts b/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dts
> index 184cb36a175e..a8d623ee9fa4 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dts
> +++ b/arch/riscv/boot/dts/microchip/mpfs-m100pfsevp.dts
> @@ -10,9 +10,6 @@
>  #include "mpfs.dtsi"
>  #include "mpfs-m100pfs-fabric.dtsi"
>
> -/* Clock frequency (in Hz) of the rtcclk */
> -#define MTIMER_FREQ	1000000
> -
>  / {
>  	model = "Aries Embedded M100PFEVPS";
>  	compatible = "aries,m100pfsevp", "microchip,mpfs";
> @@ -33,10 +30,6 @@ chosen {
>  		stdout-path = "serial1:115200n8";
>  	};
>
> -	cpus {
> -		timebase-frequency = <MTIMER_FREQ>;
> -	};
> -
>  	ddrc_cache_lo: memory@80000000 {
>  		device_type = "memory";
>  		reg = <0x0 0x80000000 0x0 0x40000000>;
> diff --git a/arch/riscv/boot/dts/microchip/mpfs-polarberry.dts b/arch/riscv/boot/dts/microchip/mpfs-polarberry.dts
> index c87cc2d8fe29..ea0808ab1042 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs-polarberry.dts
> +++ b/arch/riscv/boot/dts/microchip/mpfs-polarberry.dts
> @@ -6,9 +6,6 @@
>  #include "mpfs.dtsi"
>  #include "mpfs-polarberry-fabric.dtsi"
>
> -/* Clock frequency (in Hz) of the rtcclk */
> -#define MTIMER_FREQ	1000000
> -
>  / {
>  	model = "Sundance PolarBerry";
>  	compatible = "sundance,polarberry", "microchip,mpfs";
> @@ -22,10 +19,6 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>
> -	cpus {
> -		timebase-frequency = <MTIMER_FREQ>;
> -	};
> -
>  	ddrc_cache_lo: memory@80000000 {
>  		device_type = "memory";
>  		reg = <0x0 0x80000000 0x0 0x2e000000>;
> diff --git a/arch/riscv/boot/dts/microchip/mpfs-sev-kit.dts b/arch/riscv/boot/dts/microchip/mpfs-sev-kit.dts
> index 013cb666c72d..f9a890579438 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs-sev-kit.dts
> +++ b/arch/riscv/boot/dts/microchip/mpfs-sev-kit.dts
> @@ -6,9 +6,6 @@
>  #include "mpfs.dtsi"
>  #include "mpfs-sev-kit-fabric.dtsi"
>
> -/* Clock frequency (in Hz) of the rtcclk */
> -#define MTIMER_FREQ		1000000
> -
>  / {
>  	#address-cells = <2>;
>  	#size-cells = <2>;
> @@ -28,10 +25,6 @@ chosen {
>  		stdout-path = "serial1:115200n8";
>  	};
>
> -	cpus {
> -		timebase-frequency = <MTIMER_FREQ>;
> -	};
> -
>  	reserved-memory {
>  		#address-cells = <2>;
>  		#size-cells = <2>;
> diff --git a/arch/riscv/boot/dts/microchip/mpfs-tysom-m.dts b/arch/riscv/boot/dts/microchip/mpfs-tysom-m.dts
> index e0797c7e1b35..d1120f5f2c01 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs-tysom-m.dts
> +++ b/arch/riscv/boot/dts/microchip/mpfs-tysom-m.dts
> @@ -11,9 +11,6 @@
>  #include "mpfs.dtsi"
>  #include "mpfs-tysom-m-fabric.dtsi"
>
> -/* Clock frequency (in Hz) of the rtcclk */
> -#define MTIMER_FREQ		1000000
> -
>  / {
>  	model = "Aldec TySOM-M-MPFS250T-REV2";
>  	compatible = "aldec,tysom-m-mpfs250t-rev2", "microchip,mpfs";
> @@ -34,10 +31,6 @@ chosen {
>  		stdout-path = "serial1:115200n8";
>  	};
>
> -	cpus {
> -		timebase-frequency = <MTIMER_FREQ>;
> -	};
> -
>  	ddrc_cache_lo: memory@80000000 {
>  		device_type = "memory";
>  		reg = <0x0 0x80000000 0x0 0x30000000>;
> diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> index a6faf24f1dba..266489d43912 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
> +++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
> @@ -13,6 +13,7 @@ / {
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> +		timebase-frequency = <1000000>;
>
>  		cpu0: cpu@0 {
>  			compatible = "sifive,e51", "sifive,rocket0", "riscv";
> --
> 2.39.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

