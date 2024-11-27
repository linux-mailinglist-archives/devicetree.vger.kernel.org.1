Return-Path: <devicetree+bounces-124819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB3A9DA089
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 03:05:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17DF9168174
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 02:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5440C17991;
	Wed, 27 Nov 2024 02:05:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F071BC20
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 02:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732673124; cv=none; b=uGg6swt6Jbbemoelab1GjXjEyfUHP6k+EvIvQiPVz+xqhqOB424g0nHc+5FQVHGYlH8kKQg3g5JBuYzx1AKIgk/D15hmAdfnpnESwZjWnXdYLH01fEbIDBV5/RJBQLPTKc/t300fm1gGG5OW5mnLXD4MpyV8WlbYgfzCEKT9kEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732673124; c=relaxed/simple;
	bh=CVHgrqSzJQE/HznE2C1OU5lmjt1+1KGX7soNSGkWFA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fI8O6eHNHZ8z0ZiuLkfTyOUn1rQT8SNgKplcYDHNjNaLUr95iGl1e87YBztr7NExpW0yUyLmJ7rCpFKHY+gBJRuAaIqKbWJpOwMB0wuUqFiZ+7JhFdinrRb/21Jg5c0MdrzfXGdM8HmdFSaSKyIRzSPdN1amjWjcvrZTfzcGybk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip2t1732673048tdk7o44
X-QQ-Originating-IP: ngFj6m0e9R39ADWeOgCOIr8SRw+JjL9oamyAdm9ADf4=
Received: from [IPV6:240f:10b:7440:1:6277:666f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 27 Nov 2024 10:04:03 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 654727848392696255
Message-ID: <4BFE61448C9B8611+e5f0211f-cb10-4819-8108-f721d4413a38@radxa.com>
Date: Wed, 27 Nov 2024 11:04:02 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/11] arm64: dts: rockchip: add properties for
 pcie2x1l2 for Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241119095113.78151-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241119095113.78151-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OatzRg8pHEjpc512aVo4oOI1uNT7zbXiHVpseuThKx5VXEN1+w0s5Asn
	xPWJ4nbJBXHgUvOEQZmH4q87PoLGtc46rSg9bV/AI06IOCbXCdqFkZMQGpuFq99CnoHvGs0
	RZIG0kf5k9U391yqGbIo+CxWF2rZlUMBL3G5gMJuH1+RR5IMoyKFqInAJqFsq+oDfXxZO/7
	MNiRk98JfxVLgpx5z/SZgMCqCz9HTj8gHrnEZV3K95OK5QLRdai8aHFa4RO9uwWQGhMqzVT
	sJg+sifJwjFzwB1RBcCYcIsSnbB+iudeoqCSxOlHbIDyvmT19sZaBMC3YQmTp+n34zn1YrO
	t6FhMmu2Kdi+djY6wGZRqh0ZHlRFd7yILmPFAuCgfJrgqsw9mSFxjakKaEdIdpfC9AQp/Yd
	bCr4LYmaMcD1VuPpnRj81eIXZSrM+Uoc/bAQujI0ZVK0cfxmK6dEZUs9U6kq8ZhDZmLQkqi
	/p++UIqcz/NwPeQnBM3wlStootH7CYB8dJw8+ZpsWGPDoYDb9bIR4gFNTaRPXn9gfKuNHqg
	f4CD5whJJf2ZcKG6snoqWalxeb5FHkFxHIqMeCAijsTqsBVPkYaUQ6152kiRlqcPGUC1KFF
	XSeHFou9+9WByfrlQ6XlfMHUZjOZekhlJZxrhNF2+dTiAFwxgLR0a4wzEMbMP09I73en4o8
	QlelroNdVaDHjv96CboX8HtJqT3rB7TTaijAMO7fDTpLEgy0LbgdBCMtYfB2kPGNAJM7Lue
	4a0EpbKCs+0CZwJrAuYvLeGXM/e5h1/+P9CFp1t/bwJH7a1LuLuzg5P5ryU/KveeLfWgHnA
	nh7SegkRESGXmD8Jbq761A/iBfqHqhUW8Peemd8f/jXzckKvQ+2NQ6m3f2cmBnSkRigbW24
	aKuRPzxpJjwfquBtmRx3z/Wi0HdTeh9bhqjFxumKXcI=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0

Hi,

can anyone test/review this patch series?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/19/24 18:51, FUKAUMI Naoki wrote:
> by schematic[1], pcie2x1l2 CLKREQ and WAKE pins are connected.
> describe them in dts.
> 
> [1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v3:
> - none
> Changes in v2:
> - reword commit message
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 9b14d5383cdc..997e95bb5b74 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -419,7 +419,9 @@ rgmii_phy1: ethernet-phy@1 {
>   
>   &pcie2x1l2 {
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
> +	pinctrl-0 = <&pcie20x1_2_perstn_m0>,
> +		    <&pcie20x1m0_clkreqn>,
> +		    <&pcie20x1m0_waken>;
>   	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
>   	vpcie3v3-supply = <&pcie2x1l2_3v3>;
>   	status = "okay";


