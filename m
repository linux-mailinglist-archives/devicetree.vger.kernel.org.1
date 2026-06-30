Return-Path: <devicetree+bounces-317745-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wMWeD0m6Q2q7fwoAu9opvQ
	(envelope-from <devicetree+bounces-317745-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:44:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD1C6E45A0
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 14:44:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="mfKdy+/8";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317745-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317745-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07B3C30C5756
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C272B3CC31F;
	Tue, 30 Jun 2026 12:40:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC5740C5B0;
	Tue, 30 Jun 2026 12:40:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823224; cv=none; b=YN/4aghcxSjbycdhHVI9D83y8W2YMo4ztAEwuJw5jN3gSpNPC/3AOD2IECLALAfdE0D1ccrnIhBnktU6cDsEGTpmYaobI/nHy6mVBuDHmvpQpCykZyh2Q69Q8qYywwRpsDQYSLvifeyb8ANYePiPR7XgkzIOswsMU2x5DSm68RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823224; c=relaxed/simple;
	bh=rLEOxETaNhnEfcXp3Fz1GLdaUFQ6Efo0pDXRpbhYQto=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iVytkRyASkrzkSIFad6XzUYD9BqbDVHOpH3uiC4JpOD4Q+XsXdi7pHng1bs0Z/VMrqZUW8qbHR3cQs1ZRJXhKbu38lvUInSHN2ONTzXqVdOtcQnIFaBsmp2InxPRkUxnlRllA6Yay3X/K1HSbiq5UhRMc4ZJLiaj8o95EzFWjBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfKdy+/8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D95651F000E9;
	Tue, 30 Jun 2026 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782823223;
	bh=rLEOxETaNhnEfcXp3Fz1GLdaUFQ6Efo0pDXRpbhYQto=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mfKdy+/8OsIS2Dteakg5jgJgCjNNbSS5iYE/NPy16UlJg7YieYGh0eoIT/XS91SBi
	 /Za0HtsXnH+RfCHhHFqjHRY4cGLCX1EyCQLWzR6++Y6xBeMlVZLHQBrHpTYrQnsFyr
	 uQ7oIdWmqCPBb65dYlSgViwatFaSR4i1yqGFmTKQmmwyUgfFK6drQFbDwkRDDztVMV
	 jlQ3IjpnwXDLdLFsIuC14wJbPtyDb89CNuxry8e4w24Q4Vn8omkBF+8cskwwsYD3j0
	 lB4JM9RJZy3yDnNaIWW3jH2WooUxUkb8/cphl2YpVYVY4ekKEdxk3UmivZhRryY8eN
	 EutbKTKB2DWng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/11] rust: driver: remove duplicate ID table
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: "Danilo Krummrich" <dakr@kernel.org>, robh@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, "Alexandre
 Courbot" <acourbot@nvidia.com>, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, ojeda@kernel.org
In-Reply-To: <20260629-id_info-v2-10-56fccbe9c5ef@garyguo.net>
References: <20260629-id_info-v2-0-56fccbe9c5ef@garyguo.net>
 <20260629-id_info-v2-10-56fccbe9c5ef@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 12:40:22 +0000
Message-Id: <20260630124022.D95651F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317745-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:dakr@kernel.org,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:acourbot@nvidia.com,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:ojeda@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,garyguo.net:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCD1C6E45A0

> Previously, `IdArray` contains both device ID table and info table so we
> keep a separate copy for MODULE_DEVICE_TABLE for hotplug (which needs to =
be
> just the device ID table). With the info being changed to be carried via
> pointers, `IdArray` is now layout compatible with raw ID table and hence
> there is no longer a need to keep the distinction.
>=20
> Deduplicate the code, and remove the redundant copy for hotplug purpose by
> just giving the `IdArray` instance a proper symbol name.
>=20
> While at it, also update the macro to use `::core::line!()` instead of ju=
st
> `line!()`.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-id_info-v2=
-0-56fccbe9c5ef@garyguo.net?part=3D10


