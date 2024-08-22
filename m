Return-Path: <devicetree+bounces-95944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AB76795BFFF
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 22:57:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E68181C21129
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 20:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF851D1F48;
	Thu, 22 Aug 2024 20:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="LMZXKxXm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [164.92.70.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361F31D1F41
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 20:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=164.92.70.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724360210; cv=none; b=Y0oz4qN4pce6K69/vo/2GWS2pzWt20RSkaWJr9/136S2bJqK0oH9cCJhVB/YWW3Kh9+wrvU+H5VAW73HLGteDpOPWcAHzW5/Y+qIsgwGp4pjUvHu3foxGmuIwmREfLyUp4Ey+vZoA7WaavybumrukEhlSIzyZ709csRsOidqlNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724360210; c=relaxed/simple;
	bh=JKtUl0gnD/yhaEZ76j1B0XEDWvHzglYwyqNSDPHW/kA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cS8XhpC9TdQNEzMw7YvG+si7V9m4zzBgrFKLxpmKPKXymd9w/+8iqYvzE3Ahqho7DGzHxaVxxWXN/0LEBLM6HGK8gTfFzLatZjPFmplg4kxgL+Cwl8+k55UBj518KPZwaoWUtfwIORuvOs22MkF6p4s5sxk/x773GPOGszHt/Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=LMZXKxXm; arc=none smtp.client-ip=164.92.70.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724360204;
 bh=F7Gel/T0NZZXijY9bb7HRPKWvHCIix4REe9jYuWFvFg=;
 b=LMZXKxXmOla+QkFwCnz8OYD6VdkdD+ff2UuObidJ+sbFRoyTfhh0LorIMbhtaD9qmXBATfkQz
 4As/UMFh2jBzuyRhzXEVV0bSuQB8K/dRh2OEPRDjkyCsOht/56gxTluCI2apW5Miz4bf0qwE/PA
 jA+fGx4U69H+nNn0967aBmi/FJX4mMnW0aCKxRYdM9stS0afqFWRjYZMtp7jSLCJTBrEdpmsErC
 S4O1fNXPsLumynFhb3f4OdYUAr0QFvBxx82w0tl0Mj6xfIv/oNV9RjFmju+gixyQp07Jv2D02M+
 GFo8ImbhW594ErZEJFtd7QBfHm6T3U4jtPC+BebWTWxg==
Message-ID: <b451baea-a3e7-4d2c-b458-2302c2cc5546@kwiboo.se>
Date: Thu, 22 Aug 2024 22:35:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/8] arm64: dts: rockchip: define pinctl for SPI M1
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-1-892aebcec0c6@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-1-892aebcec0c6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66c7a1199c6972850a4e924a

Hi Marcin,

On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
> There are definitions for M0 and M2 pinouts while NanoPC-T6 uses M1 one.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> index 30db12c4fc82..75d5816b6fa4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> @@ -407,6 +407,23 @@ fspim0_cs1: fspim0-cs1 {
>  				<2 RK_PD7 2 &pcfg_pull_up_drv_level_2>;
>  		};
>  
> +		/omit-if-no-ref/
> +		fspim1_pins: fspim1-pins {
> +			rockchip,pins =
> +				/* fspi_clk_m1 */
> +				<2 RK_PB3 5 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_cs0n_m1 */
> +				<2 RK_PB4 2 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_d0_m1 */
> +				<2 RK_PA6 5 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_d1_m1 */
> +				<2 RK_PA7 5 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_d2_m1 */
> +				<2 RK_PB0 5 &pcfg_pull_up_drv_level_2>,
> +				/* fspi_d3_m1 */
> +				<2 RK_PB1 5 &pcfg_pull_up_drv_level_2>;
> +		};

fspim1_pins already exists in rk3588-extra-pinctrl.dtsi, also look like
this uses wrong function 5 instead of function 3.

Because rk3588-extra-pinctrl is included after rk3588-base-pinctrl the
function is corrected and this patch has no real effect.

Please drop this patch.

Regards,
Jonas

> +
>  		/omit-if-no-ref/
>  		fspim2_pins: fspim2-pins {
>  			rockchip,pins =
> 


