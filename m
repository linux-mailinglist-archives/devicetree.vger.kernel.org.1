Return-Path: <devicetree+bounces-132799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 732689F8263
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:49:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 890D5167F58
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFD151A08C4;
	Thu, 19 Dec 2024 17:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB56119E7F7
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 17:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734630247; cv=none; b=sE1iUpccQceis6e1z4c2n5+etbURoB3+yACgPO9KQlUxL8usUqADHRC4Y2poXS2eDrHz5NnAfri2BmpWF/sHtx+tSwfEAs44RQ52wDNY9OnmlqTnEZ5qhBEdhybX8+4XU2HmIe2mjgOXi6dUrsMrONyf9Wpvnzd5IbwJgP7w86A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734630247; c=relaxed/simple;
	bh=ywFGdUPE/ErvhDSzL79KtYLPtpmEObcvfdwacxeHUa0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mNYcbCWJemuGu5rt6haVRhyKZ/fTXrD77V6MUsXCFrgt/Ghgoc0YWa16pfY9D03hZ5RNnPs93QNV7DR0jL9PfKGQB2FNuZMKOOom+9tzDrs8+HPvD7XFxyDl4/QmuHNDmFT98+0N6sA9y8WxWCPlB6G9qXJFmKUkBAhjG6+/fVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOKZ3-0001dj-JS; Thu, 19 Dec 2024 18:43:57 +0100
Message-ID: <a30baba6-6252-4c69-b6a7-e4099e823920@pengutronix.de>
Date: Thu, 19 Dec 2024 18:43:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] arm64: dts: imx8mp-skov: use I2C5 for DDC
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Oleksij Rempel
 <o.rempel@pengutronix.de>, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241219-skov-dt-updates-v1-0-38bf80dc22df@pengutronix.de>
 <20241219-skov-dt-updates-v1-3-38bf80dc22df@pengutronix.de>
 <Z2RZG7pAElG3TGLx@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z2RZG7pAElG3TGLx@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Frank,

On 19.12.24 18:34, Frank Li wrote:
> On Thu, Dec 19, 2024 at 08:25:27AM +0100, Ahmad Fatoum wrote:
>> The HDMI DDC pads can be muxed either to an i.MX I2C controller or
>> to a limited I2C controller within the Designware HDMI bridge.
>>
>> So far we muxed the pads to the HDMI bridge, but the i.MX I2C controller
>> is the better choice:
> 
> Switch to the i.MX I2C controller because
> 
>>
>>   - We use DDC/CI commands for display brightness configuration, but the
>>     Linux driver refuses[1] transfers to/from address 0x37, because the
>>     controller doesn't support multi-byte requests.
> 
>       Designware HDMI Limited I2C controller doesn't support multi-byte
> requests and display brightness configuration by DDC/CI command need it.
> 
>>
>>   - The driver doesn't support I2C bus recovery, but we need that,
>>     because some HDMI panels used with the board can be flaky.
> 
>       Designware HDMI Limited I2C controller doesn't support I2C bus
> recovery.
> 
>>
>> As the i.MX I2C controller doesn't have either of these limitations,
>> let's make use of it instead.
> 
> Reduntant. can be removed.

Sorry, I am very much open to review feedback, but I fail to see how
your subjective take improves things.

Thanks,
Ahmad




> 
> Frank
>>
>> [1]: https://lore.kernel.org/all/20190722181945.244395-1-mka@chromium.org/
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  .../boot/dts/freescale/imx8mp-skov-revb-hdmi.dts   | 26 ++++++++++++++++++++--
>>  1 file changed, 24 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
>> index c1ca69da3cb8..206116be8166 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
>> @@ -9,12 +9,34 @@ / {
>>  	compatible = "skov,imx8mp-skov-revb-hdmi", "fsl,imx8mp";
>>  };
>>
>> +&i2c5 {
>> +	pinctrl-names = "default", "gpio";
>> +	pinctrl-0 = <&pinctrl_i2c5>;
>> +	pinctrl-1 = <&pinctrl_i2c5_gpio>;
>> +	scl-gpios = <&gpio3 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>> +	sda-gpios = <&gpio3 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>> +	clock-frequency = <100000>;
>> +	status = "okay";
>> +};
>> +
>>  &iomuxc {
>>  	pinctrl_hdmi: hdmigrp {
>>  		fsl,pins = <
>> -			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL		0x1c3
>> -			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA		0x1c3
>>  			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD			0x19
>>  		>;
>>  	};
>> +
>> +	pinctrl_i2c5: i2c5grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_HDMI_DDC_SCL__I2C5_SCL			0x400001c2
>> +			MX8MP_IOMUXC_HDMI_DDC_SDA__I2C5_SDA			0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_i2c5_gpio: i2c5gpiogrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_HDMI_DDC_SCL__GPIO3_IO26			0x400001c2
>> +			MX8MP_IOMUXC_HDMI_DDC_SDA__GPIO3_IO27			0x400001c2
>> +		>;
>> +	};
>>  };
>>
>> --
>> 2.39.5
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

