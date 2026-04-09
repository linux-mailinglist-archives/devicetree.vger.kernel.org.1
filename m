Return-Path: <devicetree+bounces-286010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YONbMyRe12kCNAgAu9opvQ
	(envelope-from <devicetree+bounces-286010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:07:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2878F3C778E
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:07:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEE9D30A7D17
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 08:01:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6493859D0;
	Thu,  9 Apr 2026 08:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQxJGuJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0826B3164BA;
	Thu,  9 Apr 2026 08:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775721700; cv=none; b=sjUC2u/3JMDdQLbysi04nh2cb0bFl4eKcwaisriElIHGtQYrBdIqDc2ORpfwMn3cpRFHSDGwUoKe7vXS3YX4hs0MSFiNh9f7/tth5rfckUojTdtAgDKHL9nofZzoeQQnI6ouc/WmQEl6KS45vEejLuuruRQg9F29rNXCpz1pdXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775721700; c=relaxed/simple;
	bh=n+fi6SQmlAYVj27Y2L80vFRWTbvFVwRDC2QvJZA0fQY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YgR9rPemirlFETOUNlmz2oIklXI4k3cSuQ3rvynJ7aSaGMqdRXdeaCY6DLbjT9sVx9YHWkAXF3mGA6TMWsMp6n3vP1DWKZ1U7W6fz2A1uLO2CBpQ8HsFCAd+rdu5P1/Yh18KBrwUQ1dqG1zj40nWdCt/+oyk1sqmtC9YAxuLmOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQxJGuJZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21CC7C4CEF7;
	Thu,  9 Apr 2026 08:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775721699;
	bh=n+fi6SQmlAYVj27Y2L80vFRWTbvFVwRDC2QvJZA0fQY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eQxJGuJZmd9YLUb1ZJiJfFf405kuJbRGX3r1zrzG46stPCrwDnywhzbuMT7sh/jhi
	 6Dr2JlUrqFE+zRfrOXBSbw87ObwYLJ6Pe3YwuU3PeRFIePsmufqtXkIxv4pBzyd95N
	 7cIQg2EM0xWer4K62ZB5h/m7JGX7SIaO59HCIKWMSYct6QqDc0MuTvrLrLBc6+5Kvm
	 9lt253qBwLeJFsdyqhjeeoroXjcRhTBYw+LzvhqfG5fX8C8qbx1gnYs4aji9pfvnGk
	 BZdTptmDOpeRSMqG+lb0HTpraLu4XG/+5ri80NGppNdJ2j+e5iGqIXNG7A7z+JD/jt
	 0zKvYOU+V5a6w==
Date: Thu, 9 Apr 2026 10:01:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Phil Pemberton <philpem@philpem.me.uk>
Cc: Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tom Rix <trix@redhat.com>, 
	Florian Fainelli <f.fainelli@gmail.com>, linux-fpga@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Add device tree binding for ts73xx-fpga
Message-ID: <20260409-awesome-ubiquitous-bullfinch-7ea99e@quoll>
References: <20260408165223.3051759-1-philpem@philpem.me.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260408165223.3051759-1-philpem@philpem.me.uk>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-286010-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,redhat.com,gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: 2878F3C778E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 05:52:21PM +0100, Phil Pemberton wrote:
> The driver for the Technologic Systems (EmbeddedTS) TS-7300 board's
> onboard FPGA didn't have an OF match table. This prevented it from being
> instantiated from a device tree. This is undesirable given EP93xx is
> moving to device tree, and effectively prevents it from being used.
> This patch series adds the OF match table and a device tree binding.
> 
> Changes since v1:
>   - Use specific compatible "technologic,ts7300-fpga" instead of
>     wildcard "technologic,ts73xx-fpga" (Krzysztof)
>   - Fix subject line for dt-bindings patch (Krzysztof)
>   - Simplify example in binding doc (Krzysztof)

Missing explanation of dropping tags.

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state in the patch changelog
or cover letter why and what changed.
</form letter>

Best regards,
Krzysztof


