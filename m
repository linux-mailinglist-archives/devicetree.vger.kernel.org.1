Return-Path: <devicetree+bounces-73517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 955318FFDCF
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 10:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3111A28ADA1
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 08:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A399F15AD9E;
	Fri,  7 Jun 2024 08:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JAntBXKK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FB0158D6C
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 08:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717747664; cv=none; b=jGfMGA3VBftDJbvKzJwSJYFQJ2Ez/TBqiRlY2UDtdsQBfUzGoMDW+T1JuEP6/JDMZ0jrgSYgewC+iQgC3o/99MpqhOoxtbQaAcXcrw/v8cdmFdWf7R2xMGbP3v/mm0rprH8S7gZcN4N3hcqJkKLvuVyWaEdPVpbfsWxO6dhW1ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717747664; c=relaxed/simple;
	bh=LMQ7fv6urpsT3xy9HS+IKJC5KLVk8cZam5BdjG0e64k=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:References:
	 In-Reply-To:Content-Type; b=cFWTNrELhe+vBO0Yz+u6PbIspTmhkH9iEaexpAsFso7tvBx4fFpswBwxj0tlQOhEiDXlhlfB05SW71lZWEmufqWPV//oNt34kfHNOzSnbrSGQtuI0WcqwLN7FZt/iLMlS1WEvnSLERUncXR5CZsgvHmlh4n+adPQ+aBaBsO1Ho4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JAntBXKK; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-35e1fcd0c0fso1884584f8f.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 01:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717747661; x=1718352461; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zm7TFPva0bErQOP/68vGfRmjP0R/5JymFuac9fbRPVw=;
        b=JAntBXKKs/CBvI8SmaoqTO1COL9sQYlEJfUGgNGAJp0CYeYIiO5s3uQittPoeYxpy0
         7dN4/yrV+/SWikAE46/5TVFup7XGxO754NNUBEdi08O2RDlxS/edMNyEUU9n/NlkILR3
         dnqyPjVoBAWK6brqVf0tn97iIEyECLBb1dqXdB6LSuqT/KYs9kGzoDrssatAOT3sJJqt
         9ERgDsl6B5DkbGCuFHVN80XOtMvg77zmMtsHF+8sVzRUqbtypCzLc2zwqKt2Rl/g5+u2
         XE2BQcKN3X4zoJhWkNVuHysf30yZHoBRhZ4j7ZTKlQ3fee3y9fsTxoGkNGEMS0C+soPw
         h3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717747661; x=1718352461;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zm7TFPva0bErQOP/68vGfRmjP0R/5JymFuac9fbRPVw=;
        b=MKWGtYxNCI8uYqOKqj+8hw2KcLMRtLt8M0nadCMb+Mo7irqo3QjpyJaTl/FFMIv1pC
         q3UVyhZMuXz6CwqU6z61B1CEKZ1ZPuZxv0LQBW0CqsLpeybtuRk0J8FV4qAiiwW23XQh
         2lquwQ8i4SU7PtvzWqsYhvn9DQHr78SQU/CrdJ6m4PZBKZh6Y4pBtmdCG2jhqNl+FqT3
         bcGQK21CtdLrhLtEKe0pki8X52waJS3KzfM3jSbPGhs1QzSrSTSX/o7R5QRLHZB648XD
         njzyK/ltbCTOxKDMKmhB60CNO98EK97yBcbyQCMpvZ2Ym3IxCYzDOFVQZ3e5V/D2n3t7
         BMiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTb2f5I1t5EkwZw5p5XiPvu74n5sMPYPvpsi0n2jQ9VqoxD1D4Dt6rzxgHn2mzDKobY3XWnnPOWtW6PksWBk6ld1noz2d8PisoQg==
X-Gm-Message-State: AOJu0Yy9Gctt7eGpkE+WMmoskZesczy+NqKtIfpKAFkOoQbyue7sCdLz
	2at5W6iNYo+SX2Mt9r8z24VpblBLWiaGq/u5+KFGWihWhk7NgxPl/0oocueOG5A=
X-Google-Smtp-Source: AGHT+IHqhz5k04ZzyFG1CkhZU4vWzmotulML28MoByYGhj8GH+MxqZaO0+We9+uAJfWY61IYXCGEKQ==
X-Received: by 2002:a5d:6483:0:b0:354:df59:c9a4 with SMTP id ffacd0b85a97d-35efed08bd4mr1647456f8f.9.1717747660655;
        Fri, 07 Jun 2024 01:07:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e4b:b0d3:6a34:6404? ([2a01:e0a:982:cbb0:7e4b:b0d3:6a34:6404])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d297b3sm3443187f8f.11.2024.06.07.01.07.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jun 2024 01:07:40 -0700 (PDT)
Message-ID: <7b877bc6-9e26-4bae-934a-ceb9663d751d@linaro.org>
Date: Fri, 7 Jun 2024 10:07:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: meson: add support for OSMC Vero 4K
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240606095419.3950015-1-christianshewitt@gmail.com>
 <20240606095419.3950015-2-christianshewitt@gmail.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20240606095419.3950015-2-christianshewitt@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2024 11:54, Christian Hewitt wrote:
> The OSMC Vero 4K device is based on the Amlogic S905X (P212)
> reference design with the following specifications:
> 
> - 2GB DDR4 RAM
> - 16GB eMMC
> - HDMI 2.1 video
> - S/PDIF optical output
> - AV output
> - 10/100 Ethernet
> - AP6255 Wireless (802.11 a/b/g/n/ac, BT 4.2)
> - 2x USB 2.0 ports (1x OTG)
> - IR receiver (internal)
> - IR extender port (external)
> - 1x micro SD card slot
> - 1x Power LED (red)
> - 1x Reset button (in AV jack)
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   arch/arm64/boot/dts/amlogic/Makefile          |   7 +
>   .../dts/amlogic/meson-gxl-s905x-vero4k.dts    | 202 ++++++++++++++++++
>   2 files changed, 209 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index 4addcae2c54e..78941ddd3136 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -55,6 +55,13 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905d-p231.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905d-phicomm-n1.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905d-sml5442tw.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905d-vero4k-plus.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-hwacom-amazetv.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-khadas-vim.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-libretech-cc.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-libretech-cc-v2.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-nexbox-a95x.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-p212.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-vero4k.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905w-jethome-jethub-j80.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905w-p281.dtb
>   dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905w-tx3-mini.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
> new file mode 100644
> index 000000000000..b325cd75a792
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
> @@ -0,0 +1,202 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Christian Hewitt <christianshewitt@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-gxl-s905x-p212.dtsi"
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/sound/meson-aiu.h>
> +
> +/ {
> +	compatible = "osmc,vero4k", "amlogic,s905x", "amlogic,meson-gxl";
> +	model = "OSMC Vero 4K";
> +
> +	reserved-memory {
> +		/* 32 MiB reserved for ARM Trusted Firmware (BL32) */
> +		secmon_reserved_bl32: secmon@5300000 {
> +			reg = <0x0 0x05300000 0x0 0x2000000>;
> +			no-map;
> +		};
> +	};
> +
> +	gpio-keys-polled {
> +		compatible = "gpio-keys-polled";
> +		poll-interval = <20>;
> +
> +		button {
> +			label = "power";
> +			linux,code = <KEY_POWER>;
> +			gpios = <&gpio_ao GPIOAO_2 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-standby {
> +			color = <LED_COLOR_ID_RED>;
> +			function = LED_FUNCTION_POWER;
> +			gpios = <&gpio GPIODV_24 GPIO_ACTIVE_LOW>;
> +			default-state = "off";
> +			panic-indicator;
> +		};
> +	};
> +
> +	dio2133: analog-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		sound-name-prefix = "AU2";
> +		VCC-supply = <&hdmi_5v>;
> +		enable-gpios = <&gpio GPIOH_5 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	spdif_dit: audio-codec-0 {
> +		#sound-dai-cells = <0>;
> +		compatible = "linux,spdif-dit";
> +		sound-name-prefix = "DIT";
> +	};
> +
> +	cvbs-connector {
> +		compatible = "composite-video-connector";
> +
> +		port {
> +			cvbs_connector_in: endpoint {
> +				remote-endpoint = <&cvbs_vdac_out>;
> +			};
> +		};
> +	};
> +
> +	hdmi-connector {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_connector_in: endpoint {
> +				remote-endpoint = <&hdmi_tx_tmds_out>;
> +			};
> +		};
> +	};
> +
> +	sound {
> +		compatible = "amlogic,gx-sound-card";
> +		model = "VERO4K";
> +		audio-aux-devs = <&dio2133>;
> +		audio-widgets = "Line", "Lineout";
> +		audio-routing = "AU2 INL", "ACODEC LOLP",
> +				"AU2 INR", "ACODEC LORP",
> +				"AU2 INL", "ACODEC LOLN",
> +				"AU2 INR", "ACODEC LORN",
> +				"Lineout", "AU2 OUTL",
> +				"Lineout", "AU2 OUTR";
> +
> +		dai-link-0 {
> +			sound-dai = <&aiu AIU_CPU CPU_I2S_FIFO>;
> +		};
> +
> +		dai-link-1 {
> +			sound-dai = <&aiu AIU_CPU CPU_SPDIF_FIFO>;
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&aiu AIU_CPU CPU_I2S_ENCODER>;
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +
> +			codec-0 {
> +				sound-dai = <&aiu AIU_HDMI CTRL_I2S>;
> +			};
> +
> +			codec-1 {
> +				sound-dai = <&aiu AIU_ACODEC CTRL_I2S>;
> +			};
> +		};
> +
> +		dai-link-3 {
> +			sound-dai = <&aiu AIU_CPU CPU_SPDIF_ENCODER>;
> +
> +			codec-0 {
> +				sound-dai = <&spdif_dit>;
> +			};
> +		};
> +
> +		dai-link-4 {
> +			sound-dai = <&aiu AIU_HDMI CTRL_OUT>;
> +
> +			codec-0 {
> +				sound-dai = <&hdmi_tx>;
> +			};
> +		};
> +
> +		dai-link-5 {
> +			sound-dai = <&aiu AIU_ACODEC CTRL_OUT>;
> +
> +			codec-0 {
> +				sound-dai = <&acodec>;
> +			};
> +		};
> +	};
> +};
> +
> +&acodec {
> +	AVDD-supply = <&vddio_ao18>;
> +	status = "okay";
> +};
> +
> +&aiu {
> +	status = "okay";
> +	pinctrl-0 = <&spdif_out_h_pins>;
> +	pinctrl-names = "default";
> +};
> +
> +&cec_AO {
> +	status = "okay";
> +	pinctrl-0 = <&ao_cec_pins>;
> +	pinctrl-names = "default";
> +	hdmi-phandle = <&hdmi_tx>;
> +};
> +
> +&clkc {
> +	assigned-clocks = <&clkc CLKID_MPLL0>,
> +			  <&clkc CLKID_MPLL1>,
> +			  <&clkc CLKID_MPLL2>;
> +	assigned-clock-parents = <0>, <0>, <0>;
> +	assigned-clock-rates = <294912000>,
> +			       <270950400>,
> +			       <393216000>;
> +};
> +
> +&cvbs_vdac_port {
> +	cvbs_vdac_out: endpoint {
> +		remote-endpoint = <&cvbs_connector_in>;
> +	};
> +};
> +
> +&ethmac {
> +	phy-mode = "rmii";
> +	phy-handle = <&internal_phy>;
> +};
> +
> +&hdmi_tx {
> +	status = "okay";
> +	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
> +	pinctrl-names = "default";
> +	hdmi-supply = <&hdmi_5v>;
> +};
> +
> +&hdmi_tx_tmds_port {
> +	hdmi_tx_tmds_out: endpoint {
> +		remote-endpoint = <&hdmi_connector_in>;
> +	};
> +};
> +
> +&internal_phy {
> +	pinctrl-0 = <&eth_link_led_pins>, <&eth_act_led_pins>;
> +	pinctrl-names = "default";
> +};
> +
> +/* This UART is brought out to the DB9 connector */
> +&uart_AO {
> +	status = "okay";
> +};

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

