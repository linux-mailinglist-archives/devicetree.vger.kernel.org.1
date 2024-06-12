Return-Path: <devicetree+bounces-74795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DE0904946
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 05:01:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AFC21F23B6D
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 03:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB26F10A39;
	Wed, 12 Jun 2024 03:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="k5/s+Q2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C882111AD
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 03:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718161305; cv=none; b=J7/lzxoGwr5T/JgRTo1wbQNRvFF3Mg1yWGt+it77z0DPWF6yK1t2eK5PO4WtARl0c5ivDUjLnH3ZaIIF4W9CsksAoddEHTSlaZvrXwh0IM2cIw1RJvyVY/SvcnyN3wV2i3gDnRq8k2Wpa5YZslPveiboX99d9LhYl/QTY6k2L7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718161305; c=relaxed/simple;
	bh=9kqjPWQJKNwWVESDzhXNp270oLWnaUKicTv25DLWtE4=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Qt5g5PRU11tcTVEq4D1J5t7OuG6iuvAeCYoquWYyBvKVcRz2SERFbN5E7Qw2zd9ub6UGEKLoU/wIMM82qpD+uo11urFOxMgZQJ8bLMkLo/3ypq3clx8USr4C+2qf8kzr5pLNBIQzEXjI3bGBktwyQv8rIJGbfTd5BxsuRXM7i6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=k5/s+Q2i; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718161299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HIrwMckBwVtYf7EpF2NcoeEcwDRVGbJiqslvQ/yvl80=;
	b=k5/s+Q2i9ZyhgktmkSwXThY89m1Ddxunv5uOw0ZXKyLGB4qtsS5UF0H9IWG/2+DKQrLcEH
	xXvEIWBwMJokOPachpZs6gcvdnqShT6ry4DRY60byNDbSVSui5OYf+5Fo0jkwK0Czz41NU
	BnXVVY4OmPnEjFYEyKrUciiFDuJueW+mfrzTxMFuaRghqaOkjANj58iBP+AFcTzOn2Bt0U
	EMlu0w13JoxnsOLy5BZE+9GVqHT6v94kuwJRrkuxM2Pwluv/t9Vz9Nxw+vbIhfRcYAd6d9
	gqwV5JTu3c7z14ABENBshMwsjQXB1q/He7ZQAspvSvFOMJoA1a9apbh0KA8R8A==
Date: Wed, 12 Jun 2024 05:01:39 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: make poweroff(8) work on Radxa
 ROCK 5A
In-Reply-To: <20240612011221.822-1-naoki@radxa.com>
References: <20240611122746.751-1-naoki@radxa.com>
 <20240612011221.822-1-naoki@radxa.com>
Message-ID: <c47a034c48193745692b20d0e36ba7e7@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukami,

On 2024-06-12 03:12, FUKAUMI Naoki wrote:
> Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
> controller, so the board shuts down properly on poweroff(8).
> 
> Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Thanks for the v2.  Just another small suggestion, the tags above
should go like this, with no empty lines between them:

   Fixes: ...
   Reviewed-by: ...
   Signed-off-by: ...

> Changes in v2:
> - remove an empty line above "system-power-controller;"
> - reword commit message
> - add R-b tag
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index b070955627be..3b9a349362db 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -394,6 +394,7 @@ pmic@0 {
>  		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
>  			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>  		spi-max-frequency = <1000000>;
> +		system-power-controller;
> 
>  		vcc1-supply = <&vcc5v0_sys>;
>  		vcc2-supply = <&vcc5v0_sys>;

