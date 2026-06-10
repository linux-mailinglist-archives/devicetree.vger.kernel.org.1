Return-Path: <devicetree+bounces-309449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vdR4B+gPKWrOPgMAu9opvQ
	(envelope-from <devicetree+bounces-309449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:19:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA11666913
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:19:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=dolcini.it header.s=default header.b=YLXyy1ra;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309449-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309449-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=dolcini.it;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 138FF31782C6
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB46385D88;
	Wed, 10 Jun 2026 07:11:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2160D382370;
	Wed, 10 Jun 2026 07:11:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781075503; cv=none; b=WVwOpFB3pZuYbxKdIioiBPgrrzJryDAXoVVD0Nyo45XXACe/0+g3lzB/EucvLkHQxirrHOzeLndaf0PL5xLoZX4vAYHCOfQ5vWOpJ8yrKrh0J8qIN9CwMAgHNectmBUtV+1sBHEZqAFQDo5nxjA5pR4YUu/n+mhQ5Fd+SGF6FNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781075503; c=relaxed/simple;
	bh=PsMBXlxnHOppNxrhsXjBCOnq7L8hjFFj6STOMBZvg5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Me5c1cwnu9p7q9wtSMsOdkCXFc1p9XMSLQvat7DBrIBxBn3SNd1RCPCrvHk1GRWVLBEJ78mXve0KF8tFWVBumZLylcE4posJWBVnCLwhwmBhMklraH6KYwWjKsouGN9LD/kwczy2G+VMUyEEqud4/x1UBhB96e0Qbakv26E+Jsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=YLXyy1ra; arc=none smtp.client-ip=217.194.8.81
Received: from francesco-nb (93-33-119-89.ip44.fastwebnet.it [93.33.119.89])
	by mail11.truemail.it (Postfix) with ESMTPA id 02EFA1F973;
	Wed, 10 Jun 2026 09:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1781075500;
	bh=C466Soiyc7PE+BjDcL+dY8Zp6o+u8OKHxnynx2bmrho=; h=From:To:Subject;
	b=YLXyy1rasTXaW9KYzP6V1ymLFbPNXR+/kWVDSZsbhev2xaXuybQ+gFlD64tJiYKYd
	 X1wUK82EEd0o6W2ssMbvuJCTvI/qXcdSoqDnJVlSrILJoIUEq14J0Tbpby8CFO9nXo
	 RnuPKnjQJilNHsWQZDOW4Prpc1RcuYg1CXDFb7S9PXvd9UDlNORV7X/ACdyhcBCLnF
	 WQNZ/UMtl1wW4Hzdcuu0uUDycvB5P2Tiv89JFDQW5+QLjHPd3KjR8BsIGS5Fp3x1Xh
	 onUNDKPqnuaNT3v+/ocLF4PXGKHT3E1V+gLWOz02tTn3EzY/9X/x5h/kei6ddBb0qx
	 AkRuSYCYW826Q==
Date: Wed, 10 Jun 2026 09:11:33 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Vitor Soares <ivitro@gmail.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vitor Soares <vitor.soares@toradex.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/7] arm64: dts: ti: k3-am69-aquila: Add display and
 peripheral overlays
Message-ID: <20260610070736.GA24495@francesco-nb>
References: <20260602115123.1324474-9-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260602115123.1324474-9-ivitro@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309449-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:ivitro@gmail.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vitor.soares@toradex.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dolcini.it:dkim,dolcini.it:from_mime,francesco-nb:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,toradex.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FA11666913

On Tue, Jun 02, 2026 at 12:51:23PM +0100, Vitor Soares wrote:
> From: Vitor Soares <vitor.soares@toradex.com>
> 
> This series adds device tree overlays for the Toradex Aquila AM69
> platform. The overlays cover display adapters, DSI displays, and OV5640
> CSI camera modules available through the Toradex accessory ecosystem.

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>


