Return-Path: <devicetree+bounces-298702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IPrBkaLCGonugMAu9opvQ
	(envelope-from <devicetree+bounces-298702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 17:20:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9928455C4F5
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 17:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B8E9230065C2
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 15:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 964E23E3169;
	Sat, 16 May 2026 15:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeSjBCWl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600D21643B;
	Sat, 16 May 2026 15:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778944835; cv=none; b=rKXjApCQGv3N8kcH9FUvDzI8Z0RfoViNW07OlvvSn+RfhXYKUc4P8hXmFjaXmJloozQC1DYZaZujl/JaCel0HaAJKMzhHV7gfmpUieEyYfLmVniOj1s9LTV3uMsLoWcKHgbw0nA0olenRBYiVggrylvec7Afp0JeIJCkk4EOz/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778944835; c=relaxed/simple;
	bh=hZWT1+S7pf1KBuMIvxH6MYDNtNRLSd9AeWaEI9ygGX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bYCufR0KLaRgwS5e1Bm9OKv8La/GgQgBjKA4zXD3nluPIXO0U/DaMz4PgldKXVmCekz9KwqRG/eryKBKiyP7xZy8/g/SKeF8omj9ecYG2WaJf1IIsCmOXzgEzlaD0M56ELoBRx3NbqvWfFIqkB+tEZU6ooO1mpBrkkBR2KrySXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeSjBCWl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3A2FC19425;
	Sat, 16 May 2026 15:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778944835;
	bh=hZWT1+S7pf1KBuMIvxH6MYDNtNRLSd9AeWaEI9ygGX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FeSjBCWl1mDJl78NS8KdfpLoZX6GWc544GDZeELaelIJrIeTOy2+VhgrYZ/p4cb0v
	 E0jOR10jz0Gc+3bha1s2sDrlAeMNTcb2hv+QDD45ddYGi3LQRZQa6rckxwm8hWD8iX
	 8EGCYj5cNgM5tBxtXHjlB+ySG3hNTCgMrrdqcAOXfg9cRQDb7wKAr1Q8tA9NrDESDD
	 wtD6PowG7Rjy9dGvO6NMQPD/LXv+qr4O3pq0+GTyBJwTgWc8DSaVverNGgmm30Km2z
	 bjGR4Wbg7yaIKqLMLgnBaHIp22QKrb9t7lOHsD6XjeXRq4FjkoWmvI/80d0czQMb2a
	 TbCyU0ByT9sfw==
Date: Sat, 16 May 2026 11:20:33 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, sashiko-bot@kernel.org, 
	sashiko-reviews@lists.linux.dev, sashiko@lists.linux.dev, 
	Linux Kernel Workflows <workflows@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, kfree@google.com
Subject: Re: Stop false review statements
Message-ID: <20260516-upbeat-tody-of-feminism-4ab00a@lemur>
References: <ad139e54-a7f0-4d09-832c-6b2bf2e93e03@kernel.org>
 <fcc4b719-2696-4f31-bac4-6c07f8ddec47@roeck-us.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <fcc4b719-2696-4f31-bac4-6c07f8ddec47@roeck-us.net>
X-Rspamd-Queue-Id: 9928455C4F5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298702-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mricon@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat, May 16, 2026 at 05:11:28AM -0700, Guenter Roeck wrote:
> On Sat, May 16, 2026 at 10:05:02AM +0200, Krzysztof Kozlowski wrote:
> > What the hell is that:
> > 
> > https://lore.kernel.org/all/20260515190707.033BDC2BCB0@smtp.kernel.org/
> > 
> > As a bot you CANNOT MAKE a Reviewer's statement of oversight. You are
> > not a damn human do be able to make such statement. You are a bot, a tool.
> > 
> 
> Where exactly do the rules say that ? I seem to miss that.
> 
> There is a policy document about _contributions_ made by AI, but I don't
> see the one that says that AI agents must not provide Reviewed-by: tags.

From my perspective, AI agents must NOT use the Reviewed-by tag for the
following reasons:

- We consider this a "person-trailer" and it implies agency
- Adding yourself to a commit via a trailer is a *binding responsibility* for
  the change. A lot of tooling will cc the Reviewed-by addresses on follow-up
  messages regarding code in this commit. If the address is bogus or doesn't
  go to a developer, this is both wasteful and potentially frustrating.

-K

