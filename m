Return-Path: <devicetree+bounces-109251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0FE995B83
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 01:20:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D4BE1F224C3
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FFD721500E;
	Tue,  8 Oct 2024 23:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="EwoM0PAi"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6A02185AF
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 23:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728429571; cv=none; b=AemKLa1GnY5BUjTMIXN5tC7rrCQoe0nZykeybtaF0rrG0Gd5jtK/rsmR20O8i6SDJ8lrQ7bJ2YPsRYwG57T5nAqW7PkhVP8GCYjHF5atpRpPo4W7LEjo/wW+Re1X+F06FxUp1HhqufmNjlvPYB5k/m9bmXYR6fkgkwvunpk0pOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728429571; c=relaxed/simple;
	bh=4gS+MhjqPKU1tt8gRz2jmnAFBOY7JILysqrfZFmhEgI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sPvxaD0WhaWQq4GKJURnvBWQSkzjudO4EdpACtsGodQ9TjB6/DpLf7L09gtneS7Kr0yiUCMPM+mx2Z77IeqBvIArU6OB/Dnedqy6j7Yu1ZSfR0ID93dJePzTtl0LRgCENlnlZb3wwJ7XWCZKOWnpiE5zcsz7Ck70WwfWaZVFFIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=EwoM0PAi; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1728429194; bh=4gS+MhjqPKU1tt8gRz2jmnAFBOY7JILysqrfZFmhEgI=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=EwoM0PAit0LLo9VIh+6dqmIbzKh946EC6xOFAOLKfYKYv00TSaeYYsFVA2GvkveAl
	 DCElS7+Rq0VaIu75DsCM8EhHfVlmdhIrp7QFnmhI5mED3r9umxY+2vHWro9HgnB+xn
	 AxZcydTKpc/FYBnsjJM9zVhqe4fVk6f+SxtwbxmI=
Date: Wed, 9 Oct 2024 01:13:14 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Martijn Braam <martijn@brixit.nl>, 
	Javier Martinez Canillas <javierm@redhat.com>
Subject: Re: [PATCH v2 10/14] arm64: dts: rockchip: remove orphaned
 pinctrl-names from pinephone pro
Message-ID: <papuejgqvgsa4bmsyusux5ouuo62osmgvmnyryabyj2lsiov6w@bsj4oga5alrz>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Martijn Braam <martijn@brixit.nl>, 
	Javier Martinez Canillas <javierm@redhat.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-11-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241008203940.2573684-11-heiko@sntech.de>

Hello Heiko,

On Tue, Oct 08, 2024 at 10:39:36PM GMT, Heiko Stuebner wrote:
> The patch adding display support for the pinephone pro introduced two
> regulators that contain pinctrl-names props but no pinctrl-assignments.
> 
> Looks like someone forgot the pinctrl settings, so remove the orphans
> for now, until that changes.

Reviewed-by: Ondrej Jirman <megi@xff.cz>

Thank you,
	o.

> Fixes: 3e987e1f22b9 ("arm64: dts: rockchip: Add internal display support to rk3399-pinephone-pro")
> Cc: Martijn Braam <martijn@brixit.nl>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 1a44582a49fb..09a016ea8c76 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -166,7 +166,6 @@ vcc1v8_lcd: vcc1v8-lcd {
>  		regulator-max-microvolt = <1800000>;
>  		vin-supply = <&vcc3v3_sys>;
>  		gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
>  	};
>  
>  	/* MIPI DSI panel 2.8v supply */
> @@ -178,7 +177,6 @@ vcc2v8_lcd: vcc2v8-lcd {
>  		regulator-max-microvolt = <2800000>;
>  		vin-supply = <&vcc3v3_sys>;
>  		gpio = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
>  	};
>  
>  	vibrator {
> -- 
> 2.43.0
> 

