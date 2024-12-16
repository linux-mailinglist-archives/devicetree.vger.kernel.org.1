Return-Path: <devicetree+bounces-131399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E129F30BD
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 431C91666AA
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D3D1FF7BE;
	Mon, 16 Dec 2024 12:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ktAwb+s6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967A71B2194
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734353012; cv=none; b=KeWI/g7vY4I0+pgPe5OzC60hHgr+yTO4fgFNyTvqR/6DNB1HM1/veIK+DE9zDVPDYyVo6FdkGhryJeg6XNJr0i+JFueVw9IVP3vcrFtSNeGuLQQLsRdLzgBpoNK2OP4KtghPLnq0rpwjAOsWvUfAtyho4pmXKifIYjRqFp4YvaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734353012; c=relaxed/simple;
	bh=buzHj+wCZKOB0O/yp57K3RXChVXuQHbxrAtrgP2z+uQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=M/VL25i/ct+eX1/n3yY5hWII6WJt4UIUuyBlm6KwTIs56jqec+vCQPiJ/HUcC4WGDRiV9Viyqs/iEYAtq1U7vV5QdYVXlku2amzUCz50S184Hm84a7IvEaI19zy9D1G0Ek47epKe4vTBHNaLEQvXPC8GiRzMWfGsdOBUe3CFPeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ktAwb+s6; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734353003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xKXXz6P4+BYl3ua8DphqPWqvACQosGl10JmiUMXqOcc=;
	b=ktAwb+s6gY0nQV/J6MM1lpTdJvZPKnVbAeAbCcWKbbwITGDK1TAirNjlcen5SbWsoIa2bJ
	QqRQlIGutA+HdSpJ77f7m3rm34DiIxh4W1x/UY2HBgGSKvUip86ztNX61am4teYETXADUQ
	fe1vno/BCPlGBKEWqTxi7bIcS4gamsi+GydGMC+AZqqtGZPCI0cckmEvG0XCHh81zSkF52
	R7UTYhoJ01QxAYsr2dr8a8ucOzu86z+YPno+n7rnrhgcjWXGMiK6hctm5qjVwrbBMg56gU
	uzZlln7LoGLkGnF6sLZcW38V0+kv9mBJAdNI4p9OJcup7tpTTdw6cnUT/toTCQ==
Date: Mon, 16 Dec 2024 13:43:22 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
In-Reply-To: <20241216113052.15696-3-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
Message-ID: <629ae206a3a463da7839fa4ee438f381@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-12-16 12:30, FUKAUMI Naoki wrote:
> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Looking good to me, as a preparatory patch.  Please, feel free
to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> Changes in v5
> - Reword commit message
> Changes in v4
> - new
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 23e9b447b6f0..630f026d856c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -68,7 +68,7 @@ led-1 {
>  		};
>  	};
> 
> -	fan {
> +	pwm-fan {
>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;

