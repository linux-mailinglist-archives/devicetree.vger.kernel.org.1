Return-Path: <devicetree+bounces-305761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ccu3MR8LH2r2eAAAu9opvQ
	(envelope-from <devicetree+bounces-305761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:55:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9EB6306A8
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:55:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Q0f+O0gv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305761-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305761-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2466330731C0
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 16:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5953812F7;
	Tue,  2 Jun 2026 16:49:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2060380FDD;
	Tue,  2 Jun 2026 16:49:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780418987; cv=none; b=A3CcUchPTu2I8fuXY4A0UssrqXOVDpFqvvtz/Zaq6WOwThOCY6ys8Uyc5XnrZgiErIrliuLKDH74g+HwXz6Bwx2x5RAaLH0hIQHh6CTiu82S2NwBKW2RBjwbUHsjuTAJxrzi2MSp1Lf4K9WHOmdMZIfnk9blm4mvmkvC/xSQOGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780418987; c=relaxed/simple;
	bh=nOPcku8qb+krptKfLwxVYvZvT7ItqzNcscnUvyFCJOw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ljBjsPR5qm6eT2m0cvSm8YWKsGCR5zhT8iUiqd3QHcD6YXGO8iw6WIC/q9AdKWaTaNa3k+M+Q+zH0Q3m3iaW57wYzEENQLReHHUvbzR6eUYw+6hHCXzIpnp4S0E2PCh4+Ju6op/e2OkZUiCZvcutMF5DxsvkgA4YE+PRg5pvDJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0f+O0gv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F0681F00893;
	Tue,  2 Jun 2026 16:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780418986;
	bh=LFB8O8U4QgaKB297gBssYNIgpiABI/UmXL93J9wGzfM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Q0f+O0gv/nkLTpToavxBJddtyEo1zobgVX2X7Jj3xKtlSsDjIRF9S8gJpma1B7Qw/
	 qpl8eEOQV+9UPVmeeufPbe/H5gPWw7dPYQvaS3mMUo8Ro7bHTttsM4nKQNeSsFd0dY
	 ANlwIX1w3c4u+XYNghpN2ACSZhR8hrfvovzH1+aY5cRB/ocUbAiQku2BvRldicjt06
	 KHiK20PsKJ6L2N8hxPXB7Y/QqXvokTdFt2k116t2kSoc8RMJMz4Gdrs239n/VK7i3C
	 287/dtH4ozIY0ReLdShcsEkgmwITonFIAQzwfVOScdz5P0rWtKCYnSD5/h9gXD/48J
	 u0Sjr3Er+fpyQ==
Date: Tue, 2 Jun 2026 11:49:45 -0500
From: Rob Herring <robh@kernel.org>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: broonie@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
	pratyush@kernel.org, mwalle@kernel.org,
	takahiro.kuwano@infineon.com, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mtd@lists.infradead.org, praneeth@ti.com, u-kumar1@ti.com,
	a-dutta@ti.com
Subject: Re: [PATCH v3 02/13] spi: dt-bindings: cdns,qspi-nor: add PHY tuning
 pattern partition property
Message-ID: <20260602164945.GA475455-robh@kernel.org>
References: <20260527175527.2247679-1-s-k6@ti.com>
 <20260527175527.2247679-3-s-k6@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260527175527.2247679-3-s-k6@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305761-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:broonie@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:miquel.raynal@bootlin.com,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E9EB6306A8

On Wed, May 27, 2026 at 11:25:16PM +0530, Santhosh Kumar K wrote:
> PHY tuning requires a known data pattern to be readable from flash.
> When no partition is explicitly identified, the controller must search
> all available partitions to locate the pattern by label, which adds
> overhead and relies on label naming conventions outside the
> controller's control.

I agree 'label' is not the best choice. Software should not care what 
'label' contains. It should really be 'compatible' instead.

> Add cdns,phy-pattern-partition, a phandle property that allows the DT
> author to directly reference the flash partition holding the PHY tuning
> pattern. The controller uses this partition during calibration, avoiding
> the partition search entirely.

Do you have any data that this approach being "direct" is faster? In 
fact, it might be worse. Instead of searching just the limited number of 
partition subnodes, you now search the entire tree for a matching 
phandle value. We do have phandle caching, so that might save you here.

Rob

