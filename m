Return-Path: <devicetree+bounces-136197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F7DA04326
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 425CB163353
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C1D1F237D;
	Tue,  7 Jan 2025 14:50:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDCEC1F1928;
	Tue,  7 Jan 2025 14:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736261402; cv=none; b=p41Qp6t4/qBy4Q8cSx0nmLbexsnPXWr9nOhaTzmDMTcfOMBpv80NPxx4xpZHJVCsvy5X40+v67kPZHbNlzFpzLqAqFGfu9NG55us/lPaIpPSxCis/XUQ5YToo4HbVnziPTlSB4v75T20AdIfgQRHlZyF2krAqhGryp3kLNDkaLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736261402; c=relaxed/simple;
	bh=n2sHRHl6KTR3nGEZyiuY/orHAPK9TtER31mCJL1DxZI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XGNVpODoAHy55E1dgKXBcAMs1Fk44sTqQ+UjGpqOHbeZZsjS17zb/+ft3GfMJn8AaSEL1oStq07FjYBjoZPOdifhNR4U0i1VAWqv+Hx14Lp+fkDQtlXGxgu4PunY7DuuSoXt81Fpu4FmulFbvy03rt5PTlzv32gUfMozvGP0PLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A92B1424;
	Tue,  7 Jan 2025 06:50:28 -0800 (PST)
Received: from [10.57.4.77] (unknown [10.57.4.77])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FD643F673;
	Tue,  7 Jan 2025 06:49:58 -0800 (PST)
Message-ID: <c6ac20ec-f979-4028-9488-f453953a43b5@arm.com>
Date: Tue, 7 Jan 2025 14:49:56 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: morello: Add support for common
 functionalities
Content-Language: en-GB
To: Jessica Clarke <jrtc27@jrtc27.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Russell King <linux@armlinux.org.uk>
References: <20250103181623.1980433-1-vincenzo.frascino@arm.com>
 <20250103181623.1980433-3-vincenzo.frascino@arm.com>
 <Z30hypjCMmSsf81L@Jessicas-MacBook-Pro>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
In-Reply-To: <Z30hypjCMmSsf81L@Jessicas-MacBook-Pro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



[...]

>> +
>> +		soc_refclk85mhz: clock-85000000 {
>> +			compatible = "fixed-clock";
>> +			#clock-cells = <0>;
>> +			clock-frequency = <85000000>;
>> +			clock-output-names = "iofpga:aclk";
> 
> If this is ACLK for the IOFPGA outside the SoC, why is it called soc_refclk85mhz?
> 
> Not that it seems to be used in this patch series.
>

Good catch.

Indeed, it is not used in this series and the name and placement are incorrect.

I can either rename it and move it to the board file or remove it and add it
again in future.

[...]

>> +
>> +		i2c0: i2c@1c0f0000 {
> 
> The I2C controller lives in the IOFGPA on the board, not the SoC.
> 
>> +			compatible = "cdns,i2c-r1p14";
>> +			reg = <0x0 0x1c0f0000 0x0 0x1000>;
>> +			interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&dpu_aclk>;
>> +
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			status = "disabled";
>> +
>> +			hdmi_tx: hdmi-transmitter@70 {
> 
> The transmitter is a discrete chip on the board, not the SoC.
>

Agreed on both the points, please have a look at my reply to Rob.

> Jess

[...]
-- 
Regards,
Vincenzo


