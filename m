Return-Path: <devicetree+bounces-141486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E56AA20E8A
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD66A3A923A
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C1F1DB37A;
	Tue, 28 Jan 2025 16:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ZXfnP6Ha"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A1B1D515B;
	Tue, 28 Jan 2025 16:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738081670; cv=none; b=D95AEJV7dZann5pbNWgtwqHhEMyUO2V8243d1ktdkr7sltxQPGBH6JK1StiQBFwJZ3dIx7x/+jh4v79skVCQlpHP1eri37OKjtg6+FzhZLx5k9itjYM9jIdMqLDHPYMJ6s62fM+q9OailW2vrtk0Wsqb6ql4gGW3T0QhkuK4g58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738081670; c=relaxed/simple;
	bh=wtf9uwQ1p9kSi3NCuEDqpvHXx5wzgmgzwmK+VNobczc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=hzH1Q5RhNcZCYquaxkD3iJSOQq/iWKYkTD2qSVsmMJ2D4+heXfWqUjZvE4sY7+x1yn5tibVg3oNUKeP0E+1IVjdEqtdVjTANYy48B+LwMESBmfr0xnXdCSFcf5P07YirB+fQ7WlY6Meeh7RY12xRAs98RbQocee4vp0Wrm5X9GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=ZXfnP6Ha; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50SGRhrg1212061
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 28 Jan 2025 10:27:43 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1738081663;
	bh=A/4Y1T0DrTrc9vATA/UpSI2/RhhBRGWk9IOT8fTaadM=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=ZXfnP6HauOcAZJ2qmd5SL4beMus1DGVW0uaRO3b7rVKl1pReXvP2AwyxK5XBNq/Uj
	 kElOR0IY6Q7XWJlxsqT57bIHuMX9ev4DBXadn3VrLo6votcMG0cRSMOaj9nJpZVEJN
	 PfR6opXLXoiI8EKTFuYPWGL6VodV1eF8JZDGfdIc=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50SGRhme007466;
	Tue, 28 Jan 2025 10:27:43 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Jan 2025 10:27:43 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Jan 2025 10:27:42 -0600
Received: from [10.250.32.214] ([10.250.32.214])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50SGRgYD113486;
	Tue, 28 Jan 2025 10:27:42 -0600
Message-ID: <8b152f81-0848-4f34-adcb-fee9b4f2fd7f@ti.com>
Date: Tue, 28 Jan 2025 10:27:42 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-am62a-mcu: Add R5F remote proc
 node
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Devarsh Thakkar
	<devarsht@ti.com>,
        Hari Nagalla <hnagalla@ti.com>
References: <20250127221631.3974583-1-jm@ti.com>
 <20250127221631.3974583-3-jm@ti.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20250127221631.3974583-3-jm@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

On 1/27/25 4:16 PM, Judith Mendez wrote:
> From: Hari Nagalla <hnagalla@ti.com>
> 
> AM62A SoCs have a single R5F core in the MCU voltage domain. The MCU
> domain also has a 512KB sram memory, the R5F core can use for
> applications needing fast memory access.
> 
> Signed-off-by: Hari Nagalla <hnagalla@ti.com>
> [Judith: Fix commit message header]
> Signed-off-by: Judith Mendez <jm@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi | 36 ++++++++++++++++++++++++
>   1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
> index 0469c766b769e..9a20f75e48063 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
> @@ -6,6 +6,18 @@
>    */
>   
>   &cbass_mcu {
> +	mcu_ram: sram@79100000 {
> +		compatible = "mmio-sram";
> +		reg = <0x00 0x79100000 0x00 0x80000>;
> +		ranges = <0x00 0x00 0x79100000 0x80000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		mcu1-sram@0 {
> +			reg = <0x0 0x80000>;
> +		};
> +	};
> +
>   	mcu_pmx0: pinctrl@4084000 {
>   		compatible = "pinctrl-single";
>   		reg = <0x00 0x04084000 0x00 0x88>;
> @@ -175,4 +187,28 @@ mcu_mcan1: can@4e18000 {
>   		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
>   		status = "disabled";
>   	};
> +
> +	mcu_r5fss0: r5fss@79000000 {
> +		compatible = "ti,am62-r5fss";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x79000000 0x00 0x79000000 0x8000>,
> +			 <0x79020000 0x00 0x79020000 0x8000>;
> +		power-domains = <&k3_pds 7 TI_SCI_PD_EXCLUSIVE>;

Newline here.

Also this should be default "disabled". It can be set to "okay"
in the board DTS file when the needed mboxes and memory-region
are set. Speaking of that, where are those patches? This is
incomplete without them and these nodes will not function.
Same for the DSP patch.

Andrew

> +		mcu_r5fss0_core0: r5f@79000000 {
> +			compatible = "ti,am62-r5f";
> +			reg = <0x79000000 0x00008000>,
> +				<0x79020000 0x00008000>;
> +			reg-names = "atcm", "btcm";
> +			ti,sci = <&dmsc>;
> +			ti,sci-dev-id = <9>;
> +			ti,sci-proc-ids = <0x03 0xff>;
> +			resets = <&k3_reset 9 1>;
> +			firmware-name = "am62a-mcu-r5f0_0-fw";
> +			ti,atcm-enable = <0>;
> +			ti,btcm-enable = <1>;
> +			ti,loczrama = <0>;
> +			sram = <&mcu_ram>;
> +		};
> +	};
>   };

