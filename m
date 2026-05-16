Return-Path: <devicetree+bounces-298704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMc7D++OCGr4uwMAu9opvQ
	(envelope-from <devicetree+bounces-298704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 17:36:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 823E955C6E7
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 17:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F5C93009FB5
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 15:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D31D3E2AA3;
	Sat, 16 May 2026 15:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="FiFAMK1F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1223548EE;
	Sat, 16 May 2026 15:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778945771; cv=none; b=q+9nYMwlVARh4c1ai+5gyvgk/npa6RQcGloI9UJeG9gbltF5uDWsYInuUNA40kxk+qg6rkLtiwpdK6tdIBsDqxQmdfRTylOdoGLwSefB7CJOfqmwbHki6XqqmOOijjk4LWuRWDyKAdh5mV2TddfBIZzmbt0P36BKIHH8tEDGu6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778945771; c=relaxed/simple;
	bh=aUwWi3/912SStTCUnNctuM5DWKffokr2l2B8BKovQ6w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P2T2j2AH7YprSAZeJNnETDxek3xvGXjjf1N8r7gqnAtO5NwtnVqdkFw2CwTnk/WfaBULWH5DdkzkGYloBq1+MgzDDEFNObfRpGUNaItc0J9GpbaRxNMZ8PKhb6iVxXns9i3GcKp1QTxIQ9wfw+YoYMe+QFFFxzPWv6dReIS4/5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=FiFAMK1F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28CD4C19425;
	Sat, 16 May 2026 15:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1778945770;
	bh=aUwWi3/912SStTCUnNctuM5DWKffokr2l2B8BKovQ6w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FiFAMK1F1TErDc4xCmwOiHpnUvqL2OZ7s6b8uGw1vKmzOcMu9rCsBaNYV7zszWlOO
	 qR6u2Qh7eDyfH2Fc/bVCGZBzOMK7Ponri+US/v5QD0NBRpWjgeT+7elMKBQ+7Xqqh1
	 JNQf7GbrTDEmRz7cnclWgXZ/haMwNKuutdckfUqc=
Date: Sat, 16 May 2026 17:36:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Krzysztof Kozlowski <krzk@kernel.org>, sashiko-bot@kernel.org,
	sashiko-reviews@lists.linux.dev, sashiko@lists.linux.dev,
	Linux Kernel Workflows <workflows@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	kfree@google.com
Subject: Re: Stop false review statements
Message-ID: <2026051627-preformed-blinking-2b50@gregkh>
References: <ad139e54-a7f0-4d09-832c-6b2bf2e93e03@kernel.org>
 <fcc4b719-2696-4f31-bac4-6c07f8ddec47@roeck-us.net>
 <20260516-upbeat-tody-of-feminism-4ab00a@lemur>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260516-upbeat-tody-of-feminism-4ab00a@lemur>
X-Rspamd-Queue-Id: 823E955C6E7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298704-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linuxfoundation.org:dkim]
X-Rspamd-Action: no action

On Sat, May 16, 2026 at 11:20:33AM -0400, Konstantin Ryabitsev wrote:
> On Sat, May 16, 2026 at 05:11:28AM -0700, Guenter Roeck wrote:
> > On Sat, May 16, 2026 at 10:05:02AM +0200, Krzysztof Kozlowski wrote:
> > > What the hell is that:
> > > 
> > > https://lore.kernel.org/all/20260515190707.033BDC2BCB0@smtp.kernel.org/
> > > 
> > > As a bot you CANNOT MAKE a Reviewer's statement of oversight. You are
> > > not a damn human do be able to make such statement. You are a bot, a tool.
> > > 
> > 
> > Where exactly do the rules say that ? I seem to miss that.
> > 
> > There is a policy document about _contributions_ made by AI, but I don't
> > see the one that says that AI agents must not provide Reviewed-by: tags.
> 
> >From my perspective, AI agents must NOT use the Reviewed-by tag for the
> following reasons:
> 
> - We consider this a "person-trailer" and it implies agency
> - Adding yourself to a commit via a trailer is a *binding responsibility* for
>   the change. A lot of tooling will cc the Reviewed-by addresses on follow-up
>   messages regarding code in this commit. If the address is bogus or doesn't
>   go to a developer, this is both wasteful and potentially frustrating.

I agree, any sort of "automated" tool shouldn't be adding these types of
tags.

thanks,

greg k-h

