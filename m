Return-Path: <devicetree+bounces-91880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C493594AFE0
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 20:34:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C365282643
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 18:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8544F13E41F;
	Wed,  7 Aug 2024 18:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="d5BHXrjs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F923140360;
	Wed,  7 Aug 2024 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723055577; cv=none; b=OwkIAKKjysgs6YPH2CCYHqV08MIifM70oenRzW3H0uW+cUyzs51COKLGGuqXR4OWzJ/w+qWnD3Sgg1fHwvEY2hVrZ/Mn6vhbfEBEulBjrVE/qtghgufXyylxX9dzyrsQcgtf0bqbhj/0NMnaBm8yVbFRB1s+B5g2Bink4qaOEtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723055577; c=relaxed/simple;
	bh=R/0ulANenEVovkW6klYol7c/WG5nO+/ERArwTJnpj8A=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=d222xzGTOoVFrl/AVHw78IKJiydfN4U+Tm9TFkwTbDrDKFkPv+J+RNXPDKv2JfCwHhd1DgrMHkoHp9pNKdEZjbiBZVE9HtTjNT0wCLCbw7KtMUYT6z3dXQB1nx2ZLptFKesYW6tgrewtwYdWJJM5+kWFJxvNH4LNte0t+lw0Kv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=d5BHXrjs; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723055571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uPhLM9T/fLlMrEKInffkblL2I9r8PE3dC5RrRLFYkOs=;
	b=d5BHXrjsF/rxyvxtJfaz4qEvZkd3JMM+ozTmqbuuIdwjZMdba3mn7mk4lJoWgUmk10AWzd
	NmxxpoVYDrBoVE6QNfr8Qf2N7jUzF9xX4YbSWd8iEfHmUglvQxNnEPbxTbJdzoHdEVnF35
	FUK88vDOzbPfw0MMgDgvd34/4WLxq/blweX53gPIzZqEs51hYPD67tFMtDrzFS0UdtdmrC
	5HvLm+Ygswi3cYCjzKAN32JB0RiQmFhE5mOric0kzwWUhA399cN+SdDzgIKOtrIPMfChGU
	+3hssPajcaN3xqvldJGqLaN9Df6I2NrsVhEr14iC3dt0lU9wa3YfrAur3QkvXg==
Date: Wed, 07 Aug 2024 20:32:51 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Florian Klink <flokli@flokli.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Kever Yang
 <kever.yang@rock-chips.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 FUKAUMI Naoki <naoki@radxa.com>, =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?=
 <tszucs@protonmail.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi
 on orangepi-5-plus
In-Reply-To: <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <20240807170030.1747381-1-flokli@flokli.de>
 <a10e70e2d67b9d63f2296b36b4cb3719@manjaro.org>
 <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
Message-ID: <1b2e1b1b321f84f5cbff2ae18c3eba2e@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-08-07 20:14, Florian Klink wrote:
> On Wed, Aug 07, 2024 at 07:24:27PM GMT, Dragan Simic wrote:
>> On 2024-08-07 19:00, Florian Klink wrote:
>>> This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: 
>>> add
>>> rfkill node for M.2 Key E WiFi on rock-5b").
>>> 
>>> On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
>>> enable signal inside the M.2 Key E slot.
>>> 
>>> The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 
>>> kernel
>>> rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
>>> node referencing RK_PC4 on &gpio0.
>>> 
>>> Signed-off-by: Florian Klink <flokli@flokli.de>
>>> Tested-by: Florian Klink <flokli@flokli.de>
>> 
>> I forgot to mention that providing a Tested-by tag is redundant when
>> there's already a Signed-off-by tag, because the latter already 
>> implies
>> the former.
> 
> This came after I sent the v3. Generally I wish people would test 
> things
> - though too often it's not. I explicitly tested this to work (with a
> wifi module added to that slot being unblock-able afterwards), and
> wanted to point that out, thus adding the Tested-by.

In general, some time should be allowed between sending consecutive
versions of the same patch, so people can provide their feedback.

When it comes to testing the submitted patches, please note that signing
off a patch implies that the signer has already, to the best of their
abilities, made sure that the patch works as described and expected.

With all that in mind, please allow me to repeat that a Tested-by tag
should not be provided from the same person that the Signed-off-by tag
is already coming from.  It's simply redundant.

> DCO 1.1 doesn't say anything about Tested-by, it's mostly legalese 
> about
> being allowed to send out the patch, and understanding the consequences
> regarding licensing. It doesn't require the person adding their
> Signed-Off-By to have tested it.

Well, not all rules are to be followed blindly, and some documentation
perhaps needs updating or expanding to be more precise.  On top of that,
having something absent from the documentation doesn't necessarily mean
that some additional rules don't apply.  It's many times simply about
applying common sense.

