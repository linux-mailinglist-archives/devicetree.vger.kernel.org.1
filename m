Return-Path: <devicetree+bounces-307527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id snSbHSgqI2p3jgEAu9opvQ
	(envelope-from <devicetree+bounces-307527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:57:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EC60D64B119
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:57:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=m5ZFf6HL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307527-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307527-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07E6430254C8
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 19:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85B9B409132;
	Fri,  5 Jun 2026 19:56:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920C7369999
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 19:56:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780689383; cv=none; b=fabGdsG9dsprNx0/OUgE0N3436Qv7KkH5rEiG2a3vQy/XG5UhUwrgn2BiA2r8JYcHhvee4T00UO8YNZRaIhPEN4eoL9InVvYd5kCXyJAfO0ASk0UXmK1L4h6iaRDG3An1IcHFOpVTSELcw7nXe5dVroUbkKafQ6EztTC1OS60fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780689383; c=relaxed/simple;
	bh=LRhYKyUlLoZjOuzU/jR+/XoW8IZM6T6JtdUvWnHeqsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GqKpLIb6jDHYteLWaZPrwPBFjC4wa3SAbnq7XVd2c6nec1EBdTmqbMkc7r1M1gmWshkRWs39xR1n8CfEykN2pdTO6hmDcVQP2Ro8HTaFkFMHJEWzr6eeqZ+UREPd0IWCNECnM7ezxkALM1VPKlo921aycgrbl8DgURL0zsMGGjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5ZFf6HL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2184C1F00893;
	Fri,  5 Jun 2026 19:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780689382;
	bh=bn6F07Ciq6AxACCcbuYqHAArQPMXV1zSI0N4Am4Hvw0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=m5ZFf6HLrRq6fzAzyeSMhxuu3mCoVI51YU1oXVurCJwugIMqvKDgol4Ah84qqnd9Z
	 iAs87TTfkGy99/9WyjuyiOVDxOGdBkHPdtStOGsFJUqyR/kISRNUIesWMBON6BLxQb
	 4+gQoRzXZ65sfIxOTMtYqes9bvs3s6AHaB884pOHz8Mhkdy4jGy2P1o2bRdxifVZT2
	 +t+09Lhue4P9dSA4PqLwbZ3b6xZs+JCFJka99oYFOus2sVhCZRLzl5AN/ancjPSSsA
	 S+keJyMIyxLkjONJeOGC8JRP7C19HIxxj0PkuutWNN+WGTJklsVB1BMeUpnUglYpIm
	 WeRouGxTRQCcQ==
Date: Fri, 5 Jun 2026 12:56:20 -0700
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
Subject: Re: [PATCH v2 3/7] dt-bindings: riscv: cpus: Add Tenstorrent Ascalon
Message-ID: <aiMp5Lcy4Y2m6sJA@x1>
References: <20260604143957.668047-1-joel@jms.id.au>
 <20260604143957.668047-4-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260604143957.668047-4-joel@jms.id.au>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307527-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:asrinivasan@oss.tenstorrent.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,jms.id.au:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC60D64B119

On Fri, Jun 05, 2026 at 12:09:49AM +0930, Joel Stanley wrote:
> Add Tenstorrent Ascalon microarchitecture and the Tenstorrent Ascalon-XG
> core.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Drew Fustini <fustini@kernel.org>

