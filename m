Return-Path: <devicetree+bounces-321381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5jFROfDaS2r+bQEAu9opvQ
	(envelope-from <devicetree+bounces-321381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 18:42:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D737136DB
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 18:42:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kHygkCo+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321381-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321381-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D47A302F7DE
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 16:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 839663FE644;
	Mon,  6 Jul 2026 16:13:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6907D382371
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 16:13:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783354407; cv=none; b=OnPJ1cpVXklGTTwN7lFRYoIvpX/LsZ2I9rK/F91kPinxWokR48n41Q4RSKW3/AiKMuZNrFOG2jPyhAJ2OvlioqVpGz561zwi77SF5pvd6fKLAwd7UfWP8G1fTlQkSqSbMLQFeBmQJjFJ/Rb4LQU2aL1qWE3tjThA5xWwwpwx9no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783354407; c=relaxed/simple;
	bh=JWmayvficvx8Axlsca87ISrL3QSl2gPcK3gJ38qhsSU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Lzfo0Wlti4hn/Y1xPXz2egV6rTCLp24wTMhtdglhjmRNTJtCY6FT/11py85kXzG5fVbEWH9Lp/fo6Wv53Wm6JNwygpYPJoSNWwZ4ZAqpR/sZBDbIGiFsniWi04TYErFn8WmHNkZmM1HZSfnSqVAgcyBCw4Y+whotx9y6MGC1DOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHygkCo+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B76211F000E9;
	Mon,  6 Jul 2026 16:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783354406;
	bh=n4XD2d2ZPHfCs63SWUSe6mBaVISo0+wshmSC9FqfbXU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kHygkCo+RTrmi9fZNwoVwy6vBPBv24HlJgMSsB/bJ8asIZvFqtCN+gLvWGVW5cpm7
	 Egi1GZioI6oOaLyWtqI9XKJuQu/PhcU0sqo93pu+dzrzmwCeIO93LQE4WaNnZ8Hz9v
	 QNM8oW1W60fZ2IPAro8jxDTxMVUw3hFCso8GjQOG2m0WlOWiyzktU79v1g9tAVmqXJ
	 8oiDcX34zEdtfd/8OH7wqQPFNl++H5px7QYjxijDAucFT2PwtfQ1mmsnRmdzdTA7/W
	 q0VzqVatJlp+hwECTTwOVYTIccr+b2zQCY2rA9NOWx/oe4XAPRpYf/Gxv6dq9f7+W4
	 QwyKYqGSznX7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/6] dtc: dt-check-style: Handle properly DTC-style
 includes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260706-dts-style-checker-v3-6-03ffacff9226@oss.qualcomm.com>
References: <20260706-dts-style-checker-v3-0-03ffacff9226@oss.qualcomm.com>
 <20260706-dts-style-checker-v3-6-03ffacff9226@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 16:13:25 +0000
Message-Id: <20260706161325.B76211F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321381-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 49D737136DB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The regular expression `re_dtc_directive` fails to match `/include/=
` directives that omit trailing whitespace before the quoted filename, leav=
ing the original false-positive indent warnings unfixed for such cases.
--

commit d544e9f7ca01b23db8faca49c7b36dba2a77d032
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

dtc: dt-check-style: Handle properly DTC-style includes

This commit updates dt-check-style to properly handle DTC-style include
directives to avoid false positive indent warnings.

> diff --git a/scripts/dtc/dt-check-style b/scripts/dtc/dt-check-style
> index 3c1aa9e28347e..b8ba6dbee86d5 100755
> --- a/scripts/dtc/dt-check-style
> +++ b/scripts/dtc/dt-check-style
> @@ -49,6 +49,9 @@ re_cpp_directive =3D re.compile(
>      r'^#\s*(include|define|undef|ifdef|ifndef|if|else|elif|endif|'
>      r'pragma|error|warning)\b')
> =20
> +re_dtc_directive =3D re.compile(
> +    r'^/(dts-v1|include)/[;\s]')

[Severity: Low]
Does this regular expression miss valid /include/ directives that omit trai=
ling
whitespace before the quoted filename?

If a .dts file contains a directive without a space, such as
/include/"file.dtsi", it is not matched by re_dtc_directive because it lack=
s a
space or semicolon. This could cause the script to treat it as an incomplete
property, bypassing the brace depth tracking and triggering the exact false
positive this patch aims to fix.

Should the character class be expanded to include double quotes, such as
[;\s"]?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-dts-style-=
checker-v3-0-03ffacff9226@oss.qualcomm.com?part=3D6

