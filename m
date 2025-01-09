Return-Path: <devicetree+bounces-136974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B19BA0724E
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:57:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AF867A3C67
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 09:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B18B215777;
	Thu,  9 Jan 2025 09:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Epnwx27h"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37013215773;
	Thu,  9 Jan 2025 09:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736416624; cv=none; b=L7IN7dPNvo4c2+yY8FL0YcjJOh3INTzZhLNjJTbWIG8qSOP+3QX/03uD6gfgQaFxlG1jUwYTN38QuoaDTY8xbKhZ7B6vvssNhRPzXkPGwalvEuxpjLRpgDvO75h7x5dOzsd7OWsBN/XZPPya0hXYanpHXRMkzq7wY4AE3zwPvYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736416624; c=relaxed/simple;
	bh=VDSlO6V6qoRmVdwQKtmvXn2XBzSagnYYgDBVug4Rvyw=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Axa+JTLypKcibUqT37difBOeRTb5KW/JmhVhR5wkI0WoXnaVL2JhHUgtSsYTyk9pDhcro/zj+l37E7L4t4DpqiZ2n8L76tqA/rNHKU0DOVSj0aEJ+8LM/x7+2h9Q4XmAitAJzOSlryqMHJGw48QEFzzYyzLH2beg3oFEQe6UPN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Epnwx27h; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 5099usQk084361;
	Thu, 9 Jan 2025 03:56:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736416614;
	bh=gKTfJyAFubNCbtCYRbQhHbeUkKlCLTjxK8b0awaQUCk=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=Epnwx27hU003Kac2y9S3Z5IhtKuH8J9n7evBycgM9s75544eTIBf6jNp+HG5c5cjJ
	 GBQzGhfsgGVd478ex835yYWC4AQiiG3PigLYfynfP8ruHk5APMHVOaNbvLqf73AVAm
	 pd6G2bJ06GVHksa6YIYqQOL2hQQJqyn+HNVYYCq8=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 5099us86020453
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Jan 2025 03:56:54 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 9
 Jan 2025 03:56:54 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 9 Jan 2025 03:56:54 -0600
Received: from [172.24.227.245] (uda0132425.dhcp.ti.com [172.24.227.245])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 5099upD1126904;
	Thu, 9 Jan 2025 03:56:51 -0600
Message-ID: <2f9b9ea6-f99d-4883-bd3d-f7ee8f0f5bd5@ti.com>
Date: Thu, 9 Jan 2025 15:26:50 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: ti: k3-am62l: add initial reference
 board file
To: Bryan Brattlof <bb@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo
	<kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20250108-am62lx-v2-0-581285a37d8f@ti.com>
 <20250108-am62lx-v2-3-581285a37d8f@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
Content-Language: en-US
In-Reply-To: <20250108-am62lx-v2-3-581285a37d8f@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea



On 09/01/25 04:21, Bryan Brattlof wrote:
> From: Vignesh Raghavendra <vigneshr@ti.com>
> 
> Add the initial board file for the AM62L3's Evaluation Module.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Bryan Brattlof <bb@ti.com>
> ---
> Changes in v1:
>  - switched to non-direct links so TRM updates are automatic
>  - removed current-speed property from main_uart0
>  - removed empty reserved-memory{} node
>  - removed serial2 from aliases{} node
>  - corrected main_uart0 pinmux
> ---
>  arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 43 ++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
> new file mode 100644
> index 0000000000000..ed0148ce1bea6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: GPL-2.0-only or MIT
> +/*
> + * Device Tree file for the AM62L3 Evaluation Module
> + * Copyright (C) 2024 Texas Instruments Incorporated - https://www.ti.com/
> + *
> + * Technical Reference Manual: https://www.ti.com/lit/pdf/sprujb4
> + */
> +
> +/dts-v1/;
> +
> +#include "k3-am62l3.dtsi"
> +
> +/ {
> +	compatible = "ti,am62l3-evm", "ti,am62l3";
> +	model = "Texas Instruments AM62L3 Evaluation Module";
> +
> +	chosen {
> +		stdout-path = &main_uart0;
> +	};
> +
> +	memory@80000000 {
> +		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
> +		device_type = "memory";
> +		bootph-all;
> +	};
> +};
> +
> +&pmx0 {
> +	main_uart0_pins_default: main_uart0-default-pins {
> +		pinctrl-single,pins = <


> +			AM62PX_IOPAD(0x01b4, PIN_INPUT, 0)	/* (D13) UART0_RXD */
> +			AM62PX_IOPAD(0x01b8, PIN_OUTPUT, 0)	/* (C13) UART0_TXD */

			^^^^ AM62LX_IOPAD()

> +		>;
> +		bootph-all;
> +	};
> +};
> +
> +&main_uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_uart0_pins_default>;
> +	status = "okay";
> +	bootph-all;
> +};
> 

-- 
Regards
Vignesh
https://ti.com/opensource


