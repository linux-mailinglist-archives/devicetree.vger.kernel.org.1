Return-Path: <devicetree+bounces-259231-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id n3AXHsMFdmnWKgEAu9opvQ
	(envelope-from <devicetree+bounces-259231-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:00:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F9080723
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:00:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70E5A3002FA7
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 12:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 903DE318EFF;
	Sun, 25 Jan 2026 12:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b="bFTYzXWZ";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="u8jk3QBB"
X-Original-To: devicetree@vger.kernel.org
Received: from fout-b5-smtp.messagingengine.com (fout-b5-smtp.messagingengine.com [202.12.124.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B1A28CF50;
	Sun, 25 Jan 2026 11:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769342400; cv=none; b=paKOBJmKrM3rZvoqI8uzDjzLhs1IqIzwOwKHZ1gT/SEH26BTd+ciYWvFKPdezEAMKk1SB28wOqE9tpc/gtUd25GtwKeFD09CAc58kObNC2GUtfZNJPZYRQDJ6+MP5k0QzLyiUuL8DSllb2Wzwee0i3Ew9rQ6rlF68I3xMTdWcc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769342400; c=relaxed/simple;
	bh=YNMX28lH7yQTekU4UYI8HtGWuYBnu2Yna1t67/pHo6s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TAmU+xMXS69M13E4pIheuZVB5PMq0AjCf514ATKkw5QeEAMnJQVF0ZGCQh6rKmoruKMbjDaidFU6RL8YHJ53vt8+LYxY0Rk9IAGXZdtjHmZ7kXw20dYyaAZ33EYK6omculm/++pxtGEKJZHGEY1tghsFoDZ1t6c+8Pb/BRP5sY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net; spf=pass smtp.mailfrom=jannau.net; dkim=pass (2048-bit key) header.d=jannau.net header.i=@jannau.net header.b=bFTYzXWZ; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=u8jk3QBB; arc=none smtp.client-ip=202.12.124.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jannau.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jannau.net
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfout.stl.internal (Postfix) with ESMTP id 284971D000CB;
	Sun, 25 Jan 2026 06:59:58 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Sun, 25 Jan 2026 06:59:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jannau.net; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1769342398; x=1769428798; bh=xdSz0Z3Yvv
	3FK1yVmSaxLS0CRwbiu1gJvhI7SEWm/78=; b=bFTYzXWZhPfhALhFpi3e700yHY
	G0dyfiVXxTKY5dkhjIDq+QiPVFwCc5uDU0JpgPyqrlJKF78bQX6KXD2ypoVRealw
	AS9YUC8fus1ThEjwoHSzOXLhGPnj+/V5jjuZILHPyIYC7w/rolyXucHn3PqEBSep
	ogpOcLm9UwBErQVjcYRojrRvBrIf5F5HGB6bsfU2lOkfGaw2SQOx89phkaGpzN0m
	b7XcS/AeH/gOWq91meFWiBKVXqfWfhEuIY8FdiktfEyodjunLXGG6eg5QFkbaDBm
	pYkUdNhszAVWOU+m6gjaKsIJxYm8HmfscCyzK3MYTKMEQ+iaeSG6Wk5fyAUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1769342398; x=1769428798; bh=xdSz0Z3Yvv3FK1yVmSaxLS0CRwbiu1gJvhI
	7SEWm/78=; b=u8jk3QBBQXDeLNUwfDlP/qRsB+VeP9/0WefKgxCC46/k01SVs/N
	U+3nNcuck9Elz7eZqay+E0YlxcFFSv9QuPljdXZ3r6vcQR852CubBYdNkmdXUqYz
	QKdSbtXzIakC6XXolGquY0+p+SrqHdovgXagcRmBdiiaMCjvpBz1M70nUhIz8dHm
	Js3YBl0Vq+lnvQhptsCt4E+o7tz06g09FGnB1zsBvAq7TskPluVD3EIArkbACpn0
	WXPC49x8HrLqs14IM06eawqhmisfJixS6g061WNEyMUqIwt++eaz9apRFCga53g+
	W2H3PU+cn9pr054LIEFXwHmR/dz5T60Nv9Q==
X-ME-Sender: <xms:vQV2aZoO38EFyaI5Z-A8yO2wykUoNHyGfxgmsDlx8554YvWc0WYTRw>
    <xme:vQV2aT2kgbcSM-EY2AkU1Dseh49efMXK1bSngRQDHvkkqHg9y1bM9yAaUtsVl_U0R
    SPPlfs0hUPczQd2S4GQWMOK9Tjhr2_p8hyel7R5bsxqraPX-AKpJCI>
X-ME-Received: <xmr:vQV2aRx-eHNgLqTDzxOV03xS56dAa2aygEL_cr_WnPqsE10qppTEBlQTgo3JqeKy8vi15KNwJGe-69BG21UgODbLazVpu-Gi1Uc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduheegjeefucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomheplfgrnhhnvgcu
    ifhruhhnrghuuceojhesjhgrnhhnrghurdhnvghtqeenucggtffrrghtthgvrhhnpefgvd
    ffveelgedujeeffeehheekheelheefgfejffeftedugeethfeuudefheefteenucevlhhu
    shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjsehjrghnnhgruh
    drnhgvthdpnhgspghrtghpthhtohepuddtpdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopehsvhgvnheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvrghlsehgohhmph
    grrdguvghvpdhrtghpthhtohepthhglhigsehlihhnuhhtrhhonhhigidruggvpdhrtghp
    thhtoheprhhosghhsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtse
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdho
    rhhgpdhrtghpthhtoheprghsrghhiheslhhishhtshdrlhhinhhugidruggvvhdprhgtph
    htthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggr
    ugdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
    gvlhdrohhrgh
X-ME-Proxy: <xmx:vQV2afhf41cSMDJq7gxecTDPY8SKwpkb-tvOu-bS5mjRKpAhdU8EIw>
    <xmx:vQV2aUrw9jMHh9Bm9Dt4XMRFUj4PlkFkx-dvzD2InX2AEv5P6fXhjg>
    <xmx:vQV2aWieI6NizH1BR83pnUDSLHRxsojpyX15fP0ZNRwHZIULPqPObw>
    <xmx:vQV2aWP9Jn7LCgu3D3xdRGsrIJykH4Z26QCthcc7Vhv6gCpBDfaD9w>
    <xmx:vgV2aR3lbRR4wtI5UW3JIi-qroT1PNI_KGPmdouTHm-eHJULVd_0ERFv>
Feedback-ID: i47b949f6:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 25 Jan 2026 06:59:57 -0500 (EST)
Date: Sun, 25 Jan 2026 12:59:56 +0100
From: Janne Grunau <j@jannau.net>
To: Sven Peter <sven@kernel.org>
Cc: Neal Gompa <neal@gompa.dev>, Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] irqchip/apple-aic: Add support for "apple,t8122-aic3"
Message-ID: <20260125115956.GB1667597@robin.jannau.net>
References: <20260125-irq-apple-aic3-v1-0-a2afe66a6ab9@jannau.net>
 <20260125-irq-apple-aic3-v1-2-a2afe66a6ab9@jannau.net>
 <5d4ef8fd-55c1-42c3-a18d-a262997ec302@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5d4ef8fd-55c1-42c3-a18d-a262997ec302@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[jannau.net:s=fm1,messagingengine.com:s=fm2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[jannau.net:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-259231-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[jannau.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j@jannau.net,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jannau.net:email,jannau.net:dkim,robin.jannau.net:mid]
X-Rspamd-Queue-Id: B4F9080723
X-Rspamd-Action: no action

On Sun, Jan 25, 2026 at 12:42:38PM +0100, Sven Peter wrote:
> On 25.01.26 12:08, Janne Grunau wrote:
> > Introduce support for the new AICv3 hardware block in t8122 and t603x
> > SoCs. AICv3 is similar to AICv2 but has an increased IRQ config offset.
> > These MMIO offsets are coded as properties of the "aic,3" node in
> > Apple's device tree. The actual offsets are the same for all SoCs
> > starting from M3 through at least M5. So do not bother to follow suit
> > but use AICv3 specific defines in the driver.
> > The compatible string is SoC specific so future SoCs with AICv3 and
> > different offsets would just use their own compatible string as base and
> > add their new offsets.
> > 
> > Signed-off-by: Janne Grunau <j@jannau.net>
> > ---
> >   drivers/irqchip/irq-apple-aic.c | 27 +++++++++++++++++++++++++--
> >   1 file changed, 25 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/irqchip/irq-apple-aic.c b/drivers/irqchip/irq-apple-aic.c
> > index 3c70364e7cddd6ed6285595f136146ab04b897b2..f4efc325bebad1ae6119aa4eab47819a267da207 100644
> > --- a/drivers/irqchip/irq-apple-aic.c
> > +++ b/drivers/irqchip/irq-apple-aic.c
> > @@ -54,6 +54,7 @@
> >   #include <linux/irqdomain.h>
> >   #include <linux/jump_label.h>
> >   #include <linux/limits.h>
> > +#include <linux/of.h>
> 
> Did we miss this include previously or why is it added now?

It's a leftover from my initial (unsend) version which read MMIO offsets
from node properties.

It was strictly speaking missing though as the driver uses multiple
functions from it. On the other hand it is probably safe to assume that
of_address.h will include it implicity. I can remove this line from the
as it is confusing adding it without apparent reason.

Janne

