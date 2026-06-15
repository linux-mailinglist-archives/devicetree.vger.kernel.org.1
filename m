Return-Path: <devicetree+bounces-311865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1/dmLmDbL2oXIAUAu9opvQ
	(envelope-from <devicetree+bounces-311865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 13:00:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D11C6858C0
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 13:00:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lduAnaCN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311865-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311865-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C74B73014840
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 11:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3F793822A5;
	Mon, 15 Jun 2026 11:00:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9997033F598
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 11:00:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781521243; cv=none; b=YXPD8ZePH8MfF4RtOSrCAC7jHR52bLD3r5cfkjENxF+GZ7tOZ0Igad2WEJhQ03WTeo5nc2Rbw1z+9FKyi7FSxZvsLHQ1wDnT3hXCQEPVEeNI7s57YPfLdHyjH+lf/eWH0G3bQ8e2HXMi9tn/Ro9XFtFJwv3fllnW0Hk0Dl9xXGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781521243; c=relaxed/simple;
	bh=WiKyMDGDQNrAF9XfIKme4BDt3laUrmlvv7SvN5n7EVE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rI6chmaNvwJqA6CLN5+cnlYGn5JxIBS0I+PEf8kviUcPxtfFUL4dahx3TykOQuR4qpm6tSJG3csUpC2dSOtBVAPSZCT5Chi1Znp1zxtWRBGtwee+3/wLhTEhdXevzbJrsm0s45w3rxEleKOzvFt99SQlBVpb3jIpa61rsci0Cj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lduAnaCN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07AFA1F00A3D;
	Mon, 15 Jun 2026 11:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781521242;
	bh=cgxPzybupjyGsJvBxJOqNvPUnLN1MyIehJIFtsa2Ess=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lduAnaCNWUp7T3I3yZ7fLMcXy/u3A4WKSC9FeUTNj4H2dMThwx4jVA0OqGXM9/O5N
	 miSl3RYZMne8jv/GNLyhhL4s/XaoLC8klzzXGM3T13EIVpxsirQQC6cljYGINhbxgg
	 QWpN314UukIIDRD6h8GoilKR8l/0nSQz7Yslw+3Xtv+Yhu40dhNpkSYPT8Y7ZxccBs
	 91FJ/6a/5Kdf4WFziplSRQmbviyIZhf+1lYS16Ku40TBp6CI/yveTZq8DoLBOpJB62
	 xY2PoXZl1ipq7RRR3OIEQ40AcSXLuoH3qhX7dwJTgOeeeM7Y6duClqJZaXW4HpeOJh
	 b3I5ptg9eNZ3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/5] clk: renesas: rzv2h-cpg: Extract PLL calculation
 math into a library
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: robh@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260615104845.4122868-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260615104845.4122868-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 11:00:41 +0000
Message-Id: <20260615110042.07AFA1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:prabhakarcsengg@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311865-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,renesas.com:email];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D11C6858C0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Arithmetic on `p.k` and `input_fref` produces incorrect results on=
 32-bit platforms when `p.k` is negative, due to signed-to-unsigned integer=
 promotion and subsequent zero-extension.
--

commit 11b81f60e771c7c62903fe36e982968dc58b35e3
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

clk: renesas: rzv2h-cpg: Extract PLL calculation math into a library

This commit extracts the common PLL and divider calculation logic from the
RZ/V2H CPG driver into a standalone library. This restructuring allows shar=
ing
the calculation infrastructure with upcoming platforms like RZ/T2H and RZ/N=
2H
without duplicating code.

> diff --git a/drivers/clk/renesas/rzv2h-cpg-lib.c b/drivers/clk/renesas/rz=
v2h-cpg-lib.c
> new file mode 100644
> index 0000000000000..124239c7327e4
> --- /dev/null
> +++ b/drivers/clk/renesas/rzv2h-cpg-lib.c

[ ... ]

> +				/* Compute (Ffvco * 65536) */
> +				fvco =3D mul_u32_u32(p.m * 65536 + p.k, fref);
> +				if (fvco < mul_u32_u32(limits->fvco.min, 65536) ||
> +				    fvco > mul_u32_u32(limits->fvco.max, 65536))
> +					continue;
> +
> +				/* PLL_M component of (output * 65536 * PLL_P) */
> +				output =3D mul_u32_u32(p.m * 65536, input_fref);
> +				/* PLL_K component of (output * 65536 * PLL_P) */
> +				output +=3D p.k * input_fref;

[Severity: High]
Will this calculation corrupt the output frequency on 32-bit platforms?

Since input_fref is unsigned long and p.k is s16, if p.k is negative on a
32-bit system, doesn't it get promoted to a 32-bit unsigned integer,
wrapping around to a large positive value?

When added to the u64 output, it would be zero-extended rather than
sign-extended, resulting in a massive positive value being added instead
of subtracting the correct proportional amount.

Should p.k be explicitly cast to s64 before the multiplication to prevent
this issue when used by 32-bit targets?

> +				/* Make it in mHz */
> +				output *=3D MILLI;
> +				output =3D DIV_U64_ROUND_CLOSEST(output, 65536 * p.p * divider);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615104845.4122=
868-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D4

