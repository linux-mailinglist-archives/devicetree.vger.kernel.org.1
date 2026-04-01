Return-Path: <devicetree+bounces-283575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MjFANo4zWnDawYAu9opvQ
	(envelope-from <devicetree+bounces-283575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 17:25:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9355337D062
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 17:25:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CB1833045E0B
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 15:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B2243D0905;
	Wed,  1 Apr 2026 15:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="hEaGWqGd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8D63914EE;
	Wed,  1 Apr 2026 15:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775056675; cv=none; b=BTs753wnpLULQvNlGXs5vQk00ofJYj1uGtytfN3ibV2P0EXHvRK2RJLq3vLHu1+2PKRJA68oFvUk7Trk45Zfj8KURQTie6OxJqILk/q9BUHvQv+pl8VtxYvknjpSOmUynCHC4bbSAqh3czWXk8hLuXDJivsPBm7PXqIC7Isu55I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775056675; c=relaxed/simple;
	bh=gBXw4dt8/h1iPocGpr1eq366xSmy4b59F+laknw25HM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=IIstlpEyfAV5uVe3SyD3iVekJK0RQjEGWSBytZzPJ6vj7yK67W5ohvTpMzx1DUjS+7eUVZnwrSh45doaCAOwVKPa4mbLPhJ3oQd7xMO0TWDxe3paTKa8LKG58KfrqF77uUtYlHDkTjKscBhIYWxj4bknCrm1uH2yGnuvEtWPaRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=hEaGWqGd; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 18A7F4E42898;
	Wed,  1 Apr 2026 15:17:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D1498602BF;
	Wed,  1 Apr 2026 15:17:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AA7BE10450290;
	Wed,  1 Apr 2026 17:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775056670; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=dFFbYJigz0s6tFtFXTo9/IMYwgyvCHntDw6JcPXENGI=;
	b=hEaGWqGdrBU/UXfQgQ1PlQr+I2oufhE4sIqPqASDzElO4jKtaGvsGGvOlgA4CHodLVPFa3
	qz0t72ztmhmzj+EceWjbGkR9YTDpv6wY+Hrtgy5Xk0yW6/WuZvD3y7PFOAKyAZtCWPkbYD
	OWuv0kTZf3ILgTD+xzDvasj0ag3KhDuObT40zlYmN1IVnIAjR7Gmjdgh1d6Rf9gVbeI03V
	h0z7dXhD+CKAn5NtdjlNDG84IAPv4yCjBm5gw6NgutGYUjqFYTr+okp3kMnQX/F2F3CbrT
	bt+AmnAsLqOI20eeR5KWv9p/OTSSQFpQZxNNvzi2OrNGOqiBSVAePHiT1l1zuA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 01 Apr 2026 17:17:46 +0200
Message-Id: <DHHX2NDIC0DE.178QX4JKCVHF0@bootlin.com>
Cc: "Ayush Singh" <ayush@beagleboard.org>, "Geert Uytterhoeven"
 <geert@linux-m68k.org>, <devicetree-compiler@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree-spec@vger.kernel.org>, "Hui Pu" <hui.pu@gehealthcare.com>, "Ian
 Ray" <ian.ray@gehealthcare.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
To: "Herve Codina" <herve.codina@bootlin.com>, "David Gibson"
 <david@gibson.dropbear.id.au>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [RFC PATCH 12/15] libfdt: Handle unknown tags in fdt_get_next()
X-Mailer: aerc 0.20.1
References: <20260210173349.636766-1-herve.codina@bootlin.com>
 <20260210173349.636766-13-herve.codina@bootlin.com>
In-Reply-To: <20260210173349.636766-13-herve.codina@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283575-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid,bootlin.com:email,bootlin.com:url]
X-Rspamd-Queue-Id: 9355337D062
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Feb 10, 2026 at 6:33 PM CET, Herve Codina wrote:
> The structured tag value definition introduced recently gives the
> ability to ignore unknown tags without any error when they are read.
>
> libfdt uses fdt_get_next() to get a tag.

I think you mean fdt_next_tag(), here and elsewhere in the commit message.

>
> Filtering out tags that should be ignored in fdt_get_next() allows to
> have the filtering done globally and allows, in future release, to have
                                                         ^
							 releases

> a central place to add new known tags that should not be filtered out.
>
> An already known tag exists with the meaning of "just ignore". This tag
> is FDT_NOP. fdt_get_next() callers already handle the FDT_NOP tag.
>
> Avoid unneeded modification at callers side and use a fake FDT_NOP tag
> when an unknown tag that should be ignored is encountered.
>
> Add also fdt_get_next_() internal function for callers who need to know

And here fdt_next_tag_()?

> if the FDT_NOP tag returned is a real FDT_NOP or a fake FDT_NOP due to
> an unknown tag.
>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>

Looks good otherwise, so with those fixed:
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

