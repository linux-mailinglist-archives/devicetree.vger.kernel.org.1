Return-Path: <devicetree+bounces-117853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C8D9B81D6
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 18:56:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A7771F21062
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 17:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA4A1CDA3D;
	Thu, 31 Oct 2024 17:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCkAVbA+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0714C1CDA1E;
	Thu, 31 Oct 2024 17:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730397243; cv=none; b=ZrSjh69FiUVkqsVOsV1oOO/1ftbEIN6F+XWxzlJISLGGiRRzj03eV8wEC8hGuFwUL+VZ3M7jlKqeTNPGln+2jHM5LL2b5ajpLNVZO35qNKGS4oteHnB0V2MBB16S/uF8wEY1OpAdSJpz7D9jhM3zXoSh21om2qnT4wcs4xMbq7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730397243; c=relaxed/simple;
	bh=aF4gre+6dgImn05MINcOTau+YOz7WuqxGU4xUlWNtiU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=neqZ1xznLYUPD08ckRyUfw4pv+fFjx8SjUeTRe9XQPcDhoLZvOTxUOyJHZOlY15lvKvFN/kJM6TPVZ/1iaxeWxM9XLbT7572NcmBgtrJOhobyZEAViuvQXes7Dlw7UySjjMTZ0kjQ51Yyf6S6xoVD0k5UfONInvEBCGaMmD2hoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCkAVbA+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D1C3C4CED1;
	Thu, 31 Oct 2024 17:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730397242;
	bh=aF4gre+6dgImn05MINcOTau+YOz7WuqxGU4xUlWNtiU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XCkAVbA+4/bmL0+HMnwIdpFFtaVAc/X7VQ4kgf+Btc26mvYS/95gSL2D/cYjxDzSv
	 L5RMBs+TcDJzsgWWx/MmuYr+SfZenELMn98BvcFpzL6YZsA22nP8qeRnztVn4gUMiG
	 Y3SvBm72GzvrKVC4Oh7DsxUxa576Wm3GNvv7915MW4G1CBuDoU48QHZe2wT5i199pq
	 E4LCxNw0qEij/kLeLVakUN73ZsZZgPfB7133cLHBfrawALPT9BjJq+sIMi4j91K0ih
	 moCugVy/U49lD+1T4ghGow+w9hPY1OWdRfugu0z+M7cyiQphifObRQEILjTYlTuQNQ
	 zBJsaFgs4aIuA==
Message-ID: <92b8ed61-4e9d-461d-ab3b-19fbd9ef228e@kernel.org>
Date: Thu, 31 Oct 2024 18:53:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 14/16] net: stmmac: dwmac-s32: add basic NXP S32G/S32R
 glue driver
To: Jan Petrous <jan.petrous@oss.nxp.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Emil Renner Berthing <kernel@esmil.dk>,
 Minda Chen <minda.chen@starfivetech.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, NXP S32 Linux Team <s32@nxp.com>
References: <20241028-upstream_s32cc_gmac-v4-0-03618f10e3e2@oss.nxp.com>
 <20241028-upstream_s32cc_gmac-v4-14-03618f10e3e2@oss.nxp.com>
 <xanb4j56u2rjwpkyj5gwh6y6t36gpvawph62jw72ksh7jximhr@cjwlp7wsxgp6>
 <ZyOXgdqUgg2qlCah@lsv051416.swis.nl-cdc01.nxp.com>
 <b9aefcf2-8f0d-431c-865b-34c9b8e69c4d@kernel.org>
 <ZyO7fn3NWULA9bGG@lsv051416.swis.nl-cdc01.nxp.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <ZyO7fn3NWULA9bGG@lsv051416.swis.nl-cdc01.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/10/2024 18:16, Jan Petrous wrote:
> On Thu, Oct 31, 2024 at 04:44:45PM +0100, Krzysztof Kozlowski wrote:
>> On 31/10/2024 15:43, Jan Petrous wrote:
>>> On Tue, Oct 29, 2024 at 08:13:40AM +0100, Krzysztof Kozlowski wrote:
>>>> On Mon, Oct 28, 2024 at 09:24:56PM +0100, Jan Petrous (OSS) wrote:
>>>>> +	plat->init = s32_gmac_init;
>>>>> +	plat->exit = s32_gmac_exit;
>>>>> +	plat->fix_mac_speed = s32_fix_mac_speed;
>>>>> +
>>>>> +	plat->bsp_priv = gmac;
>>>>> +
>>>>> +	return stmmac_pltfr_probe(pdev, plat, &res);
>>>>> +}
>>>>> +
>>>>> +static const struct of_device_id s32_dwmac_match[] = {
>>>>> +	{ .compatible = "nxp,s32g2-dwmac" },
>>>>> +	{ .compatible = "nxp,s32g3-dwmac" },
>>>>> +	{ .compatible = "nxp,s32r-dwmac" },
>>>>
>>>> Why do you need three same entries?
>>>>
>>>
>>> We have three different SoCs and in v3 review you told me
>>> to return all back:
>>> https://patchwork.kernel.org/comment/26067257/
>>
>> It was about binding, not driver.
>>
>> I also asked there: use proper fallback and compatibility. Both comments
>> of course affect your driver, but why choosing only first part?
>>
> 
> Does it mean I should remove first two (G2/G3) members from match array
> and use "nxp,s32r-dwmac" as fallback for G2/G3? And similarly change
> the bindings to:
> 
>   compatible:
>     oneOf:
>       - const: nxp,s32r-dwmac
>       - items:
> 	  - enum:
> 	      - nxp,s32g2-dwmac
> 	      - nxp,s32g3-dwmac
>           - const: nxp,s32r-dwmac
> 
> And add here, into the driver, those members back when some device
> specific feature will be needed? Am I understand your hints right?

Yes, assuming devices are compatible, but so far driver suggested they are.

Best regards,
Krzysztof


