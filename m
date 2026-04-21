Return-Path: <devicetree+bounces-289215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMpUKjfT52k4BAIAu9opvQ
	(envelope-from <devicetree+bounces-289215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 21:42:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7144943F10E
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 21:42:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69BAF302AD1B
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2026 19:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA4A53803FD;
	Tue, 21 Apr 2026 19:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv5O4How"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81EC351C03
	for <devicetree@vger.kernel.org>; Tue, 21 Apr 2026 19:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776800096; cv=none; b=CA6+H3QwmmhrfKON8Rj4S/CeKz5lESkvaJgHPgdpODDrVM4WkkNA9MfNmZUygKnweGjhSZZyhx70cXDXZ17yOT7Xn8p1/QuCVbwJpsS88zux+MG577WPdAh7QFbsc0NknhoPAa4Q+A5f3b5vOhg0ormEVmiuWJvgAmYG+Ar9t4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776800096; c=relaxed/simple;
	bh=njTDvIZJSZuuXlQ1TrEDU1nT5LYmBsux+bCO2bCkZM0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z6y8+DuN9sRbHtnBmOzzK1DNSSG3bVpV5iMJ5oEtFlcvbJEHLrTdswc2OqKksC0f4ow//8nYFqxgUspgIOApZKfwx48kACyyfF9arag/JI7ac9f/NXFvTA7Mi/w4uQYAAHRzTfX2wGC9/gIQsxP63Vndm8gb2UGwKMLRSvqczFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv5O4How; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EC9CC2BCB4;
	Tue, 21 Apr 2026 19:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776800096;
	bh=njTDvIZJSZuuXlQ1TrEDU1nT5LYmBsux+bCO2bCkZM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nv5O4HowRE1ENq8uYI0ou7aCyv89Dre7fX8iN06Syfo64vfLboc/f6Vy8c1gXfsVz
	 bh9KeNCFJ8OnaL7nUUe5zPvZXpxLBfGANjVgql6uXvDs3a8qObOCZbUhrBqMFzAbu9
	 VlYwIsnP7yg+5/n0Eb06fu8Uy6gCkVsZpgIyxBC0H57QLqgZbL+btsPjvwA/4ycMVo
	 XHevvPx1nAPj7e0lTuwMwpZ0s63VCPlHyDdhnr48sQ3KtiIxxZ/e8ZfSmwTcG5p6wx
	 /U9NRtlhSWuZW8O+dmtBuy6y5rOzBFJScciHefy+IuFXeIkhZtPiEwegu1ipuldK/r
	 eEzCI9ouP1hJA==
Date: Tue, 21 Apr 2026 14:34:53 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sang-Heon Jeon <ekffu200098@gmail.com>
Cc: devicetree@vger.kernel.org, saravanak@kernel.org
Subject: Re: [PATCH] of/fdt: remove redundant memset in
 __unflatten_device_tree()
Message-ID: <177679993172.1520888.14733708891951658401.robh@kernel.org>
References: <20260418140420.2221736-1-ekffu200098@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260418140420.2221736-1-ekffu200098@gmail.com>
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289215-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7144943F10E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Sat, 18 Apr 2026 23:04:20 +0900, Sang-Heon Jeon wrote:
> All dt_alloc callbacks passed to __unflatten_device_tree() already
> return zero-initialized memory.
> 
> - kernel_tree_alloc uses kzalloc()
> - early_init_dt_alloc_memory_arch() and dt_alloc_memory() both use
>   memblock_alloc()
> 
> So remove redundant memset after the allocation. No funtional change.

That is true now, but it wasn't the case before memblock became used on 
all arches.

I've updated the commit message with this info and applied.

Rob

