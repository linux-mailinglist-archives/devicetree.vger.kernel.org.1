Return-Path: <devicetree+bounces-155894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F341A58739
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 19:29:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63DF416A096
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 18:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 056041F0987;
	Sun,  9 Mar 2025 18:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="mr+uXN/N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3055E1DDA2F
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 18:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741544941; cv=none; b=qjKiaXBN2ziUKBb4++0sOyWPTVAzIbc2lctPxeHpYTnyMCPcJ/i1TQELLXuPqjXtWfZG1HBPyo0iBgv52mEsfTkJdzqvSCOeKOxr14EUjMgnzssEfa9yIcLfR70GV42Rp4n6Iec3yQ0JACpkppIDnlo7m2ffgkCjGsDOaTlBhFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741544941; c=relaxed/simple;
	bh=V6VtDQBYKLqd9XRufOK64IhkH5kbe+3gHvLZ+QsaZGg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F6ZyC6gxXzM05BG0KnF7yc2iyig0JIWbFBpmfpyl9F9jF1Pb9HhqwOTkGvvedZ5RbShkjW64X5EiDKLHGNzABJzKRqy2y2wWjtKOox4op4Ln94jdAPBRedbk9fk/wx7mRkvb5ddKQdHQpgeY41blI1xzr0xfwtPFpBvpoeq5w4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=mr+uXN/N; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741544939;
 bh=ZQ1QJVIjdnw4XDWOL1lHnoPAQJsZWuneqxKAGVSgKA0=;
 b=mr+uXN/NRZEHKLoJMbrPxlkXUIAflAWn3vT7u6/qoPQuVGwRgBUTgsrZNkA6NtPIYGfyaUcGb
 6nZ8jyqxrLFkPfc1NkK1vFVZUcKY2aEDJaYVs9fiEKuk9cQqlHJ5ZuWfLiZ5xWWQJ/NO36tb/yo
 pEn23YFAZmW0p5LVZ38IkKhejuf52nYxyTdXzpQ6abaOAIxKYjDUZruO6JLqETUNqDEAPC/fPp3
 6yNzQKHCyOseuxtCxg6E1B2Neox7mryEMyfPyvsmzp5O4cZJ8jojP6fTHT9cZrbrw9ANIMrPEZ/
 oOLNSjSC5Kau/X1TpG6XkLk/B1WRjjI15kbpwACY2wTQ==
X-Forward-Email-ID: 67cddde98d04fc44bbac493b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <8172efa9-2f67-4b98-9988-88b533028431@kwiboo.se>
Date: Sun, 9 Mar 2025 19:28:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add pwm nodes for RK3528
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>, Yao Zi <ziyao@disroot.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20250307120004.959980-1-amadeus@jmu.edu.cn>
 <20250307120004.959980-3-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250307120004.959980-3-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Chukun,

On 2025-03-07 13:00, Chukun Pan wrote:
> Add pwm nodes for RK3528. The PWM core on RK3528 is the same as
> RK3328, but the driver does not support interrupts yet.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 88 ++++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> index b1713ed4d7e2..ab1ac3273611 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -264,6 +264,94 @@ uart7: serial@ffa28000 {
>  			status = "disabled";
>  		};
>  
> +		pwm0: pwm@ffa90000 {
> +			compatible = "rockchip,rk3528-pwm", "rockchip,rk3328-pwm";

nitpick: This could be split in two lines to match similar >80 chars
long lines in this file:

			compatible = "rockchip,rk3528-pwm",
				     "rockchip,rk3328-pwm";

And similar for the remaining pwmX.

Regards,
Jonas

> +			reg = <0x0 0xffa90000 0x0 0x10>;
> +			clocks = <&cru CLK_PWM0>, <&cru PCLK_PWM0>;
> +			clock-names = "pwm", "pclk";
> +			pinctrl-0 = <&pwm0m0_pins>;
> +			pinctrl-names = "active";
> +			#pwm-cells = <3>;
> +			status = "disabled";
> +		};
> +

[snip]

