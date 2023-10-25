Return-Path: <devicetree+bounces-11844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D103F7D6D6C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:38:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E243E1C20C55
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D95228686;
	Wed, 25 Oct 2023 13:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Zbm7JNN2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E77F9D8
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:38:17 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6299132
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:38:15 -0700 (PDT)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 571693FA92
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698241091;
	bh=4kZetE1rdZ7P5Qi3G+jzZsycI0EzhJ2peFQaOTjHG8s=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=Zbm7JNN2Kn7owckCN61T9VLnq7JznyG0uypYpg7GhfIVzNywEinmhNxr1xJtZ573f
	 IIq6YSNAkpkpiOIPz6Ubg6qJz5QC5uqdXSVOUppYeQQIKWQ1GCwE0EyQN3O0pGpx6Z
	 WLzsPhjE/EouOaakO0m8TMcbrgNLl0kqyoAwyuGojTwNliBn8lUdUBYYl7P4SvgOVS
	 xOjPEvPQs3QXzvDbN24KXy3hsfTLn7YtZDzYzEhTCLg+xvOyStKnAGS5aIWmB6XQwW
	 OF+1jq0sKV4PE4Qq8wcNZH8Av2oMgXQFrl21ViaN+VDrQXdpR0Tswq7t/cZMLG2fi2
	 n1UXxIuKw3aBw==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41cb6df5c7bso63930861cf.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:38:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698241090; x=1698845890;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4kZetE1rdZ7P5Qi3G+jzZsycI0EzhJ2peFQaOTjHG8s=;
        b=cChTfXeOIHtZtMrUiF5kLCnPMnFLXiAlgtwxBxO577shSNgIkqbY5livFWoKgf2tMv
         ofEUk4FXoRG/izd6dzh6dS1uAJShxnyy2+Mdxk7EBmsLaH+V+8MZeIVdK8FhaE0RHzNQ
         QwiOKbPcM5cJmdVWSlzLhchbkcrJIpHHFgLZxUbTLvp1F7UfOhEtNHUoaSO6a7FyCS7m
         WuLG8JYRT4yfoc0QSTAdGSBjbH6YZjPF2zSZVNcKmD5sy7aJX5X3C47pak+5vy5IRCl0
         l3B5XDTQseKB115/AN8kM6sX8+55DJxXgBKDw+FLdae0TanzbA4TKFnxpMdH6/zEf+aq
         Lh0Q==
X-Gm-Message-State: AOJu0YwSR2DthV+wjVXlvxGYTumLQ5SGE3fpMjWc6jMxjIaTtWDtz5Sp
	wkDmnioAlqx2MCh2Rlmn1OA+kR9C9DInqUBB5egYthQyfR7Oqh2QOphr2on2wQpij0hxIrzUaqz
	ncTHP56a+Kef6Auo1wa8JyGz5uWtPikJs+yLmnED7MHfNWyOCv5cDPn8=
X-Received: by 2002:a05:622a:1b9f:b0:417:bd2c:2683 with SMTP id bp31-20020a05622a1b9f00b00417bd2c2683mr16970902qtb.19.1698241090304;
        Wed, 25 Oct 2023 06:38:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9sqk9O9NSffONLMLkF62MheH44KULbbJziO/VE+15eqK7tXOWni0WrQFzdn8ozLKmF0Jvc5dWLHw93tWI6nk=
X-Received: by 2002:a05:622a:1b9f:b0:417:bd2c:2683 with SMTP id
 bp31-20020a05622a1b9f00b00417bd2c2683mr16970883qtb.19.1698241090030; Wed, 25
 Oct 2023 06:38:10 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 25 Oct 2023 06:38:09 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231025103957.3776-3-keith.zhao@starfivetech.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com> <20231025103957.3776-3-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 25 Oct 2023 06:38:09 -0700
Message-ID: <CAJM55Z_Y_qp0J5FmWDPdziCRY7duNBhHnvM0Zza2pG-vK0etbw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] riscv: dts: starfive: jh7110: add dc controller
 and hdmi node
To: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, 
	linaro-mm-sig@lists.linaro.org
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, 
	Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, 
	Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, 
	Jack Zhu <jack.zhu@starfivetech.com>, 
	Shengyang Chen <shengyang.chen@starfivetech.com>, 
	Changhuang Liang <changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

Keith Zhao wrote:
> Add the dc controller and hdmi node for the Starfive JH7110 SoC.
>
> Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> ---
>  .../jh7110-starfive-visionfive-2.dtsi         | 91 +++++++++++++++++++
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      | 41 +++++++++
>  2 files changed, 132 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index de0f40a8b..97909b6d2 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -31,6 +31,25 @@ memory@40000000 {
>  		reg = <0x0 0x40000000 0x1 0x0>;
>  	};
>
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		/* vout applies for space from this CMA
> +		 * Without this CMA reservation,
> +		 * vout may not work properly.
> +		 */
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			reusable;
> +			size = <0x0 0x20000000>;
> +			alignment = <0x0 0x1000>;
> +			alloc-ranges = <0x0 0x70000000 0x0 0x20000000>;
> +			linux,cma-default;
> +		};
> +	};
> +
>  	gpio-restart {
>  		compatible = "gpio-restart";
>  		gpios = <&sysgpio 35 GPIO_ACTIVE_HIGH>;
> @@ -231,6 +250,41 @@ GPOEN_DISABLE,
>  			slew-rate = <0>;
>  		};
>  	};
> +
> +	hdmi_pins: hdmi-0 {
> +		hdmi-scl-pins {
> +			pinmux = <GPIOMUX(0, GPOUT_SYS_HDMI_DDC_SCL,
> +					     GPOEN_SYS_HDMI_DDC_SCL,
> +					     GPI_SYS_HDMI_DDC_SCL)>;
> +			input-enable;
> +			bias-pull-up;
> +		};
> +
> +		hdmi-sda-pins {
> +			pinmux = <GPIOMUX(1, GPOUT_SYS_HDMI_DDC_SDA,
> +					     GPOEN_SYS_HDMI_DDC_SDA,
> +					     GPI_SYS_HDMI_DDC_SDA)>;
> +			input-enable;
> +			bias-pull-up;
> +		};
> +
> +		hdmi-cec-pins {
> +			pinmux = <GPIOMUX(14, GPOUT_SYS_HDMI_CEC_SDA,
> +					     GPOEN_SYS_HDMI_CEC_SDA,
> +					     GPI_SYS_HDMI_CEC_SDA)>;
> +			input-enable;
> +			bias-pull-up;
> +		};
> +
> +		hdmi-hpd-pins {
> +			pinmux = <GPIOMUX(15, GPOUT_HIGH,
> +					     GPOEN_ENABLE,
> +					     GPI_SYS_HDMI_HPD)>;
> +			input-enable;
> +			bias-disable; /* external pull-up */
> +		};
> +	};
> +

Please don't break the alphabetical ordering of these nodes.

>  };
>
>  &uart0 {
> @@ -254,3 +308,40 @@ &U74_3 {
>  &U74_4 {
>  	cpu-supply = <&vdd_cpu>;
>  };
> +
> +&voutcrg {
> +	status = "okay";
> +};
> +
> +&display {
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&hdmi_pins>;
> +
> +	hdmi_in: port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		hdmi_in_dc: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&dc_out_hdmi>;
> +		};
> +	};
> +};
> +
> +&dc8200 {
> +	status = "okay";
> +
> +	dc_out: port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		dc_out_hdmi: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&hdmi_in_dc>;
> +		};
> +
> +	};
> +};

Some goes for these node references. The order is /-node, clocks, node refences
sorted alphabetically.


> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index 0005fa163..1670452fb 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -282,6 +282,11 @@ tdm_ext: tdm-ext-clock {
>  		#clock-cells = <0>;
>  	};
>
> +	display: display-subsystem {
> +		compatible = "starfive,display-subsystem";
> +		ports = <&dc_out>;
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		interrupt-parent = <&plic>;
> @@ -613,5 +618,41 @@ voutcrg: clock-controller@295c0000 {
>  			#reset-cells = <1>;
>  			power-domains = <&pwrc JH7110_PD_VOUT>;
>  		};
> +
> +		dc8200: lcd-controller@29400000 {
> +			compatible = "starfive,jh7110-dc8200";
> +			reg = <0x0 0x29400000 0x0 0x100>,
> +			      <0x0 0x29400800 0x0 0x2000>;
> +			interrupts = <95>;
> +			clocks = <&syscrg JH7110_SYSCLK_NOC_BUS_DISP_AXI>,
> +				<&voutcrg JH7110_VOUTCLK_DC8200_PIX0>,
> +				<&voutcrg JH7110_VOUTCLK_DC8200_PIX1>,
> +				<&voutcrg JH7110_VOUTCLK_DC8200_CORE>,
> +				<&voutcrg JH7110_VOUTCLK_DC8200_AXI>,
> +				<&voutcrg JH7110_VOUTCLK_DC8200_AHB>,
> +				<&hdmitx0_pixelclk>,
> +				<&voutcrg JH7110_VOUTCLK_DC8200_PIX>;
> +			clock-names = "noc_bus", "channel0", "channel1",
> +				      "dc_core", "axi_core", "ahb",
> +				      "hdmi_tx", "dc_parent";
> +			resets = <&voutcrg JH7110_VOUTRST_DC8200_AXI>,
> +				 <&voutcrg JH7110_VOUTRST_DC8200_AHB>,
> +				 <&voutcrg JH7110_VOUTRST_DC8200_CORE>;
> +			reset-names = "axi","ahb", "core";
> +		};
> +
> +		hdmi: hdmi@29590000 {
> +			compatible = "starfive,jh7110-inno-hdmi";
> +			reg = <0x0 0x29590000 0x0 0x4000>;
> +			interrupts = <99>;
> +
> +			clocks = <&voutcrg JH7110_VOUTCLK_HDMI_TX_SYS>,
> +				 <&voutcrg JH7110_VOUTCLK_HDMI_TX_MCLK>,
> +				 <&voutcrg JH7110_VOUTCLK_HDMI_TX_BCLK>,
> +				 <&hdmitx0_pixelclk>;
> +			clock-names = "sysclk", "mclk", "bclk", "pclk";
> +			resets = <&voutcrg JH7110_VOUTRST_HDMI_TX_HDMI>;
> +			#sound-dai-cells = <0>;
> +		};

These nodes, however, are sorted by their address which you alse break in this
patch :(

>  	};
>  };
> --
> 2.34.1
>

