Return-Path: <devicetree+bounces-135259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1B6A00481
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 07:47:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EB1A188342D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 06:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0252813FEE;
	Fri,  3 Jan 2025 06:47:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFB11A8F74
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 06:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735886851; cv=none; b=rzrYem/dXvKpUho0HV+sp0UZ/JUl0fNlxjfuSABL3KKPjrEvfpA3gtAf4/U5Q9NqblxOycIkNT/R4/5Tc364tVfr+TEd9l+5X0Ip3/vEEV7njGa1RyeoZRNQByozsGq50E758Kz2+f5Z3V1eU8CLDzP6DkvmLy+6LgXu/vPmbFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735886851; c=relaxed/simple;
	bh=BFuGyv9zCh8LyMd/3HTIncvxq/wl/Hev8bsLs8v5koc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AKuHgl/tW7TWAivRZwx368RJMKuNFxSXY2PaixCTIaKTX4jQCl2O7xlAfX3nSb8gsjsssC3CgPXB1eVkK1MSsjFnev7m/kqTl7nelXUdeL6YFcRws6V+bjYnYiaK3hAScZJXE/p9lit0v1yjauJLKlasTLiYvXloadtauMXOBL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1735886766tuil99m
X-QQ-Originating-IP: W37CiL0oc3E07rqJuU8i6xM+rLObu+uxHqFdvFR6QlQ=
Received: from [IPV6:240f:10b:7440:1:8992:1149 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 03 Jan 2025 14:45:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11742114379543080906
Message-ID: <E280EE989942CA2A+4252fa87-049d-4b73-ac28-537f29c09660@radxa.com>
Date: Fri, 3 Jan 2025 15:45:58 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
To: heiko@sntech.de, Kever Yang <kever.yang@rock-chips.com>
Cc: robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com,
 jbx6244@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks,
 dsimic@manjaro.org
References: <20241226024630.13702-1-naoki@radxa.com>
 <20241226024630.13702-2-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <20241226024630.13702-2-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NG63YEgwc4yzUiPOyIXuX7fqJKcTMJKvc7UoxAgSu3UnTwopMW7SX7xV
	Ngc9YmRRzmkyZwHR4PlNdkRfbvHHWqTaPsKH6r/pFWLYSJXk2jFmjKtaXfXS74brm7DaCt6
	TYpgzNS4iRpUpfEeFTgdVPjpMVMr6HRA58gkhrpbjdIQ7E/FrbaBqaJS+ZjOGh+sLHw0mEG
	upnjgT5C5biiNOm6Q93jM4MivP/j8c+VaKiXFAZZogICPJlixdQz/YAPFB5z0YQJlrO4/v/
	oOidAE2ovigk1Xnj5MiYIHOsyMJJ+ZBWTaEtNNsUP5LjO24stMdPVKZEqsIFsYda22A4RE5
	SF50uyZP4Xbc3VL6b53kRogz8Hb+7wRQD1+fby3dGYZdn7uYIUOi0fBuQGsoXBw4d+1dARW
	ljRtjKh6U+tCZA/ey7ClBGs6gZAcUd/36QF7efCBHTHH0mimwmuEfJ+mUoTzPlaKZGjruVT
	DKAUoEeWe24A5HpZFE9rkGBRwxteJ5YehvTC+aJ3IPG9qJ+Z0rpGK/0ws40kqYQeHVHSLSm
	kDF91PmlqZHlAX1H4aUfCVn1NL6nsa+ixZHIwwOMoVRp8Q5EtjdXvZQkbZPWukj2cpTYQIK
	f7sjoz4GDOdY6xfhJaRjoyH1pFbVpcnMa+Pr9e23/AtQDLhfLeqY4i+bUCi/KSUN5S4I/J4
	JyaD0G8aEiD7IQMJcF3ERafl7Zy9pJnKNPzkHooDARS3+EvOoeUjdLBI0pReZ+yW/83Jaeq
	KBvietg2h+O2N285IUA2D61pg/cewIkj/UCEQjOCSGc2S06PK728hr0LB35avM9AgVlmyib
	PZ4y1n3f3yUcvYqiQmnHGAc10ruZPg50F1+0b2MtTlufoMMLsF43YlzCMfCwpUoPgPpxuwU
	w9zz8w+Apb3xXOtoIk9Y0XagCPlus3rTJU1Tjf6c5p4TAeUwd27hTukEoen/mLWE
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0

Hi Kever,

What do you think about the introduction of the "rockchip,rk3582" 
compatibility string?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/26/24 11:46, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa E52C.
> 
> Radxa E52C is a compact network computer based on the Rockchip RK3582
> SoC.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v3:
> - Collect A-b tag
> Changes in v2:
> - Add "rockchip,rk3588s"
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 753199a12923..2152d170524a 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -812,6 +812,12 @@ properties:
>             - const: radxa,e20c
>             - const: rockchip,rk3528
>   
> +      - description: Radxa E52C
> +        items:
> +          - const: radxa,e52c
> +          - const: rockchip,rk3582
> +          - const: rockchip,rk3588s
> +
>         - description: Radxa Rock
>           items:
>             - const: radxa,rock


