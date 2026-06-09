Return-Path: <devicetree+bounces-308713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1pNJIOKwJ2qM0gIAu9opvQ
	(envelope-from <devicetree+bounces-308713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:21:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 827F365CB14
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:21:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HByjxFnB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308713-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308713-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3290F3023C66
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 546DF3CA4A8;
	Tue,  9 Jun 2026 06:18:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E2D3D1CB4;
	Tue,  9 Jun 2026 06:18:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780985899; cv=none; b=bsEa/PutcLNwExF7g+4Xo5NhQGEcuPF1YSWd1o8AXwtM1P1QCdTXyY+0BeSEHbpMz9VXGAt8ofuodTlrvwHWwSM/zXJMuzTI4qt+/Eb7Lqj96EI2Lhe9QKK9D49D6JdFyHpxrJz5OOXgaehHBlcQgiZQDP4UDC3uU07l+EqDKIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780985899; c=relaxed/simple;
	bh=MB8fUksptvZBCrRSniuPXOg4FmanV8h719JwRqDHlRE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gbxSdjwfdsoeKR7kFvfAFTvEzJ8SFj82LOZkP1nJIYXzHiyQqiYeRbzVXnRIuSvtOvF7F0/qo5rXF0PWbPP7xwkhpceFKDuQrcry3umrX8YCgEPuWMZsweIQj4CM7mgXjf+W95sUSiv6E8+CFqmmFdeO+SRtlbvAcJ0jrQn265k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HByjxFnB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FE371F00893;
	Tue,  9 Jun 2026 06:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780985897;
	bh=msNXDs93oyBVdrzSowEDVg9WOgrxvPbrX3SRzMIWqQg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HByjxFnB+a2EAYT2zeONyUVo3GmLHp3ZMvWAySLeSnZuqvoz3NcnLpazQY5G6mrZx
	 K+e1tB5Y05CQQWv/40O4P5E5mq/LWS97O2fwtTem/u2PYXORS26gqSkta0OggIDSXY
	 49uOwsLCkeblyeZIpdjC518ZBt1xRjv2Uz/dtewpZuJrRryGf19k373rCn6v0lae9p
	 cYfs3Yma5O/FnmFbVI+9BDXNjaIkvTFdpR0ISl/oe0zhMuubvzvZEiHJEgvaQnhdH4
	 urulTOqYPGyAVFTtD8AtOaa4IU2nsqhPvWh813Cb6rD44AapjeUzjc+kOZudsfw15m
	 EXgoNOxAd7bTA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 18/21] tools/perf: Support event code for arch
 standard events
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org
In-Reply-To: <20260608-counter_delegation-v6-18-285b72ed65a9@meta.com>
References: <20260608-counter_delegation-v6-18-285b72ed65a9@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 06:18:17 +0000
Message-Id: <20260609061817.7FE371F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,jevents.py:url,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,rivosinc.com:email,lists.linux.dev:replyto];
	TAGGED_FROM(0.00)[bounces-308713-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 827F365CB14

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `if not eventcode:` check incorrectly evaluates to True for =
explicit encodings where the event code is `0` or when alternative encoding=
s (like `ConfigCode`) are used, causing them to be overwritten.
--

commit c082fe77b89457807536772c21ae88a13885568d
Author: Atish Patra <atishp@rivosinc.com>

tools/perf: Support event code for arch standard events

This commit updates the perf tool to support custom event encodings for
architecture standard events. It modifies jevents.py to avoid overwriting
the event encoding with the architecture standard event if an event code is
already present in the JSON file.

[ ... ]

> diff --git a/tools/perf/pmu-events/jevents.py b/tools/perf/pmu-events/jev=
ents.py
> index 3a1bcdcdc685f..457fce7a59820 100755
> --- a/tools/perf/pmu-events/jevents.py
> +++ b/tools/perf/pmu-events/jevents.py
> @@ -413,7 +413,11 @@ class JsonEvent:
>          self.long_desc =3D None
>      if arch_std:
>        if arch_std.lower() in _arch_std_events:
> -        event =3D _arch_std_events[arch_std.lower()].event
> +        # If the JSON event already specified an event code, the encodin=
g has
> +        # been set above; don't overwrite it with the arch standard even=
t or
> +        # the event encoding would be lost.
> +        if not eventcode:
[Severity: Medium]
Does this condition incorrectly evaluate to True for valid 0 encodings?

If a JSON event explicitly specifies an event code of 0 (e.g.,
"EventCode": "0x0"), the parsed eventcode will be 0. Because Python evaluat=
es
0 as false, the not eventcode condition evaluates to True.

This incorrectly overwrites the explicit encoding and discards previously
parsed event fields.

Can the same regression occur if alternative encodings like ConfigCode or
EventidCode are used, leaving the eventcode variable at 0?

Would it be safer to explicitly check if the eventcode is None to distingui=
sh
between an absent event code and a literal zero?

> +          event =3D _arch_std_events[arch_std.lower()].event
>          # Copy from the architecture standard event to self for undefine=
d fields.
>          for attr, value in _arch_std_events[arch_std.lower()].__dict__.i=
tems():
>            if hasattr(self, attr) and not getattr(self, attr):

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-counter_de=
legation-v6-0-285b72ed65a9@meta.com?part=3D18

