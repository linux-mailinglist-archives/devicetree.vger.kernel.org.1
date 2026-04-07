Return-Path: <devicetree+bounces-285189-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJPwNo/F1GmmxAcAu9opvQ
	(envelope-from <devicetree+bounces-285189-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:51:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E2D3AB863
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 10:51:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E5AE3014124
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 08:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DAAB39A804;
	Tue,  7 Apr 2026 08:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="sPibANfZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F043039A054;
	Tue,  7 Apr 2026 08:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775551885; cv=none; b=UK1AJ87u+pbmryDX5UQwQjyRkVXxswasY7cTbAGEv6ojqfrUq2wejgqJ3LKeRP2jFmbw0grptmMDd4LEv3fKf3Yy8Exy8lAk2fMaKw5MGn168EcW4Kb4+Qh5rkjGT3IsK5AyAsp4mgpoKeiy4O9nLUv1wE7rXuvHjAedxq3SGkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775551885; c=relaxed/simple;
	bh=Ahg9vdJz943hFz5wvxcMOJCGbsqUVvccdAeDILnAfNA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WSrAlTKz30QwMnlABbjb4TQtM1eLfR+owkyDl+73Zef6neVuuj1GdQUFOp8klSgQu64NaOCVvjdBVu9QAxgyQT9dUPooogczkUK2rmZpVbsM8OFZz1OuyH3zOxVdQzeNh1rowHRhwPjFHREhmaBp4h37MOHZuSNf+d5C1P/GqFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=sPibANfZ; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 11AF24E42942;
	Tue,  7 Apr 2026 08:51:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D0D3E603C7;
	Tue,  7 Apr 2026 08:51:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E5E5A1045021A;
	Tue,  7 Apr 2026 10:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775551876; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=34dWfgt8RETdYQ5i5Y66cncGUqJhP18j4DDELxo0hGY=;
	b=sPibANfZWhfnKBLE0Ea+NqC9VsMh/cBKgwtdSHBZm0qqIWzea5XPbCJdo15H/SCQf0j35m
	HG6rxYYRRUkt6hsu2zAyLkcET/Ydo5k8yrWqHNgtG4u8DtyG9vyGZhlnT82EyJn2lpJ7ON
	EZhVPr/h8K1Y3kbbglCR8/A0ZZ/nyAcwpG6MOFjtbMiF4ao0sWnHM7EVteoHLon11awjTQ
	m+bDotlSnd/wdnET1OGw1Fkjo4eqVPLlKCiLkS1na8BcM33oM6vaUJw597k2UA6B+ZsahC
	+OedEPJprPzHCQt+phHrRLBZC9L5l64rYkPYnrAqI/D/qiLirCcBidj8fNO2NA==
Date: Tue, 7 Apr 2026 10:51:11 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Cc: "David Gibson" <david@gibson.dropbear.id.au>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Ayush Singh" <ayush@beagleboard.org>, "Geert
 Uytterhoeven" <geert@linux-m68k.org>,
 <devicetree-compiler@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree-spec@vger.kernel.org>, "Hui Pu"
 <hui.pu@gehealthcare.com>, "Ian Ray" <ian.ray@gehealthcare.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 06/15] libfdt: Don't assume that a FDT_BEGIN_NODE
 tag is available at offset 0
Message-ID: <20260407105111.10178de4@bootlin.com>
In-Reply-To: <DHHWY06CRC21.XENO1ENNAV55@bootlin.com>
References: <20260210173349.636766-1-herve.codina@bootlin.com>
	<20260210173349.636766-7-herve.codina@bootlin.com>
	<DHHWY06CRC21.XENO1ENNAV55@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285189-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: 75E2D3AB863
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Luca, David,

On Wed, 01 Apr 2026 17:11:42 +0200
"Luca Ceresoli" <luca.ceresoli@bootlin.com> wrote:

> On Tue Feb 10, 2026 at 6:33 PM CET, Herve Codina wrote:
> > In several places, libfdt assumes that a FDT_BEGIN_NODE tag is present
> > at the offset 0 of the structure block.
> >
> > This assumption is not correct. Indeed, a FDT_NOP can be present at the
> > offset 0 and this is a legit case.
> >
> > fdt_first_node() has been introduce recently to get the offset of the  
>                             ^
> 			    introduced

Will be fixed in the next iteration.

...
> >  int fdt_next_node(const void *fdt, int offset, int *depth)
> >  {
> > -	int nextoffset = 0;
> > +	int nextoffset = offset;
> >  	uint32_t tag;
> >
> > +	if (offset <= 0) {  
> 
> What is the difference between 0 and a engative value?

I will add a comment in the code.

0 means that we want the next node from the first node.

The negative value is an invalid value. In that case we start from the
first node. This was the behavior of the code without my modification and
I kept the same behavior in that case.

> 
> This is where the parameter value is not obvious to the newcomer and I'd
> love seeing it concisely documented.

David, is functions documentation expected ?

I can add to this documentation if you want it.

Best regards,
Hervé

