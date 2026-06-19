Return-Path: <devicetree+bounces-313924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zW/AGsZ2NWofxAYAu9opvQ
	(envelope-from <devicetree+bounces-313924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:05:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1776A7301
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:05:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EkUu1iIr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313924-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313924-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A194302D312
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EE0A3BE174;
	Fri, 19 Jun 2026 17:05:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2D53B19D6;
	Fri, 19 Jun 2026 17:05:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781888703; cv=none; b=eYF+/rt8PB1S9nyxXpQ06OMSr8kke/PLGFa19OlP8s+SgijZunT6JcRPdlhIQjD7j9aS/vdo8stX2xpTlE1e78cVmBl5w5ABlVdwExxz5Kew/AYqWuUR7Yyy3N5Xx+Sq9bY8HWYVwZ5p8nhRn5KnXkxDDqyYISKmETu4stkeV8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781888703; c=relaxed/simple;
	bh=xsNYdaSZ7DOl66yYxVx9vRbOxtf+w6s+PFyeaUD/br0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=f6mfOIGy5qxsSK4qIpSfiX4pf7dQFGPqtxQVHHo4ySPRV+Z3lnRhHmeE7P1mX4YMqly5v+Zqc3cHuVhZKKEbVL3Arv2PaiQ6fvDRXpoRzcBbdxpokbHenmLhaJ49G5p/+UdNaT5+lVwTEzLGvDByJdGpNMkXKRf27SGVphJXwkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkUu1iIr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67FA31F00A3A;
	Fri, 19 Jun 2026 17:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781888701;
	bh=xsNYdaSZ7DOl66yYxVx9vRbOxtf+w6s+PFyeaUD/br0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EkUu1iIreY9s6sc7gUBEwlvGBmosHp/wpg4lMzlW2sMwN/lSTkHu7YAzl5STe5x0A
	 v+/3DORnBl5jFKZy83T0uAuk3fc3fsbrJp8rhoAXL3c8GtT5FzAwQ7UwcNQNbAOS08
	 6vJ6Vum8E46rkg9qg8MZHJOb5A1FoC2b61PCrOfhszaeurzWfGRhGDYzQhbGW1kgjq
	 DpiYyGo3Sa9DXYCQdLHAVEzj6I1OI4piLF/7cB2j9lR1QPZGI/9jLO3uZLl3NF74lN
	 oYGB+XEy7G61EH5LlBzXKbK7/7ogkDBkgf277upVmIgW9+KoZzS3zLCOE8kTZdLctI
	 MAxBT+OODvBqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/10] rust: driver: simplify
 `IdArray::new_without_index`
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org, "Alexandre
 Courbot" <acourbot@nvidia.com>, robh@kernel.org, ojeda@kernel.org, dri-devel@lists.freedesktop.org, "Danilo
 Krummrich" <dakr@kernel.org>, conor+dt@kernel.org
In-Reply-To: <20260618-id_info-v1-2-96af1e559ef9@garyguo.net>
References: <20260618-id_info-v1-0-96af1e559ef9@garyguo.net>
 <20260618-id_info-v1-2-96af1e559ef9@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 17:05:00 +0000
Message-Id: <20260619170501.67FA31F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313924-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:acourbot@nvidia.com,m:robh@kernel.org,m:ojeda@kernel.org,m:dri-devel@lists.freedesktop.org,m:dakr@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,garyguo.net:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE1776A7301

> This method can very easily construct the `IdArray` on its own without
> delegating to `Self::build`. Doing so also simplifies the phy device table
> macro because it does not need to construct tuples anymore.
>=20
> This also allows simplification of `new` and `build` which removes the
> `unsafe`.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-id_info-v1=
-0-96af1e559ef9@garyguo.net?part=3D2


