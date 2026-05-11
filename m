Return-Path: <devicetree+bounces-295718-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBGACVcPAmplngEAu9opvQ
	(envelope-from <devicetree+bounces-295718-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 19:18:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9547351340B
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 19:18:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60E2E31888C3
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 16:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749CC43900F;
	Mon, 11 May 2026 16:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="cy5p4NEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50617421F07;
	Mon, 11 May 2026 16:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778518707; cv=none; b=S8pRHQMIY3u6CkqAjmNSwtYkaRwJ/WSy73efmHIw3u0PpejTThatQpkNvbRpR7as0Qij4SlG2Z1TEafLbm0a54M/y3jtWL7M04MUcGP1wiezUUU2VRAAQx7n2Ovt2nms7ZkpVjeCbl/dQn/hzaT/g/8L8xukchkjrUbflyjJExg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778518707; c=relaxed/simple;
	bh=bP5JdJMp79DcTlBxJCSiW96bztDXG7zQZnRpCToBNOw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M6r0uMZtk1BZyoZv4/C/Vv74eOf309l1my2isWVcImy5U4IPswSI15aRLnr6YBjcQ35npN3VPUCVR9tiyM28ZPe2szwHCR8WANAVbhnU3VbkaryZMs9S0YtHi2GsTIR/3QIkWRzfALKlu0i4xPRJa7pW7xAoUjceg1ASpsirSSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=cy5p4NEJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67CE7C2BCB0;
	Mon, 11 May 2026 16:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1778518706;
	bh=bP5JdJMp79DcTlBxJCSiW96bztDXG7zQZnRpCToBNOw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cy5p4NEJKcxbC16Rkoj7llrD9efJYUn26J4ivQvawXaVuVh/jZ8IJJvYJiPCYDw2I
	 aQym4XolI/ZVxSfD8itjFAgGzdsU20Mmqqb1k0uMyj8VUIEtPWiMsaoVT4hI2cR2mD
	 KR21uu6gvHkCvpXGuaBGZxpKKfSxVCZYfqwiiRkk=
Date: Mon, 11 May 2026 18:58:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Conor Dooley <conor@kernel.org>
Cc: Kartik Nair <contact.kartikn@gmail.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	christian.gromm@microchip.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: misc: add documentation for MediaLB DIM2
 controller
Message-ID: <2026051158-canola-cricket-2ce4@gregkh>
References: <20260510184419.98043-1-contact.kartikn@gmail.com>
 <20260511-saint-amiss-14b925a7f87c@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260511-saint-amiss-14b925a7f87c@spud>
X-Rspamd-Queue-Id: 9547351340B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295718-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,microchip.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linuxfoundation.org:dkim]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 05:14:21PM +0100, Conor Dooley wrote:
> Greg, Rob,
> 
> On Mon, May 11, 2026 at 12:14:19AM +0530, Kartik Nair wrote:
> > Add device tree binding documentation for the MediaLB DIM2 hardware
> > dependent module. This documents the compatible strings used in
> > drivers/staging/most/dim2/dim2.c which were previously flagged as
> > undocumented by checkpatch.
> 
> Are we actually meant to be taking bindings for things in staging?

Nope!

> I thought half the point of things being in staging that the state they
> were in was poor at best, and that changing properties etc may be
> required as part of destaging them.
> 
> Greg? Rob?

Staging drivers need to be self-contained, without bindings outside of
drivers/staging/

thanks,

greg k-h

