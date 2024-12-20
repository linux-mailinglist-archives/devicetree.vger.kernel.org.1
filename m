Return-Path: <devicetree+bounces-132943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1989F8CAF
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 07:27:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BBF61897966
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 06:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53F6F19ADA2;
	Fri, 20 Dec 2024 06:21:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD4C17C9F1
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734675717; cv=none; b=XT4crgixBZBriHRb9CW13mdgbxhT48s3WU1JvalYrfXO1S9EJ9/iD+zjsgdgmMyCHNd6GhcMWv1MROEJzWaZfM8o17K8s0BZO186sEPcUjxFuOYYsFU3Ht93dAf164oIgU/V74rtOFvt8G2Dgkn87V+LXHu31HuM238ye+B91IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734675717; c=relaxed/simple;
	bh=pj7C+/bZ4z34+CzJxnGcye+wRavGrcAeTEJD2XDARlE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gM6EyR4m94PnEGLRTws19qJoY4dXt09vC2NnubH5Kgkgb8MZI7ZULh3BtPwBSKGNGbDHr8yqQMWnZHUH9ci+yUwpMM+int3mL0mo93fZtnubyAVva3HIeqoqxCg/RMZ+Nb4OtO0TrmulTxlO3bwJ17+tbU7tQ3hef6MsWgZlFpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOWOI-0001i8-15; Fri, 20 Dec 2024 07:21:38 +0100
Message-ID: <44278a64-7578-4109-aef3-4888627166d1@pengutronix.de>
Date: Fri, 20 Dec 2024 07:21:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] arm64: dts: freescale: imx8mp-skov: switch to nominal
 drive mode
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Abel Vesa <abel.vesa@linaro.org>,
 Marek Vasut <marex@denx.de>, linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241219-imx8m-clk-v1-0-cfaffa087da6@pengutronix.de>
 <20241220061613.GB8295@localhost.localdomain>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241220061613.GB8295@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Peng,

On 20.12.24 07:16, Peng Fan wrote:
> On Thu, Dec 19, 2024 at 08:27:31AM +0100, Ahmad Fatoum wrote:
>> Unlike the i.MX8MM and i.MX8MN SoCs added earlier, the imx8mp.dtsi
>> configures some clocks at frequencies that are only validated for
>> overdrive mode, i.e., when VDD_SOC is 950 mV.
>>
>> For the Skov i.MX8MP board, we want to run the SoC at the lower voltage of
>> 850 mV though to reduce heat generation and power usage. For this to work,
>> clock rates need to adhere to the limits of the nominal drive mode.
>>
>> This is done by this series: A new imx8mp-nominal.dtsi reconfigures
>> the imx8mp.dtsi clock tree to be compatible with nominal mode, an adaptation
>> to the Linux clock driver makes it sanity check the actual clock rates against
>> the SoC operating mode's constraints and finally the Skov DT makes use
>> of it.
>>
>> Actual configuration of the VDD_SOC rail continues to happen prior to Linux
>> as well as PLL configuration that needs to happen earlier than the kernel
>> running. See the corresponding barebox patch series[1] for details.
>> Note that the barebox series didn't yet include VDD_SOC reconfiguration
>> to 850mV, that would follow once the kernel changes have been merged.
> 
> Good to see this. I had same plan to support i.MX9.
> 
> I see you introduce a new property, how about using a boot pararmeter,
> saying "mode=nominal" or "mode=overdrive". Then drivers could
> act accordingly.

I assume you would place that parameter in drivers/soc/imx/soc-imx8m.c?

That's certainly possible as well, but I think for such a hardware property,
the device tree is the natural place.

Thanks,
Ahmad

> 
> Regards,
> Peng
> 
>>
>> [1]: https://lore.kernel.org/barebox/20240503103717.1370636-1-a.fatoum@pengutronix.de/
>>
>> ---
>> Ahmad Fatoum (6):
>>      dt-bindings: clock: imx8m: document nominal/overdrive properties
>>      arm64: dts: imx8mp: Add optional nominal drive mode DTSI
>>      arm64: dts: imx8mp: add fsl,nominal-mode property into nominal.dtsi
>>      arm64: dts: freescale: imx8mp-skov: fix LDB clock rate configuration
>>      arm64: dts: freescale: imx8mp-skov: operate SoC in nominal mode
>>      clk: imx8mp: inform CCF of maximum frequency of clocks
>>
>> .../devicetree/bindings/clock/imx8m-clock.yaml     |  14 ++
>> arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi  |  64 +++++++++
>> .../arm64/boot/dts/freescale/imx8mp-skov-reva.dtsi |   5 +-
>> .../freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts  |  19 +--
>> drivers/clk/imx/clk-imx8mp.c                       | 147 +++++++++++++++++++++
>> 5 files changed, 233 insertions(+), 16 deletions(-)
>> ---
>> base-commit: 78d4f34e2115b517bcbfe7ec0d018bbbb6f9b0b8
>> change-id: 20241217-imx8m-clk-9467763dfcd8
>>
>> Best regards,
>> -- 
>> Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

