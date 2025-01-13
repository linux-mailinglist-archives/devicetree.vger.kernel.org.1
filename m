Return-Path: <devicetree+bounces-138045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B65BA0B8A5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:49:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FF4A3AA238
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50EF922A4FB;
	Mon, 13 Jan 2025 13:48:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8AD22AE42
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 13:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736776130; cv=none; b=Lrwt0M42HJpqAhu48DNdbJCO8+/IQq0qlXCdEwzFqHKEfA/ICqSP6wqNXPtIbiV5GtrmUA4vmK5i8yOw80r59VENPNuQPplnulMqJFikL4UY+YGw5lfLNOH6W++HnZ5HXQLLJfVMZug16hA9Z89an+Djkz42dhPlProMUVmG+kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736776130; c=relaxed/simple;
	bh=f1KUTv5GOu7bwyhcnGos55stJaX9VmTq9wlMzJFKcmM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X8YEB412O4AUc7nB/zrexR9b5U+9nYuLqNhM5KXbzy7OFOhgMGCgnlx+3glDPFZR1XrY+7A/CuewOcc4sftSZfOaOlz8vWtFYuixTLM5ZG34teBprBT8mPh4UBW4O2yhnHppLTwYHYYLJ37JjdrY/Ik84wmsn2EOJit4fFA3Sxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXKnz-0003hG-5W; Mon, 13 Jan 2025 14:48:35 +0100
Message-ID: <e2b29bf2-1751-4cf3-b1c1-a5ae7122945d@pengutronix.de>
Date: Mon, 13 Jan 2025 14:48:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] clk: imx8mp: inform CCF of maximum frequency of
 clocks
To: Stephen Boyd <sboyd@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Abel Vesa <abelvesa@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Marek Vasut <marex@denx.de>,
 Michael Turquette <mturquette@baylibre.com>, Peng Fan <peng.fan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250106-imx8m-clk-v2-0-6aaeadac65fe@pengutronix.de>
 <20250106-imx8m-clk-v2-6-6aaeadac65fe@pengutronix.de>
 <104eed995f349b123e633862f68de966.sboyd@kernel.org>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <104eed995f349b123e633862f68de966.sboyd@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hello Stephen,

On 07.01.25 00:42, Stephen Boyd wrote:
> Quoting Ahmad Fatoum (2025-01-06 06:21:47)
>> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
>> index 516dbd170c8a356f293621b371b9ef9b9bec90a4..3b06990b73adcb2e4807f91a8983ad35068572a7 100644
>> --- a/drivers/clk/imx/clk-imx8mp.c
>> +++ b/drivers/clk/imx/clk-imx8mp.c
>> @@ -405,6 +406,145 @@ static const char * const imx8mp_clkout_sels[] = {"audio_pll1_out", "audio_pll2_
>>  static struct clk_hw **hws;
>>  static struct clk_hw_onecell_data *clk_hw_data;
>>  
>> +struct imx8mp_clock_constraints {
>> +       int clkid;
> 
> Is it signed instead of unsigned because the terminal element of the
> array has -1 as a clkid? And because clkid 0 is a valid one?

I did use -1 originally, but then switched to zero as applying
constraints on IMX8MP_CLK_DUMMY doesn't make sense anyway.

> Please remove the comma because nothing can come after this and if
> someone were to add something after they would get a compilation error.

Commas removed and clkid made unsigned in v3.

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

