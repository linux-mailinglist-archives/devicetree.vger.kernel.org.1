Return-Path: <devicetree+bounces-48149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1967A870647
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 16:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B56A1C20F6F
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 15:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC0847A7A;
	Mon,  4 Mar 2024 15:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="TKHV+z4V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1459F47A6F
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 15:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709567839; cv=none; b=J7IIpzu1TkfcH3nTGjQChZRnv7FqrSTAkfVCY68tuWzzaUHKbyGgS5pg/bLinqKSv7KC8otbuLBDC+dJ4yTxQpw0BquDbqRVtLm8NrqeRWmCHLos64lng+wBX6FV8EOpv+zt+MaOs0DXqEwkfQ2zAyeNJCDndiGB+3ba0XfDqbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709567839; c=relaxed/simple;
	bh=3uiNv9ydwgHLi16FSseVlSJU+yzC5VFMs9N/VOJowVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OHsfhLLmXDSPsK4pHhXcjEyulu4khjiKlHL4wiAMvFQhPZKYK34gS9Svxh9HIk4PiZVZ8d57UVUD7t600K433ZhjrOqitKexyFP95bghp0JA/UzbwohTAtqOBkhe+CNqk2hoCq56t2OeYdIKRw9G7z2nCHPaq259qOTWoqtEFbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=TKHV+z4V; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1709567832;
 bh=DYt9Z6kME8EkWcT7aYYgxfnsq86RUO2k9vbT42RkZcQ=;
 b=TKHV+z4VRPP7Vqg2/EODb354jiJrI8jxFbjkdEO2RJE9fTX5sgC83HMM2+iPZ0IXFlff+6etC
 MkhHPWnC1eN0luhX/+HNWNa0heu9NuZTRsqAeR1tivERz3mJHTwjtjaijEWThZhYU6Trg14cMTI
 TGiEsQxgWPWg3FV01JLcUiyt2bfcqIQ33wJhb08erOr5BXaePHE8d4ENhGpM5QFqEQju8h9ptaC
 m17Ris8sbYtXlg4JNjqd6Rxd5ytBbCAT9qoqIqDVwa4MBplWu4ZiwTY20mYJrNArWvcgr7FT76p
 eG9jVm7Hpb3rtbZ9OjydMQsCeBGPrIJLr6+9FAfx+fYw==
Message-ID: <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se>
Date: Mon, 4 Mar 2024 16:46:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
Content-Language: en-US
To: Diederik de Haas <didi.debian@cknow.org>, "Chen-Yu Tsai"
 <wens@kernel.org>
Cc: linux-rockchip@lists.infradead.org, "=?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?="
 <ukleinek@debian.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
 <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch> <27139798.WhXITi6ROJ@bagend>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <27139798.WhXITi6ROJ@bagend>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 65e5ecf8971ed9328ca4cfe3

On 2024-03-04 16:32, Diederik de Haas wrote:
> On Monday, 4 March 2024 14:09:15 CET Andrew Lunn wrote:
>>>> Andrew already pointed out when I posted the patch introducing the gmac0
>>>> node that rgmii-id would be the preferred way to setup things. Back
>>>> then this didn't happen because this change broke reception of network
>>>> packets. However this only happend because I didn't have the right phy
>>>> driver loaded.
>>>
>>> It could be that the PHY is strapped to not use its internal RX delay.
>>> And the PHY has some weird default TX delay, so having the driver
>>> put some sensible values in is probably better.
>>
>> It could also be the bootloader putting odd values into the PHY.
>>
>> Anyway, it will work better with the correct PHY, and enable WoL
>> support.
> 
> Not sure if this is the right place or way, but here we go...
> 
> A few days ago on #debian-kernel@OFTC:
> [28.02 16:35] <ukleinek> u-boot should be out of the game
> [28.02 16:36] <diederik> I'm not so sure anymore. On Quartz64 Model A and B 
> (rk3566) I had massive packet loss and tracked it down to a change in u-boot
> [28.02 16:37] <ukleinek> diederik: sounds like the Linux network driver on 
> that machine could do something better
> [28.02 16:38] <diederik> yeah, probably
> 
> I reported this about a month ago to Jonas Karlman as I bisected the problem 
> to a change in u-boot:
> 
>> diederik@bagend:~/dev/u-boot/u-boot$ git bisect bad
>> 25f56459aebced8e4bb7d01061dcb1b765b197e2 is the first bad commit
>> commit 25f56459aebced8e4bb7d01061dcb1b765b197e2
>> Author: Jonas Karlman <jonas@kwiboo.se>
>> Date:   Sun Oct 1 19:17:21 2023 +0000
>>
>>     configs: rockchip: Enable ethernet driver on RK356x boards
>>     
>>     Enable DWC_ETH_QOS_ROCKCHIP and related PHY driver on RK356x boards that
>>     have an enabled gmac node.
> 
> I just checked and both Quartz64 Model A and B have `phy-mode = "rgmii";` and 
> set `tx_delay` and `rx_delay` to some (other) values.
> Without knowing nor understanding the details, this seem very much related?

Sorry for not getting back to you sooner, but yes I would check with
phy-mode = "rgmii-id". There is also a possible issue with rk gmac
driver in both U-Boot and linux, it always set enable tx/rx delay bit.

Please, try with following in U-Boot:

diff --git a/drivers/net/dwc_eth_qos_rockchip.c b/drivers/net/dwc_eth_qos_rockchip.c
index fa9e513faea3..e5c320c36741 100644
--- a/drivers/net/dwc_eth_qos_rockchip.c
+++ b/drivers/net/dwc_eth_qos_rockchip.c
@@ -73,7 +73,7 @@ static int rk3568_set_to_rgmii(struct udevice *dev,
 {
 	struct eth_pdata *pdata = dev_get_plat(dev);
 	struct rockchip_platform_data *data = pdata->priv_pdata;
-	u32 con0, con1;
+	u32 con0, con1, val;
 
 	con0 = (data->id == 1) ? RK3568_GRF_GMAC1_CON0 :
 				 RK3568_GRF_GMAC0_CON0;
@@ -84,10 +84,12 @@ static int rk3568_set_to_rgmii(struct udevice *dev,
 		     RK3568_GMAC_CLK_RX_DL_CFG(rx_delay) |
 		     RK3568_GMAC_CLK_TX_DL_CFG(tx_delay));
 
-	regmap_write(data->grf, con1,
-		     RK3568_GMAC_PHY_INTF_SEL_RGMII |
-		     RK3568_GMAC_RXCLK_DLY_ENABLE |
-		     RK3568_GMAC_TXCLK_DLY_ENABLE);
+	val = RK3568_GMAC_PHY_INTF_SEL_RGMII;
+	if (rx_delay > 0)
+		val |= RK3568_GMAC_RXCLK_DLY_ENABLE;
+	if (tx_delay > 0)
+		val |= RK3568_GMAC_TXCLK_DLY_ENABLE;
+	regmap_write(data->grf, con1, val);
 
 	return 0;
 }


Also check with the series "phy: rockchip-inno-usb2: Write to correct
GRF" [1]. Trying to configure bits intended for USBGRF in GRF is
probably not that good :-)

[1] https://patchwork.ozlabs.org/cover/1903987/

Regards,
Jonas

> 
> Cheers,
>   Diederik


