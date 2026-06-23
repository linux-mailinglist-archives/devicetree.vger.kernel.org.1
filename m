Return-Path: <devicetree+bounces-314601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wGbcEprkOWr7ygcAu9opvQ
	(envelope-from <devicetree+bounces-314601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:42:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CAED36B350B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:42:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TmNwEa9Z;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314601-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-314601-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4413F300A326
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 01:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4446B377019;
	Tue, 23 Jun 2026 01:42:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A93613E02A
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 01:42:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782178968; cv=none; b=onUibRrggolst8D1Vv/ttBHlEjK9uZW09qb+oaJDL1xmzD6olaF4SmuTrhyQkine4X/5wgWFJYag5iQ8hT7aiMGNVm5nUzar9Egs9YZEmNrRnxTlBhMCYEhwO59jS7mTzMr2cuwuQJWUBSMhKqvCb5JIkTK1kpdbjOtIHZoIKJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782178968; c=relaxed/simple;
	bh=HPbmJO2xKJSPMaYmQfFF2AqtD5rziv9p7QfKj8uSRhs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=giFFYa5JwLAE4LAjGfNg/LNUYsQJsz9jmKnhP7FvafJ4rATWGWRZH1P1hyY4HBsCcnPfhxkep/K3j7mxHloIYYfGCk9SnqaukPNFyEkcqkv5UR5a3NuhMoT81AkF9SIVv8dJA5whNfYunH1MlvPrFvusi/3OyEUd/aoaAuRnj28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmNwEa9Z; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C42CA1F000E9;
	Tue, 23 Jun 2026 01:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782178967;
	bh=6r+cTufWcKj1Ysc3B4GsSXTCbjvPL8Or3bpDF7XAKpY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TmNwEa9ZB8vWzCf3jrCxS0bQfPidyCCQk8BhX460Go+kgr1TqzGWaK65QkpJXl0qK
	 WxcgXkPZIU+UWgMG/QoQqh1Q0c3swkV0Lg0zw3Fma9ZihHKQUyqGUbgyFFka1rB9Cm
	 VBJlOEhk2OVcuWnCaUq7S0tnyWJR9rUF9GiYpeO9q781zhoEriXb69XaYHJFtYTKrM
	 ns5VfHBTJ0ydG8vh0wb5gQFyLS5P/4pykVHR66kh96yc8LS+o74JWqu6+Q2bPr+8Q7
	 EkztWQqmOnifWd6qzT5XK5CX9j25uMiO98P8ZzNAooWEBVr125tg6LzwnuuXGXLpaq
	 Oni9WZNZuJQgw==
Date: Mon, 22 Jun 2026 20:42:46 -0500
From: Rob Herring <robh@kernel.org>
To: Sang-Heon Jeon <ekffu200098@gmail.com>
Cc: Saravana Kannan <saravanak@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Dan Williams <djbw@kernel.org>,
	David Hildenbrand <david@kernel.org>, devicetree@vger.kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>
Subject: Re: [PATCH] of_numa: fix return -EINVAL when numa-node-id is not
 found in last node
Message-ID: <20260623014246.GA3897146-robh@kernel.org>
References: <20260621143919.4176646-1-ekffu200098@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260621143919.4176646-1-ekffu200098@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314601-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ekffu200098@gmail.com,m:saravanak@kernel.org,m:akpm@linux-foundation.org,m:djbw@kernel.org,m:david@kernel.org,m:devicetree@vger.kernel.org,m:Jonathan.Cameron@huawei.com,m:rppt@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CAED36B350B

On Sun, Jun 21, 2026 at 11:39:18PM +0900, Sang-Heon Jeon wrote:
> When the numa-node-id property is not found in the last memory node,
> of_property_read_u32() returns -EINVAL, which then becomes the return
> value of of_numa_parse_memory_nodes(), even though earlier memory nodes
> were parsed successfully.
> 
> Commit 7e488677a54a ("of, numa: return -EINVAL when no numa-node-id is
> found") meant -EINVAL to be returned only when the numa-node-id property
> is not found at all, not when it is found in an earlier memory node but
> not in the last.
> 
> Check whether at least one memory node was parsed successfully, and return
> 0 in that case, -EINVAL otherwise, so the return value of
> of_property_read_u32() for the last memory node no longer corrupts the
> overall return value.

IDK, it's arguable that an incomplete DT isn't valid and something we 
need to support. Is missing numa-node-id valid or it's just better to 
have at least partially 
configured NUMA nodes?

Rob

