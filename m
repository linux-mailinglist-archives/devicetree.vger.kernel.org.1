Return-Path: <devicetree+bounces-309629-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tBADB78sKWrmRwMAu9opvQ
	(envelope-from <devicetree+bounces-309629-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:22:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 04133667C57
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:22:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UNzXA9VB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309629-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309629-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 77FCF3033884
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8428C3B71D0;
	Wed, 10 Jun 2026 09:08:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE333B42C2;
	Wed, 10 Jun 2026 09:08:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082511; cv=none; b=f83PO/OHFyR6XNfv2sTlPBl2w+3HABSnTHlJtnAiDkS+JqbGgTtVuV7QM6sBE7lBCvedyAh2exq0rWZ1prCYL3AZ4hnL3fAklR67Aj8SkWaXa8JnyjKYSobejNNlzRe7DlNbxXkvIv8IQQw66IvTZQG/uFIaJ3XFMBglUCHlfaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082511; c=relaxed/simple;
	bh=ezeZsPXsUVcDhDnJgi/uFETrQWIXZzeLvUAPUnR7Mzg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s4hapt5Lye54iDI6i6jgs3XtiNlMWnTQ0oOL0SHPihXydbbI+o2kD7EbgaNndJ8ObbAlGsFp8H+UwF9nrBLdl5Cr0gRCfxdNxPYyMu26EXaGGRjyZnzadZQb5i4ojpd0QCYLFJ28UMLlauMGY81SWoxWDtrIUthfS1AFcXjNC10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNzXA9VB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 024701F00893;
	Wed, 10 Jun 2026 09:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082510;
	bh=tTpz8iqHF3H3Yug8T8Vzfo42mwEk2ZfCcVHBFX+ynBs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UNzXA9VByJ1yuHHMFNZtFPK1GRqidtDda/sboA7B0fC2Z3P0P6y4FPQCrLvPanP+v
	 BA5vYMePsWaJnWZBzL4H28WBcyapaLSLAzFPfjlf2+MZ30M2vBaVEjwOjc8YteVnJI
	 J8KyTzWLVSINm7lFb3S5D3nSB5QIvo4z+OBiwCboyVOdtCoPsTknAeLZNDQcW/zWAa
	 IG8dnLerA74mL/UFIShnZYQXDIQMyYwG+ZxxeTMBOPXAzLG0a1E4O0sPryRm/2apKg
	 rwK8KQcbXRD1o8J2xPidpzzFw2q3EA6O0dOg4NtO9GiV8NlJ/hs+nmF8jwnNTlp5iR
	 QrLs4adMxXAVg==
Date: Wed, 10 Jun 2026 11:08:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Maxwell Doose <m32285159@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Tomasz Duzsynski <tduszyns@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: plantower,pms7003: Add myself as
 maintainer
Message-ID: <20260610-imperial-glittering-pudu-ddfdab@quoll>
References: <20260609160326.45123-1-m32285159@gmail.com>
 <20260609160326.45123-2-m32285159@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609160326.45123-2-m32285159@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:m32285159@gmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tduszyns@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-309629-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,vger.kernel.org,gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04133667C57

On Tue, Jun 09, 2026 at 11:03:25AM -0500, Maxwell Doose wrote:
> Tomasz's entry is no longer valid, as he is not active anymore. Add
> myself as maintainer to replace his entry.

Last replies are from Feb 2026, so not that far away. I fail to see the
context behind that change.

Anyway, it's like fourth patch from you doing the same. It's even more
confusing seeing this done file by file.

Maybe you just want to add yourself as co-maintainer?

> 
> Link: https://lore.kernel.org/linux-iio/20260609140712.2e5d1640@jic23-huawei/
> Cc: Tomasz Duzsynski <tduszyns@gmail.com>
> Signed-off-by: Maxwell Doose <m32285159@gmail.com>
> ---
>  .../devicetree/bindings/iio/chemical/plantower,pms7003.yaml     | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Best regards,
Krzysztof


