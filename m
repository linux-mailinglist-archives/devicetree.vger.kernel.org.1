Return-Path: <devicetree+bounces-211969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD7DB41673
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 09:29:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E29D542480
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 07:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCABE2DCBEB;
	Wed,  3 Sep 2025 07:29:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78BC2D9EE4
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 07:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756884569; cv=none; b=PlRHzYqRc0ObVPjFNEzrOAex8AEZdozYVtu8ZK8lEJCbMLLtJ3OG65It9LUi7yNIY6+K+UExD8PkBUmJreJM/eK/KhwRFJp166x7Dj67jOdHZcgoSUAbO0bdNhj7Bpd4YdHJajCbMzhYq96Q+7ae9M15J3FQ6Acu2R1iPY3RqCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756884569; c=relaxed/simple;
	bh=1c7VonY6uj74XYLIJ7kALBLOnJcPEHxjT3fVSi4gc/8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qz7a91NH/dswxmxHjCJYXfNQpIngXT/pVjMJ1BguOZnadGXz+0X2N36l7/yF2E2eCx5Mu3+Yg+pk6VCTkNr2s57OijAkFzsu7QH9cAsPYiWDSUFPjtqGljmGRKEO8wbexA7xfFaaU97H6rcu3zOli0f5j/vODCT85He3Vb271qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uthvA-0003pQ-KJ; Wed, 03 Sep 2025 09:28:44 +0200
Message-ID: <fa7e2cef-5242-4f3b-84ea-d77b959f6bdb@pengutronix.de>
Date: Wed, 3 Sep 2025 09:28:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: imx6ul-tx6ul: Switch away from deprecated
 `phy-reset-gpios`
To: =?UTF-8?B?QmVuY2UgQ3PDs2vDoXM=?= <csokas.bence@prolan.hu>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 Csaba Buday <buday.csaba@prolan.hu>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250815-b4-tx6ul-dt-phy-rst-v1-1-9b65e315d9d3@prolan.hu>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250815-b4-tx6ul-dt-phy-rst-v1-1-9b65e315d9d3@prolan.hu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello,

On 15.08.25 17:17, Bence Csókás wrote:
> The Ethernet PHY's reset GPIO should be specified in the node of the PHY
> itself, instead of the MAC (`fec`). The latter is deprecated, and was an
> i.MX-specific extension, incompatible with the new reset controller
> subsystem.

One reason to do it this way is that the PHY is in reset when the OS starts
and the external phy-reset-gpios allows MAC probe to get the PHY out of
reset, so it can be probed after reading its vendor/device IDs.

Does switching to this new binding address this scenario? If so, it should
be noted in the commit message.

> 
> Co-developed-by: Csaba Buday <buday.csaba@prolan.hu>
> Signed-off-by: Csaba Buday <buday.csaba@prolan.hu>
> Signed-off-by: Bence Csókás <csokas.bence@prolan.hu>
> ---
>  arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
> index f053358bc9317f8447d65013a18670cb470106b2..0a5e90704ea481b0716d6ff6bc6d2110914d4f31 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
> @@ -246,7 +246,6 @@ &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet1 &pinctrl_enet1_mdio &pinctrl_etnphy0_rst>;
>  	phy-mode = "rmii";
> -	phy-reset-gpios = <&gpio5 6 GPIO_ACTIVE_LOW>;
>  	phy-supply = <&reg_3v3_etn>;
>  	phy-handle = <&etnphy0>;
>  	status = "okay";
> @@ -262,6 +261,13 @@ etnphy0: ethernet-phy@0 {
>  			pinctrl-0 = <&pinctrl_etnphy0_int>;
>  			interrupt-parent = <&gpio5>;
>  			interrupts = <5 IRQ_TYPE_EDGE_FALLING>;
> +			/* Reset SHOULD be a PHY property */

Comment belongs into commit message.

> +			reset-names = "phy";
> +			reset-gpios = <&gpio5 6 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <100>;
> +			reset-deassert-us = <25000>;
> +			/* Energy detect sometimes causes link failures */
> +			smsc,disable-energy-detect;

Unrelated change not described in the commit message.

Cheers,
Ahmad

>  			status = "okay";
>  		};
>  
> 
> ---
> base-commit: 0cc53520e68bea7fb80fdc6bdf8d226d1b6a98d9
> change-id: 20250815-b4-tx6ul-dt-phy-rst-7afc190a6907
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

