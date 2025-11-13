Return-Path: <devicetree+bounces-237971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF89C56311
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 09:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2E54734638F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 08:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A768132F770;
	Thu, 13 Nov 2025 08:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="CUWyeqgs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A023254AC
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763021452; cv=none; b=FrikZO1Bdp8SEgL+jlYQQzF+NzN2XqENqjdQbx0gCuxX9QXF7tBkLaC4IlMborb45sKS+ANbbdlWyABZkF6GDCRMtS/RKeHtS09Qe1ZLT13ITTgGdtEQyOpZzFHMv2xfa7nVVoywQXW4e5/sjiPuTunw5cHznsoVFuABbOZbJZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763021452; c=relaxed/simple;
	bh=WzKoEocAJC7FdMdHE7Dt75drpTyNfmdl94td2jReVY8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qNhjAZFjKlekFMrFjo9GVL2nLF8EkQHVASj1QRcR7iJ8f7FrreBF6RiMJnhXPBu1/oquhj2HXCJlm8DOFV6MM0GDaBf+PefmWzQSBLYGRmr3emxM45FBdOcNF1g+CmXWoyWyxjze4wlBYe0yStUIB8+nmhgcgtQDhgEAIdyj/tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=CUWyeqgs; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 94EF21A1A6E;
	Thu, 13 Nov 2025 08:10:48 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 662B86068C;
	Thu, 13 Nov 2025 08:10:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 49ABA102F1BFF;
	Thu, 13 Nov 2025 09:10:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763021447; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=M3+aKTOIenGftNdk1yVOu9tIQlDGr8NCbK8NJ7Ofmko=;
	b=CUWyeqgsbpmiskIh05Y3xODwBRnwBI2KZgH/KPNlL96QAoCGCVcwTsZwUqVi/wtaFeyEVn
	tkEZ3JlJpZOc5Ia9T4BQXDE6JSt4mx9YW5PP8nCFLlvYQzOwEgrx2Ni304blYKBuJUTL5b
	kXPR07CiaeUNrab2aazgJdRkSD4BEHcQYdETyI1KmQM/ZY0BpL+UcK6IWDzDjG/stqPo8N
	emV5Oy7+nvmZAS6QDaMwRtU/nLUWWoKctyJcIQtFpfEc9gLVmdp8XPd/OBBZsm6PUg6Tlt
	JWkr9DkjPzdbvsxxyKz0nCTGBtYnlVu96ZGFm7EpVAcI1sPUsPck/Fp1bw0HGg==
Message-ID: <21e8408a-027a-4e74-899e-8ec59ddb17ef@bootlin.com>
Date: Thu, 13 Nov 2025 09:10:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v15 01/15] dt-bindings: net: Introduce the
 ethernet-connector description
To: Andrew Lunn <andrew@lunn.ch>
Cc: davem@davemloft.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 thomas.petazzoni@bootlin.com, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Herve Codina <herve.codina@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 =?UTF-8?Q?K=C3=B6ry_Maincent?= <kory.maincent@bootlin.com>,
 =?UTF-8?Q?Marek_Beh=C3=BAn?= <kabel@kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 =?UTF-8?Q?Nicol=C3=B2_Veronese?= <nicveronese@gmail.com>,
 Simon Horman <horms@kernel.org>, mwojtas@chromium.org,
 Antoine Tenart <atenart@kernel.org>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Daniel Golle <daniel@makrotopia.org>,
 Dimitri Fedrau <dimitri.fedrau@liebherr.com>
References: <20251106094742.2104099-1-maxime.chevallier@bootlin.com>
 <20251106094742.2104099-2-maxime.chevallier@bootlin.com>
 <56410c74-3d0e-4cdc-87a0-230cad8f691a@lunn.ch>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <56410c74-3d0e-4cdc-87a0-230cad8f691a@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3

Hi Andrew,

On 11/11/2025 04:34, Andrew Lunn wrote:
> On Thu, Nov 06, 2025 at 10:47:26AM +0100, Maxime Chevallier wrote:
>> The ability to describe the physical ports of Ethernet devices is useful
>> to describe multi-port devices, as well as to remove any ambiguity with
>> regard to the nature of the port.
>>
>> Moreover, describing ports allows for a better description of features
>> that are tied to connectors, such as PoE through the PSE-PD devices.
>>
>> Introduce a binding to allow describing the ports, for now with 2
>> attributes :
>>
>>  - The number of lanes, which is a quite generic property that allows
>>    differentating between multiple similar technologies such as BaseT1
>>    and "regular" BaseT (which usually means BaseT4).
> 
> You still use lanes here, but the implementation has moved on to
> pairs.
> 
> Please add my Reviewed-by when you fix this.

I'm about to send v16, but I have also taken Rob's comments into account
so I'm going to err on the safe side and not include your review tag, in
case I mess this up :(

again, thanks a lot for the round of reviews on v15 !

Maxime

> 
> 	Andrew


