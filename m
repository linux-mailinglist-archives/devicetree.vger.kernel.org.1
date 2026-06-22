Return-Path: <devicetree+bounces-314310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kUe2HvTzOGobkgcAu9opvQ
	(envelope-from <devicetree+bounces-314310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:36:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3976ADC78
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:36:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Vqz6hj/d";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314310-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314310-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C9923031015
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D41B2390CB4;
	Mon, 22 Jun 2026 08:34:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3C4352029;
	Mon, 22 Jun 2026 08:34:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782117275; cv=none; b=gNWSCfyeDCegejNmKZ1dRq8cdkRKXW1uqT3ax8mVRbgxQr00YoRGqsKTEdHXCXQrvavCtOSkQIsXBfkn+LpBTXBKf7WQqVQg/Fng7rGqm+vnASCH50uSKVK4bvxw8K0Imw1dOxxaqEVz4I4gW0D8DrggfKDamLy0AN8QD9FEh1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782117275; c=relaxed/simple;
	bh=qQfi6tZ91xs97winsuRhjdKSy1OoiPJ10lFAcS8RsP4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GgQE3Hj9lEfe1N51k/jGg28g6W0X8LMREBcZ9SDTpeN1BaZjPw4fsrBM6Ue7R0H++6oVsVDrFYbreW/pHRBE1UpmxBT5vTj9/4lwKnhIKcxbOlztzL5nNkHqMbEAV44kaltbXMbq0ANAptpTOnM/Lv3H+4WQ6opvNy0tGVflzks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqz6hj/d; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DA181F000E9;
	Mon, 22 Jun 2026 08:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782117274;
	bh=Y/3Lozn+m1AO6earkpdLaknCtX96Q9q++aXksBwBbBU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vqz6hj/dIctaTU9cgA9Jy9Sfcjpryrl0QSdJn20oaqeg1E6kPWv3g1HBW6BlfH6FA
	 Ql7Yc+Xcj1La1vTjQdOms8OFpvdP10KKKeTT4wz12eFZ0fJ9DjhGwjJXpQFXWC043J
	 4PFVaPRStZX7tG+EDA78DNRKaWZFNsx++vI3i0bf7f0a3kMO0EV4CSKCk/7I1DH1bW
	 jyBV1i1jUjvxSJycDc4joKAwI4GHjkNMyMRXWaRNNbLFnewmsxt/EPiRIHBVnBaq1c
	 /B5s5ge3UuuwHUPFz7D+tTTVAgkRUyY+iPi662dtoYp2ZOxaLYvaMIXZAKOVdLAIab
	 fZbT3Ap0IDG5Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 19/22] tools/perf: Support event code for arch
 standard events
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org
In-Reply-To: <20260622-counter_delegation-v7-19-0ba2fd34614e@meta.com>
References: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
 <20260622-counter_delegation-v7-19-0ba2fd34614e@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 08:34:33 +0000
Message-Id: <20260622083434.2DA181F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314310-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,rivosinc.com:email,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA3976ADC78

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Logic error in preserving event encodings for architecture standar=
d events: the script silently discards valid `EventCode: 0`, alternate enco=
dings (e.g., `ConfigCode`), and all associated modifiers (e.g., `UMask`, `C=
ounterIDMask`).
--

commit 49dcf2f5443f8355e35a6c0465204600a8115b63
Author: Atish Patra <atishp@rivosinc.com>

tools/perf: Support event code for arch standard events

This commit modifies the perf tool's json event parsing to preserve the eve=
nt
encoding of architecture standard events. It skips overwriting the event co=
de
if one is already provided in the json file.

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
> +          event =3D _arch_std_events[arch_std.lower()].event

[Severity: High]
Does this check properly handle an event code of 0 or alternate encodings?

If EventCode is explicitly 0, or if an alternate encoding like ConfigCode
is used (leaving eventcode as 0), the truthiness check will evaluate to tru=
e.

This would cause JsonEvent.__init__ to overwrite the newly constructed event
string with the base architecture standard event string, silently discarding
the explicit 0 encoding or alternate encodings, as well as any modifiers
appended beforehand like UMask.

Would it be safer to check dictionary membership directly, or initialize
eventcode to None to distinguish between an explicit 0 and an unset value?

>          # Copy from the architecture standard event to self for undefine=
d fields.
>          for attr, value in _arch_std_events[arch_std.lower()].__dict__.i=
tems():
>            if hasattr(self, attr) and not getattr(self, attr):

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-counter_de=
legation-v7-0-0ba2fd34614e@meta.com?part=3D19

