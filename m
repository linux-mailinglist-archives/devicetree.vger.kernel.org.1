Return-Path: <devicetree+bounces-254728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC30D1B620
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 22:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DE78300FE3E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40AE2F9984;
	Tue, 13 Jan 2026 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="rBZ+dHU4"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58965632;
	Tue, 13 Jan 2026 21:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768339373; cv=none; b=dCHRbAlERXUwhbL9mgfmfoUGeSYE6CQCn76APp6hJPqWLKwOAaYQ/zELt3cTMlSoSWgap4fbfzRKJt4TbyhbCThSaPZR5pLy01v6zRu8roa2T4wwfW29YKjgq6lPszCi2CHDdn71IHhxLZxtZh5te1UB9Va4ngA779tsf/qEm1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768339373; c=relaxed/simple;
	bh=Op0uamfeLyB3wX8fzuuz2awjdvaakOqefNAePnLsAu4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ho+F0OWjaqZmM8KhQJdbECyqCwlrmCYjhpLdm26jpSfiTDnIBQ1G3zvwv3kn739gnFBxSelhQj4Gt9vX3hXYzTcLdQCKfXk+MFS9g3wzDUha1Uz+xWW0YvX918M6LwrvspOK+hyrZHcV40A93HlLxIY8UjimwGhVXq7mJdBe2tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=rBZ+dHU4; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1768339369; bh=Op0uamfeLyB3wX8fzuuz2awjdvaakOqefNAePnLsAu4=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=rBZ+dHU4g7jRvLFCk29jMddcSvXG3zd26NaCZBxXwg20pVqVlcD+fJDyT8QIHyRKm
	 IMboeluLxeeWx5EaL+IaZ8yvjoUEF/5J3TCC8aZCT1/NTiPjtfgUCAZnxll8V2g3aP
	 SQLjiRjcGvkRJKE5KNz7IeJQvqpMWTh7kWp+8Ulo=
Date: Tue, 13 Jan 2026 22:22:48 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Remove interrupt GPIO for WiFi
 for the Pinephone Pro
Message-ID: <4upnfpxyn4mfxqsg6cl2a3tjpqwrwfdg3a3233ozwoaqrmjjpp@hh4zvr625lrp>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	guptarud@gmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>

Hi Rudraksha,

On Mon, Jan 12, 2026 at 10:42:26PM -0800, Rudraksha Gupta via B4 Relay wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> Wifi is currently unusable if interrupts are defined. Let's remove them
> so that Wifi networks are actually discoverable.
> 
> Co-developed-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> Co-developed-by: Kamil Trzciński <ayufan@ayufan.eu>
> Signed-off-by: Kamil Trzciński <ayufan@ayufan.eu>

^^ these lines are incorrect and the patch is not meant for upstreaming, really.

I think whether OOB interrupts work or not on PPP may be a function of
what FW and firmware config file is used. 

So eg. in brcmfmac43455-sdio.pine64,pinephone-pro.txt you can have settings
like:

# OOB IRQ settings -- next 3 "sd" parameters uncommented for OOB IRQ. Edge sensitive interrupt via WL_HOST_WAKE line.
#muxenab=0x10
#sd_gpout=0
#sd_oobonly=1
#sd_gpval=1

That affect OOB interrupt behavior. So FW config needs to match kernel DT
and vice versa.

My FW config does not set any of these options, so I disabled the OOB interrupt
in DT, too. Better option may be to upstream NVRAM config file to
linux-firmware. But I don't think anyone has any idea which file is correct,
and satisfies regulatory requirements.

I guess adding muxenab=0x10 would fix this, since that's what Pinebook Pro uses
and it has the same WiFi chip and similar design, and OOB interrupts work there.

Best regards,
	o.

> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 97d0bf455258..69bb9de4ce55 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -834,9 +834,6 @@ &sdio0 {
>  	brcmf: wifi@1 {
>  		compatible = "brcm,bcm4329-fmac";
>  		reg = <1>;
> -		interrupt-parent = <&gpio4>;
> -		interrupts = <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-names = "host-wake";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&wifi_host_wake_l>;
>  	};
> 
> -- 
> 2.52.0
> 
> 

