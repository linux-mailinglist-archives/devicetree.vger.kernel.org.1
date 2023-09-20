Return-Path: <devicetree+bounces-1705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 530F87A783B
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:57:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 838671C20B65
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38BD156D7;
	Wed, 20 Sep 2023 09:57:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2552111709
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:57:50 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A592A3;
	Wed, 20 Sep 2023 02:57:47 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A9E36240004;
	Wed, 20 Sep 2023 09:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1695203866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uQfat50UKXUla6URYtqZR/m0tQpWjLWXwPATJcJZz7Q=;
	b=dV4SlmlbwCXkPWzfBh1N58yEwC6SmTYkjS4g3rAlzx2Z7DJrXF/ySpmM+WgHE9qnUQpGJy
	DLwe60+hXP7yG28gcODqWaEzo0cFTeHK1YqtPMkYtsPqREIgIwXGIdLpv4/2uqvy18uNpd
	03kJrFVWrZxL2nViaLasgHy2zlOAc09iv2nZvTYzhCEk8um+4dbRl4tLgoxe+6RwOA7/qE
	qmNswhs+aU3OTIPfQWCHfjmLHUYOJ2K/bQ18nrMh56K047n+VVaNft1yOQZnQ2VRfpR0jv
	WCgwL9ZiOnoiQ8YG4hJk4wn+ckvpF/wXoeb9FWhjcLgGCyYs69TKgkQ8w625HA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Robert Marko <robert.marko@sartura.hr>, andrew@lunn.ch,
 sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr, Robert Marko <robert.marko@sartura.hr>
Subject: Re: [PATCH 2/2] arm64: dts: marvell: eDPU: add support for version
 with external switch
In-Reply-To: <20230914094550.1519097-2-robert.marko@sartura.hr>
References: <20230914094550.1519097-1-robert.marko@sartura.hr>
 <20230914094550.1519097-2-robert.marko@sartura.hr>
Date: Wed, 20 Sep 2023 11:57:45 +0200
Message-ID: <875y45f9pi.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: gregory.clement@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Robert Marko <robert.marko@sartura.hr> writes:

> New revision of eDPU uses an Marvell MV88E6361 switch to connect the SFP
> cage and G.hn IC instead of connecting them directly to the ethernet
> controllers.
>
> U-Boot will enable the switch node and disable the unused ethernet
> controller.
>


Applied on mvebu/dt64

Thanks,

Gregory

> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
>  .../boot/dts/marvell/armada-3720-eDPU.dts     | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
> index 57fc698e55d0..d6d37a1f6f38 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
> @@ -12,3 +12,50 @@ / {
>  &eth0 {
>  	phy-mode = "2500base-x";
>  };
> +
> +/*
> + * External MV88E6361 switch is only available on v2 of the board.
> + * U-Boot will enable the MDIO bus and switch nodes.
> + */
> +&mdio {
> +	status = "disabled";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&smi_pins>;
> +
> +	/* Actual device is MV88E6361 */
> +	switch: switch@0 {
> +		compatible = "marvell,mv88e6190";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0>;
> +		status = "disabled";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "cpu";
> +				phy-mode = "2500base-x";
> +				managed = "in-band-status";
> +				ethernet = <&eth0>;
> +			};
> +
> +			port@9 {
> +				reg = <9>;
> +				label = "downlink";
> +				phy-mode = "2500base-x";
> +				managed = "in-band-status";
> +			};
> +
> +			port@a {
> +				reg = <10>;
> +				label = "uplink";
> +				phy-mode = "2500base-x";
> +				managed = "in-band-status";
> +				sfp = <&sfp_eth1>;
> +			};
> +		};
> +	};
> +};
> -- 
> 2.41.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

