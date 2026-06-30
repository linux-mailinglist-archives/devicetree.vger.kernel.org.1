Return-Path: <devicetree+bounces-317739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k35aKCK6Q2qjfwoAu9opvQ
	(envelope-from <devicetree+bounces-317739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:44:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE316E4565
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:44:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oUdiIiPu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317739-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317739-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78C1430AFF00
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B734540BCD6;
	Tue, 30 Jun 2026 12:40:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADD7B40C5AE;
	Tue, 30 Jun 2026 12:40:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823213; cv=none; b=d8poj96187ogpL7KAgfUNi4uj+ZgfXYaCho86LZY5DYSQwvE4jSCx8JHKkugaLehLRTmFR2WBZk2fbH3g0XzJ16S3y7shFwxZ5k8bnewZlMQnS99gGdplcW+ZGmEw520cX0gNyB43KlwpdgyWaFnuLcAMNKZ4etdIIfsMNRArQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823213; c=relaxed/simple;
	bh=uKaCbDGpWr5UKHnGgrDO87OukPxEyAP0AwZqhmrej+k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kVEzTX2lWS9Keu1wo97UNLqqZk4PK143VqlGzFBky2UjDkRC0OH3Oz8QCh6sz2MoRyRIIunTB7mdQlzP3pgZ6oRddEcyyyDDlZJPNpitmBXfSZlYeuUpzcjMPzJyEfRWZX/E0jJSbzBoROEdM2qWcnVYz+2LLTm4liRn0AyGPGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUdiIiPu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBF841F00A3A;
	Tue, 30 Jun 2026 12:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823212;
	bh=uKaCbDGpWr5UKHnGgrDO87OukPxEyAP0AwZqhmrej+k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oUdiIiPupylxAEryQUqh/oTtmWH41ATcBpPUPly+7VRm1yDoidgmy6mktoTVglH7q
	 lCaqvSzRBoETfutMr6ueHJ7jDW6YIawqEXun7ma9Gs47539PZPgrB9nlnQCL9WPRrP
	 7DKxNmmQoEfqNvOPn4jaj21G7szJdYZXETnd823u3TsjBjRWw/XiDt2WL3V++87/g6
	 woFbxDL5+Z573X6aCkmU802d9b6iEyt5TziDkYdH37Our0bYxe7oc49DYXs49t+4XF
	 mtkiTIWDHSaI9XyK2ok6vi4fnst59UuVcEHXCI3sYGVQUpG46gcuq2ElOkUdK67Zgv
	 Esjd3JfQtW7PQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/11] rust: usb: use `Option<&IdInfo>` for device ID
 info
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org, "Alexandre
 Courbot" <acourbot@nvidia.com>, dri-devel@lists.freedesktop.org, "Danilo
 Krummrich" <dakr@kernel.org>, ojeda@kernel.org, robh@kernel.org
In-Reply-To: <20260629-id_info-v2-4-56fccbe9c5ef@garyguo.net>
References: <20260629-id_info-v2-0-56fccbe9c5ef@garyguo.net>
 <20260629-id_info-v2-4-56fccbe9c5ef@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 12:40:11 +0000
Message-Id: <20260630124011.CBF841F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317739-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:acourbot@nvidia.com,m:dri-devel@lists.freedesktop.org,m:dakr@kernel.org,m:ojeda@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,garyguo.net:email,sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BE316E4565

> It is possible that ID without driver_data will be passed to the driver,
> e.g. `new_id` is used to dynamically create a new ID without data.
> Therefore, the driver must be able to handle the case where `driver_data`
> is 0. Thus, update the `probe` functions to get `Option`.
>=20
> The current code cannot tell if the info does not exist or is the first
> entry; however this will be achievable once the code is updated to use a
> `&'static IdInfo` pointer instead of indices.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-id_info-v2=
-0-56fccbe9c5ef@garyguo.net?part=3D4


