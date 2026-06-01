Return-Path: <devicetree+bounces-305393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCxpFMcBHmqfgQkAu9opvQ
	(envelope-from <devicetree+bounces-305393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 00:03:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B90FE625BD7
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 00:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 986E7304F3BB
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 22:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9056359A99;
	Mon,  1 Jun 2026 22:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWFrhcDd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A494368D59
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 22:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780351428; cv=none; b=aOJd3RKKJlJDrdN6dKtq/gSCdT1jp47BLValrNKPs9IFXrt+uEQlO61al4Q8nEHEqW/wVH7x8R28tQYRjU1Y/2+FiF3vpelpDWDX8Zvg6H+vt2hexdeeaHN1wnB119KfiI7SMMhB/kdnanhtlKE7aLf12fd3PphxKGzagFnyRp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780351428; c=relaxed/simple;
	bh=JVNWEvHbSv/oMuec1/w+xF9p89ow5kDqjWk9PWPEipY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K+UBGezIqDqWRfHY5KcQ+E76TMQu8fOhR0kBSE6q0CYm9DP6/IpyjlqmXBxHWB1KEe7K00JyCE7wYMsQS/LE/8GMuI0naeETHvLxkqpIeVBn9BK2spvL2zSEIKuT6oWR95NK/S8Bwt7GBzUPPPXz/LhyFD4ZcuqxkDqDHW1lWn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWFrhcDd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 277C31F00893;
	Mon,  1 Jun 2026 22:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780351427;
	bh=077gy8AY+hyv37/kTC1iPbzz4eQKyCLUe7EWJcVomm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZWFrhcDdDY/U0/zQADDGcCGETnhiX1SeCAaeSJrsfyCurAfijsUKMpw06iQAL+ykQ
	 B9gGN0OUHiVw0GAQdG+PuZu4q30933Bu2ktu4Zcute3mtRiVTGPbL9c3YcXiFRXtNi
	 hcZoAJFa3/MqKfttCuWFdMBmPx722TKlH0WsvE8a2YYTQBZc/sA3UlC1RfWDPrIa5E
	 aASRDVr48inKKRRJJyJVlTkejqmsqFt+VHq4GT/CFZNvzVbbY7ClbugpDzWp4+jvd1
	 sQ6yvGD0Hp2dHAAmimWolK8BBNgx+BvdrKsKBJgTFEx1oY3w67X3YABIkUdCvLs7ib
	 7Dr/1fB1Kw4NA==
Date: Mon, 1 Jun 2026 17:03:46 -0500
From: Rob Herring <robh@kernel.org>
To: Sang-Heon Jeon <ekffu200098@gmail.com>
Cc: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com,
	chleroy@kernel.org, saravanak@kernel.org,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] of/fdt: make early_init_dt_scan_chosen() return void
Message-ID: <20260601220346.GB54006-robh@kernel.org>
References: <20260510171353.1406018-1-ekffu200098@gmail.com>
 <20260510171353.1406018-3-ekffu200098@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260510171353.1406018-3-ekffu200098@gmail.com>
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,lists.ozlabs.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-305393-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: B90FE625BD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 11, 2026 at 02:13:53AM +0900, Sang-Heon Jeon wrote:
> Since commit 064e32dc5b03 ("of: fdt: Honor CONFIG_CMDLINE* even
> without /chosen node, take 2"), early_init_dt_scan_chosen() always
> returns 0, so the return value checks at its callers have become
> dead code.
> 
> Drop the return value, change the function to return void, and
> update its declaration and callers accordingly. No functional
> change.
> 
> Signed-off-by: Sang-Heon Jeon <ekffu200098@gmail.com>
> ---
> dt-test result
> 
> [    0.684136] ### dt-test ### start of unittest - you will see error messages
> [    0.685849] ### dt-test ### EXPECT \ : Duplicate name in testcase-data, renamed to "duplicate-name#1"
> [    0.685870] Duplicate name in testcase-data, renamed to "duplicate-name#1"
> [    0.689496] ### dt-test ### EXPECT / : Duplicate name in testcase-data, renamed to "duplicate-name#1"
> 
> ...
> 
> [    1.693384] ### dt-test ### EXPECT / : OF: resolver: overlay phandle fixup failed: -22
> [    1.693386] ### dt-test ### EXPECT / : OF: resolver: node label 'this_label_does_not_exist' not found in live devicetree symbols table
> [    1.694968] ### dt-test ### end of unittest - 405 passed, 0 failed
> ---
>  drivers/of/fdt.c       | 10 ++--------
>  include/linux/of_fdt.h |  2 +-
>  2 files changed, 3 insertions(+), 9 deletions(-)

Looks like this is dependent on patch 1, so I'm assuming the PPC folks 
will take the series.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

