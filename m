Return-Path: <devicetree+bounces-299115-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PS7Kl+kCmqy4gQAu9opvQ
	(envelope-from <devicetree+bounces-299115-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 07:32:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA735566449
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 07:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7A3FD3004D34
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 05:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 737733AF669;
	Mon, 18 May 2026 05:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="e8bF5Tut"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821B03A962B;
	Mon, 18 May 2026 05:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779082315; cv=none; b=i8oHUn2QFFWCSMgae0fqRRFVtAz0BsC4PBoE3Q7gOgA/UFtmCNHe59b3ZiTwiVhVaw3LWWPDXV94J8zkbPu2vF/2eE4+5Qfpt5UJJu9MfI5vqSNCaG0L9mCkX61HO852Bjblq71KzpM3HqJL600HyqlujWGyBFOOPea9hxdOupY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779082315; c=relaxed/simple;
	bh=wSBv1BFWMwVdgkBPMo0C+dZxMuMebWrU53NFLkUEhAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GKGyfpbDJha64PQsny1fNVgHSTB6L0js8CtdvhxDe5KicqTpFcPEdCa9vYXUgeacdWUEkCBfeB24wu+xw25j5LlHLvqP64fTmPKQL6TGqOV6ffwdTuZsR5N4u3SvPLCmVL72ywBIpvyIhlIc/Yz9H7xEkcHwGPi5fKF99pvvM1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=e8bF5Tut; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF570C2BCB7;
	Mon, 18 May 2026 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1779082314;
	bh=wSBv1BFWMwVdgkBPMo0C+dZxMuMebWrU53NFLkUEhAI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e8bF5TutASJW27gnqlPRKI6n1cKJYvtFzAKKc42Rvd5Q3X/H5PWctsr8RrqCp4LUP
	 d47HMNFsLLh1Enhz6a11pUfIcsld1lR0ufVh8XfVm9iBejUHSwh8Vz2ol3ouAAIelL
	 e6+nequ4fPqhMMQ9dg99DihuaUobZH63WYM28/Ak=
Date: Mon, 18 May 2026 07:31:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Roman Gushchin <roman.gushchin@linux.dev>,
	Krzysztof Kozlowski <krzk@kernel.org>, debarbos@redhat.com,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Konstantin Ryabitsev <mricon@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>, sashiko-bot@kernel.org,
	sashiko-reviews@lists.linux.dev, sashiko@lists.linux.dev,
	Linux Kernel Workflows <workflows@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org, kfree@google.com
Subject: Re: Stop false review statements
Message-ID: <2026051808-coil-blaspheme-8910@gregkh>
References: <20260517183959.37441984@foz.lan>
 <F2FBD939-179D-467B-9FA8-BAA44F6C7524@linux.dev>
 <20260517205606.3b035316@foz.lan>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260517205606.3b035316@foz.lan>
X-Rspamd-Queue-Id: AA735566449
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299115-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TAGGED_RCPT(0.00)[devicetree,huawei];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sun, May 17, 2026 at 08:56:06PM +0200, Mauro Carvalho Chehab wrote:
> By "reproduce locally", I didn't mean in strict sense. Sure, LLM answers
> won't be identical, but I suspect that at least most of the major issues 
> on a patch series would be reported by any decent model.
> 
> So, if we have something that one can locally run using its GPU, being
> able to get an answer in the range of a couple of minutes per patch
> should be enough to catch most of the issues.

That should be possible now, you can submit a patch locally to the
system.  I have a "cheat-sheet" around here somewhere that explains how
to do that, no idea why it's not part of the documentation.  I can dig
it up after breakfast...

greg k-h

