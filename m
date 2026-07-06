Return-Path: <devicetree+bounces-321298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hWroOunFS2oiaAEAu9opvQ
	(envelope-from <devicetree+bounces-321298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:12:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9780B7126B1
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:12:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=d1JuHjMg;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321298-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321298-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B51403231CC9
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 14:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87026414A37;
	Mon,  6 Jul 2026 14:52:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1CE3B71D9;
	Mon,  6 Jul 2026 14:52:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783349578; cv=none; b=UsAyGPczFWmZJUoInrtcN/Btdz9mmBhGQdIcSzQpDIVDMIgWhJ4SA1CXYeO0iSCXkDIF0FLbgFS5fQ8Fitp4MpHK9Nn3NnVQ5E4sqPZHJ+8byuCZ/hyxGEK+6GZLlMoYJWC3Mp+sv+58rjoghJYwE274G9L4rkISZpgx06Xbeog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783349578; c=relaxed/simple;
	bh=fTjQ4VpOSgf0OrPwTtb9MoYA9rYbCZjloKo0XmiVoAk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KhGdzzvRQ2TNLyu+LilNMXg/Ckz+Rdmv/ZdQLWLFFa+YTMQ2Pqz3/2+eEtqgsXLByHCsjN9qIhrfUZrO9720uRpv6tO84NEggYP4nfxuYcSIZ8Qhel0PviYGhEKtlj0sWBO1vkOU4UuadqQnqaOFlyilS80LKlfGcDJaoLpxNW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1JuHjMg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 924A31F000E9;
	Mon,  6 Jul 2026 14:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783349577;
	bh=LE66o9ESc3h3y4DqLpR6+pwwqZGeIzyvKWdNsjQ/KdY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d1JuHjMgK5wuNhWNzyu0uyUCoAFDLTKvrcBHd6mJMzHD32nMNZJrbtVu6WByvXNx2
	 fxv7gv2ymIhEpTip+fEwoBeoNxZfAWI0vSZpxJOtVlcnJicf2NeOkIo1BglNEsiXmQ
	 Lgn/UJPPx1b/UDzBegKDzNsZT1D4BkSJWEfm4aFQhLF9zv1ahlQEeN3J9mdGoSyuTj
	 wBugR7yfaSf5u4qN44AsAE3IxlGd113wtm4qvV8XbS9ZVxZMZQKlfdgFRNMKr+L5je
	 Zopw4ng2EPArd48RUeTrdOjXaJY9bKgnaTBOJoQ12l3nfsJyBhMijEGuAYPRvqNyBH
	 LSY/UM9QZlxIQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/3] docs: watchdog: npcm: Add reset status
 description
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomer Maimon" <tmaimon77@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-watchdog@vger.kernel.org
In-Reply-To: <20260706144828.3517631-3-tmaimon77@gmail.com>
References: <20260706144828.3517631-1-tmaimon77@gmail.com>
 <20260706144828.3517631-3-tmaimon77@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 14:52:55 +0000
Message-Id: <20260706145256.924A31F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-watchdog@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321298-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9780B7126B1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The documented reset-cause mapping hijacks standard watchdog boots=
tatus flags for unrelated SoC reset reasons, breaking UAPI semantics.
--

commit f4b3dfdb40f0d729f339392746d12863cb907b7e
Author: Tomer Maimon <tmaimon77@gmail.com>

docs: watchdog: npcm: Add reset status description

This commit adds documentation describing how the NPCM watchdog driver
reports reset causes on NPCM750 and NPCM845 systems. It details the fixed
mapping between SoC reset indications and generic watchdog bootstatus flags.

> diff --git a/Documentation/watchdog/npcm_wdt.rst b/Documentation/watchdog=
/npcm_wdt.rst
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/watchdog/npcm_wdt.rst
[ ... ]
> +.. list-table:: Reset-cause mapping
> +   :header-rows: 1
> +
> +   * - Platform
> +     - Reset indication
> +     - Bootstatus flag
> +     - Reported meaning
> +   * - NPCM750 and NPCM845
> +     - ``PORST``
> +     - ``WDIOF_OVERHEAT``
> +     - power-on reset
> +   * - NPCM750 and NPCM845
> +     - ``CORST``
> +     - ``WDIOF_FANFAULT``
> +     - core reset

[Severity: High]
Does this mapping redefine standard watchdog bootstatus flags for unrelated
SoC reset reasons?

Standard watchdog UAPI definitions expect WDIOF_OVERHEAT to specifically
mean a reset due to a CPU overheat condition, and WDIOF_FANFAULT to mean a
fan failure.=20

Mapping standard power-on resets (PORST) or core resets (CORST) to these
flags will cause userspace tools and daemons querying WDIOC_GETBOOTSTATUS
to erroneously report critical hardware failures during normal boot operati=
ons
or software resets.

Is there a way to expose these SoC-specific reset reasons to userspace
without conflicting with established UAPI semantics?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706144828.3517=
631-1-tmaimon77@gmail.com?part=3D2

