Return-Path: <devicetree+bounces-307898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r3wAAZPzJWp+PAIAu9opvQ
	(envelope-from <devicetree+bounces-307898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 00:41:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 525D7651D3C
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 00:41:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EKHOvmCh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307898-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307898-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 123043006B03
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 22:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A17327BEC;
	Sun,  7 Jun 2026 22:41:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2530148C
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 22:41:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780872079; cv=none; b=h0GxdikYQiFt9YAIPw5b9KhCgelPaUAmgIjHDbGkcDArH8oJbE/cupBIc72Qua5b8RPeVanOQKHFvQJnDOuHo10gRLoGx/VF/H2p+bUjGrgM43rpJDGX55eP+z3eAa3FliWpx+Z9fnkJLDLL+Y1V+Q78khNvqS1SlNQW4c18E2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780872079; c=relaxed/simple;
	bh=3e/tVGTtkLnH6sT59kT87xrrsS5Cu/w9zzhTCU7nFC8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qq1YC88GyihDZstWM5zspay31cjcGqIHizY0GslFNtHTsl/HqrQlMg6thLzSmm4WMV92bS536yWxFlTbyhwE9Wq94wqK85YfrrKxkoWE4Vf9iSPLTbOOJd6X2Mk4is7OupQThO+8MTTsRK+k6TF8uGZYL0WMV0WjP9STdTgiRl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKHOvmCh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA8181F00893
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 22:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780872077;
	bh=3e/tVGTtkLnH6sT59kT87xrrsS5Cu/w9zzhTCU7nFC8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=EKHOvmChPycIxxvJZDcFNuRQXDOgu3Alx0rFSMymcVEN53ozHA78sZYti4I0vrpiD
	 LxnRgDvKGON47DXuQ3cLmq4tjHEM9U2PhyS1WuoYx/IRMX1k8KOb9RtN0WeBnTt1Th
	 k8ei3SAe1unB2hSdB7V4KowR5CJo1FaRfZLHjSy4P2Ti+h9fzqvqkAaqmT/drjsT8I
	 02CSzc4B905w6xuOKEK8pD9nPo15uSOTmjPtEP5ICFrZnUy0tjB9LDPDmnnMck5UVl
	 t24XhyzC0KABLWoE+BsgMho5jBRe7gZG1Ib578LJoxxVN7zgnEwcExQn2BSsJWk2I/
	 Fl7+jpja3rr9A==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5aa68cf9123so3764052e87.0
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 15:41:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+BuWO5EjmHCqI7v7kSXGI1J/PdELZd84i2XbJEUjTBsTxMuKaKI93WOA4YApPJN2QWfa1Am+Ibsxlg@vger.kernel.org
X-Gm-Message-State: AOJu0YxvYfn8mXjdOunX8Hxkx1kzElijVm9lkSBklxFqrWEa73Bd4SVS
	piG/WY84pY3TGEy15XqF/27utHJDamKhSvhXyumLJNMIdwXbQKqfKFxeJ40zB7A+2rJCtiuNlfu
	YFEA8V+5qw5cWNgCHcKcP8NEtob1t19U=
X-Received: by 2002:a05:6512:460f:b0:5a4:56:aa88 with SMTP id
 2adb3069b0e04-5aa87c233e9mr3101009e87.27.1780872076689; Sun, 07 Jun 2026
 15:41:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260604-ks8995-to-ksz8-v5-4-98baeb45e665@kernel.org> <20260605081651.3DA0D1F00899@smtp.kernel.org>
In-Reply-To: <20260605081651.3DA0D1F00899@smtp.kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 8 Jun 2026 00:41:05 +0200
X-Gmail-Original-Message-ID: <CAD++jL=6NJXzHYUgqGAE=tOK=bSPw1r3MEbCRW4xseySwevJMg@mail.gmail.com>
X-Gm-Features: AVVi8CeQFk2oyX8jISQg6QRF0fQawiGN5q1a9TixwKrCRoNjBKuyUnpVUWo-ZoU
Message-ID: <CAD++jL=6NJXzHYUgqGAE=tOK=bSPw1r3MEbCRW4xseySwevJMg@mail.gmail.com>
Subject: Re: [PATCH net-next v5 4/5] net: dsa: microchip: Support Microchip
 KSZ8995XA / KS8995XA
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307898-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 525D7651D3C

On Fri, Jun 5, 2026 at 10:16=E2=80=AFAM <sashiko-bot@kernel.org> wrote:

> Thank you for your contribution! Sashiko AI review found 3 potential issu=
e(s) to consider:
> - [Medium] The switch reset sequence for KSZ8995XA writes to a read-only =
status register and an undefined CPU port register instead of performing a =
PHY reset.

These registers:
- Exist
- Are writeable
- Also for the CPU port

You are looking at the wrong datasheet or got it wrong.

> - [Medium] The driver assigns `port_mirror_add` and `port_mirror_del` for=
 KSZ8995XA, which lacks mirroring support, leading to reserved bit corrupti=
on.

Again wrong. You're reading the wrong datasheet.

> - [Low] The `supports_mii` array incorrectly advertises MII support for i=
nternal PHY ports on the KSZ8995XA.

These are accessible and usually used from external MDIO.

Yours,
Linus Walleij

