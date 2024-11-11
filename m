Return-Path: <devicetree+bounces-120832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DB49C4575
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 20:00:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D0111F2166D
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 19:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E1E19F133;
	Mon, 11 Nov 2024 19:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="wjEnW+dP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [207.246.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C9B13B58A
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 19:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.76.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731351640; cv=none; b=AMANBeb0g7GmSg9mmIPAGStKi7wj5c83f+YDRxalDXeFdpOomr2pxgUNctx1z+YbVd6Kihf/XOphb8RLcdPQvaFdYgBslpYZ9NJ4XaHFhzi/5seS5isX5Si8/gwlZoERxZouQ3qaD2yQsd4M1CdmM8m2lfTwi42jdklK1vXOKXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731351640; c=relaxed/simple;
	bh=hX+rHXdatZ2voTuWx8KqYE8gzjC8I8oX4LQTcNL1uuo=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:Cc:
	 In-Reply-To:Content-Type; b=IwmbKhzzGKcBf9E6v//i1PpNi4i3vtNHBFvXd2tJd/NzqIIW03nflkOn3VWvKD6f/0On5AMWwI5wx23K1hIIG7sXtWrZ+1ChQ2n/1unuK363iZ2CJAW+P1o/BaP4Lw982Qk5WO9TXncHJfigChwztduamLF0mKGW7axAJdWN0so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=wjEnW+dP; arc=none smtp.client-ip=207.246.76.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: Cc: From:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1731351608;
 bh=CMsuVaCWcGbn+PNUEsDJOg5Je/VIwxR3vM5XvB5rDGk=;
 b=wjEnW+dPyV8k2P+3CBh7Ltj4le8kHlTqFdSeaSBOH2HJd6/7dSRDsUnBdRpPhx5uSnoR8n8a6
 CquRSd9JzlX5gHK9FRamWJFBfGZyPQNbPuFkAN3J1IwK3z4rAdFqLxxQO8f388Maw+PLf+vI+Ax
 o8WjTmD3D6kXetL8UGtbHwl7AIo3cvMPFcpsZPAapG5IgaB917oqAp+raRHLa1cpW+KK2K90iuq
 cM/sbyzX2q8g/nOaSUenRRZ3b+FSVsUFWvgkkTJHJPhqyUXTp3LES6wcHGtHBcvZLUeU3lhYKVR
 8H8tOalRiKcfTUojUUtvUdT0LnCb3DcFHDBOy+jqNjSQ==
Message-ID: <c89c2f16-ffb0-4b61-a962-9705f9f1e0e2@kwiboo.se>
Date: Mon, 11 Nov 2024 20:00:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add supported UHS-I rates to
 sdmmc0 on rock-3b
To: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-2-tszucs@linux.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20241111181807.13211-2-tszucs@linux.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 673254361b4710f318d5ef3b

Hi Tamás,

On 2024-11-11 19:17, Tamás Szűcs wrote:
> Add all supported UHS-I rates to sdmmc0 and allow 200 MHz maximum clock to
> benefit modern SD cards.
> 
> Signed-off-by: Tamás Szűcs <tszucs@linux.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> index 3d0c1ccfaa79..242af5337cdf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
> @@ -670,8 +670,14 @@ &sdmmc0 {
>  	bus-width = <4>;
>  	cap-sd-highspeed;
>  	disable-wp;
> +	max-frequency = <200000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	sd-uhs-ddr50;

There is an issue with io-domain driver not always being probed before
mmc driver, this typically result in io-domain being configured wrong,
and mmc tuning happen before io-domain is correctly configured.

You can usually observe this by looking at the tuning value during boot
and comparing it to the tuning value after removing and re-insering a
sd-card.

Because of this uhs modes was left out from initial DT submission, some
cards will work others wont, sd-uhs-sdr50 is known to be working with
most cards even with the probe order issue.

Also I thought that lower speeds where implied?

Regards,
Jonas

>  	vmmc-supply = <&vcc3v3_sd>;
>  	vqmmc-supply = <&vccio_sd>;
>  	status = "okay";


