Return-Path: <devicetree+bounces-278247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFoACVM7vWkH8AIAu9opvQ
	(envelope-from <devicetree+bounces-278247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:19:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 780C42DA0B7
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C53A13010B77
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD643A6F16;
	Fri, 20 Mar 2026 12:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b="I4uCp/nJ";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="AmVZitQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a7-smtp.messagingengine.com (fout-a7-smtp.messagingengine.com [103.168.172.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9568A39C014;
	Fri, 20 Mar 2026 12:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.150
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774009168; cv=none; b=finyZ2yop1i9XP8yK8lPc4ghjylkqeiivBHN5sZeWAMwPUjhtcEflPsjYJQ1/TxHE9EMgIWoDBXZt8nAFTxu27T1V8++P+JZLDOQ1n6ZhCTdMZ166A9CnHkER7k9ffkbOaUHV1fvK0hMgrZ3w7KEmYwKPKtO1d0llaexZsWTJm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774009168; c=relaxed/simple;
	bh=MTWl4bDgAIUtz3NldFB1g3mSEwQiOdsAv2Qqm6VUnys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RJpwaDIupSQXcMD4nrbM+MkQHrq5wKzidrHTyJE6VUXdWpXuXz+npAO1JiiL/kz7jZZo5XOQYx0muDlsA/yx9v94OFUpxtckCV21wKG6Q1566rK1Q0BktUivw2ePuE2mp6jNDhjO8qDg2NtWCpOVbo08bWCGqZXCsjwUzP2wpBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net; spf=pass smtp.mailfrom=jannau.net; dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b=I4uCp/nJ; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=AmVZitQ2; arc=none smtp.client-ip=103.168.172.150
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jannau.net
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.phl.internal (Postfix) with ESMTP id B105DEC00EB;
	Fri, 20 Mar 2026 08:19:25 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Fri, 20 Mar 2026 08:19:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jannau.net; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1774009165; x=1774095565; bh=AM4XQ1gi0a
	qqWZVZWPbf2i8SgaoTIJ7v+bCl2iTaKq0=; b=I4uCp/nJz9JgLyyrCSytgZEGud
	98er5DBX0BOgFn5aicOB5mTPZ1ejUJ6HWxocvlRyUCsYRTf+sAzOHxcz5nkPbcjq
	BwnOb+tM29ZhmQ0AIWyTFDUjzkCqrDWKg3zwDGwa3qR3BBL437yCnhXOj+m4H4p1
	Zdo1b/B9wGrOn0iH6Ke8K5Y6p3cba7HAS8pbRjVA393xN7nnBMZBF3nKANjs2Ni/
	9H7ISgGlTRrVGoLr6qG8pZ0cMHfB7AxUJq2N8XH6pF/jTS/z/y6lE57r4Z0WcXyG
	MjMvpAqNx8J08BGrvZqGuEvcTDJEq2OP7vvIoZ0Oy3ipt9md9RyuiZb6Iivg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1774009165; x=1774095565; bh=AM4XQ1gi0aqqWZVZWPbf2i8SgaoTIJ7v+bC
	l2iTaKq0=; b=AmVZitQ24SFBerKmkwh30HTfAgNPbiUQQuLG9O83ZIdb4P4eJ2u
	8Ief7TyCPrd8OuabEs0h//kAWy2UAJvcYr5wqsc5/wcmE6yQDn11VC/Xl+q14C2C
	sXarNSFiICxvxgHGFxnSPAOzCD/iwXLaqXtTKzLHKyTNIsCxEBXfUU2aAGWmqY8i
	2viBZkwBeO7cdsAQGKKp7h5EWvKA9+f6+ZAbT8C3VW1RgkPzdfO3/Vgw/2tR3CkL
	wTnz1R2w+qK27/qxOOfbSknvquceyLQLLwEnEeFkNPX9kqVKFyJjiAkiZWhiShDQ
	qBkh4K2iOwktOdCqhbYWS+bmFVnsZaG/ghg==
X-ME-Sender: <xms:TTu9adkNeQg-sQemO9KdAw1HShl_BvwDYbXKH7TktmMTWR7UEMjUug>
    <xme:TTu9aRDseRJ-mp0Zv390eXNBW12hsrPVQtCSdWItqLqMuAY_pAqzdSpLgkOw4XX9o
    SRming443JSBP7KZ3BGU8OKuFTRPz1eBgShi50_zr0BR0dI1sZlf-Xy>
X-ME-Received: <xmr:TTu9afOkOnBIHZMv6LZyTVJ9Zr3_BTcvVaI14c6J7EhI1BWXrRv54Ji1MbaynVVfhblIkS9wcGBOhlWJJEdIO-clbMOsDV99zLU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeftdelkeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomheplfgrnhhnvgcu
    ifhruhhnrghuuceojhesjhgrnhhnrghurdhnvghtqeenucggtffrrghtthgvrhhnpefgvd
    ffveelgedujeeffeehheekheelheefgfejffeftedugeethfeuudefheefteenucevlhhu
    shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjsehjrghnnhgruh
    drnhgvthdpnhgspghrtghpthhtohepuddtpdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopehkrhiikheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhvvghnsehkvghrnh
    gvlhdrohhrghdprhgtphhtthhopehnvggrlhesghhomhhprgdruggvvhdprhgtphhtthho
    pehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrh
    hnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdp
    rhgtphhtthhopegrshgrhhhisehlihhsthhsrdhlihhnuhigrdguvghvpdhrtghpthhtoh
    eplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdho
    rhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorh
    hg
X-ME-Proxy: <xmx:TTu9aYMTp6Utj6KIChRAJAV_QB0wVqmDLgKoyeo0m4cMGsDPepHFoA>
    <xmx:TTu9aXlEvTHxn8MZJVYrxfgUofMCJfR4WRLJiZ-arjAstMuD58x5PA>
    <xmx:TTu9aWuwiz3Pjt2it-gye4vSZNl9EwY6X612R63mjVjE1eGICFaSCg>
    <xmx:TTu9aapaafGvdzOfag0rNlqax7AfDZDDNjuJRXy5kyAWip3BlLJPlg>
    <xmx:TTu9aRw54lImwoyF_Bfh7NtAUWWtH7UGVNy-bq16YMC8-bfO0X2VuvZ6>
Feedback-ID: i47b949f6:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 20 Mar 2026 08:19:24 -0400 (EDT)
Date: Fri, 20 Mar 2026 13:19:23 +0100
From: Janne Grunau <j@jannau.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sven Peter <sven@kernel.org>, Neal Gompa <neal@gompa.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: apple: Add M3 (t8112 and t603x) devices
Message-ID: <20260320121923.GA355325@robin.jannau.net>
References: <20260319-apple-m3-devices-dt-binding-v1-1-12052e195d6f@jannau.net>
 <21f2e3a2-ae8b-4997-a3c4-bb77663c04e8@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <21f2e3a2-ae8b-4997-a3c4-bb77663c04e8@kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[jannau.net:s=fm3,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[jannau.net:+,messagingengine.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[jannau.net];
	TAGGED_FROM(0.00)[bounces-278247-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j@jannau.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.972];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 780C42DA0B7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 09:11:52PM +0100, Krzysztof Kozlowski wrote:
> On 19/03/2026 15:57, Janne Grunau wrote:
> > The Apple M3 based devices follow the pattern of their M1 and M2
> > predecessors. One notable difference is that the M3 Max SoC has two
> > variants: t6031 and t6034.
> > t6034 has 14 CPU cores, 30 GPU cores and a combined 384-bit LPPDR5
> > memory bus while t6031 comes with 16 CPU cores, 40 GPU cores and a
> > 512-bit wide LPPDR5 interface. These are the only apparent
> > differences between those two SoCs.
> 
> There is no user of this in this patchset and your commit msg or
> changelog must explain that. We don't take bindings without users.

I have a series adding M3 device trees for these devices. I
misremembered your feedback from the M2 Pro/Max/Utra submission and was
planning to send dt-binding updates and the device trees using them
separately.
I'll send them as single series instead.

Janne

