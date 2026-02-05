Return-Path: <devicetree+bounces-263184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IDuAnMXhWl48QMAu9opvQ
	(envelope-from <devicetree+bounces-263184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 23:19:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FA5F8076
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 23:19:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C278830080AD
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 22:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60FBF330651;
	Thu,  5 Feb 2026 22:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b="Y5jBh20B";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="VUGbsuPw"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a8-smtp.messagingengine.com (fout-a8-smtp.messagingengine.com [103.168.172.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0F85330327;
	Thu,  5 Feb 2026 22:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770329962; cv=none; b=FjhpUzOTVQ4gEc8VEdwx67PvdFQgQxNyJFvWOib1oyDkZQXDfVPZryG40O9V7hum5Wyb5RVr3f5Hx3n+vKQa3iVep7Quwt7II6JwFGJ/l9XqTANCjuexSteEATPaorBJDX6qCJCNT0LjlOkv5qhxaNvYheC8iAFms/z//rFfzsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770329962; c=relaxed/simple;
	bh=B2igZATj+oh/Rz8ikbiZmJAbTDJH1kreE8X3fJhY6Ps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ofu0P1IW4fw9X9DNQCOgiJgt9G/G8mL4vzdtgaqy9J21Zcbd6KMZ0chUD9I6AlubgLNm77oeUgOwmsmPTkwkrxD6y3UUNaLW3pt2wOMojx3rT1+KwQia7aAMJjCO/JMOSeZDFgkSH3DljZ7f1IzFvhUYZ/axhLBgjHvYVsSrIAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net; spf=pass smtp.mailfrom=jannau.net; dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b=Y5jBh20B; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=VUGbsuPw; arc=none smtp.client-ip=103.168.172.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jannau.net
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id DCBE9EC0568;
	Thu,  5 Feb 2026 17:19:20 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Thu, 05 Feb 2026 17:19:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jannau.net; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1770329960; x=1770416360; bh=bzeO7zZ69I
	3XN/zyWY5Xw7az0QKbNdDG4yC9XwwJljg=; b=Y5jBh20B/zbvNv8ld+x1cD1QEi
	w0I95yUwCHT0Qyo6pdIA5GBpFt7mK3ax7GQ1KenrlTN1DjLVcYV5sa1pBQu5ctzY
	8WzQHfrDoIjH854yt7/w4GGUXyLg0OuNn9dbo8hN2QYlk6AfjKI2sGfAKwqB+/ii
	xEe+gPfA+8xXuvDIT4Qqt8Lxfb3cdJSLBat8t+EG8BP0zDavxJeNLQPIqJto68Db
	U/zJ5ewucxFuTOaRTV2GkjFQYHv9K1W668aWP6NaMXkYskqEdtqX8E7LuN+BwC1k
	PyxufgO+oHp69azOqK8vx6Bveb5ut9V9AFk5T09/uLb4M9q/w3p8ATCLZjoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1770329960; x=1770416360; bh=bzeO7zZ69I3XN/zyWY5Xw7az0QKbNdDG4yC
	9XwwJljg=; b=VUGbsuPwFOZBgv/QprPB51PABGAZV7UBbXIGZ+wFrT5uA/ZAXiQ
	16ffcCOOetFXg75p4iw7zNlDGuKUWXm5PrhQBA0YCCt+K3MbHqAAIGw8PsGp4N5d
	Spl6MnvLUyCKjZb3mh/fKRi+e5LGHpiaPjS/huxXPllGqZWcPGFv4SgVFq2iOGRj
	e73YUsm9lZS7Mp8eDGrfI7vd4z1Jxv2VmPHoh8ga+3ccd10anDErvUby5sEuK20w
	IWdkR9+IE/ndmu8j8RxKfEBNK8+YkZx0dhxarESxNudjxohX153DmnGX4bR3iM/5
	rjG/C+l2boOyxCVkW34uz3SJw7SZ4/PRvOg==
X-ME-Sender: <xms:aBeFaYbYIVvtbPc1g1xO4vtwiHvOUSvB3xQ-M3zWAQ3mA9kCdnC5TQ>
    <xme:aBeFafP_qsKKtQNjrA9rJofRnXSMclwzi3e3o1BT4QpV0zKI-SvFALEOTPej97eHJ
    cygfQNyr-R8hRJqjDuNrVZqCJfRPB5zzbFTTgxrZV8ON7MWZWhsjhY>
X-ME-Received: <xmr:aBeFaeWFGPsI2UGkM5JytbsR1DMr6khiHkQTxo_n2RjYNRewY3JuHyNYD0i01xoysyAD9ToNNPsJ9eiKHo1mRyJLchUJQc-xJUg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukeeigeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomheplfgrnhhnvgcu
    ifhruhhnrghuuceojhesjhgrnhhnrghurdhnvghtqeenucggtffrrghtthgvrhhnpeeigf
    dvheehleegiedtgfeljefgjeevfeejgeetkeetfeevtdefkeeluefhieegtdenucffohhm
    rghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepjhesjhgrnhhnrghurdhnvghtpdhnsggprhgtphht
    thhopeduuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepshhvvghnsehkvghrnh
    gvlhdrohhrghdprhgtphhtthhopehkrhiikheskhgvrhhnvghlrdhorhhgpdhrtghpthht
    ohepnhgvrghlsehgohhmphgrrdguvghvpdhrtghpthhtohepthhglhigsehlihhnuhhtrh
    honhhigidruggvpdhrtghpthhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphht
    thhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrod
    gutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprghsrghhiheslhhishhtshdrlhhi
    nhhugidruggvvhdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhish
    htshdrihhnfhhrrgguvggrugdrohhrgh
X-ME-Proxy: <xmx:aBeFacL9hildb1R86kNZTiRGvVhzFFiVSSlflo-u5ziKOX828CNu2A>
    <xmx:aBeFaRru2Gf4Iw4XBFc6nILrdcPQrreCJWdehWQmEHfcEv-uXzDjUg>
    <xmx:aBeFabyOP1TGSu_w1B9VGKy4UALegcaa8nGKZ8Y-YS2H04IuSkMgAQ>
    <xmx:aBeFadu7NWBmwVz8w9pRKksEePDgHlCHnliwirHlGR_Q9Q0rqZu4ZQ>
    <xmx:aBeFadNZ7bNr-Uf-l8oXQSkVMEdLaaQN6dXC3oCAo6Sy1PxtSklF2vm_>
Feedback-ID: i47b949f6:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 5 Feb 2026 17:19:20 -0500 (EST)
Date: Thu, 5 Feb 2026 23:19:18 +0100
From: Janne Grunau <j@jannau.net>
To: Sven Peter <sven@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Neal Gompa <neal@gompa.dev>,
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: interrupt-controller: apple,aic2:
 Add AICv3
Message-ID: <20260205221918.GA71415@robin.jannau.net>
References: <20260128-irq-apple-aic3-v2-0-b4bc8e16c997@jannau.net>
 <20260128-irq-apple-aic3-v2-1-b4bc8e16c997@jannau.net>
 <20260205-pastoral-magnificent-cuscus-ce58ad@quoll>
 <8f506b2b-1309-4f9e-b8e6-4a73064ea2d0@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8f506b2b-1309-4f9e-b8e6-4a73064ea2d0@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[jannau.net:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[jannau.net:+,messagingengine.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263184-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[jannau.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j@jannau.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[marcan.st:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,jannau.net:email,jannau.net:dkim,robin.jannau.net:mid]
X-Rspamd-Queue-Id: 96FA5F8076
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 07:01:51PM +0100, Sven Peter wrote:
> Hi,
> 
> On 05.02.26 13:50, Krzysztof Kozlowski wrote:
> > On Wed, Jan 28, 2026 at 09:57:08AM +0100, Janne Grunau wrote:
> >> AIC version 3 as found on the Apple M3 (t8122) is very similar to AICv2
> >> in its base functionality. It can use the same device tree bindings as
> >> AICv2 so add it to the AICv2 bindings.
> >> This interrupt controller is used on all Apple SoCs starting with M3 up
> >> to at least M5.
> >> The only apparent difference is the increased IRQ config offset. Apple's
> >> device tree codes this new offset as property of the "aic" node but the
> >> value stayed constant for all SoCs with "aic,3". Since the SoC specific
> >> compatible "apple,t8122-aic3" will be used in the driver this offset can
> >> remain a driver implementation detail.
> >>
> >> Signed-off-by: Janne Grunau <j@jannau.net>
> >> ---
> >>   .../bindings/interrupt-controller/apple,aic2.yaml  | 45 +++++++++++++++++-----
> >>   1 file changed, 36 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml b/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
> >> index ee5a0dfff437816056bda0de5523bf38be4f49ba..a6e2251fcc111340c0a27ab6912452f6b1255be2 100644
> >> --- a/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
> >> +++ b/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
> >> @@ -4,10 +4,10 @@
> >>   $id: http://devicetree.org/schemas/interrupt-controller/apple,aic2.yaml#
> >>   $schema: http://devicetree.org/meta-schemas/core.yaml#
> >>   
> >> -title: Apple Interrupt Controller 2
> >> +title: Apple Interrupt Controller 2 and 3
> >>   
> >>   maintainers:
> >> -  - Hector Martin <marcan@marcan.st>
> >> +  - Janne Grunau <j@jannau.net>
> >>   
> >>   description: |
> >>     The Apple Interrupt Controller 2 is a simple interrupt controller present on
> >> @@ -28,14 +28,24 @@ description: |
> >>     which do not go through a discrete interrupt controller. It also handles
> >>     FIQ-based Fast IPIs.
> >>   
> >> +  The Apple Interrupt Controller 3 is in its base functionality very similar to
> >> +  the Apple Interrupt Controller 2 and uses the same device tree bindings. It is
> >> +  found on Apple ARM SoCs platforms starting with t8122 (M3).
> >> +
> >>   properties:
> >>     compatible:
> >> -    items:
> >> -      - enum:
> >> -          - apple,t8112-aic
> >> -          - apple,t6000-aic
> >> -          - apple,t6020-aic
> >> -      - const: apple,aic2
> >> +    oneOf:
> >> +      - items:
> >> +          - enum:
> >> +              - apple,t8112-aic
> >> +              - apple,t6000-aic
> >> +              - apple,t6020-aic
> > 
> > If you are re-shuffling these, you can as well sort alphanumerically.
> 
> I don't have a strong opinion here but the last time this came up we 
> agreed that we'd go with release order IIRC for consistency since that 
> order is used in every other binding for this platform.

The intended scheme as documented in some commit messages is first base
Mx SoCs in release order and then Mx Pro/Max/Ultra SoCs in release
order. This scheme isn't used consistently though. I think I fixed that
in one or two bindings already but there are other using a different
order.
I think these unecessarily complex rules are guaranteed to lead to
inconsistencies. I'll resort the entries alphabetically as that's the
only rule with a chance of consistent use.

Janne

