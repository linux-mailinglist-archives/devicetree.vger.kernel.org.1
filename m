Return-Path: <devicetree+bounces-242911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10699C913C4
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 09:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADA2C3B08EB
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:36:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CFC32E765E;
	Fri, 28 Nov 2025 08:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="kG/emZ/q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A024827F19F;
	Fri, 28 Nov 2025 08:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764318931; cv=none; b=qsVue2nbcncozp5hzKT9KpwaQ+SLkbVv9ACaJuEJMH7H+7iosoi9J6QrcXKVR5iK4rwsMQnKOKB3qnSzSxmBgtK1PRItVtFFbFb2qLHynwIk9F9zFded1w7tPLtyjwNbMsGKOFE0S35i+RKj+/FMMTkVmldzY5e8zZSsvMwfl98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764318931; c=relaxed/simple;
	bh=cNQfnriMaenwW717i8RQ5vp8YIX3PGdSlwhtPm85SMk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NuPdruwssMksQpHgdTV2OPw1fhA2ovEEmvkTHHbpuwkuY1y6Ob4o42aevTG03ZwpkihWrk2GI8oUOuA2cO8NOFuPZ9A5VN81G2W5M6cLyVTsyMWGfY9JqW+heH0zmKsjYgsCgeDUaDWNp6B4PwDBtWclEDris2BGYsJteIlYJrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=kG/emZ/q; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 3A3FB4E41940;
	Fri, 28 Nov 2025 08:35:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 09EB760706;
	Fri, 28 Nov 2025 08:35:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CF2A1103C8EF1;
	Fri, 28 Nov 2025 09:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764318926; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=bt0bVS+dg/E4D/40L3Rqo22NkXCeP8ALUu6d+/7zrIE=;
	b=kG/emZ/q4AlsESETvUY6cJ8iOxWvuUVxDCqR93cSukgqmqi5/LCMQVLWn/a0bOrFtfiqi1
	68f2icCURNipB7gan5YKT06hmGsb8iD1dJUFYG7yGUylVTCAo5ymdoA9MhwUUidaouAkfn
	Gqzd9OJ0nNQwvnw/W9hfs+rDAgG6d0iXOcyD8/W9wqgGKlbmBmkQsp8ENDCEizVp9zvBJ8
	Uuj2ONgLAtSYjz4ugMOwi8Vx58ErimfuTiAf0LUOmcoaIcOTZMRAqlnOyx8sqBQIRPsGFD
	qwKJriMsgATLDwEaiIhlJ17qgWibLeMK9Ip9chCU6yM2cLx+Wg1gAt+8/b4x4A==
Message-ID: <dff88906-d1f5-4ad1-840b-df1cbec56fc5@bootlin.com>
Date: Fri, 28 Nov 2025 09:35:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v20 05/14] dt-bindings: net: dp83822: Deprecate
 ti,fiber-mode
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Romain Gantois <romain.gantois@bootlin.com>,
 linux-arm-msm@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Jakub Kicinski <kuba@kernel.org>, davem@davemloft.net,
 Florian Fainelli <f.fainelli@gmail.com>, mwojtas@chromium.org,
 devicetree@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 thomas.petazzoni@bootlin.com, Conor Dooley <conor+dt@kernel.org>,
 Dimitri Fedrau <dimitri.fedrau@liebherr.com>, Simon Horman
 <horms@kernel.org>, =?UTF-8?Q?Marek_Beh=C3=BAn?= <kabel@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Eric Dumazet
 <edumazet@google.com>, Herve Codina <herve.codina@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Abeni <pabeni@redhat.com>,
 Daniel Golle <daniel@makrotopia.org>,
 =?UTF-8?Q?K=C3=B6ry_Maincent?= <kory.maincent@bootlin.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Antoine Tenart
 <atenart@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 =?UTF-8?Q?Nicol=C3=B2_Veronese?= <nicveronese@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251127171800.171330-1-maxime.chevallier@bootlin.com>
 <20251127171800.171330-6-maxime.chevallier@bootlin.com>
 <176426738519.367608.14469073626442288770.robh@kernel.org>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <176426738519.367608.14469073626442288770.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3

Hi,

On 27/11/2025 19:16, Rob Herring (Arm) wrote:
> 
> On Thu, 27 Nov 2025 18:17:48 +0100, Maxime Chevallier wrote:
>> The newly added ethernet-connector binding allows describing an Ethernet
>> connector with greater precision, and in a more generic manner, than
>> ti,fiber-mode. Deprecate this property.
>>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>
>> Tested-by: Christophe Leroy <christophe.leroy@csgroup.eu>
>> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
>> ---
>>  Documentation/devicetree/bindings/net/ti,dp83822.yaml | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> 
> 
> doc reference errors (make refcheckdocs):


I don't see any error here :) maybe an issue with the bot ?

Maxime

