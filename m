Return-Path: <devicetree+bounces-124820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6BD9DA08A
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 03:07:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F2692B244A5
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 02:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD2E517BA2;
	Wed, 27 Nov 2024 02:07:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8215BD2FB
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732673247; cv=none; b=q+Q94lKWUV+jwV57N7B546vSn5HojevfdjgwYO5JXlbwzVeUcw15ZNQ+DTZx30mtDl5+XB+mClYdOW4D2cV4umLLX+vXx84UEjBlhhfugFPvNvgGhROrqohVFiPg6C/95XQdLdhietnCL46oxXV7PHAt4FCH+WdnNd54iXAKiXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732673247; c=relaxed/simple;
	bh=kJOQ6nnbvn+zqeqKCHuF4GCqEQ6aQP6IvxB4kS9HvKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YiU5dRthUHFP6R/WdfFve0lCzTYXW4eGONZMZ7rPR6dJZfi5yN60MKOJaPU3fgGQ12co8f5cGbjIYNBUhbRgAEyOD0Y3+XzwuL+crm5oEIfr9NSu8MP85MtMEWn7BLz94iPPXCSvLfQWs9HJCRpyfvTLeRamMNQTjaw5gqFKMjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1732673137tz5qgoi
X-QQ-Originating-IP: ss3d7aByWau7jXBsjWQTmIJs556QpBH5oYBVOYxU8ks=
Received: from [IPV6:240f:10b:7440:1:6277:666f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 27 Nov 2024 10:05:32 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9966666961723898316
Message-ID: <9AA87B7AB00D6A42+d77ab055-e63a-48f8-a994-4b0b44f4acad@radxa.com>
Date: Wed, 27 Nov 2024 11:05:31 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for
 Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 cfsworks@gmail.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org, dsimic@manjaro.org
References: <20241119100813.78820-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241119100813.78820-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: N71rnkwxYMwykHLhv5oxYGBEkPi6KIUBBBrPt9Ad5qZYibh34epGFucV
	XFX7yYJ5itTH2nR5Rq42yQAmzhyQwDvJYTSfxyux3Ph98KIroS9xr4ux8RZWci8SZRW5ta0
	YY1Xxxsw4FL/zHWaSpja4bIfZgkjU+EHZf/WglV2xLflMsw5iuAd/o1FDKoHDyBpbq0wMAX
	GpZ9DZmWlLCbs1sgraN6qAkbnxDqCcWj8ys9tM/RM86KfBaLuaIo9/ghqZ1b1Ecdx++kyGW
	7wQQfcjWkxygBo6B7/ZOypmQhnQSmec1rp+RvGLLOMCCW//sbzhgonLFqo0eSG/0b4uxwM3
	IsVmHYkdDTAKT2kc/U3lxEeC6KtcNBkLcm8uvzJ+9tchXhArxEYpOLl5c2R7RGpPQfZi6Z5
	iifY1lbEryNMKKjc5u0kQxa0ptksPsU0rdj2KmQlP2QycVkqp9srh+jnVUILPdxRredL+6R
	PQEILEpws7x5F0RV7pOn5KWk5m2XvFaukj5AD7AvJKFkcfdiKLRNm/33x6iLtT5g/E9SLNZ
	tk84xHyJuJVSc1tb1Q2d5BjltgSgK8bHFnICnjotf4IMFL4Wy/R4nJubuCwwtz1ceOSsuov
	+ShuEdk3gAiintwo5Sh2WzQdM7eLv03SUR9Va3hw0qipNaTUdbx3ldNYXC/AabsDlvBmdMS
	jVr20anopMmRwjx3j8xFIvOfdh0x/N5nec1Gw7m2yCqHCCRpaIswyY3A9sfVQKTYye2p7Te
	1hq8IqSXQQ7mtlcQnRiZBs3jdjWCzGYHEIUvAbAZ6PK0EoNGddiSLljcy+JsUoxqgoWMaOF
	QmLzLZ/wd23SjPMDZ7r39ZwUupewHWOf0z+Er6PLi4Xfo6jW5IY5WGNg4CHDXpyfWtrJQd9
	6hfLi/ROqJXO8CeeNrih7v9tpEtghkgd2cdsFm+GuiVDXcwQx8OU6WVjYgveqMYBibHmQhd
	DkGc=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0

Hi,

can anyone test/review this patch series?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/19/24 19:08, FUKAUMI Naoki wrote:
> add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
> regulator.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - none
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 6da13b6b9a7b..b5460c179ef7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -88,7 +88,7 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>   		vin-supply = <&vcc_sysin>;
>   	};
>   
> -	vcc5v_dcin: regulator-vcc5v-dcin {
> +	vcc5v_dcin: dcin: regulator-vcc5v-dcin {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc5v_dcin";
>   		regulator-always-on;
> @@ -170,7 +170,7 @@ vcc_sysin: regulator-vcc-sysin {
>   		regulator-boot-on;
>   		regulator-min-microvolt = <5000000>;
>   		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc5v_dcin>;
> +		vin-supply = <&dcin>;
>   	};
>   
>   	vcca: regulator-vcca {



