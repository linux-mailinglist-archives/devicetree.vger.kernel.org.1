Return-Path: <devicetree+bounces-44204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5926B85D1AA
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 08:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D99831F26523
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 07:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF133B282;
	Wed, 21 Feb 2024 07:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fcFzYL0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C693A27B
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 07:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708501554; cv=none; b=K9WGojIpLymKNjEtu2HsePH05irQYGY44CDxTAYs3au6iVp6jpbTpgaCpBkq0U/pl1oDz1wksn95JotQY4aaPfjPzd2GO4m3zcTVFJzoD3qYlIQkH72dpdO6AlggRwTpRzSXzPVEw/CZU63h4XhESF7/3gsDxWxkJ+k+QoecGjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708501554; c=relaxed/simple;
	bh=umO1k8iq+c+4fmPpm1Q3kWOCi0Pgj6UpazKxQMXaRZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e9Wg1jZYxiV2cz95V6J9btTd3PZIUnJ7nvckeLwTK3e+k5R4QI326XWP9WSKb5JRjvkkHTPgOXFa6xIRVJkd7CoKz5unv7Gw6Cvfe8+TyJVPH6YK7C5Qd4znZAk0AzLm7DBQylGmj4jS6nWRLmOnWW/Rvb8B+7/oQK93obxnbvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fcFzYL0n; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-563c403719cso6513842a12.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 23:45:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708501551; x=1709106351; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s+LPm56zvHOV//bYMJjTKaHoqj8XTrw92aBSmNpLcY8=;
        b=fcFzYL0nXAH5/MqsqdgJiyF5/iKHEyZ2lzMR6T6jKCaZlcoDfGGaWPVdqNG4VKO9tO
         5AEEnlvM64rzA+TroschOxM4wVj40ac8L9GbbrrI/WHdaQLayu3Pa2OcE8YMmS1pccFL
         8bLzoMPYnnUFVBdkTF99OUh218l0ZCDoaQlaaBxjZ4jnUad9XlnlEDaWYmxgQDexYsEz
         l9UwSrC+qtrQQJ/g0QdQgPG43j4DnqO61s22KChiYaq6wNGpQjC7/pFC99Ro2WxCNBvq
         bUv4tQkS2MSJtbmmsQKbV7DI4h36UuR1D0OSsWYuMvqhOIwGJD1NbRaZHPuMrsSK4/58
         rT+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708501551; x=1709106351;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s+LPm56zvHOV//bYMJjTKaHoqj8XTrw92aBSmNpLcY8=;
        b=RXc8I4v+eV8z/B6TTzLKPI2JKFqgZMwwl7uDtA9fSBEOtDh4fk/puZ1sjHyG/kUhMx
         fBV8kWSfJyJtD532MCd49pQn7uCn4RNS9v6eOZRzKg0tH1fJZfyzPINpB5c+484Pnaxc
         LFiCqqG+fFYaUmjh4jW4RJmTAmoq0hpF7RfI/cUaj7OTBW+28dIqhIcyTD8sNbXB7vmz
         gzJUDJPmHdOemkp+t4OaperuSRHFxrANNjBGAvF+9kTV3zgoHP10hHNsPtXwHmnuK7Qj
         LpwavAz3U8OiX2Eh0IVdgv4z/81pCVjFdKzAp0a9WLtdnAAHaHSyFZCplNvU8b6waHbH
         bkmg==
X-Forwarded-Encrypted: i=1; AJvYcCXw1iYQtvUwucO0s6agl1Q1Dwr/lT2UCacbDuOtUEqVB2KkXKeopXGjVC7r/oCrdMTbnIBB8x/vjeVMrmQQqzlR7Kbh7qqTWc/1uA==
X-Gm-Message-State: AOJu0YwyeroNHC2y2mdNFRZ0F3GgtNBJIK2VSq+O+z9m+5iTnma25nM2
	hFFzlSA3SE1AuFCi1X4IzwDRL+wR8FZRHawKfjoqcQiMaVaW3wyPo4RmDgkdx4o=
X-Google-Smtp-Source: AGHT+IEm68aEP7++r5bUiT07HBXQfasE9gmE9PtJOwNS4lP+wJTfo8DGC2sp13vzJWJMOy/QxlDKnQ==
X-Received: by 2002:a05:6402:2038:b0:564:fe6b:906a with SMTP id ay24-20020a056402203800b00564fe6b906amr615311edb.42.1708501551049;
        Tue, 20 Feb 2024 23:45:51 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id x17-20020aa7cd91000000b005649df0654asm2036146edv.21.2024.02.20.23.45.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 23:45:50 -0800 (PST)
Message-ID: <2e8e6a0a-44ce-45e4-8321-592f08852412@linaro.org>
Date: Wed, 21 Feb 2024 08:45:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: Add Airoha EN7581 SoC and EN7581
 Evaluation Board
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: lorenzo.bianconi@redhat.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, nbd@nbd.name,
 john@phrozen.org, devicetree@vger.kernel.org, dd@embedd.com,
 catalin.marinas@arm.com, will@kernel.org,
 angelogioacchino.delregno@collabora.com
References: <cover.1708473083.git.lorenzo@kernel.org>
 <f59389838c741650f6ff05d984a9127545e4eb83.1708473083.git.lorenzo@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <f59389838c741650f6ff05d984a9127545e4eb83.1708473083.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2024 01:04, Lorenzo Bianconi wrote:
> From: Daniel Danzberger <dd@embedd.com>
> 
> Introduce the Airoha EN7581 SoC's dtsi and the Airoha EN7581 Evaluation
> Board's dts file, as well as the required Makefiles.
> 
> Signed-off-by: Daniel Danzberger <dd@embedd.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  arch/arm64/boot/dts/Makefile              |   1 +
>  arch/arm64/boot/dts/airoha/Makefile       |   2 +
>  arch/arm64/boot/dts/airoha/en7581-evb.dts |  27 +++++
>  arch/arm64/boot/dts/airoha/en7581.dtsi    | 137 ++++++++++++++++++++++
>  4 files changed, 167 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/airoha/Makefile
>  create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
>  create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi
> 
> diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
> index 30dd6347a929..21cd3a87f385 100644
> --- a/arch/arm64/boot/dts/Makefile
> +++ b/arch/arm64/boot/dts/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  subdir-y += actions
> +subdir-y += airoha
>  subdir-y += allwinner
>  subdir-y += altera
>  subdir-y += amazon
> diff --git a/arch/arm64/boot/dts/airoha/Makefile b/arch/arm64/boot/dts/airoha/Makefile
> new file mode 100644
> index 000000000000..ebea112ce1d7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +dtb-$(CONFIG_ARCH_AIROHA) += en7581-evb.dtb
> diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> new file mode 100644
> index 000000000000..4eaa8ac431c3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/dts-v1/;
> +
> +/* Bootloader installs ATF here */
> +/memreserve/ 0x80000000 0x200000;
> +
> +#include "en7581.dtsi"
> +
> +/ {
> +	model = "Airoha EN7581 Evaluation Board";
> +	compatible = "airoha,en7581-evb", "airoha,en7581";
> +
> +	aliases {
> +		serial0 = &uart1;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200 earlycon";

You have console below. You don't need earlycon for mainline, broad
usage, because it is purely debugging part, so drop entire bootargs.

> +		stdout-path = "serial0:115200n8";
> +		linux,usable-memory-range = <0x0 0x80200000 0x0 0x1fe00000>;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x80000000 0x2 0x00000000>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
> new file mode 100644
> index 000000000000..7a3c0a45c03f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> @@ -0,0 +1,137 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		npu_binary@84000000 {

No underscores in nodenames.
...

> +
> +		L2_0: l2-cache0 {

Nodename: l2-cache

> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;
> +		};
> +	};
> +
> +	gic: interrupt-controller@9000000 {

Why this is outside of SoC? Where is your SoC node BTW?

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).

> +		compatible = "arm,gic-v3";
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		reg = <0x0 0x09000000 0x0 0x20000>,
> +		      <0x0 0x09080000 0x0 0x80000>,
> +		      <0x0 0x09400000 0x0 0x2000>,
> +		      <0x0 0x09500000 0x0 0x2000>,
> +		      <0x0 0x09600000 0x0 0x20000>;
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	uart1: serial@1fbf0000 {

This cannot be outside of SoC.

> +		compatible = "ns16550";
> +		reg = <0x0 0x1fbf0000 0x0 0x30>;
> +		reg-io-width = <4>;
> +		reg-shift = <2>;
> +		interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-frequency = <1843200>;
> +		status = "okay";

Drop


Best regards,
Krzysztof


