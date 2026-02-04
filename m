Return-Path: <devicetree+bounces-262448-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKxRFV2dgmlgWwMAu9opvQ
	(envelope-from <devicetree+bounces-262448-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:14:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7175E059B
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:14:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 368C83024966
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B4AB23EA83;
	Wed,  4 Feb 2026 01:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2lFmhBy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 754E723BCF3;
	Wed,  4 Feb 2026 01:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770167494; cv=none; b=nYb34QnXPJbqzbwV7MCFiMsA+3OgTNYI4TEaTexVhKDn0FsLnk/IIu9pB9XkmPNTHYWA1GGQO4BY9nzbP/FWWsLWEBFWRuQxLGoDt64s1QxugVq+snKf4ialg8oFoS4APz/Uuv/PlflBeYZ/jCQC0lu1+0wkjmTHB8a0n699OIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770167494; c=relaxed/simple;
	bh=s3lTpYIuHg8HtlxmezJcghRfziSTcL3CioyEyTkqFRE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Amuvnp1EMwV6bAHvOso14140CJsURVbmoM77fNd2jUjm0/xByN3tInO5AHmunmUYZInoLrTx1xMXfUs7kEa1ct4A/YfidRZdchc1LJxfm1sSMUgkduF6n7qioBOnEQuV8eaPkNAAqKgj3X7g7gG/ovee3zv1UPtwFnT0HD2JlZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2lFmhBy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 651EEC116D0;
	Wed,  4 Feb 2026 01:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770167494;
	bh=s3lTpYIuHg8HtlxmezJcghRfziSTcL3CioyEyTkqFRE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p2lFmhByFND7qXjvgfs/szKRGNPi2tJ2Cj5gt9TEI3tzeqwHwK9LXozN3MAs7BN4L
	 NlKGBP02EVcvLINUFRrQ66c/y40Ng/o30IrWEV6AFtoVuM8PPgUzrG1EAGhxrm61Rc
	 8zysuDmNBAF7e0tlQ76+0MyLZRZncVKkuvHcStVrOoVPgy3No7cG/DbOouM/GOK8Ku
	 pH+A/ZQWhEAxuNCqEKiVvkA1GqxundSbQXTj0JVXxxwdxMKYiFSVqz/hChD74qqJM1
	 5T4RTV/3CMH1YlF+TdbkBd56nxkgsFRvKVSdCuCKBOMX522kSFiaSEm9AYAzx6PSgD
	 NSJEA+uBxg7nA==
Date: Wed, 4 Feb 2026 02:11:29 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Abdurrahman Hussain <abdurrahman@nexthop.ai>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Michal Simek <michal.simek@amd.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v9 4/7] i2c: xiic: cosmetic cleanup
Message-ID: <aYKcc0IGO9jroObH@zenone.zhora.eu>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-4-ce4695f5267d@nexthop.ai>
 <aYIXagCXYb4DrDLp@smile.fi.intel.com>
 <DE565BCD-28D6-4844-BCEE-A1F60DC84662@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DE565BCD-28D6-4844-BCEE-A1F60DC84662@nexthop.ai>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262448-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,zenone.zhora.eu:mid]
X-Rspamd-Queue-Id: B7175E059B
X-Rspamd-Action: no action

> >> Re-use dev pointer instead of referencing &pdev->dev everywhere.
> > 
> > ...
> > 
> >> - dev_dbg(&pdev->dev, "mmio %08lx irq %d scl clock frequency %d\n",
> >> + dev_dbg(dev, "mmio %08lx irq %d scl clock frequency %d\n",
> >> (unsigned long)res->start, irq, i2c->i2c_clk);
> > 
> > No need to do this here as we change the format string afterwards anyway.
> > 
> > But I leave it up to Andi, I won't prevent this to go in, if he agrees.
> > 
> > -- 
> > With Best Regards,
> > Andy Shevchenko
> > 
> > 
> 
> No worries, I can do this in the following patch, since there is going to be
> a v 10 anyways.

This would be merged next week anyway, so, please, send a v10 as
there are many little changes (if we were out of time I would
have manually changed things before merging, but that's not the
case, yet).

Andi

