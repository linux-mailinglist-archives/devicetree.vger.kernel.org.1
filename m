Return-Path: <devicetree+bounces-307524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DbaPCnsqI2qSjgEAu9opvQ
	(envelope-from <devicetree+bounces-307524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:58:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A30C764B130
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:58:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZzZCVn5k;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307524-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307524-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B8E1301DE30
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 19:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB673CEBB8;
	Fri,  5 Jun 2026 19:54:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C63922538F
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 19:54:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780689254; cv=none; b=jOf0j0W1oQ8wnn8W4XX8qi4sslqjKUawYj40EEHXRPHTBl/LCPFcA4wxDKmoO4GcEPto18MMMMkpa7Df6Ei0y+4JxKqrE5xCrN2NvP2hTySfA5aDpOf1AQB1vVjevqj1RfCKWyVGY4h3mgSZ/xcnCPlZR7yVpktH6VfmqFRT1ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780689254; c=relaxed/simple;
	bh=HzYRbkW4t1qkV4OOv3phcj/5Qqs8N2a2eoCdlIHCfcM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OakuU/y2TI9T+XZs2QXDa9Dsy/m74uS+LOYzS6cb4bJNsX3Y+acBMRctrmmtYu9iiMAO07eODO/anam7qralQouSUuC5CPi1dGqhOk2Gq5Y9QYtgQkdnnjJRKyYW6o6mJr4lIRUWDsKtz45O6nugWRnWQfTw0SVY69lnYMwkD4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzZCVn5k; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41E8C1F00893;
	Fri,  5 Jun 2026 19:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780689252;
	bh=p/pcvISMdGSURalgNXTgQExEqZketLGMU2kKzQ/4vPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZzZCVn5kRIZSOzAFvVFc7wpjuGPGTJANdMjAMquYGdsX4iP1uzOZ5LDBCxW5pKt5T
	 h/3J1We9d9O3h+GXBFhP4dpim17XAvcjZYbIKD4HjhbNbFpNDGOb/1SyewVOcVJ8xe
	 gKsnt8cJJw3ZxiEPXW6WRmnFgrss5y5u1+H55PV5YM6pgpWGwXUOFiNFPsbCM2oe6O
	 4c+WfH0Bw+VbTAU+XC8xeEb6i8DWeE1FyMzgfa47J16BXe8oXgrpjeijbXfKpM3719
	 S/a83dTOMaNVseYpwYHJVvQWRAWzQGCaMZK0U7Kj5t5nHzc6Pl8d5xaENwwO3sxg0k
	 XKAKaUHVYb3Qg==
Date: Fri, 5 Jun 2026 12:54:11 -0700
From: Drew Fustini <fustini@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
	Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/7] dt-bindings: aplic: Add Tenstorrent Atlantis
 compatible
Message-ID: <aiMpY6tjGhv/cRWI@x1>
References: <20260604143957.668047-1-joel@jms.id.au>
 <20260604143957.668047-2-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260604143957.668047-2-joel@jms.id.au>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307524-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:asrinivasan@oss.tenstorrent.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,oss.tenstorrent.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,brainfault.org:email,jms.id.au:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A30C764B130

On Fri, Jun 05, 2026 at 12:09:47AM +0930, Joel Stanley wrote:
> Add compatible for APLIC in Tenstorrent Atlantis SoC.
> 
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Drew Fustini <fustini@kernel.org>

