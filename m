Return-Path: <devicetree+bounces-242279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 496C3C88D28
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44D7A3B0428
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB15301033;
	Wed, 26 Nov 2025 09:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="mtWFpE/K"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1827D24166C
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764147794; cv=none; b=t7PdHzEGCdRtv6gTpOiAlghTnqoZkIRsvYqbgLq2HYc+clyQ/zUrmpL0HeRz6ZTrRmFlZlG+3dLqLRQBKJ0IpJrJ2KlLwu7XycLxJQoExejYlXpjSafa2Q+hNZH/Dt41scsLdMQvU7sNo6AtkWBV0Wz2ADTSMYyiuQcjpvu+sbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764147794; c=relaxed/simple;
	bh=eYUNXJgZcjlkHLIrIaZBRgr3zEvTHVn0vNT8SQqadvM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j4HJYxh+Qwxu60lOcdje5y4vA3A+1EzzHCVAedfMcMZAwZttIjpsWCnh0f+/MS77ikgnK/I1ClvBUch2eGsNdwjSC5arJZNzZ3gZ6PKihy6i0/8MKS764Pkc7JPCHUREkVe3io3g00/EtQ2k7xyyLnwup8oi5Mrfj+ta/j9wmZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=mtWFpE/K; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1764147791;
 bh=U1OykPAwTcPzSFiUomqrxwP1jDvbUax2InEi27KUlKo=;
 b=mtWFpE/KkQxTUmDu2i2LGX6hMKIWJQOQ+SBNi+L5qIj06t/Et1fxBzfjVsVbSBrYc2YSIuy8B
 wkyaFaVdhQxbXf/5YFJx3g1Ypuss2ad4Kuy/ZlJKwDZAwkmxTWDajhPjPNRQAvWjKG6awc3Pjzk
 gfmRaJ/VSU5ZNoIpBGl5YWKxM55rE8D+OCwlMlHHlzPhJpqeXQE+3mKIM3y4LMTWKbKS9FausuX
 ziv8JjvFTzcBptl0HqbLBdt15wZp89zYD22IycmHPy3bXcmgkR6GI4C8ZSryA0ubG1NJlLJ7x9O
 MGvFg9fZGoKYsDplsUbzBbbPce0okwpbtSL0jb4eOezA==
X-Forward-Email-ID: 6926bd023968ae208f5ee233
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.6.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d66f81e4-9d9f-4df8-916b-e6f68c85d813@kwiboo.se>
Date: Wed, 26 Nov 2025 09:40:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Enable i2c2 on Orange Pi 3B
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20251120-orangepi3-enable-i2c2-v1-1-2e023a74012a@rootcommit.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251120-orangepi3-enable-i2c2-v1-1-2e023a74012a@rootcommit.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Michael,

On 11/20/2025 8:00 PM, Michael Opdenacker wrote:
> Enable the "i2c2" bus on header pins 3 (I2C_SDA_M1)
> and 5 (I2C2_SCL_M1) of the Orange Pi 3B board.
> 
> As documented on http://www.orangepi.org/img/pi3b/0719-pi3b-19.png
> such pins are the only ones offering I2C functionality
> without conflicting with other SoC blocks.

This is strictly not true, these pins are by default used as GPIO, this
patch change them to use the I2C2 func, something that should normally
be enabled in an overlay.

Functions for these pins:

	func 0		func 1

	GPIO4_B4_d	I2C2_SDA_M1
	GPIO4_B5_d	I2C2_SCL_M1

> 
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
> index d539570f531e..e2f0ccc6dbe7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
> @@ -435,6 +435,11 @@ regulator-state-mem {
>  	};
>  };
>  
> +&i2c2 {
> +	pinctrl-0 = <&i2c2m1_xfer>;

pinctrl-names should also be added here.

> +	status = "okay";

As mentioned above, this should be enabled in an DT overlay not in the
board DT.

Regards,
Jonas

> +};
> +
>  &i2s0_8ch {
>  	status = "okay";
>  };
> 
> ---
> base-commit: 8e621c9a337555c914cf1664605edfaa6f839774
> change-id: 20251120-orangepi3-enable-i2c2-fe6d25ec681a
> 
> Best regards,


