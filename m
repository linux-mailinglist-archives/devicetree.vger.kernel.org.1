Return-Path: <devicetree+bounces-319719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CzOrObwaR2oJTQAAu9opvQ
	(envelope-from <devicetree+bounces-319719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:13:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8134D6FDDD9
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:13:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=V6qWYtAD;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319719-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319719-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1AF2B3018321
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 02:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C3E6242D72;
	Fri,  3 Jul 2026 02:13:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086411A704B;
	Fri,  3 Jul 2026 02:13:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783044794; cv=none; b=JWrTg+CWXLlRdlDKNR2WaGXSl2bVzIhVrnudFL98ppwkHXd7QMxoHdjOBEoPUSup+GJHNErWWGg6NM0aqTD3UOyCl5TiR0Ec2FVEZd7543z6zXHMPfMbWWGd5HlzbhTO7NAHwCJzruzjTzAo1gEqPEArqurDROea2n+BpyuXQns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783044794; c=relaxed/simple;
	bh=lXJKRwaIreHX7iqJY+Kswc621+NZ1YBTrsZP5kFwW7g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=io94aO9z8nD+aqnuQvQMS+HYBaIYpvcgWjhWNsPFa0mUYS/v/ExuC6fdFzf7yt2GOh1ns+oivdiANkx53oRosuil26Csn70YRZqzvOOKFZCUYh3JwPhTxxhMNUaihmYkHgpzb7P2c1aBFzZXeeDVtMUDFNKYuzQ+heifw4dEqF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6qWYtAD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 494D21F000E9;
	Fri,  3 Jul 2026 02:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783044793;
	bh=lXJKRwaIreHX7iqJY+Kswc621+NZ1YBTrsZP5kFwW7g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=V6qWYtAD5ktq1b/Fl2yrcWKcOVtVZieVzzICg4qz+tL4W5Cyt9SGouFC3GB7Ol/gF
	 jRg+Zo0GGLmJ5MTtjCsDRM+hqfjM+eBt0QUTKQfcle8nC3ky8LPOiTYLmiAGKk4l5n
	 eItIy5VXtzRL7pesxxzm9BZHgoZMFU7EoT5wzVpibtwHSJaIocTYDWf4Igj8Zm39PG
	 zIYudisWTIqG2RU6FspSkCI8qb+dU4zYaWAYcb/66KImsnXmEFdstOyiFVQ9T+y+AO
	 mU6PdIhQkYKmAyYLsYj3Jud+oPwhtFoIeQ5idfRXiv+5SQsfuBbj4iBLwz3Xruvimw
	 6hrCkRKFWd9oA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/6] dt-bindings: PCI: snps,dw-pcie: Add msi-parent
 for MSI handle check
Reply-To: sashiko-reviews@lists.linux.dev
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260703020003.485436-5-inochiama@gmail.com>
References: <20260703020003.485436-1-inochiama@gmail.com>
 <20260703020003.485436-5-inochiama@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 02:13:12 +0000
Message-Id: <20260703021313.494D21F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319719-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8134D6FDDD9

> The IMSIC device on RISC-V based system does not require ID
> remapping for MSI. So this device only needs "msi-parent"
> property for IMSIC-based SoC, and the "msi-map" is not a
> necessary property.
>=20
> Add new condition for MSI handling on IMSIC based SoC.
>=20
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703020003.4854=
36-1-inochiama@gmail.com?part=3D4


