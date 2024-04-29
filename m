Return-Path: <devicetree+bounces-63671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAC28B5D4B
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 17:20:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB303280CD4
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BD3282D7C;
	Mon, 29 Apr 2024 15:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="T2TZN44a"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8499E82D9C
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714403545; cv=none; b=P9JKreThNl41gXak8BPMNKw1wxaLl0SwBLPwAS2qMT/zt6ysMJ2jMy1bi8ktXRSQp4mzHkTq1e2uY4WwCPjJgi7BaEKflIQE1ZGX8Fhs32pQ9IpXiaW55xDqgcbKvNBiI/Nr7c+AOELQ2YMOVxSgFuFm10XtxHEXWeCHWBtFAnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714403545; c=relaxed/simple;
	bh=6J99eYs5Q36asxRcW9qJBsaLn6tbjFvmyA9sMEH9WHo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q5vEktCWsiCqKA0jQbS5o5IkGr2YIwo84xpDedRBqhmqkJAkO/F2UMnD6uHc8XSvm2X5e4P+c+RIzHaIbgbhDILkjy+HcpSWQuZLQiLMFJOHF1Hp9gonw4NexXL1b+BzPL98idVzqWg8v5mk679MTGuCnjzNxwdtb1z5ueYZtAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=T2TZN44a; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 7AE5B881BF;
	Mon, 29 Apr 2024 17:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1714403541;
	bh=2p5nwdEe+2tN0rGqm1WvT4Hwj3ZaZuiD6Z+esDiHF+M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=T2TZN44aGVZoh5SB5DfU4BXFuTS//WbtfLu99Hrs+8JiTvemwI0DllJmre5L0NlFE
	 twBYOJeudC8fJ2CRKDlR11qI4TJnmEiBIJMvy6kk9Z7wpaYfQZrkIB5fXeUp+84Npa
	 vj6ARnDb42+Ub4z18jmAJhrkm+5lPNmYOrf0keBquOw99LVSqVEA1YEKNsiq/Xp9ao
	 PgHopTfenSmCPZg5pMZLaGD+CnqNTdaB/R9xEC/yMnbEsbfjEdfaTDALdFB3nigVrU
	 fz6pSJSjhwwvKsbyuSBSa8pTgfpqRPxo94FvaxMfz7Uzv8tTjpS1xgfhDC+rsXk7OW
	 oaulDmE+JIicA==
Message-ID: <ec449ed4-53a9-4fb3-b994-d2079402a26d@denx.de>
Date: Mon, 29 Apr 2024 17:12:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: stm32: Add compatible string for
 DH electronics STM32MP13xx DHCOR DHSBC board
To: Rob Herring <robh@kernel.org>
Cc: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andre Przywara <andre.przywara@arm.com>, kernel@dh-electronics.com,
 Dario Binacchi <dario.binacchi@amarulasolutions.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Sean Nyekjaer <sean@geanix.com>,
 linux-stm32@st-md-mailman.stormreply.com
References: <20240427221048.65392-1-marex@denx.de>
 <171440141047.1676474.1900576669579352447.robh@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <171440141047.1676474.1900576669579352447.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 4/29/24 4:41 PM, Rob Herring wrote:

> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>    pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y st/stm32mp135f-dhcor-dhsbc.dtb' for 20240427221048.65392-1-marex@denx.de:
> 
> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/serial@40018000/bluetooth: failed to match any schema with compatible: ['infineon,cyw43439-bt', 'brcm,bcm4329-bt']

This should be addressed in

[PATCH v2] dt-bindings: net: broadcom-bluetooth: Add CYW43439 DT binding

It is already AB'd by Krzysztof, I just pinged that patch to figure out 
what's blocking it.

> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/sai@4400a000/audio-controller@4400a004: failed to match any schema with compatible: ['st,stm32-sai-sub-a']
> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/sai@4400a000/audio-controller@4400a024: failed to match any schema with compatible: ['st,stm32-sai-sub-b']
> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/sai@4400b000/audio-controller@4400b004: failed to match any schema with compatible: ['st,stm32-sai-sub-a']
> arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/sai@4400b000/audio-controller@4400b024: failed to match any schema with compatible: ['st,stm32-sai-sub-b']

This comes from arch/arm/boot/dts/st/stm32mp131.dtsi , i.e. unrelated to 
this patch. But there is a schema for this in 
Documentation/devicetree/bindings/sound/st,stm32-sai.yaml in todays' next .

