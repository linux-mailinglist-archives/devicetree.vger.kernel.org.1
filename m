Return-Path: <devicetree+bounces-292735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLKTGmXZ+GlR2AIAu9opvQ
	(envelope-from <devicetree+bounces-292735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 19:37:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A343D4C1FEA
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 19:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58A2C3017C10
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 17:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20D53E0C76;
	Mon,  4 May 2026 17:37:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.lysator.liu.se (mail.lysator.liu.se [130.236.254.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D120123182D;
	Mon,  4 May 2026 17:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=130.236.254.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777916258; cv=none; b=H0S+HDOpjkwrhDm9PS4VbACNyVmAW6GpRqx1jGgSgp82EQ24HuJH9818y0wXhTlygYdpcvMHOxwv3f3hna02v/tTF1XCqtGt/LU89j03Xns6WOG3vp4GlNPHYudChpWQ8h6IBQDJ0l97U7a2Poa39OdfhrH/EeH66606vUV+l84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777916258; c=relaxed/simple;
	bh=7qBPJ3imFR2D1N8JXzsRvpkRhiquaOC3EZNB1Nwjxr4=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Mp3kY1H8IbGfzEYivkjq4gZlAiv3NdJpcxiYpUDMUM+G3A7amnc7WoE5xgIK8P4ghD9R5fWNYEalbu7AUUaNlECJhF5n6aYocN9L4l+2s5atwdqNISxrZ57540yucQKC7uBVyudkWWgPGlaz1rUwrsyIrxM9T6Tsvr/2FuXYu4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lysator.liu.se; spf=pass smtp.mailfrom=lysator.liu.se; arc=none smtp.client-ip=130.236.254.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lysator.liu.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lysator.liu.se
Received: from mail.lysator.liu.se (localhost [127.0.0.1])
	by mail.lysator.liu.se (Postfix) with ESMTP id 9BD8215D7F;
	Mon,  4 May 2026 19:29:21 +0200 (CEST)
Received: by mail.lysator.liu.se (Postfix, from userid 1004)
	id 8E65215DC7; Mon,  4 May 2026 19:29:21 +0200 (CEST)
X-Spam-Level: *
X-Spam-Score: 1.3
Received: from mail.lysator.liu.se (imap.lysator.liu.se [IPv6:2001:6b0:17:f0a0::3])
	by mail.lysator.liu.se (Postfix) with ESMTP id 2377915EB8;
	Mon,  4 May 2026 19:29:17 +0200 (CEST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Mon, 04 May 2026 19:29:17 +0200
From: Peter Rosin <peda@lysator.liu.se>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Peter Rosin <peda@axentia.se>, Linus Torvalds
 <torvalds@linux-foundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>, Wolfram
 Sang <wsa@kernel.org>, Jonathan Cameron <jic23@kernel.org>, Linux I2C
 <linux-i2c@vger.kernel.org>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: Update mail for Peter Rosin
In-Reply-To: <afhUW7anAEURM0Gz@ninjato>
References: <7ddc5b09-b6c9-99f9-d951-6b3ef96f8c1f@axentia.se>
 <afhUW7anAEURM0Gz@ninjato>
Message-ID: <e8f64a4f745ebfac9395906f19d1b586@lysator.liu.se>
X-Sender: peda@lysator.liu.se
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Rspamd-Queue-Id: A343D4C1FEA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[lysator.liu.se : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292735-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peda@lysator.liu.se,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[]

2026-05-04 10:10 skrev Wolfram Sang:
> On Thu, Apr 30, 2026 at 06:09:58AM +0200, Peter Rosin wrote:
>> I'm resigning from my position at Axentia.
> 
> All the best for your future path and thank you for all the work so 
> far!

Thanks! If anything, I should have more time to spend on the kernel 
going
forward. However, right now it feels like everything is in a state of
flux...

>> Signed-off-by: Peter Rosin <peda@axentia.se>
> 
> Do you take this via the mux tree or shall I pick it via I2C?

It would be convenient for me if you could take it, thanks!

Cheers,
Peter

