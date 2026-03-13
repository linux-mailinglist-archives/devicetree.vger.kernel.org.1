Return-Path: <devicetree+bounces-275561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ghfMNHmDtGnNpAAAu9opvQ
	(envelope-from <devicetree+bounces-275561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:36:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC88F28A289
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6152D303B5D2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 21:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9620B366079;
	Fri, 13 Mar 2026 21:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b="cAo6k1+5";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="PFowjt9Y"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-a3-smtp.messagingengine.com (fhigh-a3-smtp.messagingengine.com [103.168.172.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81724366DBB;
	Fri, 13 Mar 2026 21:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.154
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773437812; cv=none; b=g1kWuqzhSW7Hyn654DcvdrXjA0EJlz3ocUx2UbcyF2SE1tHTznIvUbaK7DNl7nTfclT3mqG9V+ubaLhnTB9CsVnoJnhQgTAbXPC+++MXk2sqQTR71jd3m6z4sF6lOpFOKGQUOG08Hp5SovlfjA6eFyTpLle71N0adU4soY0uSMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773437812; c=relaxed/simple;
	bh=lbbTey5Gg0t6P1i8eEZPqCOyNgjR250Ox5ejAnpLnSI=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=apE1i4z55UcBSn0bmOW6E8OGHXdhv0YDMUGS3PdYrAdRNnvakrBWxCgR7BYEIXpIKQbqZE8/Q7Kss5kOLJtXXWn5MqYdwAxEa92VEa1eFC+jN1DoKE6i/6YBAASs66ViTJ5Rf5UNPYxQaQsepUCA3pSpghmKJ5ERrgoSE+AR8lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de; spf=pass smtp.mailfrom=arndb.de; dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b=cAo6k1+5; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=PFowjt9Y; arc=none smtp.client-ip=103.168.172.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arndb.de
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 93B8E1400105;
	Fri, 13 Mar 2026 17:36:49 -0400 (EDT)
Received: from phl-imap-02 ([10.202.2.81])
  by phl-compute-04.internal (MEProxy); Fri, 13 Mar 2026 17:36:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1773437809;
	 x=1773524209; bh=7pMrp7QFPYIlbrLMp+HZgW7atJSL3fSFR1EuK/IswdM=; b=
	cAo6k1+5+nosN1sCm0enMvd9CKWn6pa8U0HG4Y5VjJSVTTxW+7HPe5iEM+d6ll6g
	ozZNArgiQcDkG7u6r+Xt8K2Z55ju3OTbFNr9npCQsl1LfLaM45zfX1G4irXruLKR
	l4wDEy/L4OZ+QVf5z/dQoplIZEZeq0tcqlxExlljfYZTPt0sl21mlBDZu3XaFoeB
	soAzufFuk8lSQWxsiiIuk/ZB0bBufiYlIaCp/XZ16XDvhfAhoX6+lDd0iTjb1XBD
	qc6pRCSfqbVLwiuNXRIEbzJhVqUUn18msQ1gHfGPODXH4axhbmkX5xEAjnbN/U4k
	/YfIAR0RNFRiGjlkLuHYjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1773437809; x=
	1773524209; bh=7pMrp7QFPYIlbrLMp+HZgW7atJSL3fSFR1EuK/IswdM=; b=P
	Fowjt9YS6Do1BVQbtcb2RXAG7+rbWHr3QS+aW3NffjVzDlTpZfLKfcITI3YF63S0
	SFkTpPyQW/GmwcdfccV/XW26pkXpGslazgt6UyUpTMFC90pEVv14i48+KmXQgpYw
	romgTAc2XNbCj7AOXsvsf6jymyBG9TGY1JaSJCGeSP23zFp25UnLjGOhDq9i4V3L
	QU/tdpOyry67C9oDTuelEb91ylGKCC89iTMSLc7z8KCsKDFf+dyjFGQ/p5XMxGm6
	EFhG9D5h7puaY2A9LzsML6wXNP1wmAFJ7kEnXuIqIIrRVr+V/AhNcSdIbTSlAlVu
	w367Sr6oUMm8vy1btMMWw==
X-ME-Sender: <xms:b4O0aRvQFjGyv9GOyunRSo1Ojn3of9HvevxGrX8bR4yatcqbN3vQ8w>
    <xme:b4O0aVSxIYRJRAjMWGRiEfdkTrjrQxxXJE94b6KFHdJU7RJNUmmtgnN8Rh9vqy5aw
    7uZF0UsuHmAW8pmwrhzptoneA0Z6OJGow5_4hHEjzoUzkEb-0vwL8Iz>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvledtjeeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedftehrnhgu
    uceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrthhtvg
    hrnhephfdthfdvtdefhedukeetgefggffhjeeggeetfefggfevudegudevledvkefhvdei
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnh
    gusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepudeipdhmohguvgepshhmthhpohhu
    thdprhgtphhtthhopehrhigrnhgptghhvghnsegrshhpvggvughtvggthhdrtghomhdprh
    gtphhtthhopeihhhgptghhuhhnghesrghsphgvvgguthgvtghhrdgtohhmpdhrtghpthht
    oheprghnughrvgifsegtohguvggtohhnshhtrhhutghtrdgtohhmrdgruhdprhgtphhtth
    hopehmrggtihgvjhdrlhgrfihnihgtiigrkhesihhnthgvlhdrtghomhdprhgtphhtthho
    pehjohgvlhesjhhmshdrihgurdgruhdprhgtphhtthhopegsrhhoohhnihgvsehkvghrnh
    gvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhr
    tghpthhtoheptghonhhorheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkod
    gutheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:b4O0aZ4G5qt_rgvhSsT7ELLuZk7BoC5vWKCjem0FYTXw7sLxAqchmA>
    <xmx:b4O0aS2Ez0EwiYmU6TtfsuajpwORU-Cp7H43_tMSajUfKYpw9S4RKA>
    <xmx:b4O0aWlReRj-L7JI3fYRjfYubNEU7_VbW205DdpNNZDBFHC7IaPn1g>
    <xmx:b4O0aYjYPajBz2aaXL0UPH0ACExr6HF7034Rq5-qYClkG0QLs3OytA>
    <xmx:cYO0ac4FpKHz4EEFh5AoSYjRVz8gUgjh4aZvLe0PZujSvqH99efjQEmM>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 15C76700065; Fri, 13 Mar 2026 17:36:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: A224H4bSXjB-
Date: Fri, 13 Mar 2026 22:36:02 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Conor Dooley" <conor@kernel.org>, aspeedyh <yh_chung@aspeedtech.com>
Cc: "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Joel Stanley" <joel@jms.id.au>,
 "Andrew Jeffery" <andrew@codeconstruct.com.au>,
 "Ryan Chen" <ryan_chen@aspeedtech.com>,
 "Philipp Zabel" <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
 maciej.lawniczak@intel.com, "Mark Brown" <broonie@kernel.org>
Message-Id: <23909400-4e7f-49c9-a982-14036372af98@app.fastmail.com>
In-Reply-To: <20260313-energy-casket-ca8adc1f1fd1@spud>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
 <20260313-energy-casket-ca8adc1f1fd1@spud>
Subject: Re: [PATCH 0/7] soc: aspeed: Add AST2600 eSPI controller support
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.65 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arndb.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[arndb.de:s=fm3,messagingengine.com:s=fm1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[bounces-275561-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[arndb.de:+,messagingengine.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,arndb.de:dkim,app.fastmail.com:mid]
X-Rspamd-Queue-Id: EC88F28A289
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026, at 17:24, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 06:07:35PM +0800, aspeedyh wrote:
>> This series adds initial support for the eSPI controller found on ASPEED
>> AST2600 BMC SoCs.
>> 
>> The series introduces a eSPI controller framework for ASPEED SoCs under
>> drivers/soc/aspeed/, adds AST2600-specific controller support for
>> peripheral and flash channels, defines the corresponding devicetree 
>> binding, and adds the AST2600 eSPI controller node to the SoC dtsi.
>> 
>> The driver is intended to support host-BMC communication over the BMC-side
>> eSPI slave controller present on AST2600 systems.
>
> This all seems to be in the wrong places entirely, shouldn't an eSPI
> driver and bindings go in the spi subsystem?

From an initial reading, my impression is that patches 1, 2, 3 and 7
should be modified to use the normal SPI interfaces to implement
an spi target driver, possibly a combined host/target driver.
Reworking this should be fairly straightforward because the interfaces
to the SPI core are well documented.

It is possible that the hardware can only be used to provide espi
device emulation. From what I could see in the code, there is
not much special in there, but I'm not that familiar with SPI

Patches 4, 5 and 6 in consequently would need to be reworked so
these can implement the TAFS spec independent of the SPI controller,
and can be shared e.g. with other OpenBMC targets using the same
module and the same user interface. None of this should be aspeed
specific. 

There is a good chance that both the user interface and the placing
of the code will need a more debate, but I would suggest first trying
to move everything over to use the SPI subsystem but leave other
parts untouched for the moment.

> FSL's appears to be there.

I think this is just a similarly named device: Freescale/NXP's eSPI
device driver is unrelated to the Intel eSPI spec but rather implements
a normal SPI driver the same way that eDMA and eSDHC are Freescale's
implementation of dmaengine and SDHCI drivers.

    Arnd

