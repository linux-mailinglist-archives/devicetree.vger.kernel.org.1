Return-Path: <devicetree+bounces-312162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jO3tF9xAMGrUQQUAu9opvQ
	(envelope-from <devicetree+bounces-312162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 20:13:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D56726891AE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 20:13:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="DhNqG/Ge";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312162-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312162-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 554883071C6B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB3FC3002B9;
	Mon, 15 Jun 2026 18:12:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55312EA171
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 18:12:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781547168; cv=none; b=k2mwuhuT0ZWN7Y1Tq4XypabukJakwptZdv0aWz2FZ8i5xXXoi5+BtVWBEicBxKWjn/MlUf6sFgaUWpJvvyZDAwtIRqrwRNUy2lMOQP0yqgnvr1DLZDpOWHQpP1TIRNCsZMDm/16uCUsWfwdgARfkUM54rGgKcgjStZxoqRnGCEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781547168; c=relaxed/simple;
	bh=D20kwWOqYJPVmNyffos9da/kORJGvM4WkHV/dvm3Jcw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=csbRwT5Qrplxd+tGp+a1SMY1CJkNnEA87dauikiwTQKNKigJQww/AMXMyGmw1txyEzavBp26DJvlEtQFbFjGtKtEzkM8XfA1vzZR/6RG1F7Rvca/mZJlkjf23QANujzUTVYxpz4gMG2x/i/oRg2sVwTpXOW0WVlHoJT0nE5bF9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhNqG/Ge; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3971A1F00A3A;
	Mon, 15 Jun 2026 18:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781547167;
	bh=8AE13TRwtglX64I0/03uogqRdP46SfUk7asscgfmP+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DhNqG/GeMp1Ctw3ejPCktiz5PRyZwxNUkJlYdx6Ez/K4GL4ykNKP0ZEzzLXnCnr0P
	 qDbCln6cSMfWMVrGw8Kh7ArL3sIWRuXVeOg9w9kyS5ToKZy8hKqg0Jk0PxI9nO16EG
	 hR8AnmXFi5C/1widb6tS9fcjUA2BHQT2PFih+Obcbh96E0OQ60MhQssXT97P1WCncl
	 ksI1MKvnvFGv89LfHoY8VG6u6Xrw1UU+x6ow0L4m/umrUG4ZmW4yrw/jeOD6zY9wA+
	 gIcZMheoGlPH5mYGWfzDYM/3BKIYK58/gQ1uQagBfT7RVlduSlBwojLbPRVWZZ+Bnx
	 26eXmO32zpctQ==
Date: Mon, 15 Jun 2026 13:12:44 -0500
From: Rob Herring <robh@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Gira
Message-ID: <20260615181244.GA1567228-robh@kernel.org>
References: <20260610213047.500701-1-l.stach@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260610213047.500701-1-l.stach@pengutronix.de>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312162-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:l.stach@pengutronix.de,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:kernel@pengutronix.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pengutronix.de:email,gira.de:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D56726891AE

On Wed, Jun 10, 2026 at 11:30:47PM +0200, Lucas Stach wrote:
> Add vendor prefix for Gira Giersiepen GmbH & Co. KG
> Link: https://www.gira.de/
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks.

Rob

