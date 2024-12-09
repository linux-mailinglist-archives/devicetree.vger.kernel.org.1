Return-Path: <devicetree+bounces-128897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE659E9BBA
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:32:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20ED51886BF7
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 16:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDFCE135A63;
	Mon,  9 Dec 2024 16:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="fy57MCqU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38165BA3D
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 16:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733761962; cv=none; b=Mn1a+WjFV+6Ghxh91LWNQR3iLaQioA/W+YJ5odFW8JuZrLB2LLgBEZxAxQUav/9rJY4vIdZgzxFm8i5xwLnkGfK8LV33qGzSa3L72G+lmosZW2dhx+sjc5boJ4IGk4k/z8Xc1AyvAVfJnMopkQECRMXvZK67y60dzHf+PGOQYcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733761962; c=relaxed/simple;
	bh=hKoZUs950dmzTLRQO2GHonO3p7upLQS8rwZtUsKZrfI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=XpUgB0KDqx2uE959jjfmgHrk3qWNGpRkS/1vs/b+8l5LtkeXQEXTM7NXMPVLbu/YceLAMSVWMMEOci1rN7yt9StgSv/QbnhJxnfxpiT0iY/aVlOugq6P4sYRWurv6hrsuCQ+nCyhy490lEf+YvSE3eZj9zFytqEIWP2YbxrySuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=fy57MCqU; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733761958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5tuPQMBx1XIFP1/5pcBpPF13/7vzl3ejELlsObI/1uU=;
	b=fy57MCqU0sFGc6J8WnklLdAJ+F2REpFqwZgQd+cYty64lWrXStJsAQXd1W8V5T37BYWyb8
	FwGsPHmd5Bykh3y/uZqr9fObEkpbYxBv3vmqwul0qDtekgPO0vfiwjCsb6/9jgzS9kiXzQ
	7f731eL62fEDG1nY0aPDe0DH7Z9+BN3yuIeXkDtyFFkxJFIdK3QMprjOf7xUdMeEmZ46VN
	PHgQoNv+jhLIJqra+K6qCFQbUkYvu3qFZHh04XmQphEK8SvggjxkpPjXw811QLIS2XcF1c
	pH+Hufl89XIJM04FKiJX2MxU439EXOs81rRHo7zQE+/anI5w4V05U4hMUMAxVA==
Date: Mon, 09 Dec 2024 17:32:38 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
In-Reply-To: <20241209125131.4101-4-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
 <20241209125131.4101-4-naoki@radxa.com>
Message-ID: <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-12-09 13:51, FUKAUMI Naoki wrote:
> fix pwm period to match with vendor kernel[1].

Instead of simply referring to the downstream vendor kernel, in this
specific case the reasons for adjusting the fan PWM parameters should
be explained by referring to the actual fan setup you're using, the
observed fan RPM behavior, etc.

> [1] 
> https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v4:
> - none
> Changes in v3:
> - none
> Changes in v2:
> - reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 630f026d856c..85589d1a6d3b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -73,7 +73,7 @@ pwm-fan {
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
>  		fan-supply = <&vcc_5v0>;
> -		pwms = <&pwm3 0 10000 0>;
> +		pwms = <&pwm3 0 60000 0>;
>  	};
> 
>  	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {

