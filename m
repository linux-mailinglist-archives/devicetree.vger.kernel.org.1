Return-Path: <devicetree+bounces-168741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 669C5A94382
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 15:06:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88AD88A0772
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 13:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B0A1D516C;
	Sat, 19 Apr 2025 13:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PooUg6JD"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D498715746F
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 13:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745067968; cv=none; b=Tr/MeWPtPONtyBy757XXiC+7VOvWMeguTSBkoJOzbYAJVJNIoK3TLY0+bdLolgIDa/SHytVdyKF+8TKQ6OfBHzKTMaWwSK5R0WNR9UWSvKwrNnyvNCoakf01WUGjGkuQD/wcsNHC+pPzYHJKibBikASVjZVy/dZSFniJm62omF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745067968; c=relaxed/simple;
	bh=Yh89RQnIi8wvrDH8R4Qu/04mwGmJ0omM4uj3GakiGCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=CQnVwrHJevd4zwzDG6RxRMuICSVigNG873E0/sbio0wbNfsgAXjWONUGb/huPaShMGhfAilAPQ3UYs/9N7zcFMDDsBjeAVuepKP4lby3kKFCKwmD1OP1fRovvV2Fz0em/gRWdM4yNgAeJB6dWtxbvfs/bJngQLRPG4BvfxgSmJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PooUg6JD; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 53JD5qGT1203396
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Apr 2025 08:05:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1745067952;
	bh=NDMxDpRQHUH5DI5CJdXcKRFYNqO7HewMbVkgqrZvlZ0=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=PooUg6JDPmaoIajrPX1J0OWWh7IuZ6WfK3uYde+1Tc498kL8NWoHLknvaEYoJY4+F
	 SnEG6ltf0qrfxbUWGlb0RpNPVWgrn8hIA5C2l1RN/agfaR6HLjT5/yg7XbZCA0cSxO
	 ioDTYG+kY5QHWe+fqf8AZjVy2UmWrnSRV1tNgt5o=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 53JD5qQ3079017
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 19 Apr 2025 08:05:52 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sat, 19
 Apr 2025 08:05:51 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sat, 19 Apr 2025 08:05:51 -0500
Received: from [10.249.141.75] ([10.249.141.75])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 53JD5jhA027840;
	Sat, 19 Apr 2025 08:05:46 -0500
Message-ID: <98b6208c-4cfd-4746-9e49-4f5596f8cf3e@ti.com>
Date: Sat, 19 Apr 2025 18:35:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Describe the SPI NAND
To: Miquel Raynal <miquel.raynal@bootlin.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
CC: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>,
        Steam Lin <stlin2@winbond.com>, <u-kumar1@ti.com>
References: <20250401135822.244402-1-miquel.raynal@bootlin.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20250401135822.244402-1-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Thanks for patch Miquel

On 4/1/2025 7:28 PM, Miquel Raynal wrote:
> Describe the octal SPI NAND available on the low-power starter kit.
>
> The pinctrl configuration comes from TI fork.
>
> With the current mainline tree, we currently get the following
> performances:
>
> eraseblock write speed is 7507 KiB/s
> eraseblock read speed is 15802 KiB/s
> page write speed is 7551 KiB/s
> page read speed is 15609 KiB/s
> 2 page write speed is 7551 KiB/s
> 2 page read speed is 15609 KiB/s
> erase speed is 284444 KiB/s
> 2x multi-block erase speed is 512000 KiB/s
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 40 +++++++++++++++++++++++++
>   1 file changed, 40 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> index a6f0d87a50d8..6cc950f6dbe3 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> @@ -737,3 +737,43 @@ dpi1_out: endpoint {
>   		};
>   	};
>   };
> +
> +&fss {
> +	status = "okay";
> +};
> +
> +&ospi0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&ospi0_pins_default>;
> +
> +	flash@0 {
> +		compatible = "spi-nand";

Since this is boot flash, so please add booth-all property as well


> +		reg = <0>;
> +		spi-tx-bus-width = <8>;
> +		spi-rx-bus-width = <8>;
> +		spi-max-frequency = <25000000>;
> +		cdns,tshsl-ns = <60>;
> +		cdns,tsd2d-ns = <60>;
> +		cdns,tchsh-ns = <60>;
> +		cdns,tslch-ns = <60>;
> +		cdns,read-delay = <2>;

Since this flash is used as boot device, I suggest if you can add 
partitions of flash as well .

you can take reference from downstream version [0]

> +	};
> +};
> +
> +&main_pmx0 {
> +	ospi0_pins_default: ospi0-default-pins {

please add booth-all property as well


> +		pinctrl-single,pins = <
> +			AM62AX_IOPAD(0x000, PIN_OUTPUT, 0) /* (H24) OSPI0_CLK */
> +			AM62AX_IOPAD(0x02c, PIN_OUTPUT, 0) /* (F23) OSPI0_CSn0 */
> +			AM62AX_IOPAD(0x00c, PIN_INPUT, 0) /* (E25) OSPI0_D0 */
> +			AM62AX_IOPAD(0x010, PIN_INPUT, 0) /* (G24) OSPI0_D1 */
> +			AM62AX_IOPAD(0x014, PIN_INPUT, 0) /* (F25) OSPI0_D2 */
> +			AM62AX_IOPAD(0x018, PIN_INPUT, 0) /* (F24) OSPI0_D3 */
> +			AM62AX_IOPAD(0x01c, PIN_INPUT, 0) /* (J23) OSPI0_D4 */
> +			AM62AX_IOPAD(0x020, PIN_INPUT, 0) /* (J25) OSPI0_D5 */
> +			AM62AX_IOPAD(0x024, PIN_INPUT, 0) /* (H25) OSPI0_D6 */
> +			AM62AX_IOPAD(0x028, PIN_INPUT, 0) /* (J22) OSPI0_D7 */
> +			AM62AX_IOPAD(0x008, PIN_INPUT, 0) /* (J24) OSPI0_DQS */
> +		>;
> +	};
> +};

[0] 
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/tree/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts?h=ti-linux-6.12.y-cicd#n798 




