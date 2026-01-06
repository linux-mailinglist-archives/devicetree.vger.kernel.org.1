Return-Path: <devicetree+bounces-251871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 37679CF7CDE
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:33:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BCE97301E158
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60581343201;
	Tue,  6 Jan 2026 10:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="PbBGpai/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3333431E7
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767695542; cv=none; b=H5viKCuSQ+Hr+ckBZavrR1C5w37+Vfg5L/1Xi44QB9QBemBS5AkNJ3JE5hCaWkBKZL9YbBWK4Dgp5wY7oXzSE1OP1E9GA7a/V7znhOVPAzdUqAeq/45KxD5BWRM64HwN/k92f6czss58y69JjvrAFgPZfFA4uyh7NT2iDg6bppc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767695542; c=relaxed/simple;
	bh=1tJ20MUicuvH4v8hMDH2EWMUgmh+Fi8PvbTruBetC+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hjLLWXALBUVpxphQmwJ1lGG+r0xEqMctLXGaQdbw06GyT88ByM6Jw2lZKYih62VBjLD/ImA7eZSFjCOSOqvhu0CmlI1ZxWJzVvM8YSp4umXsU/t1BvgCrczQzXdeTiIY0y0K9S9dS+UFEmVklb4aWscjXXZHy24E+xajq08n5Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=PbBGpai/; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1767695539;
 bh=x+Xak7wAR/JIg71hAoKMeJB5ByPewgiifbgu+4ypQ9g=;
 b=PbBGpai/AjNVoY+3AvbHLunLEIz1hnQM/YxJKe+w9H6oiXYrDj7eB4K67nOxJc9sZ26WLoips
 QGX/GPY+FHW4/eLzBL3T3+WAgK8ZMSVd/ewhMIFejo9HEwJVU0BjrrDzCCHary0hQi5AUSN35m6
 lIaejn+T2BdBcsW9Sjymoo35aExn4sNPlJgZdUJ7bWAQ7w6gRwC6u9lpjEgFQXay+bFjY6J1TJe
 prICIj+piDA/eLwg20pz9DqWpyaaj7K7TYw6bJ9h/2sygVaHWJ7I7aIPHIFlj7XJqupAGM1ZGmb
 BDqaob93XsRPkDDwNKjhu28fCFeMWLcO28l36ngv3qOA==
X-Forward-Email-ID: 695ce216a05bf2602ae3708a
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.2.1
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <1c5005b7-ceb9-4915-ad58-a9aa86cce394@kwiboo.se>
Date: Tue, 6 Jan 2026 11:21:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: Enable PCIe for ArmSoM Sige1
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260106100000.225445-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260106100000.225445-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Chukun,

On 1/6/2026 11:00 AM, Chukun Pan wrote:
> Enable the RTL8125 network controller and corresponding PHY
> connected via PCIe on the ArmSoM Sige1.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>

This matches what I currently have in my pending to do final test and
then sent out branch at [1], so this is:

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

For the remaining RK3528 boards we should split up the pciemX_pins
pinctrl group similar to how it has been done for RK3588, as there are
freeze issues in U-Boot or problem using strict GPIO usage in Linux if
we do not property configure the reset-gpios pin to GPIO func.

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20251219-rk3528/

Regards,
Jonas

> ---
>  .../boot/dts/rockchip/rk3528-armsom-sige1.dts  | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
> index 6e21579365a5..c41af8fc0c8d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
> @@ -232,6 +232,10 @@ sdio_pwrseq: sdio-pwrseq {
>  	};
>  };
>  
> +&combphy {
> +	status = "okay";
> +};
> +
>  &cpu0 {
>  	cpu-supply = <&vdd_arm>;
>  };
> @@ -293,6 +297,14 @@ rgmii_phy: ethernet-phy@1 {
>  	};
>  };
>  
> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie20_perstn>;
> +	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&vcc_3v3>;
> +	status = "okay";
> +};
> +
>  &pinctrl {
>  	bluetooth {
>  		bt_reg_on_h: bt-reg-on-h {
> @@ -324,6 +336,12 @@ r_led: r-led {
>  		};
>  	};
>  
> +	pcie {
> +		pcie20_perstn: pcie20-perstn {
> +			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	rtc {
>  		rtc_int_l: rtc-int-l {
>  			rockchip,pins = <4 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up>;


