Return-Path: <devicetree+bounces-126030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E949DFFB5
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 12:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8093716069C
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 11:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BDC61FCFF2;
	Mon,  2 Dec 2024 11:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="learJTxA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2149128399;
	Mon,  2 Dec 2024 11:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733137643; cv=none; b=YOQOz2jEnEHuf9gJU/RcGFGcv1UHpAAtIl6QT2ODaBuC0YT2AqzNCPq5uRNvXv/NUttv9XYgnFWbbXPEKM1MP2ouY1GkjoIdK1rdDtNS4l59RMm2XGPxnXieqEJn9domTGcT1m2dyeZREpDjWql5OcCwpsQRP1lATYzy5nASAe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733137643; c=relaxed/simple;
	bh=HTnR6QNXRoEAw79Cedv/RZZNLWaGNO75PTZKzHXcD/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kvf34QrH6KKNC8P69td0xGP6SZ1O28vxgnHpez/oZmsvh1iW5/Vy2LqxUB/KmplmOJt7iTsu4VDm/Y8lByM9j1fL6FbhNgEgcpL2FRtX3oiiSa8c+3dcXur7CwwIquIg4HmCLw5I55NZB4FvWmwY0HCXPM87XGZs55jl/ZlNuFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=learJTxA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B745C4CED1;
	Mon,  2 Dec 2024 11:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733137642;
	bh=HTnR6QNXRoEAw79Cedv/RZZNLWaGNO75PTZKzHXcD/g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=learJTxAmC0Jd8r+CT3JAmJ5qCKKgzwPfwAMTEFGSXebSeSlemY7c36lsGcTfsmfj
	 fFQD4/aOMcM3gtc/4PNQaY91XUVpA2eGk2ABLan/5YmR56rdwt1kTiqDrk87Ez7uIG
	 5l/LiT61oU4dc4MYQwRG+wIIkb9bdvauQBjrL6NumcV6CGwEkHbn4bNVvGLijixE0C
	 700BxjAL+9V9ysJ7ZjMVxhWtpvsS7Y5PyhRwO92pQsUzCQkqVXod4uXCFmja/8aQSX
	 hoSUpIKj+OA5tN91MLK4Hr7w8o1TwmYN97KrchDFE7kR71l+z1PCPTrqDTEv1qwFrP
	 NWy7cSgEolxpQ==
Message-ID: <abeb632b-9efc-48e5-a28a-a9d7c02e0a6e@kernel.org>
Date: Mon, 2 Dec 2024 12:07:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable ACSPCIE
 output for PCIe1
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Romain Naour <romain.naour@smile.fr>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, kristo@kernel.org,
 vigneshr@ti.com, nm@ti.com, Romain Naour <romain.naour@skf.com>
References: <20241202101140.48778-1-romain.naour@smile.fr>
 <dabbad2b-f8a6-4ed7-86da-ec696cf67461@kernel.org>
 <k7udgqugqseweckb7hjniz3aops4kn35ttju2ju7f2pcbmndrg@dau5nr4leish>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <k7udgqugqseweckb7hjniz3aops4kn35ttju2ju7f2pcbmndrg@dau5nr4leish>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/12/2024 11:58, Siddharth Vadapalli wrote:
> On Mon, Dec 02, 2024 at 11:14:46AM +0100, Krzysztof Kozlowski wrote:
> 
> Hello Krzysztof,
> 
>> On 02/12/2024 11:11, Romain Naour wrote:
>>> From: Romain Naour <romain.naour@skf.com>
>>>
>>> Unlike the SK-TDA4VM (k3-j721e-sk) board, there is no clock generator
>>> (CDCI6214RGET) on the BeagleBone AI-64 (k3-j721e-beagleboneai64) to
>>> provide PCIe refclk signal to PCIe Endponts. So the ACSPCIE module must
>>> provide refclk through PCIe_REFCLK pins.
>>>
>>> Use the new "ti,syscon-acspcie-proxy-ctrl" property to enable ACSPCIE
>>> module's PAD IO Buffers.
>>>
>>> Reuse the compatible "ti,j784s4-acspcie-proxy-ctrl" since the ACSPCIE
>>> buffer and its functionality is the same across all K3 SoCs.
>>>
>>> Cc: Siddharth Vadapalli <s-vadapalli@ti.com>
>>> Signed-off-by: Romain Naour <romain.naour@skf.com>
>>> ---
>>> With this patch, we can remove "HACK: Sierra: Drive clock out" patch
>>> applied on vendor kernel for BeagleBone AI-64:
>>> https://openbeagle.org/beagleboard/linux/-/commit/ad65d7ef675966cdbc5d75f2bd545fad1914ba9b
>>>
>>> v2:
>>>  - use generic style comments
>>>  - use "syscon" as generic node name for "acspcie0_proxy_ctrl" node
>>>  - Keep the compatible "ti,j784s4-acspcie-proxy-ctrl" since the
>>>    ACSPCIE buffer and its functionality is the same across all K3 SoCs.
>>>    (Siddharth Vadapalli)
>>>
>>>    "The compatible "ti,j784s4-acspcie-pcie-ctrl" should be reused for
>>>    J721E and all other K3 SoCs.
>>
>> No, it shouldn't and you got comment on this. You always need specific
>> compatible, see writing bindings doc.
> 
> Could you please clarify in which cases reusing the compatible is
> permissible? The list of compatibles at:

Never? You always need specific compatible. Did you read the writing
bindings document?

> https://github.com/torvalds/linux/blob/v6.12/Documentation/devicetree/bindings/mfd/syscon.yaml#L112
> namely,
>           - ti,am62-opp-efuse-table
>           - ti,am62-usb-phy-ctrl
>           - ti,am625-dss-oldi-io-ctrl
>           - ti,am62p-cpsw-mac-efuse
>           - ti,am654-dss-oldi-io-ctrl
>           - ti,j784s4-pcie-ctrl
> have all been reused for different TI SoCs since they all correspond to the
> device functionality enabled via the CTRL_MMR System Controller registers.

If you find a bug, does it mean you can send new patch introducing the
same bug?

> The compatible "ti,j784s4-acspcie-pcie-ctrl" has also been added to the
> list:
> https://github.com/torvalds/linux/blob/v6.12/Documentation/devicetree/bindings/mfd/syscon.yaml#L117
> with the intent of reusing it the same way that other compatibles have
> been reused.

And?

Best regards,
Krzysztof

