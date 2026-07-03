Return-Path: <devicetree+bounces-319721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g70zOOIaR2oRTQAAu9opvQ
	(envelope-from <devicetree+bounces-319721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:13:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 644D06FDDE9
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:13:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FGPoQluu;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319721-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319721-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 818903028F78
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 02:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B27C2494D8;
	Fri,  3 Jul 2026 02:13:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFD7241C8C;
	Fri,  3 Jul 2026 02:13:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783044831; cv=none; b=X773ijbaV5Ob16JF4VGA249HyGmxoxoC2K/LGwwv2kpb/YwlgkR+tKfAD8st4iGr4HpWSMW7yEk7RoY5OtM+36z6dwGiPVsE9pipdDCNAEwFWpOgPB4H5IWagQU0/u81pUh8oMxmAAsNl23wZvMHCS/Q3wFk8msNL1SVNPHROtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783044831; c=relaxed/simple;
	bh=1OVt7jmQtGfP16Tk4mxdo+wn4A2mMhX77Yfh9zS4BLY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EbXiH9c1jrXFib8t/l0TFk2PMd1u6acoQsyYHbGjGSfenaKQnDF4J6Ai6DUnvhBEhQJQ25X2SsJ2PS6m4aZdqb+Y2muy+3jVD/jlKt4gZalFy5TJp0EjRs/xJT6q4hRstltheEytFtcDi00KEfdxD78hDuMCp99V82FdojcdYH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGPoQluu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C41F1F000E9;
	Fri,  3 Jul 2026 02:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783044830;
	bh=1OVt7jmQtGfP16Tk4mxdo+wn4A2mMhX77Yfh9zS4BLY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FGPoQluuXdfUw13PUhwbgYwJOPoeqGKYFIFZY2COs+vSdGV8UqQT5+bxk4vEWIvE0
	 qzl2WfuHyZkGhohpxEq8i6Zzt5iAw5jZjoGPtW/VYUTuDwD4r+4oOK9VYGjoEABLwa
	 WLa7ypJSgn1YvktOTYvRCmsILlto0w8ChWnnfAMMYVwXugGD+VJuHBSvgNYnJf8qHx
	 43y94JmC85aligofDdFsZrAYOswI6KUYoTtzxMgFOSzA+VUoaR7Aaecq5zO51MkUa2
	 m0L0Uhx0nYGZBoUZi6rpVaoGy3x3Xq4RINJ4Y3fkQZZ5louzZde0JpDE49LM3HAQAC
	 Okeo+pNwqHrQw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/6] PCI: spacemit-k1: Add device id update helper
Reply-To: sashiko-reviews@lists.linux.dev
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260703020003.485436-4-inochiama@gmail.com>
References: <20260703020003.485436-1-inochiama@gmail.com>
 <20260703020003.485436-4-inochiama@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 02:13:49 +0000
Message-Id: <20260703021350.5C41F1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319721-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 644D06FDDE9

> Both K1 and K3 needs to set vendor id and device id, add a helper function
> to simplify this.
>=20
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703020003.4854=
36-1-inochiama@gmail.com?part=3D3


