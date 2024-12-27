Return-Path: <devicetree+bounces-134376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E009FD518
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F19203A0266
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C45553F9C5;
	Fri, 27 Dec 2024 13:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="TPadfI18"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FEB1E49B
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735307334; cv=none; b=jxabO9BR1HfWVsdTKyvSynwJCiMf8/ynQbboYDyekQfB5w0V49m4vnRq3GXS5/wgodExtnN7POgHe8MMRXxrI+FyIUNMYsYTPETbjD3UkiBzjFZLtRT5WESlcBbNgLJgTrv+E8gDJyaH1I59lumuuCsX9WzKE/8f/mApWEviED0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735307334; c=relaxed/simple;
	bh=qB2uiA6qmx2sDB4T4mW6AJbAHick8J15O6VjRXG7scY=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=f7QTu06ry3U52H+KLtItRyo4MZIJudhYBWFAdyVfnh4SCgIDdHm/ZVg82gqoNjuDLYT43c88dgaBoZV83HteneVu6EGDu0jZHbq8BAsZgO+VCnOsMjYpqKiKTED2jXWE+Yp/59ama61B4aB0fFDc2tKYKsmVSFmJlWL8IxkIC8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=TPadfI18; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735307325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7oJjYH7bgS+QFow4qMLvNMV6zoSmn6Juy4ntLS2AaGU=;
	b=TPadfI18X03zvThxxk2iB4DyrpTdEaBg8yab/MqORphm0PBfbP5LNbrgwzZq3W9smGa7rf
	RENZKNlbGlu35FjM4t3CBzkKN6+bTW+gblbUdVkWVlZyBzFJPb+r/hO9uMaTrTgNa94KaH
	lRpv/2CK4Maw+gttMyGylXCUngpq30+bgIvek6PjurMmK2MKcsPLD3CtLgb37BTSg+z6UG
	tqRJkpFuLO8JFFcTPs1wMBezdn3n33tu7wLSEVMRgZCeG0DtpklQFtNWiqKCZmDFk9Eebj
	LzmKFFasFoZ6djY8Ciftjq1fL6dQJs1CMlji8ZIE5pRp0EePGN6Pj6Jf1BLsNg==
Date: Fri, 27 Dec 2024 14:48:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
In-Reply-To: <20241227133420.169714-1-jagan@edgeble.ai>
References: <20241227133420.169714-1-jagan@edgeble.ai>
Message-ID: <8f40821508fde291aab01674618c0a2c@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Jagan,

Please see a comment below.

On 2024-12-27 14:34, Jagan Teki wrote:
> Rockchip RK3588M is the automotive-grade version of RK3588 SoC and
> is operated with -40 °C to +85 °C temparature.
> 
> Add rk3588m specific dtsi for adding rk3588m specific operating points
> and other changes to be add in future.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588m.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588m.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
> new file mode 100644
> index 000000000000..0bbeee399a63
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588m.dtsi
> @@ -0,0 +1,7 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +#include "rk3588-extra.dtsi"

I don't think we need or want a separate rk3588m.dtsi file for this
purpose, unless the RK3588M variant actually differs from the regular
RK3588 variant from the software standpoint.  The latter is already
described in rk3588.dtsi, so it should just be included in the new
board dts(i) file.

