Return-Path: <devicetree+bounces-120834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8209C4590
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 20:06:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73C0A1F22016
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 19:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 178DA1AA7A4;
	Mon, 11 Nov 2024 19:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="CqUOv845"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3F514B965
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 19:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731351992; cv=none; b=gcPip/wEfnJP71Qv4FqGsCtF3KixEKZ/U7gteksPp/Wb7pWgLLghAVOeZJfPCYdBdwaBAYFAQaEu8vCUcO6ZCao/Z7IIwByQXJyjOWuzOODDU04wkuYHZpXC73LdSODvR8OKYyWu2h2Xbo1/hDRcXSV2ivdFBlAIjdYWu1ZQvVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731351992; c=relaxed/simple;
	bh=dFLei1pILbch4Oz1Qn75ZNsigljbW8jsb8Kk3v74VMw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=BEcuaa6t8qiw1HVJGdkl8vyStdZpizyssyYylrFBIgy5XKateDMdDa7rCygH0MwH+kHoHTl9WgKnYjawQcQnMJfFjPv1+dOGtv9nb/+MY4HInaTDOzRaV9SeWikByo0wrMmxlt5T2kQrVLwuLpcx6xzIxvGqpg/rx0A8NVUjDlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=CqUOv845; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: Cc:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1731351974;
 bh=kYHKDYyg+2ly+dMUeJ/cLWI4XcdPgA25RQIFqXCblz0=;
 b=CqUOv845dWIcsXI8fXS+1a9kBYL/23xyPaBVw0yqXKuaCw5smETxbxnPf14OyGqTAG4e1VQUA
 M8WJ/1kJuqfHH6LaINYZQntJz8qmDnkznw3GaN6k2BTdIzE93M1YX0sAdr4xzMUIkjGJEMHmImV
 XEzFSyJ6ydEGDCfFUzB9VTg8c9OfK9VfO/HQl2sZjvQuSyQFZ0dlmVupvNNs4KoRw04IcJolx4I
 TGersC4jVJSEAYtdXJ/7fk5BwZCwyNje+pmOk3yOLkhEodnZccgEAofMQNh5glhDK7HoTNM0czi
 4bcPsfhEIeIq2OcXwoO/48iDFayR+dI3fSe/tRjjdDbA==
Message-ID: <9fbdf05c-42e6-4ac5-9542-805200bc8c87@kwiboo.se>
Date: Mon, 11 Nov 2024 20:06:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable sdmmc2 on rock-3b and
 set it up for SDIO devices
To: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-3-tszucs@linux.com>
Content-Language: en-US
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241111181807.13211-3-tszucs@linux.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 673255a41b4710f318d5f267

Hi Tamás,

On 2024-11-11 19:17, Tamás Szűcs wrote:
> Enable SDIO on Radxa ROCK 3 Model B M.2 Key E. Add all supported UHS-I rates and
> enable 200 MHz maximum clock. Also, allow host wakeup via SDIO IRQ.
> 
> Signed-off-by: Tamás Szűcs <tszucs@linux.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> index 242af5337cdf..b7527ba418f7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> @@ -688,14 +688,20 @@ &sdmmc2 {
>  	cap-sd-highspeed;
>  	cap-sdio-irq;
>  	keep-power-in-suspend;
> +	max-frequency = <200000000>;
>  	mmc-pwrseq = <&sdio_pwrseq>;
>  	non-removable;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_clk &sdmmc2m0_cmd>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;

I thought that lower speeds was implied by uhs-sdr104?

>  	sd-uhs-sdr104;
> +	sd-uhs-ddr50;
>  	vmmc-supply = <&vcc3v3_sys2>;
>  	vqmmc-supply = <&vcc_1v8>;
> -	status = "disabled";
> +	wakeup-source;
> +	status = "okay";

This should probably be enabled using an dt-overlay, there is no SDIO
device embedded on the board and the reason I left it disabled in
original board DT submission.

Regards,
Jonas

>  };
>  
>  &sfc {


