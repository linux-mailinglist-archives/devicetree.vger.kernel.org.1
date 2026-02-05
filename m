Return-Path: <devicetree+bounces-263005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBCsFa6OhGkO3gMAu9opvQ
	(envelope-from <devicetree+bounces-263005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:35:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F1BF29C8
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:35:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1BE8B3004D8F
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 12:35:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672B73ACF14;
	Thu,  5 Feb 2026 12:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pbff6F4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E8838F223;
	Thu,  5 Feb 2026 12:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770294950; cv=none; b=YDSVDtyIzyDew0OqGgeya4iTp1STG6U/9lphfH7Tzshjm2FbmRYzN0t+EZNTJe88rg/7rVKzmMfbBBGIaJxjvckCJaY+yIOzEg8ZJScwpUJW6tpmuEWFMFsWF44kcnRrAWxk26wBOWSq+DXBTelLFsscMk2AO14K+NCXs85gjbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770294950; c=relaxed/simple;
	bh=nel5r3ZPIAdk3n4G92llr+nSLeoO+qouhLLFg0wwKG4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s7P11JyFdsSCgkkUTrBSsBPa6FpKnxM6/PVaJ3BdnePd2RuOKZtTJdelOCO1tdjM68iNrZ0XL6/+mXxz6Xj+yEv3XQzFI8e7doJUpu6HsOnyoevcYfNmbh9RwPG9vbNNE0D/G8D/CQwo7GNyM2VKmdKL+YbpDKuNWm2A1qPt1f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pbff6F4Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFD5BC4CEF7;
	Thu,  5 Feb 2026 12:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770294950;
	bh=nel5r3ZPIAdk3n4G92llr+nSLeoO+qouhLLFg0wwKG4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Pbff6F4QdxJ/x6ARKtAQdlxQOFd/8rzHtFzil+lFHMIIbQP5kTdYiioesGV5YC1lw
	 79DNKgGVmEb2YVgcbAQnbTUDzOydcAMp3BqxfIPuVgxSC3Qu3r/K5BV0Na/dT8kF8T
	 dEDKTyH5sOA4HI6FzL1we7NuRD8kFFWF8qPW8GZ9kdXVABT2FF9y34Hc1R7RYKMJwa
	 +h44Dmmp8OVNDIHZlyrTvWKpi/GRLb4E1BijCdEoJN5Je3QOgx/AZR+qHvNntsRxNm
	 9ek5DeZ1r1kB4pJrwgnFvbe9gUCjnT/ElCeyGNo6fDiW0xFE6D7t8PFFr0Jd+Nv+76
	 sRgX3rzWJU8PQ==
Message-ID: <76da2e9b-1b57-4bd1-b577-9001d01c7b9a@kernel.org>
Date: Thu, 5 Feb 2026 13:35:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: zena: Add support for Zena CSS
To: Debbie Horsfall <debbie.horsfall@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-263005-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.100:email,0.0.78.32:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,arm.com:email,2.98.168.32:email,4.196.180.0:email,1.61.98.0:email,1.61.254.64:email,1a420000:email,300d0000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.1.150.64:email]
X-Rspamd-Queue-Id: 68F1BF29C8
X-Rspamd-Action: no action

On 23/01/2026 18:37, Debbie Horsfall wrote:
> Introduce the Zena CSS Fixed Virtual Platform (FVP) dts. This is
> currently the only Zena CSS variant, however the common definitions are
> included in a common dtsi for extensibility.
> 
> Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
> ---
>  MAINTAINERS                              |   1 +
>  arch/arm64/boot/dts/arm/Makefile         |   1 +
>  arch/arm64/boot/dts/arm/zena-css-fvp.dts |  55 ++
>  arch/arm64/boot/dts/arm/zena-css.dtsi    | 826 +++++++++++++++++++++++++++++++
>  4 files changed, 883 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90d88137adf1..d1d2dae6a71e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3727,6 +3727,7 @@ ARM/ZENA CSS PLATFORM
>  M:	Debbie Horsfall <debbie.horsfall@arm.com>
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/arm/arm,zena-css.yaml
> +F:	arch/arm64/boot/dts/arm/zena-css*

Eeeh, this is getting more and more messier.

All ARM designs or at least all similar like all ARM FVP should have one
group maintainers and that entry now claims "versatile express".

Additional entries for submaintainers is fine, but honestly with this
split of bindings this is getting more and more messier.

I know that ARM is kind of "special" but when it comes to SoCs it should
not be.

Sort out this mess, please, before get accept another platform.

...


> +		cpu-map {
> +

No opening blank lines.

> +			cluster0 {
> +
> +				core0 {
> +					cpu = <&CPU0>;

Labels are lowercase. See DTS coding style.


> +				};
> +
> +				core1 {
> +					cpu = <&CPU1>;
> +				};
> +
> +				core2 {
> +					cpu = <&CPU2>;
> +				};
> +
> +				core3 {
> +					cpu = <&CPU3>;
> +				};
> +			};
> +

...

> +	memory@80000000 {
> +		device_type = "memory";
> +
> +		/* Bank 0: start = 0x0000_0000_8000_0000, size = ~2 GiB (0x7F00_0000) */
> +		reg = <
> +			0x00000000  0x80000000  0x00000000  0x7F000000

Lowercase hex. Also,
> +			0x00000200  0x00000000  0x00000000  0x80000000
> +		>;
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
> +			<GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
> +			<GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> +			<GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
> +			<GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	soc_clk24mhz: clock-24000000 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		clock-output-names = "refclk24mhz";
> +	};
> +
> +	soc: soc {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		timer@1a810000 {
> +			compatible = "arm,armv7-timer-mem";
> +			reg = <0x0 0x1a810000 0 0x10000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			/* Map child space [0x0..0x30000) to parent @ 0x1a810000 */
> +			ranges = <0x0 0x0 0x1a810000 0x00030000>;
> +
> +			frame@20000 {
> +				frame-number = <0>;
> +				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x20000 0x10000>;
> +			};
> +		};
> +
> +		gic: interrupt-controller@20800000 {
> +			compatible = "arm,gic-v3";
> +			#redistributor-regions = <16>;
> +			reg = <0x0 0x20800000 0x0 0x10000>,    /* GICD */
> +				<0x0 0x20880000 0x0 0x40000>,    /* 16 * GICR */
> +				<0x0 0x208c0000 0x0 0x40000>,
> +				<0x0 0x20900000 0x0 0x40000>,
> +				<0x0 0x20940000 0x0 0x40000>,
> +				<0x0 0x20980000 0x0 0x40000>,
> +				<0x0 0x209c0000 0x0 0x40000>,
> +				<0x0 0x20a00000 0x0 0x40000>,
> +				<0x0 0x20a40000 0x0 0x40000>,
> +				<0x0 0x20a80000 0x0 0x40000>,
> +				<0x0 0x20ac0000 0x0 0x40000>,
> +				<0x0 0x20b00000 0x0 0x40000>,
> +				<0x0 0x20b40000 0x0 0x40000>,
> +				<0x0 0x20b80000 0x0 0x40000>,
> +				<0x0 0x20bc0000 0x0 0x40000>,
> +				<0x0 0x20c00000 0x0 0x40000>,
> +				<0x0 0x20c40000 0x0 0x40000>;
> +			#interrupt-cells = <3>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			interrupt-controller;
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			its1: msi-controller@20840000 {
> +				compatible = "arm,gic-v3-its";
> +				reg = <0x0 0x20840000 0x0 0x40000>;
> +				msi-controller;
> +				#msi-cells = <1>;
> +			};
> +		};
> +
> +		/* UART is fixed as 24MHz, both UARTCLK and PCLK */
> +		soc_serial0: serial@1a400000 {

That's some messed ordering. What sort of ordering rule is followed by
ALL ARM SoCs? Not standard DTS coding style? If not, which one and why?

> +			compatible = "arm,pl011", "arm,primecell";
> +			reg = <0x0 0x1a400000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&soc_clk24mhz>, <&soc_clk24mhz>;
> +			clock-names = "uartclk", "apb_pclk";
> +		};
> +
> +		watchdog@1a420000 {
> +			compatible = "arm,sbsa-gwdt";
> +			reg = <0x0 0x1a420000 0x0 0x10000>,
> +			      <0x0 0x1a430000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		rtc@300d0000 {
> +			compatible = "arm,pl031", "arm,primecell";
> +			reg = <0x0 0x300d0000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&soc_clk24mhz>;
> +			clock-names = "apb_pclk";
> +		};
> +

No trailing blank lines either. Please clean up your code so it looks
intentional and well organized.


> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0", "arm,psci-0.2", "arm,psci";
> +		method = "smc";
> +		cpu_suspend = <0xc4000001>;
> +		cpu_off = <0x84000002>;
> +		cpu_on = <0xc4000003>;
> +	};
> +
> +	sram: sram@104000 {
> +		compatible = "mmio-sram";
> +		reg = <0x0 0x104000 0x0 0x00001000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0x0 0x104000 0x00001000>;
> +
> +		scmi_shmem_tx: scpshmem-sram-section@0 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x0 0x100>;
> +		};
> +		scmi_shmem_rx: scpshmem-sram-section@100 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x100 0x100>;
> +		};
> +	};
> +
> +	mbox_db_tx: mailbox@40020000 {

MMIO nodes are under soc.


Best regards,
Krzysztof

