Return-Path: <devicetree+bounces-247956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA037CCD30A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:34:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8506F3005FD2
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 18:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6209301717;
	Thu, 18 Dec 2025 18:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="dkcki0hm";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="YvQrYqW+"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a7-smtp.messagingengine.com (fhigh-a7-smtp.messagingengine.com [103.168.172.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B132E54A1;
	Thu, 18 Dec 2025 18:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766082852; cv=none; b=JIz/TbiIR2EsOFHSrpYtCwesB+fk1DffHhksQwvgdCOeDKQmLIMuqXJdeU18wMb5hjHpCpfsqQzDTgpiQ7I9GXkmhcwf457vjz9pVyklez1JHWDJKkgGs7jGFsFrduJNuO0BxoEcDQzlSrpTx4lJzUpWaVO3L7C6aEmS3DQRJWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766082852; c=relaxed/simple;
	bh=cdouFEOrCPjvUbFG8nWL4nevGsYtHhwmjnJ0/LBie9Y=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=pLq5jh3P91MhYh24KI5aTuHXL8H++FHdzge5MBo8GPAljwR4o13Nmd19YkM/lz52MSy9tbEalRYbRaAtlQf+CGcpAyKoxIkYqAJlagVAeI2MorjLkVQWYJXIv5ugCMWyL5SpVfYKdtmWrUSFZX2tTPlKX/EZGfqRqHoCuQuI0Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=dkcki0hm; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=YvQrYqW+; arc=none smtp.client-ip=103.168.172.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.phl.internal (Postfix) with ESMTP id DBC2D14000B1;
	Thu, 18 Dec 2025 13:34:05 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Thu, 18 Dec 2025 13:34:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1766082845;
	 x=1766169245; bh=cdouFEOrCPjvUbFG8nWL4nevGsYtHhwmjnJ0/LBie9Y=; b=
	dkcki0hmWQsGbAYxWik7uerrrukMUQZU2KYD3RuSCvsUhqB6C79x5uwOrshVWjrY
	mQk3FkvMFZsHsyzvL+1sg6NHxHe0ZBklRmkIDzO+x96Aprrrpdi4fFs7IffQRDTQ
	gK0tSPSjwdveR9y49lnZDbKKTM9Er511nheLpX9blAxpEWuv7kgSxE+bCduyMlPf
	SliTpctMoQD64ILSu7qjaWTaWmgDnOihSgssiuP8UCtuVWKb7XmJQo7LFaT+4r55
	staQMxZwt9ech8RjKyfjfWKSuKSYcQa80q6Usf647kMMUnXDRu5BXA5sWUPwdIhY
	qvYsOZimeBjC8SpYRatcAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1766082845; x=
	1766169245; bh=cdouFEOrCPjvUbFG8nWL4nevGsYtHhwmjnJ0/LBie9Y=; b=Y
	vQrYqW+44Cj5gBN+GVjhOPOEsOz6vWtW9bxDZvv2Bo5Y88PCMJJlSHYnpWKdKpZQ
	TWyKBon/AahqG6BE3QH6LWM+/1MQvxqfkN64ThAKYfXaPHi50EgyRdRzc3Tu57CW
	b66664KkeiNDd+jMsi2/dQM9Dwn7ZK2ltI8F1PM59jL4DYY7QITjTivXqSsyo5Yf
	2DJkuRuPaNNDz4Mj2E7NvoLiHnRzSg66Cp397fSVAFohhk6C+igEXpBvSIXAnxf5
	D3ophywQd9IdbWYPoRdgYiUHWx9NSefbpPibvTfCuZ+gJXL+79itc0oYsWCYQZtL
	hu+crSlG+dS1UR3YhT3bQ==
X-ME-Sender: <xms:HUlEaWUVDsel0KlcF3YMKRRutSo5-PP-WTHp7F6c1xOqXYybd76S_w>
    <xme:HUlEaSIZclUOu9g0hoqRS08bG2Wdntjxw0kjXsZWvuingqGA6Jzg-ADDbERIA-yOf
    JBqnMXRlkm-WnOhhieyl4s7HWZy6Zc_ME_GEjMm0m-qZZxIChW3jjY>
X-ME-Received: <xmr:HUlEaevS_G0xtFGjZkkZbQic-HTbKLmH6znjn7mWnsks9fYoUK9U4R-nW4HP0nRTTpXSk0E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdegieduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefkffggfgfhuffvvehfjggtgfesthekredttddvjeenucfhrhhomheptfgvsggvtggt
    rgcuvehrrghnuceorhgvsggvtggtrgessghsughiohdrtghomheqnecuggftrfgrthhtvg
    hrnhepfeegtdetledvieffvdffteevhfeggfeuveegheffjefhvdelieejgfeitdehgeei
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprhgvsg
    gvtggtrgessghsughiohdrtghomhdpnhgspghrtghpthhtohepudefpdhmohguvgepshhm
    thhpohhuthdprhgtphhtthhopehkrhiikheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    eprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghr
    nhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpd
    hrtghpthhtohepjhhovghlsehjmhhsrdhiugdrrghupdhrtghpthhtoheprghnughrvgif
    segtohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgtphhtthhopehtrghnrdhsih
    gvfigvrhhtsehhvghtiihnvghrrdgtohhmpdhrtghpthhtohepuggvvhhitggvthhrvggv
    sehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrghrmhdqkh
    gvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhg
X-ME-Proxy: <xmx:HUlEaf1vqXWYGyVztb4bg_3bccL29zxHr04LN7Lx0Quj2usg3cUf6w>
    <xmx:HUlEaeONuTnfgntPUEyVeNF8Aal7ivurpoOPVb7IzjsmyuQ8fhIhoQ>
    <xmx:HUlEaXVw9HfkK3UVLcmqWN7gguA0hkyLCXzecVyRLEFS5M6DW_NBqg>
    <xmx:HUlEabafv35P00PVXcY5cgUNip6VBMVJnIaTZ5bd-GDsWNQd8SFQAQ>
    <xmx:HUlEaQ0x4Daogj9ujBrVRmhgqyM4zyz9yqjirYGmqQpbjvqNeGjqDzx6>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Dec 2025 13:34:03 -0500 (EST)
Message-ID: <4eff8506-8049-46e9-997e-a41edff32bbc@bsdio.com>
Date: Thu, 18 Dec 2025 11:34:03 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Rebecca Cran <rebecca@bsdio.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: aspeed: add ASRock Rack ALTRAD8
 board
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>,
 Tan Siewert <tan.siewert@hetzner.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Cc: Billy Tsai <billy_tsai@aspeedtech.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20251218161816.38155-1-rebecca@bsdio.com>
 <20251218161816.38155-2-rebecca@bsdio.com>
 <5aa36c56-798a-40cc-b0b8-be3f7c92136f@kernel.org>
Content-Language: en-US
In-Reply-To: <5aa36c56-798a-40cc-b0b8-be3f7c92136f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/18/25 09:21, Krzysztof Kozlowski wrote:
> On 18/12/2025 17:18, Rebecca Cran wrote:
>> Document ASRock Rack ALTRAD8 (ALTRAD8UD-1L2T and ALTRAD8UD2-1L2Q)
>> compatibles.
>>
>> Signed-off-by: Rebecca Cran <rebecca@bsdio.com>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> Tested-by: Tan Siewert <tan.siewert@hetzner.com>
> How was the binding tested?

I ran "make ARCH=arm CHECK_DTBS=y aspeed/aspeed-bmc-asrock-altrad8.dtb"
to check for errors

and have used the dts file in an ASRock Rack ALTRAD8UD-1L2T system with
Linux 6.12.61 running OpenBMC.


-- 
Rebecca Cran




