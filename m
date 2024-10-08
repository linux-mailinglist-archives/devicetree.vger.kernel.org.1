Return-Path: <devicetree+bounces-109196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4678F9958E7
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEAA3B23419
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E646C1FA257;
	Tue,  8 Oct 2024 21:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="VNRTtlNV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044F81DFE33
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 21:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728421628; cv=none; b=WCP9Zyjgrg0GJjymv0IWVF1rl6OdAKERPgEXBVbdr6kOHX03MZmCxjOSTZS8QejD2AIhi60j1bQHqKdJ7+xFu31Ei5etKBvoZylF6RwUs9JEcZxakIwDldMeWzAkR2KTB3xmavrA+eVQ1zf+QvFFufZERcv0xZ4GmV7icKUMHsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728421628; c=relaxed/simple;
	bh=7HuGxACrk0n/WeGr94OCeds+MhhdBZ7+UTHHIBW1h4M=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=qDeHm2KyjMQFku34dpxYpG8nKhiaB+SJLLwZyW714Rq+Bgp8cw9WsC0eG46zIyTz7uUdKV3jjWdoqqh8F+SP/ABx6isIEmPPOTZmrEmGB3wWh2oxF7M6zNaqI2SFDS9cNRMGdYX4RNLWK+4ak2oiNkF8IIl1x890UHiSYUvfcJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=VNRTtlNV; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728421623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=la1BG3rFIOzZP5Sr6HqIczoniGwSsf5hIQpvS7m6tGo=;
	b=VNRTtlNVYyUMUun5lbIbXrm1WPtnBj9sNX2RU9Vxzlq0B/aKWTfbdK6ogJH306k2fmKTrB
	QhD40LcrKLkbj7ijj23ilZDJBiq4Rw1ufvL8H6U149TMIxiR53ikQXwJBK+CVPBluuAfmP
	qGr2988/LYzKI4VdIWkHnPzf5IyNJF4c0KBHlXUdVlTiUqGBmYLJ+pUIvQOv2gFgHhDZb1
	lhj72ngRXWA//utRN+fxZqe/XeL226GEHWGKWgMvRU1ZYeAqSXGJ5dNKWLatjawoSK2fGE
	TZsVT0ZH52pyHJgO6w5ObNk47pORaXgQ/O2CFBbIX0gtoZn0+4GmjI5OW2K1rA==
Date: Tue, 08 Oct 2024 23:07:03 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Furkan
 Kardame <f.kardame@manjaro.org>, Elon Zhang <zhangzj@rock-chips.com>
Subject: Re: [PATCH v2 02/14] arm64: dts: rockchip: Drop
 regulator-init-microvolt from two boards
In-Reply-To: <20241008203940.2573684-3-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-3-heiko@sntech.de>
Message-ID: <0e2dc1883c1287cdb629e8020dc95a4f@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> rk3568-roc-pc and rk3588-toybrick-x0 re-introduced this property 
> despite
> previous patches removing older instances already.
> 
> regulator-init-microvolt is not part of any regulator binding and is
> only used in the Rockchip vendor kernel. So drop it.
> 
> It is used by u-boot in some places to setup initial regulator-state,
> but that should happen in the existing -u-boot devicetree additions.
> 
> Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly
> Station P2 aka rk3568-roc-pc")
> Cc: Furkan Kardame <f.kardame@manjaro.org>
> Fixes: 8ffe365f8dc7 ("arm64: dts: rockchip: Add devicetree support for
> TB-RK3588X board")
> Cc: Elon Zhang <zhangzj@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  Having support for the
"regulator-init-microvolt" property in board dts files, or not having
it, goes back to the main purpose of the DTs, which define hardware,
but, in general, do not contain system configuration or policies.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts      | 3 ---
>  arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts | 1 -
>  2 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> index e333449ead04..2fa89a0eeafc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> @@ -272,7 +272,6 @@ vdd_logic: DCDC_REG1 {
>  				regulator-name = "vdd_logic";
>  				regulator-always-on;
>  				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> @@ -285,7 +284,6 @@ regulator-state-mem {
> 
>  			vdd_gpu: DCDC_REG2 {
>  				regulator-name = "vdd_gpu";
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> @@ -309,7 +307,6 @@ regulator-state-mem {
> 
>  			vdd_npu: DCDC_REG4 {
>  				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> index d0021524e7f9..328dcb894ccb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> @@ -428,7 +428,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
>  				regulator-boot-on;
>  				regulator-min-microvolt = <550000>;
>  				regulator-max-microvolt = <950000>;
> -				regulator-init-microvolt = <750000>;
>  				regulator-ramp-delay = <12500>;
> 
>  				regulator-state-mem {

