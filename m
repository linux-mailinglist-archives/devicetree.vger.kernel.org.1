Return-Path: <devicetree+bounces-309461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2IXYONgVKWroQAMAu9opvQ
	(envelope-from <devicetree+bounces-309461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:44:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 443FE666BA7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:44:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Wn74MLRb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309461-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309461-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FFF93075132
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72D9C373BEE;
	Wed, 10 Jun 2026 07:39:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBD72D063E;
	Wed, 10 Jun 2026 07:39:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781077170; cv=none; b=Xmvp/WE5z8m5hiR+J6TxA8vudcwsyV7Oy7ll7yZ5fUxpY0KmrxjNJi6LP6FxO6+2zF61R9OZ9vxVlzz9rq5b+j9EW0U87QXLJ4TZenO8eEiRuZFYqcYcVD6qgP1BRFxHNaHJZ/f8PRpgFf+ZOqC25ToWrUzaYefQ1oOvhJtB62Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781077170; c=relaxed/simple;
	bh=UHh4kAwKMWiMrOtmQUAhWXpQL/uHaOELa989PLKrxWw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=siHwCsTY+1ENd5ZKi+dfprYnEyuqtu5hezWxb6eP2v9SIWVSHG87F0ocL7RH4zgMl56m2MU6iv0Yt89LmAqChkBM4uozjF0jAb0g2J+H7UHoJkf5PKmhi2VWQtQ/dfbNgjO4Tjv7WrUk8fpNWZrmmNV1ydkRrCSb6TAyAG5blFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wn74MLRb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 906191F00893;
	Wed, 10 Jun 2026 07:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781077169;
	bh=FkWD23EcUZQ2Cyeh05Hbt+rL2iVJ4hm0EeKjVQhjWWw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Wn74MLRboT3MeAzGFBKlg+dPoTuRE5phWzuvQGqsBy8/z+BUc+xZHAlPvvLP1kjHz
	 7FDGuti1YRaOj651V4ia+GSH5vxGaUM6tIvY112szJnC2LnbcHyZQ3CUVDowYtLsLl
	 /Ng8Kt1w8m1G3RG7kS3oI1ryWUfsz9QSD78mgqaon07DFDqNT1fWq1yBGkQxTXKrc1
	 krpMFRZnFvPZ5XhSvQWCKLvos1XOp6YB65IKHkgLgtqECaHYLLqT9R8alcOIorMLl4
	 wFUj/2VsBeUQGvXxNy3Jpr6T1f4IAguYFNHJ7NYW4vrfuoYBwyaNVC4jPrxhoU4zj/
	 o8YrQX0ySMKfw==
Date: Wed, 10 Jun 2026 09:39:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Frank Li <Frank.li@oss.nxp.com>, 
	Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
	Daniel Baluta <daniel.baluta@oss.nxp.com>, Francesco Dolcini <francesco@dolcini.it>, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: remoteproc: imx_rproc: document
 optional "memory-region-names"
Message-ID: <20260610-accomplished-antique-mink-cf0ead@quoll>
References: <20260605113621.1479-1-laurentiumihalcea111@gmail.com>
 <20260605113621.1479-2-laurentiumihalcea111@gmail.com>
 <aihB5rVLsVqzg6cb@p14s>
 <aihIIwt_9T7yYxP3@SMW015318>
 <CANLsYkxw6rbWNom8rNfKurKAXKpihqV1LTd51D5YXG4oFP6-wg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CANLsYkxw6rbWNom8rNfKurKAXKpihqV1LTd51D5YXG4oFP6-wg@mail.gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309461-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:mathieu.poirier@linaro.org,m:Frank.li@oss.nxp.com,m:laurentiumihalcea111@gmail.com,m:andersson@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:s.hauer@pengutronix.de,m:peng.fan@nxp.com,m:festevam@gmail.com,m:daniel.baluta@oss.nxp.com,m:francesco@dolcini.it,m:linux-remoteproc@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[oss.nxp.com,gmail.com,kernel.org,pengutronix.de,nxp.com,dolcini.it,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email,quoll:mid,vger.kernel.org:from_smtp,linaro.org:email,aka.ms:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 443FE666BA7

On Tue, Jun 09, 2026 at 11:33:03AM -0600, Mathieu Poirier wrote:
> On Tue, 9 Jun 2026 at 11:06, Frank Li <Frank.li@oss.nxp.com> wrote:
> >
> > On Tue, Jun 09, 2026 at 10:40:06AM -0600, Mathieu Poirier wrote:
> > > [You don't often get email from mathieu.poirier@linaro.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> > >
> > > On Fri, Jun 05, 2026 at 04:36:18AM -0700, Laurentiu Mihalcea wrote:
> > > > From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> > > >
> > > > The names of the carveout regions are derived using the names of the
> > > > reserved memory devicetree nodes, which are referenced using the
> > > > "memory-region" property. This adds a restriction on the names of said
> > > > devicetree nodes, often bearing specific names such as: "vdevbuffer",
> > > > "vdev0vring0", "rsc-table", etc... This goes against the devicetree
> > > > specification's recommendation, which states that the devicetree node
> > > > names should be generic.
> > >
> > > I don't see what is so restrictive in using the node name of the reserved-memory
> > > regions.  Function of_reserved_mem_region_to_resource() is already doing all the
> > > parsing, packaging everything in a neat and easy to use "struct resource".  What
> > > will you gain with this new "memory-region-names" that can't be done with the
> > > current solution?
> >
> > DT Binding check can't find such wrong if node name is not what expected.
> > Binding can't restrict memory's node name because there ware not specific
> > compatible string for it.
> >
> 
> But what "wrong" could that be, and what kind of restriction are you
> hoping to enforce?  What specific problem are you hoping to solve?
> 
> I'll wait to see what the DT people think about this - I personally
> don't see the value in it.

I see no point in this commit, but maybe because the commit msg is just
misleading. It mixes node names with names for phandles which are two
separate things.

Plus this change actually makes nothing - no names are restricted to any
meaningful values!

Best regards,
Krzysztof


