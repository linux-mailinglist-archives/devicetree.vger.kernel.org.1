Return-Path: <devicetree+bounces-1700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CDB7A77D3
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A1FF280F95
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1892F156C8;
	Wed, 20 Sep 2023 09:44:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482C4156C1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:44:31 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::224])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A6409E;
	Wed, 20 Sep 2023 02:44:29 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3C6ACE000C;
	Wed, 20 Sep 2023 09:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695203068;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mdWg2f8wyEvUu7ifWeuk1HFBX98KChKX8fGBNUIqCu4=;
	b=F9NjGoMtssmaFYzJ0wzkgbyYWBqsvJ6sruWsTO+OI3V8pukhLtYp7jwk31q4mp45mBBUFp
	6bCAS/lwSSGJUwn/vXKh4KfM3hxjY4ebhoH0ob273bfC8ZuDu1SRRQ6tSZ+lG08NLRY4KM
	3HYzKF5euzJFP6esLyFgcfMpLqtR/OEgKRzV5Pm1QYp57EqjTITN2P0WW/k9mZHEfFJ8ZW
	2t5LqZkG5fFKkHntRyYyMPHsMV6dnWU9Y5Soa358gAG6HTglacxZHSEAYuNuMbbH8b+14M
	7XkyDij6jPMwJJLYcbAqB+6j0eb3qYH+quEE2EYStX4Q9XxOG3OZPlzHyWdNjg==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, andrew@lunn.ch,
 sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, kostap@marvell.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Packham
 <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH] ARM64: dts: marvell: cn9310: Use appropriate label for
 spi1 pins
In-Reply-To: <20230820225126.561304-1-chris.packham@alliedtelesis.co.nz>
References: <20230820225126.561304-1-chris.packham@alliedtelesis.co.nz>
Date: Wed, 20 Sep 2023 11:44:26 +0200
Message-ID: <87h6npfabp.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: gregory.clement@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Chris Packham <chris.packham@alliedtelesis.co.nz> writes:

> Both the CN9130-CRB and CN9130-DB use the SPI1 interface but had the
> pinctrl node labelled as "cp0_spi0_pins". Use the label "cp0_spi1_pins"
> and update the node name to "cp0-spi-pins-1" to avoid confusion with the
> pinctrl options for SPI0.
>
> Fixes: 4c43a41e5b8c ("arm64: dts: cn913x: add device trees for topology B boards")
> Fixes: 5c0ee54723f3 ("arm64: dts: add support for Marvell cn9130-crb platform")
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>
> Notes:
>     We noticed this while tracking down a U-Boot bug on one of our
>     platforms. This mislabeling had been copied and we ended up using the
>     label when configuring SPI0 which had the nasty side effect of
>     reconfiguring the NAND/DEV pins into SPI1 mode when SPI0 was probed.
>     
>     It probably went unnoticed because none of the CN9130 platforms
>     supported in upstream U-Boot use NAND.
>
Applied on mvebu/dt64

Thanks,

Gregory

>  arch/arm64/boot/dts/marvell/cn9130-crb.dtsi | 4 ++--
>  arch/arm64/boot/dts/marvell/cn9130-db.dtsi  | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
> index 32cfb3e2efc3..47d45ff3d6f5 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
> @@ -120,7 +120,7 @@ cp0_sdhci_pins: cp0-sdhi-pins-0 {
>  				       "mpp59", "mpp60", "mpp61";
>  			marvell,function = "sdio";
>  		};
> -		cp0_spi0_pins: cp0-spi-pins-0 {
> +		cp0_spi1_pins: cp0-spi-pins-1 {
>  			marvell,pins = "mpp13", "mpp14", "mpp15", "mpp16";
>  			marvell,function = "spi1";
>  		};
> @@ -170,7 +170,7 @@ &cp0_sdhci0 {
>  
>  &cp0_spi1 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&cp0_spi0_pins>;
> +	pinctrl-0 = <&cp0_spi1_pins>;
>  	reg = <0x700680 0x50>,		/* control */
>  	      <0x2000000 0x1000000>;	/* CS0 */
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> index c7de1ea0d470..6eb6a175de38 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> @@ -307,7 +307,7 @@ &cp0_sdhci0 {
>  &cp0_spi1 {
>  	status = "disabled";
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&cp0_spi0_pins>;
> +	pinctrl-0 = <&cp0_spi1_pins>;
>  	reg = <0x700680 0x50>;
>  
>  	flash@0 {
> @@ -371,7 +371,7 @@ cp0_sdhci_pins: cp0-sdhi-pins-0 {
>  				       "mpp59", "mpp60", "mpp61";
>  			marvell,function = "sdio";
>  		};
> -		cp0_spi0_pins: cp0-spi-pins-0 {
> +		cp0_spi1_pins: cp0-spi-pins-1 {
>  			marvell,pins = "mpp13", "mpp14", "mpp15", "mpp16";
>  			marvell,function = "spi1";
>  		};
> -- 
> 2.41.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

