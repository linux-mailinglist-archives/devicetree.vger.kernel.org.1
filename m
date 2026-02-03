Return-Path: <devicetree+bounces-262398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YF8NGoRTgmliSQMAu9opvQ
	(envelope-from <devicetree+bounces-262398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 20:59:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F28DE4F5
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 20:58:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 565BB300693D
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 19:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14728367F55;
	Tue,  3 Feb 2026 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="gTEutDCG"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7F73659F4;
	Tue,  3 Feb 2026 19:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770148733; cv=none; b=ESLSqZ5KTGYc5OdoRDz21ITfZHT1mLuzNd/ps0X4HSWkNVssVTJ4Bm5Th4UgyDS4vZeCNW46ErgqSvciuqScaqEqxta2opalBPfR7F39HaexQ9lWW1NjCfNte0guOXKrgGnPe6VW0WgPeNdI55BRfw+fepPIMOjhB60lWg9k1kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770148733; c=relaxed/simple;
	bh=r6ebOifb5oipciC4TfNCfM4gNzsZbhkk+dVdvHmGDvs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rt/OsFS9d7NA+QOA60QaxwNqwTH1hgq956p8uhU6Operl4FShbZjUvyikPqUPBKVK2+TNjXPPYrfz0ZDqMS1xX9n2Y3cTRbo+96T3xLsVCfjP10+tjpunEHgEOtOK+qit2z+hLq1z3GrSrUDRz69jiHOHr3fGPaRUJs+ak/Q1gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=gTEutDCG; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=qul62GtCDsQZaOnqvry1ZplbnKvVjFpiZ9Xacrsftfw=; b=gT
	EutDCGk6vzh06S51sz6Yk8lO5i98esRV2XUpNLLw9ojyZCHmeknBNHQm+nVR+6S/qsePbHIhZicfJ
	FMZK6NmjZQNQctP02fDZznHj9XIoMDdlq9EdZhRy0RfrkKDZF4LElRg6762D6jWjATPfD8ifhB99h
	V790lNuV3oHNyd8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vnMXm-005zYN-PS; Tue, 03 Feb 2026 20:58:38 +0100
Date: Tue, 3 Feb 2026 20:58:38 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Abdurrahman Hussain <abdurrahman@nexthop.ai>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>,
	Michal Simek <michal.simek@amd.com>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v9 6/7] i2c: xiic: use numbered adapter registration
Message-ID: <96adf8b2-da6e-491e-a20f-acccd988d585@lunn.ch>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-6-ce4695f5267d@nexthop.ai>
 <aYIYBheQgIN71os8@smile.fi.intel.com>
 <2F830E87-F00A-4A54-A5CC-E59BD2C5C7B2@nexthop.ai>
 <1ac7be34-22b1-4d93-9957-fc7ade9a2649@lunn.ch>
 <DF13B121-56F2-4987-A47B-99A20E18554E@nexthop.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DF13B121-56F2-4987-A47B-99A20E18554E@nexthop.ai>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262398-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lunn.ch:mid,lunn.ch:dkim]
X-Rspamd-Queue-Id: 68F28DE4F5
X-Rspamd-Action: no action

> Before, the driver was always doing the dynamic allocation due to
> i2c_add_adapter(). So there could not have been a system that relied on
> consistent i2c bus numbering. Even between reboots bus numbering could change.
> 
> The systems that did set pdev->id and were expecting a consistent i2c bus
> numbering were broken to begin with.
> 
> This patch won’t break any existing systems or cause regressions.

Great, now please add that to the commit message. These are the sort
of things reviewers want to know, is a change going to cause
regressions. If you have done your homework, mentioning it in the
commit message will help avoid the questions being asked.

       Andrew

