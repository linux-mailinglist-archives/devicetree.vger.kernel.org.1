Return-Path: <devicetree+bounces-274240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMFxDmGcsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:46:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85238267857
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B96A30160D7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6003BED1D;
	Wed, 11 Mar 2026 16:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulp4sUOU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A4932D3ECF;
	Wed, 11 Mar 2026 16:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773247504; cv=none; b=IumlgVDe+6GXDSbKHcMbx04x2j9dw4Ez7WKyLzb7/7k3x3AAf14fXspOB4lf2TbEtT79cUPTAHHAGf57B+N62hKVXB1yRjww1Z3b++yOxP+dGk2rbwq7tNeRTiMHuDWEQmThu/n+WZ941otQ3dCsIBReqnDihR6WcmkGJO6J/kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773247504; c=relaxed/simple;
	bh=SD4n4+pj8XcH479hZhXzdSKjpc+/gopJhmi6ag6zuSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZrEkQi8nyIO7iGbWIETbI936yXm47lb1kk/X4YvhldoRpyZR8bnRU9NSyRRTpe7jUQcZxOW18RzmFzIhHdTbscnWYh5Y1nsSArMp9FE8YKC0cS6mop4lgIooFvQEJeTlnkJHRXS/Ha1rRG9MY6b6fLkh8u7mLitukApP3niYzJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulp4sUOU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 091D8C4CEF7;
	Wed, 11 Mar 2026 16:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773247504;
	bh=SD4n4+pj8XcH479hZhXzdSKjpc+/gopJhmi6ag6zuSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ulp4sUOUcBjpM7gp7bp8fwfOnHjk0a8bUAYTm433Evz0RqnUP6MSEmWH3ZN66uNin
	 QMPKIDFz71ahhNkbh5apRNvzByGWdzGbIqw+5D4qPIrz3O/dyYuABgX5KkAe5DFmiZ
	 n1aZKGe177Bp4jssapp2tjsst8u07zm1FKkOyrYtN/1+/nqa4/LrKBObkxM4EckL3H
	 5nSm5rd4dOVFA1/SRccM9ZvRe0grGVSI3DpDi5fks/rXQShISs8w2NO6fr+7LvcfY3
	 y2aYs/bewOUtcoDsi+N7JWNqa7H1HU6H7754t+MV+6mw/A6QAJuqVTXzaqLznyY0dt
	 zzu51gZ9MlhQQ==
Date: Wed, 11 Mar 2026 11:45:03 -0500
From: Rob Herring <robh@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, git@amd.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/2] arm64: zynqmp: Switch Versal NET to firmware clock
 interface
Message-ID: <20260311164503.GA4041143-robh@kernel.org>
References: <cover.1772725183.git.michal.simek@amd.com>
 <78c6e51f0a648b42dffa4d23778b0c1caf4a5f68.1772725183.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <78c6e51f0a648b42dffa4d23778b0c1caf4a5f68.1772725183.git.michal.simek@amd.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274240-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amd.com:email,eb3f0440:email]
X-Rspamd-Queue-Id: 85238267857
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 05, 2026 at 04:39:50PM +0100, Michal Simek wrote:
> Switch Versal NET from using fixed clocks (versal-net-clk.dtsi) to the
> firmware-based CCF clock interface (versal-net-clk-ccf.dtsi). This
> enables proper clock management through the platform firmware instead
> of relying on static fixed-clock definitions.
> 
> Add DT macro headers for Versal NET and base Versal clocks, power
> domains and resets that are required by the CCF clock dtsi.
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>
> 
> ---
> 
>  .../boot/dts/xilinx/versal-net-clk-ccf.dtsi   | 378 ++++++++++++++++++
>  .../xilinx/versal-net-vn-x-b2197-01-revA.dts  |   3 +-
>  arch/arm64/boot/dts/xilinx/xlnx-versal-clk.h  | 123 ++++++
>  .../boot/dts/xilinx/xlnx-versal-net-clk.h     |  78 ++++
>  .../boot/dts/xilinx/xlnx-versal-net-power.h   |  38 ++
>  .../boot/dts/xilinx/xlnx-versal-net-resets.h  |  53 +++
>  .../arm64/boot/dts/xilinx/xlnx-versal-power.h |  54 +++
>  .../boot/dts/xilinx/xlnx-versal-resets.h      | 105 +++++
>  8 files changed, 831 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/xilinx/versal-net-clk-ccf.dtsi
>  create mode 100644 arch/arm64/boot/dts/xilinx/xlnx-versal-clk.h
>  create mode 100644 arch/arm64/boot/dts/xilinx/xlnx-versal-net-clk.h
>  create mode 100644 arch/arm64/boot/dts/xilinx/xlnx-versal-net-power.h
>  create mode 100644 arch/arm64/boot/dts/xilinx/xlnx-versal-net-resets.h
>  create mode 100644 arch/arm64/boot/dts/xilinx/xlnx-versal-power.h
>  create mode 100644 arch/arm64/boot/dts/xilinx/xlnx-versal-resets.h

> +
> +#include "xlnx-versal-net-clk.h"
> +#include "xlnx-versal-net-power.h"
> +#include "xlnx-versal-net-resets.h"
> +
> +/ {
> +	ref_clk: ref-clk {

Preferred node name is clock-33333333.

> +		bootph-all;
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <33333333>;
> +		clock-output-names = "ref_clk";
> +	};
> +
> +	rtc_clk: rtc-clk {

clock-32768

> +		bootph-all;
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		clock-output-names = "rtc_clk";
> +	};
> +
> +	can0_clk: can0-clk {
> +		#clock-cells = <0>;
> +		compatible = "fixed-factor-clock";
> +		clocks = <&versal_net_clk CAN0_REF_2X>;
> +		clock-div = <2>;
> +		clock-mult = <1>;
> +		clock-output-names = "can0_clk";
> +	};
> +
> +	can1_clk: can1-clk {
> +		#clock-cells = <0>;
> +		compatible = "fixed-factor-clock";
> +		clocks = <&versal_net_clk CAN1_REF_2X>;
> +		clock-div = <2>;
> +		clock-mult = <1>;
> +		clock-output-names = "can1_clk";
> +	};
> +
> +	firmware {
> +		versal_net_firmware: versal-net-firmware {
> +			compatible = "xlnx,versal-net-firmware", "xlnx,versal-firmware";
> +			bootph-all;
> +			method = "smc";
> +			#power-domain-cells = <1>;
> +
> +			versal_net_reset: reset-controller {
> +				compatible = "xlnx,versal-net-reset";
> +				#reset-cells = <1>;
> +			};
> +
> +			versal_net_clk: clock-controller {
> +				bootph-all;
> +				#clock-cells = <1>;
> +				compatible = "xlnx,versal-net-clk", "xlnx,versal-clk";
> +				clocks = <&ref_clk>, <&ref_clk>, <&ref_clk>;
> +				clock-names = "ref", "pl_alt_ref", "alt_ref";
> +			};
> +
> +			versal_net_power: power-management { /* untested */
> +				compatible = "xlnx,zynqmp-power";
> +				interrupt-parent = <&gic>;
> +				interrupts = <0 57 4>;
> +				mboxes = <&ipi_mailbox_pmu1 0>,
> +					 <&ipi_mailbox_pmu1 1>;
> +				mbox-names = "tx", "rx";
> +			};
> +		};
> +	};
> +
> +	zynqmp-ipi {
> +		compatible = "xlnx,zynqmp-ipi-mailbox";
> +		interrupt-parent = <&gic>;
> +		interrupts = <0 57 4>;
> +		xlnx,ipi-id = <2>;
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		ipi_mailbox_pmu1: mailbox@eb3f0440 {
> +			compatible = "xlnx,zynqmp-ipi-dest-mailbox";
> +			reg = <0 0xeb3f0440 0 0x20>,
> +			      <0 0xeb3f0460 0 0x20>,
> +			      <0 0xeb3f0280 0 0x20>,
> +			      <0 0xeb3f02a0 0 0x20>;
> +			reg-names = "local_request_region", "local_response_region",
> +				    "remote_request_region", "remote_response_region";
> +			#mbox-cells = <1>;
> +			xlnx,ipi-id = <1>;
> +		};
> +	};
> +};
> +
> +&cpu0 {
> +	clocks = <&versal_net_clk ACPU_0>;
> +};

This structure is unusual and not great for readability. Imagine if we 
did a .dtsi for each provider with all the consumer properties.

> +
> +&cpu100 {
> +	clocks = <&versal_net_clk ACPU_0>;
> +};
> +
> +&cpu200 {
> +	clocks = <&versal_net_clk ACPU_0>;
> +};
> +
> +&cpu300 {
> +	clocks = <&versal_net_clk ACPU_0>;
> +};
> +
> +&cpu10000 {
> +	clocks = <&versal_net_clk ACPU_1>;
> +};
> +
> +&cpu10100 {
> +	clocks = <&versal_net_clk ACPU_1>;
> +};
> +
> +&cpu10200 {
> +	clocks = <&versal_net_clk ACPU_1>;
> +};
> +
> +&cpu10300 {
> +	clocks = <&versal_net_clk ACPU_1>;
> +};
> +
> +&cpu20000 {
> +	clocks = <&versal_net_clk ACPU_2>;
> +};
> +
> +&cpu20100 {
> +	clocks = <&versal_net_clk ACPU_2>;
> +};
> +
> +&cpu20200 {
> +	clocks = <&versal_net_clk ACPU_2>;
> +};
> +
> +&cpu20300 {
> +	clocks = <&versal_net_clk ACPU_2>;
> +};
> +
> +&cpu30000 {
> +	clocks = <&versal_net_clk ACPU_3>;
> +};
> +
> +&cpu30100 {
> +	clocks = <&versal_net_clk ACPU_3>;
> +};
> +
> +&cpu30200 {
> +	clocks = <&versal_net_clk ACPU_3>;
> +};
> +
> +&cpu30300 {
> +	clocks = <&versal_net_clk ACPU_3>;
> +};
> +
> +&can0 {
> +	clocks = <&can0_clk>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_CAN_FD_0>;
> +};
> +
> +&can1 {
> +	clocks = <&can1_clk>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_CAN_FD_1>;
> +};
> +
> +&gem0 {
> +	clocks = <&versal_net_clk LPD_LSBUS>,
> +		 <&versal_net_clk GEM0_REF>, <&versal_net_clk GEM0_TX>,
> +		 <&versal_net_clk GEM0_RX>, <&versal_net_clk GEM_TSU>;
> +	power-domains = <&versal_net_firmware PM_DEV_GEM_0>;
> +};
> +
> +&gem1 {
> +	clocks = <&versal_net_clk LPD_LSBUS>,
> +		 <&versal_net_clk GEM1_REF>, <&versal_net_clk GEM1_TX>,
> +		 <&versal_net_clk GEM1_RX>, <&versal_net_clk GEM_TSU>;
> +	power-domains = <&versal_net_firmware PM_DEV_GEM_1>;
> +};
> +
> +&gpio0 {
> +	clocks = <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_GPIO>;
> +};
> +
> +&gpio1 {
> +	clocks = <&versal_net_clk PMC_LSBUS_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_GPIO_PMC>;
> +};
> +
> +&i2c0 {
> +	clocks = <&versal_net_clk I3C0_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_I2C_0>;
> +};
> +
> +&i2c1 {
> +	clocks = <&versal_net_clk I3C1_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_I2C_1>;
> +};
> +
> +&i3c0 {
> +	clocks = <&versal_net_clk I3C0_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_I2C_0>;
> +};
> +
> +&i3c1 {
> +	clocks = <&versal_net_clk I3C1_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_I2C_1>;
> +};
> +
> +&adma0 {
> +	clocks = <&versal_net_clk ADMA>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_ADMA_0>;
> +};
> +
> +&adma1 {
> +	clocks = <&versal_net_clk ADMA>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_ADMA_1>;
> +};
> +
> +&adma2 {
> +	clocks = <&versal_net_clk ADMA>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_ADMA_2>;
> +};
> +
> +&adma3 {
> +	clocks = <&versal_net_clk ADMA>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_ADMA_3>;
> +};
> +
> +&adma4 {
> +	clocks = <&versal_net_clk ADMA>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_ADMA_4>;
> +};
> +
> +&adma5 {
> +	clocks = <&versal_net_clk ADMA>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_ADMA_5>;
> +};
> +
> +&adma6 {
> +	clocks = <&versal_net_clk ADMA>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_ADMA_6>;
> +};
> +
> +&adma7 {
> +	clocks = <&versal_net_clk ADMA>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_ADMA_7>;
> +};
> +
> +&qspi {
> +	clocks = <&versal_net_clk QSPI_REF>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_QSPI>;
> +};
> +
> +&ospi {
> +	clocks = <&versal_net_clk OSPI_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_OSPI>;
> +};
> +
> +&rtc {
> +	clocks = <&rtc_clk>;
> +	clock-names = "rtc";
> +	power-domains = <&versal_net_firmware PM_DEV_RTC>;
> +};
> +
> +&serial0 {
> +	clocks = <&versal_net_clk UART0_REF>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_UART_0>;
> +};
> +
> +&serial1 {
> +	clocks = <&versal_net_clk UART1_REF>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_UART_1>;
> +};
> +
> +&sdhci0 {
> +	clocks = <&versal_net_clk SDIO0_REF>, <&versal_net_clk LPD_LSBUS>,
> +		 <&versal_net_clk SD_DLL_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_SDIO_0>;
> +};
> +
> +&sdhci1 {
> +	clocks = <&versal_net_clk SDIO1_REF>, <&versal_net_clk LPD_LSBUS>,
> +		 <&versal_net_clk SD_DLL_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_SDIO_1>;
> +};
> +
> +&spi0 {
> +	clocks = <&versal_net_clk SPI0_REF>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_SPI_0>;
> +};
> +
> +&spi1 {
> +	clocks = <&versal_net_clk SPI1_REF>, <&versal_net_clk LPD_LSBUS>;
> +	power-domains = <&versal_net_firmware PM_DEV_SPI_1>;
> +};
> +
> +&ttc0 {
> +	clocks = <&versal_net_clk TTC0>;
> +	power-domains = <&versal_net_firmware PM_DEV_TTC_0>;
> +};
> +
> +&ttc1 {
> +	clocks = <&versal_net_clk TTC1>;
> +	power-domains = <&versal_net_firmware PM_DEV_TTC_1>;
> +};
> +
> +&ttc2 {
> +	clocks = <&versal_net_clk TTC2>;
> +	power-domains = <&versal_net_firmware PM_DEV_TTC_2>;
> +};
> +
> +&ttc3 {
> +	clocks = <&versal_net_clk TTC3>;
> +	power-domains = <&versal_net_firmware PM_DEV_TTC_3>;
> +};
> +
> +&usb0 {
> +	clocks = <&versal_net_clk USB0_BUS_REF>, <&versal_net_clk USB0_BUS_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_USB_0>;
> +	resets = <&versal_net_reset VERSAL_RST_USB_0>;
> +};
> +
> +&dwc3_0 {
> +	clocks = <&versal_net_clk USB0_BUS_REF>;
> +};
> +
> +&usb1 {
> +	clocks = <&versal_net_clk USB1_BUS_REF>, <&versal_net_clk USB1_BUS_REF>;
> +	power-domains = <&versal_net_firmware PM_DEV_USB_1>;
> +	resets = <&versal_net_reset VERSAL_RST_USB_1>;
> +};
> +
> +&dwc3_1 {
> +	clocks = <&versal_net_clk USB1_BUS_REF>;
> +};
> +
> +&wwdt0 {
> +	clocks = <&versal_net_clk FPD_WWDT0>;
> +	power-domains = <&versal_net_firmware PM_DEV_FPD_SWDT_0>;
> +};
> +
> +&wwdt1 {
> +	clocks = <&versal_net_clk FPD_WWDT1>;
> +	power-domains = <&versal_net_firmware PM_DEV_FPD_SWDT_1>;
> +};
> +
> +&wwdt2 {
> +	clocks = <&versal_net_clk FPD_WWDT2>;
> +	power-domains = <&versal_net_firmware PM_DEV_FPD_SWDT_2>;
> +};
> +
> +&wwdt3 {
> +	clocks = <&versal_net_clk FPD_WWDT3>;
> +	power-domains = <&versal_net_firmware PM_DEV_FPD_SWDT_3>;
> +};
> +
> +&lpd_wwdt0 {
> +	clocks = <&versal_net_clk LPD_WWDT0>;
> +	power-domains = <&versal_net_firmware PM_DEV_LPD_SWDT_0>;
> +};
> +
> +&lpd_wwdt1 {
> +	clocks = <&versal_net_clk LPD_WWDT1>;
> +	power-domains = <&versal_net_firmware PM_DEV_LPD_SWDT_1>;
> +};
> diff --git a/arch/arm64/boot/dts/xilinx/versal-net-vn-x-b2197-01-revA.dts b/arch/arm64/boot/dts/xilinx/versal-net-vn-x-b2197-01-revA.dts
> index 06b2301f48a0..322ef8f6340d 100644
> --- a/arch/arm64/boot/dts/xilinx/versal-net-vn-x-b2197-01-revA.dts
> +++ b/arch/arm64/boot/dts/xilinx/versal-net-vn-x-b2197-01-revA.dts
> @@ -11,8 +11,9 @@
>  /dts-v1/;
>  
>  #include "versal-net.dtsi"
> -#include "versal-net-clk.dtsi"

Now this is unused and should be removed.

> +#include "versal-net-clk-ccf.dtsi"

Or perhaps reuse the filename because what does Common Clock Framework 
have to do with DTS file names?

>  #include <dt-bindings/gpio/gpio.h>
> +#include "xlnx-versal-net-power.h"

