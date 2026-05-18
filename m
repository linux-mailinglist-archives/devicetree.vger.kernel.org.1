Return-Path: <devicetree+bounces-299070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEnAK7d1CmoP1wQAu9opvQ
	(envelope-from <devicetree+bounces-299070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 04:13:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B67E564EED
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 04:13:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F9CD30062E5
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 02:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D7828850C;
	Mon, 18 May 2026 02:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OejwYcUr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E40B284B37;
	Mon, 18 May 2026 02:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779070388; cv=none; b=gHXv/1/0SVNFcEsSwmvW4qTYNLZbHSm7MxZlDjaKKLau44TrHwde96kWMJgXy664so518Xoh2/d/+Yn2+bpIvHBbXYOEzL7L8e+yPcrwW+4bhbppofhO+U0PxTTmoPOgVkD1wYJpC6l09gAo/rb1WrRSrs5UN/2W88FOt0yquc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779070388; c=relaxed/simple;
	bh=WjHNa0FoiaQdHW18iiWXHKLjANeJRQAfD+5P8pmgExM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LfpQ3/vnFOgGcYgB0CECLpDgxtcxZ0qwYgKnMs5NtsrlHsG87HwJ/XCLEp2X2o1qufFQ1rKwOP6QcdznJDSOODa5YF308w8pKkh4NTXGCT4TZkorl/fxnQlWMDRG+cudu/+9VW4BmFcaqXq6XD3vilBn6oinR3cppdhmljxK8Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OejwYcUr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32E62C2BCB0;
	Mon, 18 May 2026 02:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779070387;
	bh=WjHNa0FoiaQdHW18iiWXHKLjANeJRQAfD+5P8pmgExM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OejwYcUrhLIO8SpbqByfJKumVFzARB2AZGi+Py/ogeJL75UwbtFIFW9B9rdwUcgwZ
	 jqEjwsqgsWrZL8D9XqCI8M8LEIL4azoal6lbHSEHO0VI4Dvzg2lpwLDNAEZC+CE7Pb
	 tu3wI/uyFbZCqmdXuJYS+bP/H9dOw5givn8fcQ620tiMu44fOD9DeY4rfeS6QoydTs
	 16Zlqi6P9nhzNyUFOl1F1SHPz7/b6F+XJMfexizvKCuNy8DQIBrW0bVFe7ZMPnKT5v
	 7TbD8b4vwttu7wrCg0xOdBuFDSTCD6xzCUeUbNnuvd+XH3f0QRlu8wYy98/PRtyFI+
	 0V6vqtW4yqJ5Q==
From: SeongJae Park <sj@kernel.org>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: SeongJae Park <sj@kernel.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Konstantin Ryabitsev <mricon@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	sashiko-bot@kernel.org,
	sashiko-reviews@lists.linux.dev,
	sashiko@lists.linux.dev,
	Linux Kernel Workflows <workflows@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org,
	kfree@google.com
Subject: Re: Stop false review statements
Date: Sun, 17 May 2026 19:12:58 -0700
Message-ID: <20260518021300.89388-1-sj@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <0902F8E6-C495-40A1-975D-92D3B72D44AE@linux.dev>
References: 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2B67E564EED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299070-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sj@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat, 16 May 2026 08:49:39 -0700 Roman Gushchin <roman.gushchin@linux.dev> wrote:

> 
> > On May 16, 2026, at 8:45 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > 
> > ﻿On Sat, May 16, 2026 at 08:41:43AM -0700, Roman Gushchin wrote:
> >> 
> >>>> On May 16, 2026, at 8:20 AM, Konstantin Ryabitsev <mricon@kernel.org> wrote:
> >>> 
> >>> ﻿On Sat, May 16, 2026 at 05:11:28AM -0700, Guenter Roeck wrote:
> >>>>> On Sat, May 16, 2026 at 10:05:02AM +0200, Krzysztof Kozlowski wrote:
[...]
> >> The goal here is to inform maintainers that sashiko has successfully reviewed the patch
> >> and there were no findings, otherwise maintainers have to go to the web site and check the status.

Yes, this will be helpful.  I also think notifying review failures (usually due
to patch applying failure) or general review results summary for every case
(maybe opt-in?) would also be helpful.

> > 
> > That's fine.
> > 
> >> I’m not attached to any specific form of it, I thought Reviewed-by is the most obvious form.
> >> And we use Reported-by: tags with various tooling for years.
> > 
> > Reported-by: shows the existance of a problem that some tool found, a
> > subtle difference here.
> > 
> >> What do you think is the best form?
> >> 
> >> I’ll pause sending reviewed-by tags until we have a discussion and agreement here.
> > 
> > Just say it in some other text form, that our tools will not pick up.
> > Like:
> >    Tool XXXX reports that all is good:
> >        https://....
> > 
> > or something like that?
> 
> Sure, works for me.

+1.  I was also feeling Reviewed-by: is at least controversial.


Thanks,
SJ

[...]

