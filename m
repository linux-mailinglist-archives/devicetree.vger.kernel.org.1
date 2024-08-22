Return-Path: <devicetree+bounces-95942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EBB95BFE9
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 22:49:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51AF0B21B1A
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 20:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA77514D6FE;
	Thu, 22 Aug 2024 20:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="sQvXq2Rj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805B913AA2E
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 20:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724359750; cv=none; b=e9cTlhK0WdLjuJYb+OayszuNTNIRp8ll+7bvW8ZnL/VHBwLuXOk+aLAP94cBInwpTumEd4u3MJ7pOiJzV974wjDamAWdIpei2DyVpkLB8I7rkn1pSB9HPj8w9D9yoB4iPKIYPNRi+5wdeJZMVnY9NmrDoafklu1lspEo0Fdsbxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724359750; c=relaxed/simple;
	bh=Vs4/L1BFGc91HRswEQy4wRVoMzLeZbWRMOMZU7sm814=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d5c0j3qslTqn567Ep+C4qd0sZMMfoG+wO/lHh8O3A41bD5x07xrEiO1xCyFzGgMWNWrRSDFxytmaGZDsuseW8L7I77m045lU4niyo3D6tjfSy8chCph2IPTi3zmSULQL7Ej2IYux21xs8OVbDxQsSIvsNr21iiztOyJk+pCzGa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=sQvXq2Rj; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724359743;
 bh=z1dt8PEPmuFNeq5YWFTeFq9Klfxz/2jDSwHmaQYIDF4=;
 b=sQvXq2Rj0rRMGYofUt/nqUs1A7K2zUuB3i6sLEg7PQBFyIYpkQPKigZ867jh91w47AX/CHOS4
 wHsD5x1yUCB1pAwbAUYn3elqEJ8teXD6kPaVxFo1EPNfLAS/4zNyB2GIoG9IBbkTBdlR5qACjK/
 udmaGxDot6dJtbiy+cT75jUu+Gm5+cGRHOlUMhFdb6o2gqP9eT9hr0us9jRXWLTzadOksRupZDo
 1nQ311XnEEOS+aNnshLGJ6+8HxsZvFy20AbSQJWwmsproc36lztrtwDZkKcbbPXSrGTqnoNYK6p
 53KRslhuj97Ti0eIpI80k9DhnJiub40KZWGutukG622w==
Message-ID: <c48e7d26-0496-4377-8be0-5b76f1f8704b@kwiboo.se>
Date: Thu, 22 Aug 2024 22:48:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/8] arm64: dts: rockchip: add SPI flash on NanoPC-T6
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-4-892aebcec0c6@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-4-892aebcec0c6@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66c7a43b9c6972850a4e96bd

Hi Marcin,

On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
> FriendlyELEC NanoPC-T6 has optional SPI flash chip on-board.
> It is populated with 32MB one on LTS version.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index ce0db9b8b126..292022a56332 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -560,6 +560,21 @@ &sdmmc {
>  	status = "okay";
>  };
>  
> +/* optional on non-LTS, populated on LTS version */
> +&sfc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&fspim1_pins>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <104000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +	};
> +};

This matches what we have and works in U-Boot for non-LTS version, so

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

Regards,
Jonas

> +
>  &spi2 {
>  	status = "okay";
>  	assigned-clocks = <&cru CLK_SPI2>;
> 


