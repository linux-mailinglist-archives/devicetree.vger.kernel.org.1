Return-Path: <devicetree+bounces-123930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E7A9D6BC7
	for <lists+devicetree@lfdr.de>; Sat, 23 Nov 2024 23:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9CB4B2159E
	for <lists+devicetree@lfdr.de>; Sat, 23 Nov 2024 22:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5B41AB517;
	Sat, 23 Nov 2024 22:29:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D91117BA6
	for <devicetree@vger.kernel.org>; Sat, 23 Nov 2024 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732400941; cv=none; b=U6rNcjwrGhfpd4cZAlf0g+7zy7cwheIxciNZJmjHF5hpe6V2LL7Q1iaOpUgytmIbjo6jrvMJVvQ2717rnGv/hDAtdycTNYo1Sve+S43RZTnJ3Qe/0ZIF+O2nofvli17HFQDp6S724iEvZnY3sZIHbWu7ugCz20xVjKI6KoFeUvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732400941; c=relaxed/simple;
	bh=+Impa0qTI+uamiEOfJ+UGJWQu3r8dp7MeNFGXEqphAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FPHnv/MVLMt8BDpdnyHe8IxAUSyh5UYdkstLGQ0pU+X20L6KbsfUpjSV0mJ5k0RFbbwjBLE0N6engzlEBphsEpCyovKvtNeaGzG9qu0lP9NXQIEKRaFbHZ/jY7yZB2RYs2iHzn1qbj5bAfCs2DAckSXfyMsPMw0R45ul11NFEZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpip4t1732400922t0vaiy3
X-QQ-Originating-IP: lDJQcHGmgBgcXATVztEHXy/UIVbd5/CbMKaLCYIJt3Y=
Received: from [IPV6:240f:10b:7440:1:bec2:7020 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 24 Nov 2024 06:28:39 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16923298256935240573
Message-ID: <7F8BEC114E3AF523+2ad7c5ce-ca20-4ea0-9a37-15b07ad2cbcc@radxa.com>
Date: Sun, 24 Nov 2024 07:28:38 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: rockchip: naneng-combphy: fix phy reset
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Michael Zimmermann <sigmaepsilon92@gmail.com>
References: <20241122073006.99309-1-amadeus@jmu.edu.cn>
 <20241122073006.99309-2-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241122073006.99309-2-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NWujniBqiFoNeJ0CkhbTv8yOE+kerIY/YyeLBKQrqtqWNEx08rcLf7LQ
	DdACIXM69JkSIN29VaS3FOdzZ+qPm4eH9V/Jjqww0BJ1ysMqcjODgotzJow3WOeat3VZk2J
	jUqrecx7GuDM5tGUSp4+GvqfIEoUvqw73nxQ4qOLy9RvMMxlS880rcWio5VdWEH4LJ9mFPp
	vthkGQGIRzdHOjvRp+GEBPywtK1ZcNBrMhwH/+FabYT/f9PZVAJ/0E/cE6OHrwElxHT49EQ
	Y+8MXOn607d3f8kLIbItNCgS+vKwJ2hMONxWq3tHokWmfOuBZiutPmdTbYcra4Ou+7PZ6CB
	Q1MJzIeC41U7erMNK9skCCepAr6EUrtHwC9wNUz73DabBwxmyudLbQNPYzdI4kJHgE0k0fn
	3kJDQqSd9xbMmN0kgrCslS5oHRy3qY2A5efxnTPRYSihALUI3N+HHiNTRdmdZsesFmNTkIo
	klSI0uY7FVpii5b7/gZ5K9R7w4uxkzvnzZ+OSxOBdhDhXo1q+6+eWTO3dXlSqNPHEsQdKTl
	hBiSFftoFuOKbzM8K3BRKHMK97SJtNh4nbbbWUBkAC4BUJcPsSMlUy5XmOGl12FRsdaB9AI
	Gct/77KVP3TeYW1axlXBnS36vGAdKqIEotxQ5VgFVldk53jMK3Ip2VikaGsKJCuwoD0KVUw
	SxNdOquqICamfRXvnEKgL+p4UeBZBnUkbEu9PW1GVLCGpQclkTAsIW4oo04Ipd9fCQDy9w/
	DGePVPbCAsPScgwp5+ZJ6XzepXy1AhtvtWYgWv7anazBvzdVRrGdQp7DeH9RHixTtzJEbO9
	GAn4tPqhaWBucvkMYbQVsCHj7PEZu2I3r3Ejc/LFPbYlBp3iSqPdL5uRAZJo+lJdf0MyXBf
	O68mZ1r+mILk0Ux/fAzaPLkuINkCWmb/
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0

Hi,

On 11/22/24 16:30, Chukun Pan wrote:
> Currently, the USB port via combophy on the RK3528/RK3588 SoC is broken.
> 
>    usb usb8-port1: Cannot enable. Maybe the USB cable is bad?
> 
> This is due to the combphy of RK3528/RK3588 SoC has multiple resets, but
> only "phy resets" need assert and deassert, "apb resets" don't need.
> So change the driver to only match the phy resets, which is also what
> the vendor kernel does.
> 
> Fixes: 7160820d742a ("phy: rockchip: add naneng combo phy for RK3568")
> Cc: FUKAUMI Naoki <naoki@radxa.com>
> Cc: Michael Zimmermann <sigmaepsilon92@gmail.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Tested-by: FUKAUMI Naoki <naoki@radxa.com>

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> ---
>   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index 0a9989e41237..2eb3329ca23f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -309,7 +309,7 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
>   
>   	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
>   
> -	priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
> +	priv->phy_rst = devm_reset_control_get(dev, "phy");
>   	if (IS_ERR(priv->phy_rst))
>   		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");
>   


