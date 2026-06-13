Return-Path: <devicetree+bounces-311361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aNcIGW2PLWoQhgQAu9opvQ
	(envelope-from <devicetree+bounces-311361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 19:12:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B103A67F214
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 19:12:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311361-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311361-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21FE130097F6
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 17:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57E73FFAD2;
	Sat, 13 Jun 2026 17:12:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E984322B9F;
	Sat, 13 Jun 2026 17:12:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781370728; cv=none; b=L4FOENiFcbzP8XjiEK2q67PymYkB4SQ/MJY1ByA2I/OCK0pgfVj0s4O9tFNEuQh9RPx5t4aZlPuT+JEBORGnazYbe+z9WB8JO9+6BXwgIjw2bHcCMoBRNsiPIFW4yDwu/KRgskWfMr6ZdRkwCCuECvX4az9MqjHE23v8RDsPTHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781370728; c=relaxed/simple;
	bh=kZazbW3SWAnpIyQOqUnSdo1u52KSwTJ6swcwNHxwxkg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GcoY5kDJgZr77xjwwWMcMF9hImsyHy4cOqA4/bjluNUiK/CzC+p+30Q7gxefX+0sgtMvMmdgagNqlKwPCxRC+2y2ZAyychVQ6kdX3XS7MMxsth3p0OwGPCx3fseDjBtQ5Ob41dGnSUiB+xGXsvZUxWmld12BqbC8Jul6AWpbe+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timmermann.space; spf=pass smtp.mailfrom=timmermann.space; arc=none smtp.client-ip=80.241.56.171
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4gd2x321nbz9tph;
	Sat, 13 Jun 2026 19:11:51 +0200 (CEST)
Date: Sat, 13 Jun 2026 19:11:46 +0200
From: Lukas Timmermann <linux@timmermann.space>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Alexandre Marquet <tb@a-marquet.fr>
Subject: Re: [PATCH] ARM: dts: exynos: Add bluetooth support to manta
Message-ID: <ai2OYGlCx0x4NUs8@archstation>
References: <20260408-manta-bluetooth-v1-1-b7658e78359a@timmermann.space>
 <653b640e-8b61-4c60-a455-63a400b308e7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <653b640e-8b61-4c60-a455-63a400b308e7@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311361-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[timmermann.space];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:alim.akhtar@samsung.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tb@a-marquet.fr,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linux@timmermann.space,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@timmermann.space,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B103A67F214

#include <atomic>
On Mon, Apr 27, 2026 at 03:49:34PM +0200, Krzysztof Kozlowski wrote:
> On 08/04/2026 13:56, Lukas Timmermann wrote:
> > Enable the bcm4330-bt device for manta boards on serial0.
> > Also adds the necessary pin definitions and interrupt handling for
> > wakeup.
> > 
> > Signed-off-by: Lukas Timmermann <linux@timmermann.space>
> > Co-developed-by: Alexandre Marquet <tb@a-marquet.fr>
> > Signed-off-by: Alexandre Marquet <tb@a-marquet.fr>
> 
> Incomplete/incorrect DCO chain. Please do not reorder tags. Git does
> them correctly, so you HAD to change them manually.
> 
> You send the patch or you apply the patch so you must commit with sign off.
I developed the actual patch based on his findings. We both don't really
care about who is mentioned first or anything.

Sorry. Yes I rearranged stuff. So it should be:

co-dev: alex
sign-off: alex
co-dev: me
sign-off: me

Correct?
> 
> Best regards,
> Krzysztof
> 

Best regards,
Lukas

