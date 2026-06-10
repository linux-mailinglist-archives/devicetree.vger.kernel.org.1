Return-Path: <devicetree+bounces-309539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BnjmBVIhKWqnRAMAu9opvQ
	(envelope-from <devicetree+bounces-309539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:33:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0A3667346
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:33:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mD2+nA45;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309539-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309539-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6B14530905EE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E99391E52;
	Wed, 10 Jun 2026 08:26:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D00D40D564
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:26:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781080008; cv=none; b=dhK6w8fbHAeSRLAsneXERxWYGyNgaosAOrqxqXAUO4Dd6frucuaPLF4ZKcEQ8A4QXfd67thD3qBPOJt6N6jTJD1y48LnkFzTZj4HkMUsnwKfbtHPz+xlfTztMk2233THp2H8r5w1nAmAoxY0LIQdBaaCKmes3A+2P1gG+VpWR74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781080008; c=relaxed/simple;
	bh=hh9kNn4NnP+zGgv6rIG95xT273NtDx4KJbMFh3H+Hlo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ksi1uUmkpxbl7n0nhgPvUIdPtGFPeY/sWbinN5hwK4iJCwE4NUHYFWubmmCTTnSCnOT0rI42gRzauZhiACozzBDAP+CWJCBZWShyfRbQf2pdEZz5dWI7IdzidgNDUSrhPy29Uxs/k0Qogp0M7Ifbmfmde73xKpeSlday7FDjolc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mD2+nA45; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B29F71F00893;
	Wed, 10 Jun 2026 08:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781080006;
	bh=ha6ohkISed51f8pj3VBBUIoEau06A9qj0/TufibD094=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mD2+nA452B0XneniOi6eQ/qtRVugfdgxpdmFk25mXOEoFN/FrH71nDZGhfOIYILFf
	 r3cpIo3rAnZGHsaRIY4Caq30evBJ1C2tkvqaxXct2s/lJoSAfwerjNra0Dz/NcZdu0
	 4w/DDBEORj93vA/2n8MA5HyhFBpwpvGtpmV/9ARwbQkpiKbrbRiJTaIujRU12cuI7l
	 EQBNbIX8sVlv2Q0NoslGMmA9d2k59cM3G27CDxUNljYcqu4YoJFApJ9Huyxa4AYig4
	 w6caQh6xokOYZuH7ODeqleWX/sla3s+InVkQsIS49NyZjdDFXJNxLZq+z00EgY8goF
	 OyhCtlk4LreyA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 1/3] dt-bindings: timer: mips,p8700-gcru
Reply-To: sashiko-reviews@lists.linux.dev
To: "Aleksa Paunovic via B4 Relay" <devnull+aleksa.paunovic.htecgroup.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610-riscv-time-mmio-v8-1-a865206675c6@htecgroup.com>
References: <20260610-riscv-time-mmio-v8-1-a865206675c6@htecgroup.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 08:26:46 +0000
Message-Id: <20260610082646.B29F71F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309539-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+aleksa.paunovic.htecgroup.com@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,aleksa.paunovic.htecgroup.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,htecgroup.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D0A3667346

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Mismatch between the node's unit-address and the first address in i=
ts 'reg' property in the device tree example.
--

commit 28ad318962744fd052dc7a14265d2214d613bc60
Author: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>

dt-bindings: timer: mips,p8700-gcru

Add dt-bindings for the GCR.U memory mapped timer device for RISC-V
platforms. The GCR.U memory region contains shadow copies of the RISC-V
mtime register and the hrtime Global Configuration Register.

> diff --git a/Documentation/devicetree/bindings/timer/mips,p8700-gcru.yaml=
 b/Documentation/devicetree/bindings/timer/mips,p8700-gcru.yaml
> new file mode 100644
> index 0000000000000..3498255762cce
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/mips,p8700-gcru.yaml

[ ... ]

> +examples:
> +  - |
> +    timer@1617f000 {
> +        compatible =3D "mips,p8700-gcru";
> +        reg =3D <0x1617f050 0x8>,

[Severity: Low]
Does the unit-address in the node name (1617f000) need to exactly match the=
=20
first address specified in the reg property (1617f050)? This mismatch will=
=20
likely trigger a unit_address_vs_reg warning during dt_binding_check.

> +              <0x1617f090 0x8>;
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-riscv-time=
-mmio-v8-0-a865206675c6@htecgroup.com?part=3D1

