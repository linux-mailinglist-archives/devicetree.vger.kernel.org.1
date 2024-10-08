Return-Path: <devicetree+bounces-109195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 298379958E3
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D01591F245D2
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38F421E0B8C;
	Tue,  8 Oct 2024 21:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="dri21UsM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BBE215F46
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 21:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728421378; cv=none; b=E/BS71+rMSOXi7bU9vKSI+++RcRMXwtdWHoOwwK51nFhjinaGO3nUO9sRL+g3vo3pqziX4k4Uqb1aIDuOc+aC1Do7YbPgN5hTOw9wrNB2Hh+n5uf0X667Sc0qyCLO9Baa4qiMuFJw3WYU1ZxPSGEuFT3Ympsq8m4hQ7wqhmT63A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728421378; c=relaxed/simple;
	bh=+B1UFw6IYFw/SUCXrNKTf1RZpZCi9aSu85Ge0jcrCf4=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=nw7OqhCRJNvts22/5EQDt0SCLvWp5ojcY1L2HuPEUvEmNz6QCQSTXZLDmiNJRssaeZ14ZgPGkR7tL/eeVbNdtqovMoVXMh9DX7fSOZ69wdmDJa9Pmrsn43Ol2QE+yXCkhAaJLT7yDkHfBJKBjpKx9IUjFp6VPGx4CiB2fxfn50U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=dri21UsM; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728421372;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X89KkUvs3yckIxYQJTEkrf+NZHC+QsqQasuWZPjJ5G0=;
	b=dri21UsMfH3tzTmuKRRT8GwpwcHYeejQMFbN34Rq/G6yalSCbjOiOSxQIZOLw4QUJqeOqR
	ScwjBg/0PCDffS+Wa/u0SYqXAxtZwkWKWTi3fkJ1M/wpKixURwljkvYeh69sYQ1epM2o4G
	3mLPK5jWoecA+vGIM8gTxLSy27X8HlDgciy/z3Ynm3BH9wqLltWIWDsBRH6OKtdFZDr3m9
	KdikzKz9jz9VzoOS5DrXX3Pd3aSWvnDIjsH+/vEylxqGvhhFkk1SWsrqtJZTBzSimc2aEr
	nT+M3dRXkVrpV7BUoCYxppVRU3oPIq+5nRmPlc/VJ2f5ghdRJcJgjj77sRbB3Q==
Date: Tue, 08 Oct 2024 23:02:52 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Chris
 Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 01/14] arm64: dts: rockchip: fix i2c2 pinctrl-names
 property on anbernic-rg353p/v
In-Reply-To: <20241008203940.2573684-2-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-2-heiko@sntech.de>
Message-ID: <b16951e814e2231edbe868a809a49bac@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> We want to control pins, not beer mugs, so rename pintctrl-names to the
> expected inctrl-names.

s/inctrl-names/pinctrl-names/

> This was not affecting functionality, because the i2c2 controller
> already had a set of pinctrl properties.
> 
> Fixes: 523adb553573 ("arm64: dts: rockchip: add Anbernic RG353P and 
> RG503")
> Fixes: 1e141cf12726 ("arm64: dts: rockchip: add Anbernic RG353V and 
> RG353VS")
> Cc: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Chris Morgan <macromorgan@hotmail.com>

Looking good to me, thanks for the patch.  It's obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> index a73cf30801ec..9816a4ed4599 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -92,7 +92,7 @@ button-r2 {
>  };
> 
>  &i2c2 {
> -	pintctrl-names = "default";
> +	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> index e9954a33e8cd..a79a5614bcc8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> @@ -79,7 +79,7 @@ button-r2 {
>  };
> 
>  &i2c2 {
> -	pintctrl-names = "default";
> +	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";

