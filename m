Return-Path: <devicetree+bounces-313933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7xQ6Hcl2NWoqxAYAu9opvQ
	(envelope-from <devicetree+bounces-313933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:05:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 524DD6A731D
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 19:05:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eQJsfrA0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313933-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313933-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 965CC301E9B5
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 387E63BE174;
	Fri, 19 Jun 2026 17:05:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6ADD3C0625;
	Fri, 19 Jun 2026 17:05:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781888712; cv=none; b=qO7hnUwnqNhveJEBClK763g6CQPZN8ED3kI1u2NFeVtS0+hM9TnEgNNMFHzFwHQErkabnk28gTlX+m/Lgp0TwNElkUTlQwd8NfPieYTZDBdbXOmEqsjLtU3LsDzxNKXycaKs8n6QyJtUXhU3g6reHcBLmHpgtKIlKknxUOgymaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781888712; c=relaxed/simple;
	bh=UdxH6owbpvjotP1H0Mzg0H02heg2damNE4ssLdIzPYs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iuehUOamAsWSJrxJFHSGJQuVOwg6kHdD0sSjQNnH+TRD6pjKVXvM7eH2jjPn/p4wBOj6196wUcFhTuTbJ5yjwFQnir7DV5N6T8Yapeyw6xSjbJmrmgsWGT6xAEJY90OVZf6bYWSVaznC8dbKqACoUJv7jzny8cmLpNmPIWVPe+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQJsfrA0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 610711F00A3A;
	Fri, 19 Jun 2026 17:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781888710;
	bh=UdxH6owbpvjotP1H0Mzg0H02heg2damNE4ssLdIzPYs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eQJsfrA0QkT9xzcvNy+RPiLvTE8LXeUZEH+57exIl5eMZCuquaqxjukzO5Lp15foo
	 A3Ewaefymv+/KGC5Ot5+DRgsWih6Ujv0/JVVopNyVNK2vIO/tc3ykG7qaCe/6clkgb
	 SUbP48HuSaTV3nbfsezOLGkDXjNf1RKUhTobg1H5OArs65s0a+5sUIeqYAzXtgexjg
	 4h8KyHdZMNxyv7XotI4PCN8qNLHCv9WA8PrlatiKkvgiGZqALl6kG+KW7FIOIRZgOs
	 gLy7ptVsKs8d2zNxRUo31Umh+vuOiut9nViLsG93pUbvLae2bLPLmANuO2zNHQhJL3
	 vUBa90We4dWsw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 06/10] rust: driver: remove `$module_table_name` from
 `module_device_table`
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gary Guo" <gary@garyguo.net>
Cc: conor+dt@kernel.org, ojeda@kernel.org, dri-devel@lists.freedesktop.org, linux-pci@vger.kernel.org, robh@kernel.org, "Danilo
 Krummrich" <dakr@kernel.org>, devicetree@vger.kernel.org, "Alexandre
 Courbot" <acourbot@nvidia.com>
In-Reply-To: <20260618-id_info-v1-6-96af1e559ef9@garyguo.net>
References: <20260618-id_info-v1-0-96af1e559ef9@garyguo.net>
 <20260618-id_info-v1-6-96af1e559ef9@garyguo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 17:05:10 +0000
Message-Id: <20260619170510.610711F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	SUBJECT_HAS_CURRENCY(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313933-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:conor+dt@kernel.org,m:ojeda@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:dakr@kernel.org,m:devicetree@vger.kernel.org,m:acourbot@nvidia.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[garyguo.net:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 524DD6A731D

> Wrap the generated code in a `const _: ()` block to avoid symbol conflict.
> This removes the need of creating a new identifier.
>=20
> Signed-off-by: Gary Guo <gary@garyguo.net>

Sashiko has reviewed this patch and found no issues. It looks great!

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-id_info-v1=
-0-96af1e559ef9@garyguo.net?part=3D6


