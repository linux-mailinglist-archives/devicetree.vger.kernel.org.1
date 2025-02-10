Return-Path: <devicetree+bounces-144482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81784A2E3A1
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 06:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 582C13A3852
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 05:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC153188596;
	Mon, 10 Feb 2025 05:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mduDLTgb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185F13FD86
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 05:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739165245; cv=none; b=h7Yp7PM3J4LR6HLjeNXopW9tkCFUqBWyHVPqArocFGpmhaR3YSFIpyvzIqya5pdc+HZY7kO9scEIRz3VdlPfNkOA+LEaOlbWFscvCW0FX6CcEDDb+6/rCei5rDjzcGZ2A975EUvmMgAiNu9Cv4nxeqSjVB/Qc1tnoaQ/+TyixuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739165245; c=relaxed/simple;
	bh=NCJo8h+GFEQWhyShGPxmjaeKhtE7tET+vq+FPuqdddc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tEJ6JJn1JptZtu+bz0rg5Pl/u9q9Yq1nkCHD6++qU4TeLWl6GjZrXdOmacqGiRlw4kMHRjskupzS9JFrv0aSmf4RRy4OMdiy6dEPA8Idz3K0qdjwVnrFxJ3RWjnMPm6019DIjS0qkJFqBnBJADYpzkRXXWX3fWQBYRGSP8/634c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mduDLTgb; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-46fa7678ef3so41076561cf.1
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 21:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739165243; x=1739770043; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o5akprXzWeq2raV9J15rlbOJ4MBBYAkz6WZ7uy1VgM4=;
        b=mduDLTgbMnJ6x51TbKuIMx2hbeHeIC3CiDom0N2X+t2oYS+zBGqjPBv0IY/3C3fWOM
         7Bh4SYGfQeNfu4ZkimuADWpFq2Q9fOC87D8XEoFZdck7uF5OoP12+hVxyi59hAyLwjDG
         8I+/tGb1Vcr1OwOW4Kq8F9aKal2zeO/G1sfThYOHg2yFPZPGVZo7SLyAsxWtj2Aj4wTZ
         HG/UZMsNtVJEAD20Fn0fWeBdtOQhYO7xDhFnMk7I/3GaV8XgSo57/lJfyYYju8709c0J
         v5W15T5CD9w5tcmJYag+ji+jyQAklS5S5u4RdFRQTFe5Apizdst1iruoUD2Wv2EPK89k
         bVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739165243; x=1739770043;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5akprXzWeq2raV9J15rlbOJ4MBBYAkz6WZ7uy1VgM4=;
        b=caSnbFnNlBH6iUPr7mvJblQ7A9rhifWjLtKza1bzzKeIWtwdyMekvTqYofoMPWQhWY
         MFi2RF5whb+cMEnG3Kox0VEOWGZQIJaE7o2dqVRiQYytKTIZgM+j+LJXiNfmE7CPOUBQ
         3H4JAK+jJgEvPLQkmus+S3h3+yO0JnDFguxfXZDTWpc+qeCJYcmAYNe4rzL7pDO5BFXk
         ToWXc2C5y3Eh1mgrUHhkiljLya5q8aNIg22188PynfamIZEkmHdzuOKdnjyn58SjZPIl
         g4OFsB+TsewqKZRLvxyXHQqPej0pDNZqxkaLhzaWB4P5XwDQXQ7YVNSSWkob1TzNZYdA
         vEUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrtvVtTOATiqUv4hpMpbsHmAu2lpu12zivSUje6pZnnaPF9++YhfxBuZh9W2yZt5Z08tbN1lEtazns@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9UpU2djJNBkddNT7OxEjZ6d9ajhcY2TY3KyXisQORiEyzeEbo
	gQllgf6XP2xi+WIrGTIrsIWY/l08NrwqFDMkb3VQRUScx4ioZvE7kE82og==
X-Gm-Gg: ASbGncsp2Wb+bucCaV+b7C0EDspho74AmO1h2mmTnFigccvK1Q0hSjZ8QKPLsq2/MIn
	bX13A9d7yyLLTA/gNyiaDg1DfCzjqIzPjgjavmQVsEc5Oe7BqItySL6pUwJkcfdtxQZtppMbG87
	C0X1sO+ja+snGC6/dEX3QZm2Ulql5f0/GfmJ6uZUwxylvo/XJC35C94GAq0pU/lQA+7lRMEsPJB
	dvC1c8Ua5+Tm6sv8TqsTkjzXauAvzR81eqn/vTnQ9yAnlAf+vJx/aR4f7P6dW/apG0=
X-Google-Smtp-Source: AGHT+IE+4sZLu/ZxMSYESF6iMKxthKb6gyHQ9A7BzIRccL53896Gfbs6sUnMwwUwzuOES/UrXfTjtg==
X-Received: by 2002:a05:6214:1bcc:b0:6e4:4164:8bb2 with SMTP id 6a1803df08f44-6e4456d242bmr180675586d6.29.1739165243086;
        Sun, 09 Feb 2025 21:27:23 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id 6a1803df08f44-6e4437ddc85sm36220296d6.87.2025.02.09.21.27.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 21:27:22 -0800 (PST)
Date: Mon, 10 Feb 2025 13:27:17 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Haylen Chu <heylenay@outlook.com>, linux-arm-kernel@lists.infradead.org, 
	Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Inochi Amaoto <inochiama@gmail.com>
Subject: Re: [PATCH 04/10] arm64: dts: sophgo: Add Duo Module 01
Message-ID: <pwf6xgylo5fd7j5akkuau2v6p7r4print4fxekkwmxqtumjifk@hoqbsiwedwhz>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
 <20250209220646.1090868-5-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250209220646.1090868-5-alexander.sverdlin@gmail.com>

On Sun, Feb 09, 2025 at 11:06:29PM +0100, Alexander Sverdlin wrote:
> The Duo Module 01 is a compact module with integrated SG2000,
> WI-FI6/BTDM5.4, and eMMC.
> Add only support for UART and SDHCI.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
>  .../sophgo/sg2000_milkv_duo_module_01.dtsi    | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01.dtsi
> 
> diff --git a/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01.dtsi b/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01.dtsi
> new file mode 100644
> index 000000000000..7edcc4d03cc4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/sophgo/sg2000_milkv_duo_module_01.dtsi
> @@ -0,0 +1,84 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
> +#include "sg2000.dtsi"
> +
> +/ {
> +	model = "Milk-V Duo Module 01";
> +
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +		serial4 = &uart4;
> +	};
> +};
> +
> +&osc {
> +	clock-frequency = <25000000>;
> +};
> +
> +&emmc {

> +	/delete-property/ status;

Override it with status = "okay";
This suggestion applies to all you dts patch.

> +	bus-width = <4>;
> +	no-1-8-v;
> +	cap-mmc-hw-reset;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +};
> +
> +/* Wi-Fi */
> +&sdhci1 {
> +	bus-width = <4>;
> +	cap-sdio-irq;
> +	no-mmc;
> +	no-sd;
> +	non-removable;
> +};
> +
> +&pinctrl {
> +	uart0_cfg: uart0-cfg {
> +		uart0-pins {
> +			pinmux = <PINMUX(PIN_UART0_TX, 0)>,
> +				 <PINMUX(PIN_UART0_RX, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <10800>;
> +			power-source = <3300>;
> +		};
> +	};
> +
> +	sdhci0_cfg: sdhci0-cfg {
> +		sdhci0-clk-pins {
> +			pinmux = <PINMUX(PIN_SD0_CLK, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <16100>;
> +			power-source = <3300>;
> +		};
> +
> +		sdhci0-cmd-pins {
> +			pinmux = <PINMUX(PIN_SD0_CMD, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <10800>;
> +			power-source = <3300>;
> +		};
> +
> +		sdhci0-data-pins {
> +			pinmux = <PINMUX(PIN_SD0_D0, 0)>,
> +				 <PINMUX(PIN_SD0_D1, 0)>,
> +				 <PINMUX(PIN_SD0_D2, 0)>,
> +				 <PINMUX(PIN_SD0_D3, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <10800>;
> +			power-source = <3300>;
> +		};
> +
> +		sdhci0-cd-pins {
> +			pinmux = <PINMUX(PIN_SD0_CD, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp = <10800>;
> +			power-source = <3300>;
> +		};
> +	};
> +};
> -- 
> 2.48.1
> 

