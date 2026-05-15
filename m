Return-Path: <devicetree+bounces-297915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JajMz25BmpAnQIAu9opvQ
	(envelope-from <devicetree+bounces-297915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:12:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E544549DF0
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:12:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 403A5300E158
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 06:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7983793AD;
	Fri, 15 May 2026 06:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mf+gixvi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AE837755D;
	Fri, 15 May 2026 06:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778825531; cv=none; b=dY8EHZxy1qI7VcN3xCprvRpIv5tmLJTc5FsSijfkFe0HHkU1JefK8IgeJAcoCz//SuXK+SbjYVfuU/9Y89QpWcvojKE6hY9AniDJP92xtYVpAp3i5mvtTvg3qywifqyHMhOh6rYP7yn7Te51XDuAobFqMMPP63R0wY32zQ3BicM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778825531; c=relaxed/simple;
	bh=HaP+HuyaCZ1iLbbpXoGGM6EohGYoHLIqubUUfGyF7lw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Kr6Oa7EQV9B5VwS+fpezly+qaOdCU7VBr0AAipsUy20hGcDFX8MYnlnqmnKne3zVas7m6HHnEx6Rh8FW44ys7GnnTYcrysvya6Nfba3h9douZykW+qwNy2kSBmdfxofQZwChxsMxA0gqaflNjs2rsppwmaefRiIbqSiQm75Y5kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mf+gixvi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF7C6C2BCB0;
	Fri, 15 May 2026 06:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778825531;
	bh=HaP+HuyaCZ1iLbbpXoGGM6EohGYoHLIqubUUfGyF7lw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=mf+gixvi5GmOBZEKW12gNI8oiSxYqq6aaG7An/uWNSRR2q8bq8AV2nwcGqFBvQ5uO
	 /oIJxhld5rkllfMt0LSCHnl9s0laQ1HouYr/WDIH5NiVmb8Kp5lQ9qDdvjBj52xVU4
	 nrnbjeVfMNSGKz6fsUldoN6I5gVQPkmwqKgkvQkA83HuJXtv+gV1GdSpDmL9KhaiWI
	 EQ9sVa7KPYUpXVvoEM24lPS1UCSiStsG4JqU22QUEVaj9vpH2/7JxVTaguW+02YeS9
	 AwvjjJ+erUlaET3eEpzjssI7WGA3XkcXmXo6t92pixrvkNm84jeYUbaOgm1/lXADYM
	 kMxGcNlgwcqpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/7] hid: Pen battery quirk for Surface Pro 12in
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harrison Vanderbyl" <harrison.vanderbyl@gmail.com>
Cc: dmitry.torokhov@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-input@vger.kernel.org, krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <de275cc63e764d2acddf72bf3f50e89f307f41b5.1778822464.git.harrison.vanderbyl@gmail.com>
References: <de275cc63e764d2acddf72bf3f50e89f307f41b5.1778822464.git.harrison.vanderbyl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 06:12:10 +0000
Message-Id: <20260515061210.BF7C6C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3E544549DF0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297915-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added macro uses spaces instead of a tab for value alignm=
ent.
--

commit 41dd30be72b9f45b17d28788bd19cb4c73988147
Author: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>

hid: Pen battery quirk for Surface Pro 12in

This commit adds a battery quirk for the Surface Pro 12in pen, which uses
bluetooth for communicating battery levels rather than i2c. Adding this
quirk prevents the device from reporting a phantom battery or hanging.

> diff --git a/drivers/hid/hid-ids.h b/drivers/hid/hid-ids.h
> index 0cf63742315bf..d16f55479786c 100644
> --- a/drivers/hid/hid-ids.h
> +++ b/drivers/hid/hid-ids.h

[ ... ]

> @@ -459,6 +459,7 @@
>  #define USB_DEVICE_ID_HP_X2		0x074d
>  #define USB_DEVICE_ID_HP_X2_10_COVER	0x0755
>  #define I2C_DEVICE_ID_CHROMEBOOK_TROGDOR_POMPOM	0x2F81
> +#define I2C_DEVICE_ID_SURFACE_PRO_12IN  0x4376

This isn't a bug, but it looks like spaces were used instead of a tab for
alignment here. The surrounding definitions use tabs.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1778822464.gi=
t.harrison.vanderbyl@gmail.com?part=3D4

