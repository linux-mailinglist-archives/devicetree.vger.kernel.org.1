Return-Path: <devicetree+bounces-136306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A84A04A43
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 20:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A80063A65CB
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 19:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67C3B18DF6E;
	Tue,  7 Jan 2025 19:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="MyPgZVKK"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE673225D6;
	Tue,  7 Jan 2025 19:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736278297; cv=none; b=WLZiDdHvpwt0HqpkP0BXIpaXBwTtLLFl64cl0s9Q3yr1MxKB2rMZKryBqeyXMft5ByWWRiFTbyYNlt47cInosGl2Qc5ZYolZEb6z20OGJ5O9dLZ5ZAobjWf89y61dnVyyvrt8ORkER8klSrBiZGKGUcohcr4J0kU3386MMTA3u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736278297; c=relaxed/simple;
	bh=d3pREvs7LhLX8BNJ2qTqolnU1R4+qY6PVTnmctgTA6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OsskydZybNv8Z8m9KZoFbqDrxHRj36qkOSDS46zRMtbuZj2DQ+mu0zR5ZQtZegn7huJEc/FAL7l4hsdbKnG5QmUPTWy55e6ZlAa2a+3a3Rk5KUcTFJnceTaIE/67yDukEUgKQ9OUQ2Akr96H6b8hsODZnZvh4SY5MegSaPvvkU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=MyPgZVKK; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1736278291; bh=d3pREvs7LhLX8BNJ2qTqolnU1R4+qY6PVTnmctgTA6c=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=MyPgZVKKPDLRR906LGRw1S2GTco8eaS5ykJW9/71Gb5mSEnrs8oQP8ltwtqyODdDw
	 7xHgVG8W6JmtCVh/k5o+YX3tBTiFNOOvfMsjeRkAh6mYbP4zRKDJGvUzfJvXNDcKzG
	 vGli+Hva0xr++b9694J2VImzvmy9MFqJbllRU7+8=
Date: Tue, 7 Jan 2025 20:31:31 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: orangepi-5-plus: Enable USB 3.0
 ports
Message-ID: <bx4xir4kfhui4d2xb357hnohhpqvgcne5a36qb4ahxyggrxkxo@7f7vyharp4yz>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Chen-Yu Tsai <wens@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20241220161240.109253-1-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241220161240.109253-1-wens@kernel.org>

Hello Chen-Yu,

On Sat, Dec 21, 2024 at 12:12:40AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The Orange Pi 5 Plus has its first USB 3.0 interface on the SoC wired
> directly to the USB type C port next to the MASKROM button, and the
> second interface wired to a USB 3.0 hub which in turn is connected to
> the USB 3.0 host ports on the board, as well as the USB 2.0 connection
> on the M.2 E-key slot.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> 
> ---
> Changes since v1:
> - Dropped source current to 1.4A
> - Dropped sink current to 10mA, since it doesn't actually sink current
> - Added try-power-role
> - Added newline before endpoint device nodes in USB connector node
> ---
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index 9f5a38b290bf..000d353645a9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -218,6 +218,18 @@ vcc5v0_sys: regulator-vcc5v0-sys {
>  		regulator-max-microvolt = <5000000>;
>  	};
>  
> +	vbus5v0_typec: vbus-typec-regulator {

I think the new policy is to prefix with 'regulator-' so eg.:

	vbus5v0_typec: regulator-vbus5v0-typec

With that:

Reviewed-by: Ondrej Jirman <megi@xff.cz>

thank you,
	o.

