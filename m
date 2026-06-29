Return-Path: <devicetree+bounces-317304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T46SDuDuQmqYIwoAu9opvQ
	(envelope-from <devicetree+bounces-317304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:17:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCE96DF043
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 00:17:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TEVZ9hZB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317304-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317304-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 411A73005328
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 22:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496F230CD95;
	Mon, 29 Jun 2026 22:16:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB04191;
	Mon, 29 Jun 2026 22:16:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782771418; cv=none; b=NqcXKgTk8mUJAWapWerGSP4vufb0twsu5sgbh/TMkJXI8l8VmeZKoYRnrMYa+Jv96LUQkdWOHMVSS8S3alVU7SU/lkxXcE0O7wT8kF1HDzgwMJbW0Muckn4LfEf+7oqF6HzepkUcz55yD9ZQU6rBNjdP9QbJ1WlkklsJt10dOUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782771418; c=relaxed/simple;
	bh=AGfMJBMByvaNwcIcdNYaRh/QI4GMZznW+k/lnUDsEFk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=el8P9pz0/5FHkRPGBcXD5Isa2rx19vzMCKp94hTafb+RK0fYJ/DqhOf2IsxQAkDOBlHqUe7C3t8+43IeYcDVcv3vOvUlU84qzyhu/6u2yDe6Oxnlm5FuuLTFG5oo6EakPn2FkgvUbiJoeyr3ATml/4B4D/5MU8QJI0kHuZdJ/Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEVZ9hZB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 902A11F000E9;
	Mon, 29 Jun 2026 22:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782771416;
	bh=AGfMJBMByvaNwcIcdNYaRh/QI4GMZznW+k/lnUDsEFk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TEVZ9hZB/zMTZl+tvYGbn0J1nlbQ+P+QgSrgwaXOMXYqbLVOeBBLMXlV7Z3+A1hfL
	 54l/UE0M9KxMpAbli0Vz7rHab9LWeHpmFYcFcTBPpiBK+Yihko4HNPKt0+RTVUNy6q
	 z8EftgCqEbpr2oUTS33b0GfU72SvigDTM9XWj3BTaMIwx5OLxxP049Aoe5PCNBRMg7
	 JRKGox86TVvzUQ0ow9qEkUhb5uzYjjl1xsYAUHhsYsEOXUfKSuJ6R8l36h7pxyGfsx
	 r6//SxdRzoz+s68OssuN1TbLLmY7+iCXNBJSOBvqeF+FcW1DGXqyu5Mmoe4BkDwWjT
	 Ex/nCdHM/ogSg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/4] PCI: rzg3s-host: Add support for RZ/V2H(P) SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260629220932.861445-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260629220932.861445-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260629220932.861445-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 22:16:56 +0000
Message-Id: <20260629221656.902A11F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:prabhakarcsengg@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317304-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,renesas.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BCE96DF043

> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> Add support for the RZ/V2H(P) SoC PCIe controllers to the rzg3s-host
> driver.
>=20
> The RZ/V2H(P) SoC features two independent PCIe controllers that share
> four physical lanes. The hardware supports two configuration modes:
> single x4 mode where the first controller uses all four lanes, or dual
> x2 mode where both controllers use two lanes each.
>=20
> Introduce a setup_lanes() function pointer to configure the PCIe lanes
> based on the hardware instance. Implement rzv2h_pcie_setup_lanes() to
> detect the configuration at boot time and program the lane mode via the
> system controller.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629220932.8614=
45-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D4


