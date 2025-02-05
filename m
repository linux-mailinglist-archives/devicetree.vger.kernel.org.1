Return-Path: <devicetree+bounces-143160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6893DA28530
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 08:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DA5A3A6063
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 07:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D339228C96;
	Wed,  5 Feb 2025 07:58:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C3B229B27
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738742338; cv=none; b=eNlPfv+2syTBpMAN+BMMZH7tGAtdgvzf/9NU6IBMq2Qsi1Sft/KJlVhSRdNRFPlZf3337ByiZOpqnKBlP6cII9NkMIp3obA48WJSDWVs7Me6Q2IOhorTZGh2hLMYeoqSyjNovK2lkHHl8SKtC17aaOEV7bqaCMKa5+BEAY/LiRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738742338; c=relaxed/simple;
	bh=kCYpgBMK7Rzj+V3RRv0t4HfrublkMmMqXKbRjCktDYA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uwPqHAo62NVKuJp0ZaPmaeAFDg7HrTwsgDhHezC5qQuNhvXoyIlKny9v1O7ZXhSil2kjEj01m4xsdAuVqjGFuzaqSTKPItFUX1eUa+oVT25tfgPdV6RdmuXgovFOoVjU5xQhiNa5TKvnmIlrFV5piVDk5eGso8b+09CKpKU3gig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.starfivetech.com; spf=none smtp.mailfrom=linux.starfivetech.com; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.starfivetech.com
X-QQ-mid: bizesmtpsz8t1738742253t7hgm8u
X-QQ-Originating-IP: LhoYFQ+iWEQs6p+Ju1KUL8CfXjPMNyGFDkrdyseJg5Y=
Received: from [192.168.125.117] ( [113.72.145.41])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 05 Feb 2025 15:57:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4618514360899873354
Message-ID: <25B3D8909DBCC21B+43663a76-4afa-44ae-95e2-3a8792de614c@linux.starfivetech.com>
Date: Wed, 5 Feb 2025 15:57:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] riscv: dts: starfive: jh7110-common:
 bootph-pre-ram hinting needed by boot loader
Content-Language: en-US
To: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>,
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20250203013730.269558-1-e@freeshell.de>
 <20250203013730.269558-6-e@freeshell.de>
From: Hal Feng <hal.feng@linux.starfivetech.com>
In-Reply-To: <20250203013730.269558-6-e@freeshell.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:linux.starfivetech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: Nng40AJHpBv6Fu2aJymXzS0AhJjJLn2lphaWOVuVC6W/CsVvoOiX1tHc
	KcOwYveyuzl0rtd/49/7st8AVqv8vL1UJUVoTwuRRxv79NydJlNlDPxXy5rySkAuVyA4nb9
	UmIjxpLgonvHAEA89X2g9/SxDTicC0tMJxZ7qKrx/5JdnvMSmxb6Etnxdtten/yR0LYwzeG
	0Zp7Q7gvf8xEIpCvTQ8yrr+omv5Q8ixUGINFCWifrhNmvCpsDR24J8bjT2JgyhYTM+BMDD6
	zXeiyQI80EZXZktVbEqqh/71McBeK9+MyNn4W5GNChWsADUYBOhM0noxpnseG2BXL6Eegy7
	8ROtqpx4WxASxeXNOiqkyYvl/8E9XZCVOrQHQr3l1Hv3cVGmv4/hskaLEfSHl+7N3T3snEk
	F1IcTT5oiVzcwC1JMtXN1FojK3baRDnL0CC9U+REPf42eMDlOQK/p+ORdgnuVOyYLFuY9jL
	ZkGgleDe2aYQN4BxoacXiB+a8012yn9LS2q48YgzsBq+hbnED1Irq4w9y7UYLpd1JHfv31I
	hJr1ZXMre4GdCMjMr1qpRqJTusoytFg+PQrBwmXfTNj86L6bno0wMqKC6cvnWlv6KFQmYNt
	wLSzJqRRkxRUAMa8T6M7JVRiAVK40MVWhXA2Wp+oT22bjlKRz9nPlWOK6M/ydcix5KAOTm0
	Xgg6nMkG5WsjoV+EK+uVHx8n+RxGgwTEVqhMclezGmw1414aIEp0J/PEBSGsrKRIrr7QeN1
	RBo00h6lhJY1YG9WohfhNDUBxYrRtkQQQmB0GZa+Vo8AxhLscjsSM2MJBQKaxqjfKiYvvye
	/2/1NxLqGmqsLxHh1/JkKp3LkZGYpJHzNm7hY3mfFrCJwFRGjFg61t/6VXm3f/apY8RBfRt
	bh5utTd+mFjptQl8kPH7FvEeddYEeovhixfz4fVaJvNr9kz60Dei2TpJpxziQhH17+kEMBG
	Jk+zO3nsmr/k6Nw1UFWmZnH928AUo1W7LfUnFSzIqYGKl8xTb69lKiQNdCDH+j6f3Il8=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

On 2/3/2025 9:37 AM, E Shattow wrote:
> Add bootph-pre-ram hinting to jh7110-common.dtsi:
>   - i2c5_pins and i2c-pins subnode for connection to eeprom
>   - eeprom node
>   - qspi flash configuration subnode
>   - memory node
>   - uart0 for serial console
> 
>   With this the U-Boot SPL secondary program loader may drop such
>   overrides when using dt-rebasing with JH7110 OF_UPSTREAM board targets.
> 
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 30c5f3487c8b..c9e7ae59ee7c 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -28,6 +28,7 @@ chosen {
>  	memory@40000000 {
>  		device_type = "memory";
>  		reg = <0x0 0x40000000 0x1 0x0>;
> +		bootph-pre-ram;
>  	};
>  
>  	gpio-restart {
> @@ -247,6 +248,7 @@ emmc_vdd: aldo4 {
>  	};
>  
>  	eeprom@50 {
> +		bootph-pre-ram;
>  		compatible = "atmel,24c04";
>  		reg = <0x50>;
>  		pagesize = <16>;
> @@ -323,6 +325,7 @@ &qspi {
>  	nor_flash: flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> +		bootph-pre-ram;
>  		cdns,read-delay = <2>;
>  		spi-max-frequency = <100000000>;
>  		cdns,tshsl-ns = <1>;
> @@ -405,6 +408,7 @@ GPOEN_SYS_I2C2_DATA,
>  	};
>  
>  	i2c5_pins: i2c5-0 {
> +		bootph-pre-ram;
>  		i2c-pins {
>  			pinmux = <GPIOMUX(19, GPOUT_LOW,
>  					      GPOEN_SYS_I2C5_CLK,
> @@ -413,6 +417,7 @@ GPI_SYS_I2C5_CLK)>,
>  					      GPOEN_SYS_I2C5_DATA,
>  					      GPI_SYS_I2C5_DATA)>;
>  			bias-disable; /* external pull-up */
> +			bootph-pre-ram;
>  			input-enable;
>  			input-schmitt-enable;
>  		};
> @@ -641,6 +646,7 @@ GPOEN_DISABLE,
>  };
>  
>  &uart0 {
> +	bootph-pre-ram;
>  	clock-frequency = <24000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_pins>;

What about &mmc0, &mmc1, &qspi, &sysgpio, &mmc0_pins, &mmc1_pins, &i2c5?
Why not add "bootph-pre-ram;" for them?

Best regards,
Hal


