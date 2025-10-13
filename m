Return-Path: <devicetree+bounces-225910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E10BD2327
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:04:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62AC73B48D1
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 09:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6362FB99B;
	Mon, 13 Oct 2025 09:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nmad1u4r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08A82FBDE9
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760346258; cv=none; b=hbh94wY2a9h9YGnwzPC/+Xq7DcOWG+K541+H+Sf8DDglBBE7fhMPivsBls5Wlr4mvZC/v91RoNE92A+XAVy0S6DoWL/nLlsMfq6PaEBLLOMJuQtycDKF28DVWku0MHKrYzpeeMojm5OGVoIVfLaSj1bXKDRc8M0KYOBmQeJbhuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760346258; c=relaxed/simple;
	bh=wbSo47kYEos7Y92XqeQiw+W6T5uonoM59324W0iyjH8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L6qS4Q1a/v9usTuB58zazIA793d4TUVLZIIh7QoqFJpqCbBTGMSiXhIIv6FMzycZLxor0IjK8SbSlf8Q+v814qgZ9VRYaB0hx6UO5AUzNGfLoZStvmsOicLISzGnKLT6xC35BFcEBsBjl9nFqMoziON08U1H/eETWtXvovSI/HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nmad1u4r; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-3306b83ebdaso3398872a91.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760346256; x=1760951056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cUw0f1LukBSPwks2koY7/GQ0Hj/EqUjJnkuqS1d8pp8=;
        b=Nmad1u4r1Og7/jfTbxrOgDAVVvqTW8CSmIfU3kHAH3j+ZXEt8TO75XW0aWrvfq4zkd
         n9P5WC2Qj1pa92k4858dgLcQLOVe4VCP1Pu1tM+7a33AwyhbyWFWMjPuDj8dZKbEOIHC
         sWltPHePBycjkOfSc8QNGNMj9amwLuG2zC1JRR//JlQzkml4unIxmChpCT3BZHlD0kgJ
         2lVwiiDqsbdeiF8wDxTBIJ378UmsbcxQRtz0psB4+zY4QWMplPtCqVyStvs6zqV2KaSd
         dmJi/c9pnuCd8zf5PE0XFB0ImoiVTvpNO2Gn9qWw3Xt3F/4+uGYGppAH0+dcWHfPpfry
         zjrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760346256; x=1760951056;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cUw0f1LukBSPwks2koY7/GQ0Hj/EqUjJnkuqS1d8pp8=;
        b=sXP+BeeP6PRk3rK0ULk9uEYCd/5mniNDdyS6qO98t+HaWKXigIlMvzqHO673GYGCqK
         Eise0eaqE8qwJtdQnMHQQCHy6/RpT0fFuiSNPE7OUTfazKpTbtIh16EJ1LcSzGMuNKDK
         sQOE2n0O3ygDnJpaEA39FqJ/3YgFOM9IA1At9HJyXktWY3yNhIM8c5V186yd1TOqoDCe
         hciAWWL5xeNnHKANllH+DmUoD8vBaew5xEp6964GtMNw3NnDx9xqDp7yFP2XwyOA6pEj
         urY6w7o2m0Ad8hFptY0DHivuN6CzpW3ixS5vqbtBn2ojXr5B3m2FVzGv5j3AEDXmOy60
         5hsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBLE7T98IBT1oVxdstJ7O4m5QSNC/ufHZmKQEBi3vuE6xrBs7cYXT3Bb5d1Gzu2P7KPDM5nsU4XvEL@vger.kernel.org
X-Gm-Message-State: AOJu0YyIZ7hNyQBJT/l9Zs6k63wk0tovKPpwMmiegTglbwoivObtcJVK
	TPnmWYN29GyJXx0WmTquow3q9wdg4Y997S6VLY1D7So2yY5QsH4wHooa
X-Gm-Gg: ASbGncvyFnsIfYCDNLNyPF2K1lhXUrZNJNuRWZo0/hqCWZIdkceLcvODp60CXarwm4t
	64iGwAyDiJtxqdfpRflCb4MMcFOuVq+c0zg2JmutQvyF3lo9pZkIgpZQ3lu7y2j8k0qkpKy4TJi
	3Zmp2bdaES1OK3A5CeJ1s+14cpHoCaPTnCgfVUJWQzSoqkw0t01FxE6hv09DYmOKDtl4oiY9p2d
	PCGA/yFWdfGlsGri+BV8nQkS+tAtgzUWRCEvuw9Ff8gC1tJQdfn+6fulAcM/DH3GLJt3uADB1ub
	khk1Z9dwlT1z8IFzZWufiUieW+jz6cAZeiC8EaVayCthHRoYxyU5uNllvL8os9wXlci/ltrn7qS
	ioJpFLjCGByTikp0YQjMYrCwJd5WD5iYxW26qavRv+k0TAy6kmwcg6w==
X-Google-Smtp-Source: AGHT+IFScGKQhEpOKLhKDecX+TciUhn1UzLJUB13F6c9ifu8lHOpJuAJdGV1SmC5JN1HIruxp5MbpQ==
X-Received: by 2002:a17:90b:1d06:b0:32e:2c90:99a with SMTP id 98e67ed59e1d1-33b513b4b51mr30624757a91.35.1760346256102;
        Mon, 13 Oct 2025 02:04:16 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61a1d7e4sm11716942a91.3.2025.10.13.02.04.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 02:04:15 -0700 (PDT)
Message-ID: <2d5a3fa5-3882-4859-96fd-3ff2174e655d@gmail.com>
Date: Mon, 13 Oct 2025 14:34:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add support for QCS615 talos evk
 board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr>
 <20251010114745.1897293-1-tessolveupstream@gmail.com>
 <20251010114745.1897293-2-tessolveupstream@gmail.com>
 <q32oj6ry7ixulfaxzkm63nidg7ddmdl2moaakmx6rlv77p3wzl@wd2ekastvyms>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <q32oj6ry7ixulfaxzkm63nidg7ddmdl2moaakmx6rlv77p3wzl@wd2ekastvyms>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 10/10/25 17:49, Dmitry Baryshkov wrote:
> On Fri, Oct 10, 2025 at 05:17:45PM +0530, Sudarshan Shetty wrote:
>> Introduce the device tree support for the QCS615-based talos-evk
>> platform, which follows the SMARC (Smart Mobility ARChitecture)
>> standard. The platform is composed of two main hardware
>> components: the talos-evk-som and the talos-evk carrier board.
>>
>> The talos-evk-som is a compact System on Module that integrates the
>> QCS615 SoC, PMIC, and essential GPIO connectivity. It follows the
>> SMARC standard, which defines a modular form factor allowing the SoM
>> to be paired with different carrier boards for varied applications.
>>
>> The talos-evk is one such carrier board, designed for evaluation
>> and development purposes. It provides additional peripherals
>> such as UART, USB, and other interfaces to enable rapid
>> prototyping and hardware bring-up.
>>
>> This initial device tree provides the basic configuration needed
>> to boot the platform to a UART shell. Further patches will extend
>> support for additional peripherals and subsystems.
>>
>> The initial device tree includes basic support for:
>>
>> - CPU and memory
>>
>> - UART
>>
>> - GPIOs
>>
>> - Regulators
>>
>> - PMIC
>>
>> - Early console
>>
>> - AT24MAC602 EEPROM
>>
>> - MCP2515 SPI to CAN
>>
>> QCS615 talos-evk uses a Quectel AF68E WiFi/BT module (PCIe for
>> WiFi and UART for Bluetooth), which is different from the RIDE
>> platform. Plan to enable these in a follow-up patch series.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>> Changes in v2:
>>  - Rename compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
>>  - Merge enum entry with existing qcs615-ride block (suggested by Krzysztof)
>>  - Fix subject and commit message to use imperative mood
>>
>>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 406 ++++++++++++++++++++
>>  arch/arm64/boot/dts/qcom/talos-evk.dts      |  42 ++
>>  3 files changed, 449 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
>>
>> +
>> +	vreg_v3p3_can: regulator-v3p3-can {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg-v3p3-can";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		regulator-boot-on;
>> +		regulator-always-on;
>> +	};
>> +
>> +	vreg_v5p0_can: regulator-v5p0-can {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg-v5p0-can";
>> +		regulator-min-microvolt = <5000000>;
>> +		regulator-max-microvolt = <5000000>;
>> +		regulator-boot-on;
>> +		regulator-always-on;
>> +	};
> 
> Is there a way to control those regulators or are they always enabled by
> the hardware?

The regulator are always enabled by the hardware.
> 
>> +};
>> +
> 
> [...]
> 
>> +
>> +&tlmm {
>> +	pcie_default_state: pcie-default-state {
>> +		clkreq-pins {
>> +			pins = "gpio90";
>> +			function = "pcie_clk_req";
>> +			drive-strength = <2>;
>> +			bias-pull-up;
>> +		};
>> +
>> +		perst-pins {
>> +			pins = "gpio101";
>> +			function = "gpio";
>> +			drive-strength = <2>;
>> +			bias-pull-down;
>> +		};
>> +
>> +		wake-pins {
>> +			pins = "gpio100";
>> +			function = "gpio";
>> +			drive-strength = <2>;
>> +			bias-pull-up;
>> +		};
>> +	};
>> +};
>> +
>> +&sdhc_1 {
> 
> tlmm > sdhc_1

ok, will sort it in v3 path.
> 
>> +	pinctrl-0 = <&sdc1_state_on>;
>> +	pinctrl-1 = <&sdc1_state_off>;
>> +	pinctrl-names = "default", "sleep";
>> +
>> +	bus-width = <8>;
>> +	mmc-ddr-1_8v;
>> +	mmc-hs200-1_8v;
>> +	mmc-hs400-1_8v;
>> +	mmc-hs400-enhanced-strobe;
>> +	vmmc-supply = <&vreg_l17a>;
>> +	vqmmc-supply = <&vreg_s4a>;
>> +
>> +	non-removable;
>> +	no-sd;
>> +	no-sdio;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&spi6 {
>> +	status = "okay";
>> +
>> +	mcp2515@0 {
>> +		compatible = "microchip,mcp2515";
>> +		reg = <0>;
>> +		clock-frequency = <20000000>;
>> +		interrupts-extended = <&tlmm 87 IRQ_TYPE_LEVEL_LOW>;
>> +		spi-max-frequency = <10000000>;
>> +		vdd-supply = <&vreg_v3p3_can>;
>> +		xceiver-supply = <&vreg_v5p0_can>;
>> +	};
>> +};
>> +
>> +&uart0 {
>> +	status = "okay";
>> +};
>> +
>> +&usb_1_hsphy {
>> +	vdd-supply = <&vreg_l5a>;
>> +	vdda-pll-supply = <&vreg_l12a>;
>> +	vdda-phy-dpdm-supply = <&vreg_l13a>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_qmpphy {
>> +	vdda-phy-supply = <&vreg_l5a>;
>> +	vdda-pll-supply = <&vreg_l12a>;
>> +
>> +	status = "okay";
>> +};
> 
> Please keep all the nodes sorted.

ok, will sort it.
> 
>> +
>> +&usb_1 {
>> +	status = "okay";
>> +};
>> +
>> +&usb_1_dwc3 {
>> +	dr_mode = "host";
> 
> Is it really host-only?

The USB1 port supports both device and host modes, and the ID pin
is available on the hardware. By default, it operates in device mode,
and switching to host mode requires a hardware switch on the SoM.
In the current patch, I’ve set dr_mode = "host" for host operation.
I plan to add proper role-switch logic (using the ID pin) in the
next patch version, so the controller can dynamically switch between
device and host modes.
> 
>> +};
>> +
>> +&usb_hsphy_2 {
>> +	vdd-supply = <&vreg_l5a>;
>> +	vdda-pll-supply = <&vreg_l12a>;
>> +	vdda-phy-dpdm-supply = <&vreg_l13a>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&usb_2 {
>> +	status = "okay";
>> +};
>> +
>> +&usb_2_dwc3 {
>> +	dr_mode = "host";
> 
> Is it really host-only?

Yes, it is host-only.
> 
>> +};
>> +
>> +&ufs_mem_hc {
>> +	reset-gpios = <&tlmm 123 GPIO_ACTIVE_LOW>;
>> +	vcc-supply = <&vreg_l17a>;
>> +	vcc-max-microamp = <600000>;
>> +	vccq2-supply = <&vreg_s4a>;
>> +	vccq2-max-microamp = <600000>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&ufs_mem_phy {
>> +	vdda-phy-supply = <&vreg_l5a>;
>> +	vdda-pll-supply = <&vreg_l12a>;
>> +
>> +	status = "okay";
>> +};
>> +
>> +&venus {
>> +	status = "okay";
>> +};
> 


