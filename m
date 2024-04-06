Return-Path: <devicetree+bounces-56810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7D289A88C
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 05:05:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 806981C20F8F
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 03:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F1D134A5;
	Sat,  6 Apr 2024 03:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="pX9xhHYP"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58E4210D
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 03:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712372736; cv=none; b=mgCIJ5LqPaKtjgBz4No0Hz8qO5ogidxU/9Bl6iqdb4h5ZvUU+EVberGvX8eNiuPzgWb00bgNMYtK9CTpQ0vmMftl0nw+qzpWTOtxTNqT5IMrd+1MMr3g8WHf3zPrInFZlPcAsZe5Gj02+qYdE2VWPhfObe8202k3D4o4/RacO5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712372736; c=relaxed/simple;
	bh=ZMIzrbbfNhT0+osKQbaDl6ZZ8FiZg74QjizS7mVXHE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=niKKf7W56mA0eWUxAr8ewfQHEWOVcs2jBB/2K5QVTvYknrHTOYE83GcxBeMOuGNjrurs8zGKqrh5SmzP7we5oUte6h6l0OCpCgai4osYhUk4AY5jlfPaxOkQSfB9xlJ/jLCRy2vGGwWixNL4beNwBRP0rJebSXGiV06vPpFjQzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=pX9xhHYP; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id ECF9688003;
	Sat,  6 Apr 2024 05:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1712372732;
	bh=ObJuP7iCEb29EVb5EPrgoeoAW4XgwKZjQyDe2HQIMaU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pX9xhHYPSyKZbjtaUSauvNytgw/Z39jmBw8hs+JHDnn9mu+u4Vgz4t1+q3sLQDwXa
	 UInw7crefLEYc1a0MnWaVeqGwNDHOGHFVWeShGRC+KgT9nj3h5ZP3mXVNdsUuYk4DZ
	 9FAyVXSIpxMmNYd5XbT2pHyMMWmjw1W03eLi4+z50diFoXPzfX66Gp5TsgHqLZ6+dW
	 TXMlUSeh1Ju5cf9M557K/w1ePu9wzJZRZD+gukAoE/7/P2uQ33c43CL7rzr8oSFp90
	 1IPKo8kVCty2TaTQ/zVy50vE4MVTmDwsrBRZdzqltX4KqfyPZ5prPbFfKKGQmz1GMf
	 FqIt4BdJa+yew==
Message-ID: <8c1935d1-7f59-4742-9659-bf87ac4b736c@denx.de>
Date: Sat, 6 Apr 2024 04:58:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: imx8mp: Align both CSI2 pixel clock
To: Adam Ford <aford173@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
 imx@lists.linux.dev
References: <20240405202243.46278-1-marex@denx.de>
 <20240405204251.GE12507@pendragon.ideasonboard.com>
 <CAHCN7xKX7v4tmhjvoPLirEoUG91jpu-8R2DV9eE=mnWt=3FffA@mail.gmail.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <CAHCN7xKX7v4tmhjvoPLirEoUG91jpu-8R2DV9eE=mnWt=3FffA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 4/5/24 11:04 PM, Adam Ford wrote:
> On Fri, Apr 5, 2024 at 3:43 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
>>
>> Hi Marek,
>>
>> (CC'ing Adam)
>>
>> Thank you for the patch.
>>
>> On Fri, Apr 05, 2024 at 10:22:26PM +0200, Marek Vasut wrote:
>>> Configure both CSI2 assigned-clock-rates the same way.
>>> There does not seem to be any reason for keeping the
>>> two CSI2 pixel clock set to different frequencies.
>>
>> There's an issue when using two cameras concurrently. This has been
>> discussed some time ago on the linux-media mailing list, see [1]. Adam
>> knows more than I do on this topic.
>>
>> [1] https://lore.kernel.org/linux-media/CAHCN7x+kymRGO2kxvN2=zLiqRjfTc3hdf3VdNVkWjsW3La0bnA@mail.gmail.com/
>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Fabio Estevam <festevam@gmail.com>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> Cc: Paul Elder <paul.elder@ideasonboard.com>
>>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>>> Cc: Rob Herring <robh@kernel.org>
>>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>>> Cc: Shawn Guo <shawnguo@kernel.org>
>>> Cc: devicetree@vger.kernel.org
>>> Cc: imx@lists.linux.dev
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> ---
>>>   arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>>> index 1bb96e96639f2..2e9ce0c3a9815 100644
>>> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>>> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>>> @@ -1703,7 +1703,7 @@ mipi_csi_1: csi@32e50000 {
>>>                                                  <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF>;
>>>                                assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
>>>                                                         <&clk IMX8MP_CLK_24M>;
>>> -                             assigned-clock-rates = <266000000>;
>>> +                             assigned-clock-rates = <500000000>;
> 
> I am traveling, so I don't have the technical documents in front of
> me, but I beleive this is an over-drive speed, and 400MHz would be the
> single clock, standard rate.  I created an imx8mm-overdrive and
> imx8mn-overdrive dtsi file to let users who operate in overdrive mode
> to update their clocks in one place.
> 
> I also think this goes down if the user is running two cameras instead
> of one.  I re-read the old thread, and it's coming back to me, but
> until I can get settled into my hotel in Germany, I won't have time to
> review.  I think the original idea was to use the lowest, conservative
> value with the idea that people can tweak their clock settings if
> they're only running one and if they are running in over-drive mode.

MX8MPCEC does indeed read 400 MHz regular, 500 MHz overdrive.

Shall we align both CSI2 ports to 400 MHz ? Currently they are one 500 
MHz and the other 266 MHz .

