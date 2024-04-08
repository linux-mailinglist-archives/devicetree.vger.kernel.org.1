Return-Path: <devicetree+bounces-57194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F5C89C799
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 16:56:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3123B1F22381
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 14:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCBD913F42D;
	Mon,  8 Apr 2024 14:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="MgPZ3s7s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8A513F42C
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 14:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712588173; cv=none; b=G+wyhX2GCmFa9+8cB3DYrS0dIxwOG9SlnN6XQSiflx8zavUVBqufald8JCnI2BFA/5QMLD51lsMmdAAJGLiyeZUmxIeFu2v6gPIHwxmj9A+2ne/DSpUhEQEdpCCLK1saUsAYW1tYiYrPd8Px9j2hjXHr5kI0vqeze5IN31flIW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712588173; c=relaxed/simple;
	bh=cqFYl01GK1Z+HA9RDkQobFzsKdk9qmaC0k6MZJer498=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GPOsd4Ag/NbDnhH8ZEiaKdpCaa0IqK5AB3wQRoJ3Bp1OEfZGy2DSbvNgBnHK+yKvqsEv1pcGp3R5AdYOIza9y6UD+niG54SZfavlyu3SnKrSdkEAXW3t3ysACvx+AhwYGOPUeITS3CvFSCxuYS0X2Ie5FA7D/y2kgZLYCeXUR+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=MgPZ3s7s; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1712588161;
 bh=iiUPPh2I4PeOMPRWiFfmL4G08QmAU+W5ckpVa9L6HE4=;
 b=MgPZ3s7sPSuZsy3gQ3AfLF0u/64SqrAboDp9YiANPEx6K/Fgr0xV363zF2ei/tcp9Jot7eQoM
 EwlRasREyRmCEKSbN/HEaSWT+lMLrkdg7XhZ8S/IlUVfxs3JZft8ImZYsr/IUWAJV/dQpa2NR7/
 ctKvsW+Fh6KJqxp6OuQVgaY1As2dmCq/Bi/JI0aDe8X80cKhn8zxQahbZ3uGYJOMD0GNUQh2C9H
 BjpwC8rSAnwDk31ALheiUrFfeDQAhB8SqbnhBYam3TyOI0f+hMK+tZUDD2WeoEJNLYvioE50Sm7
 6McoadT2EKO5FILMhcqDKHjWGRoUOp1nnaybrfw5a1Lw==
Message-ID: <421ab43b-ff92-41c6-9904-3c7681c926be@kwiboo.se>
Date: Mon, 8 Apr 2024 16:44:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable onboard spi flash for
 rock-3a
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240408124005.182565-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240408124005.182565-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661402f23464f70b49a22d57

Hi Chukun,

On 2024-04-08 14:40, Chukun Pan wrote:
> There is a mx25u12835f spi flash on this board, enable it.
> 
> [    2.525805] spi-nor spi4.0: mx25u12835f (16384 Kbytes)
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index a5e974ea659e..d8738cc47c73 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -757,6 +757,18 @@ &sdmmc2 {
>  	status = "okay";
>  };
>  
> +&sfc {

This is missing:

	#address-cells = <1>;
	#size-cells = <0>;

> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0x0>;
> +		spi-max-frequency = <50000000>;

At least in U-Boot the spi clock only support 24, 100 or 200 mhz and I
am pretty sure the spi flash support 100mhz, so I would suggest you test
with 100mhz, same as used on other rk356x boards.

For U-Boot I have used 24 mhz for rk356x boards not defining a flash@0
node in linux device tree, such as the rock-3a board.

Regards,
Jonas

> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +	};
> +};
> +
>  &tsadc {
>  	rockchip,hw-tshut-mode = <1>;
>  	rockchip,hw-tshut-polarity = <0>;


