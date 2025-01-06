Return-Path: <devicetree+bounces-135872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E315A02ACD
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46AC61882293
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 15:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CD11ADFE3;
	Mon,  6 Jan 2025 15:37:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F166414D28C
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 15:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736177823; cv=none; b=vGqi9ScY/qsnF6mkOwvAcctx7L6CNcKjWJq0515jJhhe0n+S8fsDp8mZd0RQ4blNVvpF9ukgB8e3e5Hu1YrVPs8HeUkRh+61eGwbA5D+hUeCBUWz7287G7ipwPI+hRasay5VvMzKXbFj9CJMhoE4OzVjqXSEs9HD93hTfxOrxjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736177823; c=relaxed/simple;
	bh=y3313PA1GgHj2hbSKN+QamgqjBYo8A+vklwM3sm0+yE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f6CC0J7ixFaZN1vcg2nEaBriIF7HU6csD16HJCHRpa75w/Euyf2j5pz6FiNXsXZV615fEabAE2hB4BvEFzMVHKwKglrf2oSwax52U0fIroM+0OO8csvZJDN7TVERecpD4b1nHH+tuyaDCOhZvugm5ux3xKQYpIz9c8ieeUN1V7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUp9w-00031f-TD; Mon, 06 Jan 2025 16:36:52 +0100
Message-ID: <c0068bd7-a49a-49b0-889f-a864dd9170a8@pengutronix.de>
Date: Mon, 6 Jan 2025 16:36:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/10] arm64: dts: imx8mp-skov: describe LVDS display
 pipeline
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Oleksij Rempel
 <o.rempel@pengutronix.de>, devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241219-skov-dt-updates-v1-0-38bf80dc22df@pengutronix.de>
 <20241219-skov-dt-updates-v1-6-38bf80dc22df@pengutronix.de>
 <Z2RZ1o6AWGRe0ww9@lizhi-Precision-Tower-5810>
 <1b5236db-9a2c-475c-825c-3feae22ea32e@pengutronix.de>
 <Z2RzA5S/ch1YDdUD@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z2RzA5S/ch1YDdUD@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Frank,

On 19.12.24 20:24, Frank Li wrote:
> On Thu, Dec 19, 2024 at 06:45:24PM +0100, Ahmad Fatoum wrote:
>> On 19.12.24 18:37, Frank Li wrote:
>>> On Thu, Dec 19, 2024 at 08:25:30AM +0100, Ahmad Fatoum wrote:
>>>> From: Oleksij Rempel <o.rempel@pengutronix.de>
>>>>
>>>> The Skov i.MX8MP LT6 device tree so far described the touch screen, but
>>>> didn't describe the screen itself. Fill out these missing pieces.
>>>
>>> Add "ti,sn65lvds822" touch screen description for i.MX8MP LT6 board.
>>
>> This is not what this patch does. Touch screen was already described
>> and now the remainder is being added, just like what my message said.
> 
> My main means, use below order to descript commit message
> 
> Add ... for ...

Sorry, I won't start every sentence with a verb. The commit message
is fine IMO.

Thanks,
Ahmad

> 
> Frank
> 
>>
>> Thanks,
>> Ahmad
>>
>>>
>>> Frank
>>>
>>>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> ---
>>>>  .../boot/dts/freescale/imx8mp-skov-revb-lt6.dts    | 60 ++++++++++++++++++++++
>>>>  1 file changed, 60 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
>>>> index ccbd3abedd69..baecf768a2ee 100644
>>>> --- a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
>>>> +++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-lt6.dts
>>>> @@ -8,6 +8,45 @@ / {
>>>>  	model = "SKOV IMX8MP CPU revB - LT6";
>>>>  	compatible = "skov,imx8mp-skov-revb-lt6", "fsl,imx8mp";
>>>>
>>>> +	lvds-decoder {
>>>> +		compatible = "ti,sn65lvds822", "lvds-decoder";
>>>> +		power-supply = <&reg_3v3>;
>>>> +
>>>> +		ports {
>>>> +			#address-cells = <1>;
>>>> +			#size-cells = <0>;
>>>> +
>>>> +			port@0 {
>>>> +				reg = <0>;
>>>> +
>>>> +				in_lvds1: endpoint {
>>>> +					data-mapping = "vesa-24";
>>>> +					remote-endpoint = <&ldb_lvds_ch1>;
>>>> +				};
>>>> +			};
>>>> +
>>>> +			port@1 {
>>>> +				reg = <1>;
>>>> +
>>>> +				lvds_decoder_out: endpoint {
>>>> +					remote-endpoint = <&panel_in>;
>>>> +				};
>>>> +			};
>>>> +		};
>>>> +	};
>>>> +
>>>> +	panel {
>>>> +		compatible = "logictechno,lttd800480070-l6wh-rt";
>>>> +		backlight = <&backlight>;
>>>> +		power-supply = <&reg_tft_vcom>;
>>>> +
>>>> +		port {
>>>> +			panel_in: endpoint {
>>>> +				remote-endpoint = <&lvds_decoder_out>;
>>>> +			};
>>>> +		};
>>>> +	};
>>>> +
>>>>  	touchscreen {
>>>>  		compatible = "resistive-adc-touch";
>>>>  		io-channels = <&adc_ts 1>, <&adc_ts 3>, <&adc_ts 4>, <&adc_ts 5>;
>>>> @@ -78,6 +117,27 @@ channel@5 {
>>>>  	};
>>>>  };
>>>>
>>>> +&lcdif2 {
>>>> +	status = "okay";
>>>> +};
>>>> +
>>>> +&lvds_bridge {
>>>> +	assigned-clocks = <&clk IMX8MP_CLK_MEDIA_LDB>,
>>>> +				 <&clk IMX8MP_VIDEO_PLL1>;
>>>> +	assigned-clock-parents = <&clk IMX8MP_VIDEO_PLL1_OUT>;
>>>> +	/* IMX8MP_VIDEO_PLL1 = IMX8MP_CLK_MEDIA_DISP2_PIX * 2 * 7 */
>>>> +	assigned-clock-rates = <0>, <462000000>;
>>>> +	status = "okay";
>>>> +
>>>> +	ports {
>>>> +		port@2 {
>>>> +			ldb_lvds_ch1: endpoint {
>>>> +				remote-endpoint = <&in_lvds1>;
>>>> +			};
>>>> +		};
>>>> +	};
>>>> +};
>>>> +
>>>>  &pwm1 {
>>>>  	status = "okay";
>>>>  };
>>>>
>>>> --
>>>> 2.39.5
>>>>
>>>
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

