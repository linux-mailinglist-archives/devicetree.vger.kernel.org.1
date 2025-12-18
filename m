Return-Path: <devicetree+bounces-248015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1A3CCDD14
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 23:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB41430433CA
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 22:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D2D33F377;
	Thu, 18 Dec 2025 22:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b="LAfWwuNp";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="D8KpQmX8"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a2-smtp.messagingengine.com (fhigh-a2-smtp.messagingengine.com [103.168.172.153])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCED433EB09;
	Thu, 18 Dec 2025 22:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.153
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766096780; cv=none; b=QZ+S1DK3e28b5Z+VGZurj1wAm5OKsw/d9n4b6Ci7oYsHf2e6oCBz21vx8ClfJfq9ZZy+H32wZtZwqI1dFIKqzX0A4dQbXWFK7xcfPwkApDm7gZFo0aohUY39UXSIzgOKBx+AL+K/X9u+yr4M06Nyn/fVIIBCLHiHqfrK8Zoshk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766096780; c=relaxed/simple;
	bh=5vuIwrlfsuMjA+ArT+sGvLRH4JONxdjqmumQ0lvasns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kETmPI+0gLji4R+/fqiItC6aU9mMp4+sHHy3pF52OdRKNz+wVMCffVDBxue3wUsoc3MsauSDoyDpu8szCcsoj1x+cOAUOmXTcl8gMPR5bajsTbN4mWOTcrFk/nAvFLPlj4rhVFDfMomtYRXVsMRbtQPtQf28sd8QBn4F3EfxCAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com; spf=fail smtp.mailfrom=bsdio.com; dkim=pass (2048-bit key) header.d=bsdio.com header.i=@bsdio.com header.b=LAfWwuNp; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=D8KpQmX8; arc=none smtp.client-ip=103.168.172.153
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bsdio.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bsdio.com
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.phl.internal (Postfix) with ESMTP id ED39C1400083;
	Thu, 18 Dec 2025 17:26:17 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Thu, 18 Dec 2025 17:26:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bsdio.com; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1766096777;
	 x=1766183177; bh=5vuIwrlfsuMjA+ArT+sGvLRH4JONxdjqmumQ0lvasns=; b=
	LAfWwuNpXY3C5lzzlrGbl+u+MB0r9A9UD+m29IOxHs910+C3Nh9wJU8fRDvsO1s4
	hqYKq6vuuQCQV8fgWkXesEc+NyI6kzABjVINw3UTFCN/AAouNhbhyp0t4a1EobZd
	msK4ZJeUHfexvH6F5CidgntcKvffabFJ7CmuX6Sir4xegDP6NIb7xSFokhQ9lo0U
	PjWMUfSE8wZbXUM2ay204FU4BTOQWOI99PxxsCzLc13lEtjcukPCtNgNr4gZtM11
	1F/xaGqW18L+kH3w9jOG4snRE8V+hRTnvfJATLwMXLDSEXHknav2FGqGaLfkoB1J
	LkQXY4ua/awAClhWisWQsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1766096777; x=
	1766183177; bh=5vuIwrlfsuMjA+ArT+sGvLRH4JONxdjqmumQ0lvasns=; b=D
	8KpQmX8+LJrvAvmBhY0vlBY0U4DUNws4f60fN4KTq5E0JA4edmz6lJmg8vlvLrZY
	dGkCm/mRXmGG4CEdTBzh7HFcaIw24zc2jNinZhjTNOmc6EWSIVn/6K4e4CVLVmXZ
	ZwT/Pii77NxRs3AGtEvd2vJJQlmCPbTIp+E0752ZMT4Esua2es7z4OUVODzYTVqH
	CvrBGX8nM0cAVlUMq4C1njLvPJYyGy8Pjn4i9Ae9SeuXTjYLFcz67n+797rOvBVm
	KVif7FiZ/Q9AO/4EAFpWY98ni/H+qvkGCWM6HtZxL9Y/U8PRpMXAZEJrDXm1wIAF
	Vsk8Ak584PJpylJQgbc0Q==
X-ME-Sender: <xms:iH9EaSjs0r_Hr6QzNZ5XtYZveLLRtqOpwY69EDLkAbdpfzaQE2CNvQ>
    <xme:iH9EaSm8-C_QZCVcdQL5y1--oLM5Zs1ABboYTd5T-RofZRgLCqYvwizcKsnsJABLo
    BsvXUjTc03PjdhQEF6f8FqTc8xEsb1pbAnAnT2ybrQVmf0mFORh6cSC>
X-ME-Received: <xmr:iH9EaeaGPMzFfvOx6oddACuNs1lmN7F-EX-mw8zRgocK9D8mBuDpQfzTxnu7LsZankJj9aI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdegieeivdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefkffggfgfuvfevfhfhjggtgfesthekredttddvjeenucfhrhhomheptfgvsggvtggt
    rgcuvehrrghnuceorhgvsggvtggtrgessghsughiohdrtghomheqnecuggftrfgrthhtvg
    hrnheplefhgeevleehieeuveduudfguedtieetteevhffgfffhhffhveffueegtdegkeek
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
X-ME-Proxy: <xmx:iH9EadyT4GekbfEVwMCEa95li0Wv9vjD610Hw1NmWL5vj3vGqL6NiA>
    <xmx:iH9EadYtAlmM4kujKL0fOfXNfCk6jTqKvf8kRLlmfsY6MIlRYfhyuQ>
    <xmx:iH9EaezcmDfqJ2xKGgV5BRzzgJ2BfRVygoLcHpGUgeh-rnk6kJ4Jlg>
    <xmx:iH9EaWG46ABbTf4u40GaWM4XINTHk1J7Do6B2_1ls00nXRK9joclfw>
    <xmx:iX9EaaSf-ARUTKFu2UbbNeAfwMNb_2yH0GUkE-PVxhlMsJawuuprZahw>
Feedback-ID: i5b994698:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Dec 2025 17:26:15 -0500 (EST)
Message-ID: <b28d5c56-59ee-4723-b953-cca6629ef63f@bsdio.com>
Date: Thu, 18 Dec 2025 15:26:14 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
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
 <4eff8506-8049-46e9-997e-a41edff32bbc@bsdio.com>
 <d215c5dd-b402-4cd2-b4c6-48358b5b2491@kernel.org>
From: Rebecca Cran <rebecca@bsdio.com>
Content-Language: en-US
In-Reply-To: <d215c5dd-b402-4cd2-b4c6-48358b5b2491@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/18/25 12:31, Krzysztof Kozlowski wrote:
> This does not test anything from the binding.
>
> Please don't add fake tests... Building instructions are not testing.

Sorry. In that case I don't know how to test the bindings.


-- 
Rebecca Cran



