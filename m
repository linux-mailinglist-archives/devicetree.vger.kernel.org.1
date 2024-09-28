Return-Path: <devicetree+bounces-106033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E92988F1F
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 14:13:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2F8F281E95
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 12:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6118618756A;
	Sat, 28 Sep 2024 12:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekHkL3Wv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4B186E32;
	Sat, 28 Sep 2024 12:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727525603; cv=none; b=pOz8kHSgPK/t+1wh74OmOAMPUa4oA9wUtfgSV3tu8+Dmt5spWg3CD1HqqQbs649crmjiX6ABvHlWFtMu4XZraeKqbmTCntPtgf80CPPINa7b/oGUq8gcZ01+9gDkoGE51n5SgM/dSLz59makLNRPAwv3N5J33LQXcUVribgRt0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727525603; c=relaxed/simple;
	bh=HdhiJ2c51QDa2RHjBSfRR/SdBFFKNbXSUVDqJ2cSA3k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rSERRVkb8+I8dbLlK/rff7tS85Va7nCx8jNB5EWLvWQ9FUBQUDGmWLmt/J9AxfJNseGwVj/PgDZXQYXXIuwlMUmM7L450k6rUqGtW5VuYU0rWsJdceJVchV4X5H+Fz6I6sgy6aMqqQTFzGNuNo+w6daFhvho2Z0+0IH29nMO7mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekHkL3Wv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28043C4CEC3;
	Sat, 28 Sep 2024 12:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727525602;
	bh=HdhiJ2c51QDa2RHjBSfRR/SdBFFKNbXSUVDqJ2cSA3k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ekHkL3WvGTRyiLwwheRnYmrierRUnZDNJRStXCLOIg10iOB/QCZl3uKElAqgHj0Z2
	 kbv4KH/pHMZnlGmPxUTgCpg0zfwqMm7Tc3hqwu+RWCMWOazic2q6SP34vecxmpA0k6
	 r5Tfia55SM2EZTtAsAJac2UOkkaY4EZ/27H7sUXH3KqJwD+pA4jBVeMbncICHEdkqe
	 4WHTYoyzKoi5udoTJrA0p/9ne8eSY5k80C1sI+LVatOZlKRWCI2/X+x5EPEWBEYbYY
	 zipr8wYeQx/tq5qPAx9Fa7MWiG0bCGRfp8jVCz6k3GrooJRDZOg7naT9bXLyRKs/Ou
	 NHvcvvDsREjdg==
Message-ID: <b7ec2c3a-fab3-4ca1-9c18-f0fd00554e09@kernel.org>
Date: Sat, 28 Sep 2024 14:13:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: ti, sci: Add property for
 partial-io-wakeup-sources
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
 Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Vibhore Vardhan <vibhore@ti.com>, Kevin Hilman <khilman@baylibre.com>,
 Dhruva Gole <d-gole@ti.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <f0f60af7-8561-433a-a027-811015fc5e16@kernel.org>
 <ti4ffymrixcpptlrn3o5bytoyc4w5oovdrzgu442ychai2fjet@wtdhrmwrozee>
 <44feed5a-95a7-4baa-b17e-514c0f50dae6@kernel.org>
 <sf2pklbnlkpgnkemv3wevldpj55kk2xqh4fabbmkcbh2tvnbzr@gg3gxgztq6pt>
 <d2eb4faf-c723-453b-a9d8-68693c96fb42@kernel.org>
 <fa11631e-48f9-4e95-95c4-20b77cb0a1be@kernel.org>
 <h4kapqs5vpparh5b3tter54fbnxubq6gpnb4yrqjdio66tj37w@l3xzum2bq5sz>
 <58f5f778-9f0a-4a05-8c33-949f3b3d1f49@kernel.org>
 <sisw3whyzr7itjtuznvt5t6cbmfxzop5c4nfrxwpxjil6rxqzc@cfnb5panavxe>
 <4f2ec575-4c2c-49d5-b1c0-85d5b6ce9f2e@kernel.org>
 <ivyujm6do2wmpgoa42amgli4yqthhqzme6xepzcj2ifzg7xzxp@rauwer3wjigp>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <ivyujm6do2wmpgoa42amgli4yqthhqzme6xepzcj2ifzg7xzxp@rauwer3wjigp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27/09/2024 11:35, Markus Schneider-Pargmann wrote:
>>>
>>> It's not obvious for me. Maybe you can elaborate a bit.
>>>
>>> The hardware has a different set of wakeup sources depending on the
>>> power mode it is in and I would like to describe these different sets of
>>> wakeup sources in the devicetree as for me this is a hardware property,
>>> not a driver thing.
>>
>> I stated the argument to which you did not respond: it will not matter
>> for the device whether this is wakeup-source = S2R or wakeup-source =
>> TI-Partial-IO or whatever.
>>
>> Each device is or is not wakeup source.
>>
>> And just because your device has some registers or some configuration
>> does not mean this property is suitable for DT.
> 
> I came up with a different (better) way to model this in the devicetree.
> This group of units that are powered in Partial-IO are all powered by
> just one regulator that is always on. I can simply describe this in the
> devicetree by defining the regulator and consumer relationship:
> 
> Defining the regulator as described in the board schematic:
> 
>   vddshv_canuart: regulator-7 {
>          /* TPS22965DSGT */
>          compatible = "regulator-fixed";
>          regulator-name = "vddshv_canuart";
>          regulator-min-microvolt = <3300000>;
>          regulator-max-microvolt = <3300000>;
>          vin-supply = <&vcc_3v3_main>;
>          regulator-always-on;
>          regulator-boot-on;
>   };
> 
> Adding vio-supply to mcan and uarts, note, this binding does not exist
> yet:
> 
>   &mcu_mcan0 {
>          vio-supply = <&vddshv_canuart>;
>   };
> 
>   &mcu_mcan1 {
>          vio-supply = <&vddshv_canuart>;
>   };
> 
>   &mcu_uart0 {
>          vio-supply = <&vddshv_canuart>;
>   };
> 
>   &wkup_uart0 {
>          vio-supply = <&vddshv_canuart>;
>   };
> 

I am happy that problem is solved, but it really, really puzzles me how
above fits wakeup-mode-problem at all. This is so different that I doubt
you came up with proper hardware description.

Best regards,
Krzysztof


