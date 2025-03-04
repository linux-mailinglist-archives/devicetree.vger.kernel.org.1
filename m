Return-Path: <devicetree+bounces-153636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9ADA4D576
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF289188D46F
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 07:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95CFC1F8731;
	Tue,  4 Mar 2025 07:56:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC101C84C9
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 07:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741074997; cv=none; b=q/+7oten+cSRMmF/6pmCqMBB/46sQ1K2OcBzj64Nh0HK9hN55m/ibalxL3kKWuqOM6j2e3Ob7COw/pWr/rMcdowDCPChzkJsdAtq4zVJ/Z7LPYuOcNs7cdgSsKQiA+czqerafQrfHA1ZcDzhT9lQByxJszD3iGISkkuD4ZB6q0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741074997; c=relaxed/simple;
	bh=VMRBgjIDZdW/DUx7Nvq3Qj0k9aCWgrwl34GD0mz0AqI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bDcTr379MxYkpGeOGcVuUyB4/7OvC/KiRlJQ/5rL7HuOaQgl6L+4ZeFiZ/I2pHFAM8S7pAPA0JKcyxjvUwv2ZqKsgvLdt6KP34tfE9S4xdF1w6x5th+smqEI6kUQD8I7xNgXSCnsFYwph5wXdqYPoB0vTG3X4IBWo5AHu2hUK+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tpN8b-0003qJ-4c; Tue, 04 Mar 2025 08:56:25 +0100
Message-ID: <4175faf6-1d41-4409-89db-dd902c966dd5@pengutronix.de>
Date: Tue, 4 Mar 2025 08:56:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] arm64: dts: freescale: imx8mp-skov: switch to
 nominal drive mode
To: Abel Vesa <abel.vesa@linaro.org>, Abel Vesa <abelvesa@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Peng Fan <peng.fan@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Frank Li <Frank.li@nxp.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Marek Vasut <marex@denx.de>
References: <20250218-imx8m-clk-v4-0-b7697dc2dcd0@pengutronix.de>
 <174102306220.2928950.8878245519332562153.b4-ty@linaro.org>
 <Z8XnuIIfDFykrKH8@linaro.org>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z8XnuIIfDFykrKH8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Abel,
Hello Shawn,

On 03.03.25 18:32, Abel Vesa wrote:
> On 25-03-03 19:31:02, Abel Vesa wrote:
>>
>> On Tue, 18 Feb 2025 19:26:40 +0100, Ahmad Fatoum wrote:
>>> Unlike the i.MX8MM and i.MX8MN SoCs added earlier, the imx8mp.dtsi
>>> configures some clocks at frequencies that are only validated for
>>> overdrive mode, i.e., when VDD_SOC is 950 mV.
>>>
>>> For the Skov i.MX8MP board, we want to run the SoC at the lower voltage of
>>> 850 mV though to reduce heat generation and power usage. For this to work,
>>> clock rates need to adhere to the limits of the nominal drive mode.
>>>
>>> [...]
>>
>> Applied, thanks!
>>
>> [1/6] dt-bindings: clock: imx8m: document nominal/overdrive properties
>>       commit: d5992f1af1550a9e11e42cfa2ca1ad2a1b7fd7f3
>> [2/6] arm64: dts: imx8mp: Add optional nominal drive mode DTSI
>>       (no commit info)
>> [3/6] arm64: dts: imx8mp: add fsl,nominal-mode property into nominal.dtsi
>>       (no commit info)
>> [4/6] arm64: dts: freescale: imx8mp-skov: configure LDB clock automatically
>>       (no commit info)
>> [5/6] arm64: dts: freescale: imx8mp-skov: operate SoC in nominal mode
>>       (no commit info)
>> [6/6] clk: imx8mp: inform CCF of maximum frequency of clocks
>>       commit: 06a61b5cb6a8638fa8823cd09b17233b29696fa2
> 
> Applied only patches 1 and 6.
> 
> My b4 setup messed up. Sorry.

Thanks for applying, Abel!

@Shawn, could the remainder of the patches go through your tree?

Thanks!
Ahmad

> 
>>
>> Best regards,
>> -- 
>> Abel Vesa <abel.vesa@linaro.org>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

