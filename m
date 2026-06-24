Return-Path: <devicetree+bounces-315403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PaGTM21JPGrImAgAu9opvQ
	(envelope-from <devicetree+bounces-315403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 23:17:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF566C1691
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 23:17:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=XTaTgVlK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315403-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315403-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 651FC3005746
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:16:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CE63E5A3D;
	Wed, 24 Jun 2026 21:16:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8C73E5A3B
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 21:16:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782335799; cv=none; b=Qake1dwGI0C9aUZweEUnJEuHm3pe8PTGjdSHNfVLFMRltGgP1mxMV1boijqRyI/3KYSKEBv8PjSsTX0waVC8ZUdLRDgk5sKNgiwYPgiYl65bpH7/khUO4abX3JCFBH2Dbf/1olDd1LAcSPyJm9caxo37/I5DulSJ6ad6OVrmF8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782335799; c=relaxed/simple;
	bh=x2pVzOoZN6Uj+INLu+cBkxwDBPEQFtDR6TwqvAo6vcE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UTcjN5L2GWfRcVzL10lZ5IpnLzwsXnhZzQgwGAK9eDuk8ZfgmdK6/tL1ysxGfLElUtwB62oC26f3wuMhcg0zaNf4Wwc1sl8fkHQH3pSY9gf4+tS0mnWRdrgRcetf7NUQRZ15EQ+GnlJUGzIfAYQUyIsQqrTbHuXoR2DqbOxY85A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=XTaTgVlK; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id A40D9C6B3B9;
	Wed, 24 Jun 2026 21:16:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 884E9601C5;
	Wed, 24 Jun 2026 21:16:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 79617106C8468;
	Wed, 24 Jun 2026 23:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782335795; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=BxRZgMMcXld1GewrTn/+Bpz0RNC0eo+0XsbHRMtaIMw=;
	b=XTaTgVlKy08X8NDZtKOCQMu0BDALNDA0VYnboGRbodz5KICDzsoe4bn0H5ghMcfYsNHzf7
	QMT8V300UIJts32vRAKK3n2sFo2SrX3dkNMMy4kNW3ZcWTiYwg455hdjrmmZSwa7RdIiR7
	Etdi+5yxsda+qPlla29otIKBa2fFVLaxtJTit1ZpM7ILtmyrvF1ka/ptJCXh10z/j2Ee06
	yXaN2S8hPf4dtbjbq7roFJHxyv/6TVa2zH4at9ce7yyJKx1KCjDwRzQXuSOiYOqfYxVf2B
	gnr2CF7QMCoYoKGVEZR4R7tZQv4JfCKAtcoichw7aUXYzB2Nyqz2/jyQM2deDw==
Date: Wed, 24 Jun 2026 23:16:31 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Tommy Huang <tommy_huang@aspeedtech.com>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH 0/2] rtc: aspeed: Add AST2700 RTC support
Message-ID: <178233558822.1517260.6981271146090179790.b4-ty@b4>
References: <20260601-ast2700-rtc-v1-0-15d4ca46500a@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260601-ast2700-rtc-v1-0-15d4ca46500a@aspeedtech.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315403-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:tommy_huang@aspeedtech.com,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexandre.belloni@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bootlin.com:dkim,bootlin.com:url,bootlin.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2DF566C1691

On Mon, 01 Jun 2026 17:14:05 +0800, Tommy Huang wrote:
> This patch series adds support for the ASPEED AST2700 RTC define,
> includeing dt-binding in the Document and rtc-aspeed.c

Applied, thanks!

[1/2] dt-bindings: rtc: add ASPEED AST2700 compatible
      https://git.kernel.org/abelloni/c/5e7f746bc106
[2/2] rtc: aspeed: add AST2700 compatible
      https://git.kernel.org/abelloni/c/3319cfeeb8c4

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

