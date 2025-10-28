Return-Path: <devicetree+bounces-232132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6A5C1490E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 13:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A4A51AA4CAE
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 12:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580E632BF5D;
	Tue, 28 Oct 2025 12:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OGNTTMMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9963074BA
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 12:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761653712; cv=none; b=pN94KMEyrRvXS27rjhLCAK8NvAhdO9T8aWwTRffdeC5eWmK7kD4AgJP2IzqUK4c9ffFD18indxwFusZPl8XH0O37zzvYY/0bKSfP/QUSsETsfER6lFCYboZzNvglxMimwg3kOQpchhLBzKCSfAq358OQ8e4mUdZ2RN3WMGDUWbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761653712; c=relaxed/simple;
	bh=HZb1NJk9EiYvwXWi/VvLTVxzoQi8tgU2qAmxFsu1Zc8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g7fcJCGgGAQdyyprZZaogfB8YOzuzWLzttOoR0frAHBd3rom/kw8URZ/1ugBEbfEf9AngH+XTScrSzXfNLhSePRDywgTEgATWAbxD+8S4fOwQ0VkvJjY5a+IBqp/qzsJ2ws6g65lHaphZA046Sqyvto01F0NldQjHysiAyVYHlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OGNTTMMv; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3637d6e9923so56693591fa.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761653708; x=1762258508; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YJAViX7/B9WZe7f1Z9+bJz1YrkYOWWpEGINZC+5C01E=;
        b=OGNTTMMvq9mX9viB1m+SEvr09ftMEf4mZlIh6mPUu2Kl4jT7TzH0JKAVa1hkbBT95s
         Jl/2AKGuhPk+msvyGTvLVBRQmiMuvi5REZRjhgCLmAQMhpafvhw3fwmmn8coiqFpYaKz
         Hoz3h2kkEQ1+b+l87rEvw3m4er572kbDuMWOEcRm1TxgGgBp4uu9iYa9Bxo0ljwwl+Om
         uBhrsxxVI6cWf5OMgCjfBLoSmGB9nja51sjPoUPjqYxeaei7lbrbjWP1X5ICgWMbraIf
         c9UpwrOvlKTsDoDBYNfTQVcIkMyYYNjvnZKBH3C9XdRFi3CyfyHNb+jeIGcT50haDOWP
         sNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761653708; x=1762258508;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YJAViX7/B9WZe7f1Z9+bJz1YrkYOWWpEGINZC+5C01E=;
        b=Ih/0bxFgSo/JsMUh3Z/k0mF/Q3xqyxpAqWsf0BAZQ63QWzhbspQ69GW/yBN/zHazx0
         K436Bw5UhvEzC8U6TXN/yZ+n7v5pC1ZOpUrZJGIkNvLf/aWuskG8seGkjL9s0/3foyS9
         n1sN1mMhshols6jkPoCdi3leFWX59/oG8+X7egLwOcA8+MqiKi/vX5+ae8hexBdEElrV
         iAhN5TnZQjs90QoWsu8wAZ1n2qdLFQOO1VvnlnwJVjA5phAnhvBS3rLBEY6NXVtiitCF
         Quh7Fw2g+Wcxp8SGSzyayp9ui3UTKgpRg7dbeCbsWL1eN6ljVYklFstwuxNoOfAI0jV0
         +UQQ==
X-Gm-Message-State: AOJu0Yy6p/1fVSv7+4mILgrRF3lfVk2028ct1Bt/RzHrMFQssHGD4mN0
	5NlDgaRLdBxgk+x49LI/OJo/kelOpp3JFumiogvGiq9Z6GMYGrv84s4/
X-Gm-Gg: ASbGnctdtJNNqYekUMj3DYJ5t4gHLkSG12B0edZ/mPBHjwa5XcGx9Y6tqEUyZr4nb/s
	xHiNjzyiOBsCQjkY/VtRFYFl19C/O9/GpKRpXRHwBtzi6HEygg/ESp5IBof4Sm1LtRHdBqy1MVa
	+tjFHg67EdTxzilIQ/jhEpti4XaanSwF2Vy+ufme0D6ZtuJ4mi9Ya5m/2n/95lIz6RLOh3a2kMN
	SXqy5m2J36B43QQvfwM454OuOrCrQYm+u5Lr/yky6UkNArhd2MWC0tM/Z3hjA523C3bmDVWp8og
	yuJIB1zKRJfKDBCNTJXf954Pe0tHDHVATDKuHAb7/dcw87UfU2Pk06Ki91M2DQge9P8AnFuEsOG
	81BI77j3McqhngYccoKTLUEvuUWVf45nqyX6+JUYUuLNKX3jcZGQLJuyUZdOY48DgaE4iwFrzLz
	V41Xm4Mw+HBNI1qc9Fby5cK2RjQ6+0NuNp8d0jA/wTVym0jDgM+FvLnMJxOg==
X-Google-Smtp-Source: AGHT+IFB+EXEALL0lVPB7zL+t0ISwe5rbBYFS+A45wiTOhrUz5I795qhcCG4TnO4o8BABiT+ozftyw==
X-Received: by 2002:a05:651c:20cb:20b0:378:ddbe:2d95 with SMTP id 38308e7fff4ca-379076c11aemr8817671fa.20.1761653707262;
        Tue, 28 Oct 2025 05:15:07 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee09204esm28490401fa.8.2025.10.28.05.15.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 05:15:06 -0700 (PDT)
Message-ID: <a7012995-c2a8-48a3-abe1-5c227272f21c@gmail.com>
Date: Tue, 28 Oct 2025 14:15:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: freescale: add Ka-Ro Electronics
 tx8m-1610 COM
To: maudspierings@gocontroll.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
References: <20251022-mini_iv-v2-0-20af8f9aac14@gocontroll.com>
 <20251022-mini_iv-v2-3-20af8f9aac14@gocontroll.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20251022-mini_iv-v2-3-20af8f9aac14@gocontroll.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Maud,

Thanks for the upstreaming work! :)

On 22/10/2025 10:22, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> The Ka-Ro Electronics tx8m-1610 is a COM based on the imx8mm SOC. It has
> 1 GB of ram and 4 GB of eMMC storage on board.
> 
> Add it to enable boards based on this module
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
> ---
>   .../arm64/boot/dts/freescale/imx8mm-tx8m-1610.dtsi | 439 +++++++++++++++++++++
>   1 file changed, 439 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tx8m-1610.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tx8m-1610.dtsi
> new file mode 100644
> index 0000000000000..46d3ad80942cc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-tx8m-1610.dtsi
> @@ -0,0 +1,439 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (C) 2021 Lothar Waßmann <LW@KARO-electronics.de>
> + * 2025 Maud Spierings <maudspierings@gocontroll.com>
> + */
> +
> +#include "imx8mm.dtsi"
> +

// snip

> +	pmic: pmic@4b {
> +		compatible = "rohm,bd71847";
> +		reg = <0x4b>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		pinctrl-names = "default";
> +		rohm,reset-snvs-powered;
> +
> +		regulators {
> +			reg_vdd_soc: BUCK1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <900000>;
> +				regulator-min-microvolt = <780000>;
> +				regulator-name = "buck1";
> +				regulator-ramp-delay = <1250>;
> +			};
> +
> +			reg_vdd_arm: BUCK2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <950000>;
> +				regulator-min-microvolt = <805000>;
> +				regulator-name = "buck2";
> +				regulator-ramp-delay = <1250>;
> +				rohm,dvs-run-voltage = <950000>;
> +				rohm,dvs-idle-voltage = <810000>;
> +			};
> +
> +			reg_vdd_dram: BUCK3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <900000>;
> +				regulator-min-microvolt = <805000>;
> +				regulator-name = "buck3";
> +			};
> +
> +			reg_vdd_3v3: BUCK4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-name = "buck4";
> +			};
> +
> +			reg_vdd_1v8: BUCK5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1950000>;
> +				regulator-min-microvolt = <1700000>;
> +				regulator-name = "buck5";
> +			};
> +
> +			BUCK6 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				/*
> +				 * The default output voltage is 1.1V, bumped
> +				 * to 1.35V in HW by a 499R/2.2K voltage divider in the
> +				 * feedback path.
> +				 */

Could/Should this be described using the:
'rohm,feedback-pull-up-r1-ohms' and
'rohm,feedback-pull-up-r2-ohms'? If I understand the comment correctly, 
that might allow the driver to be able to use correctly scaled voltages.

https://elixir.bootlin.com/linux/v6.18-rc1/source/Documentation/devicetree/bindings/regulator/rohm,bd71837-regulator.yaml#L108

> +				regulator-max-microvolt = <1100000>;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-name = "buck6";
> +			};

Yours,
	-- Matti

