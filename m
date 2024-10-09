Return-Path: <devicetree+bounces-109320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EE79960DF
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:30:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 214651F21106
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 912D61714BF;
	Wed,  9 Oct 2024 07:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="KtUYkZbG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7239166307
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728459006; cv=none; b=aCluuHYoYP9SF+cmeAgzwTcqcN3Ik3nHoP1IewADlvNq/ClvuxDx829xsYnnocSsIQLVgLrTIr37rgGm0B3fkkhogqAhclt0wkLcjb9373MkjO59vDTrYTWGkvZVp9hdaxw1ZXZKpnQeZv7J9yNVW8GKWH1szROcD3biH9P+HfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728459006; c=relaxed/simple;
	bh=6kDY+COYnpgkbLwe9kIN4KtyTes027bXs5SOUfsXGfo=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=sEKmiQQCMzpPQ3SSs7scKnBQpIsbnKh0MT6mNS2GwT/rnta6x2qJzTX/FJgtKMSa+ZuuHoIOX2kONB9r9UnbuXE012hZBNcVBXXoKF8ItEs7ArZkxnq2pzscKOUdVwTsN6AlokC/TR8LetQK+isKfUnWGcko2w40neY9r25uT8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=KtUYkZbG; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459002;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sUddxQXYww8wMNHYsHa3m0CABWXx9Xilw0zY6RE9Mk8=;
	b=KtUYkZbGok0PwruIhzVfqU+K6TwTui48oxoyLLdKbbmhfbwrcqKvGJ5v7jqfOrK7BeYGba
	fwZWut85ylSukGC9w486j95yWwPlMAM2xSMc+gHeirsWYR8HsxnFtANOSO1vaGhbf6yRFw
	VyDTHD0ZGeLBehBRLD/6tCLdVO6w4dkCXWGBbak62xro1vdSiVrHvfyulxCGPukKsxfIV1
	8833Eax/Ua5G1XZ0RG6xdWm/8gru05tPWyvWtSohilT8JkHYyRHr139CuBIESiVDTeHLxb
	VqQTJoNIkiYhxEhvLt6eMk9QVWbE9VTw8zzKUrJqnTiHk1ILgs9G4RQfLyJcRA==
Date: Wed, 09 Oct 2024 09:30:02 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Martijn
 Braam <martijn@brixit.nl>, Javier Martinez Canillas <javierm@redhat.com>,
 Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH v2 10/14] arm64: dts: rockchip: remove orphaned
 pinctrl-names from pinephone pro
In-Reply-To: <20241008203940.2573684-11-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-11-heiko@sntech.de>
Message-ID: <036c68719cb9716e4bc76e14e7628f18@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> The patch adding display support for the pinephone pro introduced two
> regulators that contain pinctrl-names props but no pinctrl-assignments.
> 
> Looks like someone forgot the pinctrl settings, so remove the orphans
> for now, until that changes.
> 
> Fixes: 3e987e1f22b9 ("arm64: dts: rockchip: Add internal display
> support to rk3399-pinephone-pro")
> Cc: Martijn Braam <martijn@brixit.nl>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced change
is obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
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

