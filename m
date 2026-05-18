Return-Path: <devicetree+bounces-299633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAEYMnmDC2oZIwUAu9opvQ
	(envelope-from <devicetree+bounces-299633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 23:24:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E18573C95
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 23:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69FDF302590D
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 21:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB433398915;
	Mon, 18 May 2026 21:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="liiQsR94"
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DECF1399000;
	Mon, 18 May 2026 21:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779139445; cv=none; b=sjY2ZopAVQjvX5x4NOO8pjRAe/Ddkz2BXvhyh7pqNtxOqpaLxi4CaDCu1Z7ZByJxG3ugt+PPOS4l9NqTzFdXshsJPlWlFMczJy44G+C91yk6Usn5W0nTizWBtu0y9BJv0Q08d6xt82HMdTCrq3JAAld3u0TKq31Hkwxu8zPS+20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779139445; c=relaxed/simple;
	bh=VjVI2thILGLJhZjpaCtPoUsNFut+vKbqFE4N09CJOwg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FuZHr99IMJt4XrGXZI8Utxjaw08riU/7jLyNy4q3/9guKfipebV2jTUqLZqWqrCJ6gucMI64o2HKjr32OllqvPr+dDO41yBFhqICLAbaghzgiTPY6ETpgeZ1ZQ1bVQIZfcGxfHDC422BKYZ0Hc+tzYilfURmovxSnOk3l3s/Hy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=liiQsR94; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4FFA832AC;
	Mon, 18 May 2026 14:23:51 -0700 (PDT)
Received: from ryzen.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BEC43F7B4;
	Mon, 18 May 2026 14:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1779139436; bh=VjVI2thILGLJhZjpaCtPoUsNFut+vKbqFE4N09CJOwg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=liiQsR9433gMHCcfGqr9qM+NDyqgfPupw1scZQBPF76b1Dk43t7GIMJFZKgqFrCyB
	 +OyAEyj1jZjSvtT00p5z2xxnfT8Oz/2flrLYrWD2WZD3nMYBQ9rKVR08Fi3UYlnlwi
	 SZ3Y1F8wm5X59x8usIqoxufRxwVJe7vZrDBlaCA8=
Date: Mon, 18 May 2026 23:23:05 +0200
From: Andre Przywara <andre.przywara@arm.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Paul Kocialkowski <paulk@sys-base.io>, linux-sunxi@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: allwinner: A133: add support for
 Baijie Helper A133 board
Message-ID: <20260518232305.3cef3f78@ryzen.lan>
In-Reply-To: <bc3b786313adee30cc00c65ea98ff5258a816abb.camel@gmail.com>
References: <20260510201644.4143710-1-alexander.sverdlin@gmail.com>
	<20260510201644.4143710-4-alexander.sverdlin@gmail.com>
	<agr9m_tidBr6Cu2h@collins>
	<579c7c33123c4cd0bd486301e56daf5962ca55ec.camel@gmail.com>
	<agsezxcxjQlBmesm@collins>
	<bc3b786313adee30cc00c65ea98ff5258a816abb.camel@gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299633-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[arm.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: F0E18573C95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 18 May 2026 16:40:11 +0200
Alexander Sverdlin <alexander.sverdlin@gmail.com> wrote:

Hi Alexander,

> On Mon, 2026-05-18 at 16:14 +0200, Paul Kocialkowski wrote:
> > I also have a U-Boot config ready for it, which I could send once the
> > device-trees are merged on the kernel side. I could send it to you if
> > you're interested.  
> 
> I do have one as well, I'm testing all open-source ;-) from ATF-upwards,
> just thought U-Boot would require ATF merged and kernel DT merged
> because of OF_UPSTREAM in U-Boot. But I'd be happy to sync when we get
> there.

There is no requirement for upstream TF-A support when adding U-Boot
support. All we need is *some* blob to feed to the U-Boot build system.
There is one dependency, though: the TF-A load address. Mostly that's
some quite obvious SRAM address, but in this case it turned out that
the SRAM on the A133 is probably too small, so it looks like we need to
move to DRAM. Not sure how we handle the transition, but at the moment
there is just one board supported, so it will be slightly painful for a
few weeks or months, I am afraid.

And yes, DTs need to be merged into Linus' tree to be considered, so
this series of yours is exactly the right thing to do. There are
regular syncs between the DT rebasing repo and U-Boot, but we can
manually cherry-pick patches once they have reached the mainline tree.
But feel free to send U-Boot patches once this series has been ACKed,
so the defconfig file can be reviewed and then queued, to wait for
the DT to appear in v7.2-rc1, for instance.

Cheers,
Andre

