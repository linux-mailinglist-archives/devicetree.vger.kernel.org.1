Return-Path: <devicetree+bounces-321364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7RxINKDbS2ovbgEAu9opvQ
	(envelope-from <devicetree+bounces-321364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 18:45:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B99E5713765
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 18:45:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=O1IPnkpg;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321364-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321364-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8A477310990E
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 15:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41FCD42A144;
	Mon,  6 Jul 2026 15:59:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F2C399348
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 15:59:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783353546; cv=none; b=lGA7cc8Ax+5hRCuB+XYIPIxGPo/aVbz48+wpXqeyU8p9yYdUfPTQxWVv3qBNOp9gMgWNxEnntMavm2VbhipOfZOZI1RkVc+lMHCPzpkpEyyTOcwlgSw/Q9epDUllE5QL7zYodR37tKg7JCytHJ20NcfLY+qzxIJ1D12gixaKgEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783353546; c=relaxed/simple;
	bh=BLESi/Vhd/heeXYo8MYxDa67U4i7kjvAse+ziJHEycg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BgL8LVlJjTuuNgoKtOP7XjbG3Bs5/J2FlEH6uNNX4P+Azuqcv71xVxi105jaEn2SVAJYz07rVUEiOt+AIZJJqL7vdUD2XMeR7tyMWtxnmQrzyjvW1CMW/8PF/YWp8ijnruKHpfNaXoiOXl7RFD1Tl0pVM7HUanyl/Io+XUfNW0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1IPnkpg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9827E1F000E9;
	Mon,  6 Jul 2026 15:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783353543;
	bh=T+YVQj0OZYMCDuz+jgMoooUl+wT1KOROE0BH991Qq5c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=O1IPnkpgF3yZspl6fTzU9MtI9PVFjv4EFKytjeliAMJeai9YN6wMZ8S1JY4VBpNQd
	 +hTsXSaTWWa8HAcZMmxdyrKoQcBjNwz5NFuJm5hC4VXUS/xQXy8wQTvQMyyxqedb2H
	 PvK3ScjIzvP4I+Ib3XSHdR27d/8DLg5wlbd07w0FX5HXu7fSut0IfNuPlaSaUMctE5
	 NkjG2+4CClTO7m3qK8MezC3gE8pnmhWVIpyHQyElLvVMBRm02eNaA5KkTYVj+4l/1N
	 3/ns3V1ry+oM4B5Gn2f7WM657y6zvVxGi5a+blPEH8dmt9SviR56wmx6RCqHAezsKA
	 WHsSLo4CbbvTw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/6] dtc: dt-check-style: Narrow disallowing of tab
 in DTS only to YAML
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260706-dts-style-checker-v3-1-03ffacff9226@oss.qualcomm.com>
References: <20260706-dts-style-checker-v3-0-03ffacff9226@oss.qualcomm.com>
 <20260706-dts-style-checker-v3-1-03ffacff9226@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 15:59:03 +0000
Message-Id: <20260706155903.9827E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321364-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B99E5713765

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit renames the function `check_tab_in_dts` to `check_tab_in=
_yaml_example` to resolve confusion, but fails to update the user-facing ru=
le name `'tab-in-dts'`. This introduces an inconsistency between the intern=
al function name and the rule string.
--

commit 9c825da9bb864c8e87cb2f6ad98274fc217a08b7
Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

dtc: dt-check-style: Narrow disallowing of tab in DTS only to YAML
   =20
This commit narrows the scope of the tab-in-dts style check to only apply=20
to YAML files. It renames the internal checking function to avoid confusion=
=20
since regular DTS files do allow tabs.

> diff --git a/scripts/dtc/dt-check-style b/scripts/dtc/dt-check-style
> index 2d5723d41ea39..34e0f7e2a57a4 100755
> --- a/scripts/dtc/dt-check-style
> +++ b/scripts/dtc/dt-check-style

[ ... ]

> @@ -929,7 +929,7 @@ RULES =3D [
>           check_trailing_whitespace),
>      Rule('tab-in-dts', 'relaxed',

[Severity: Low]
Should the user-facing rule name 'tab-in-dts' be updated here as well?=20

Since this string is printed in warnings when a tab is found in a YAML exam=
ple,=20
leaving it as 'tab-in-dts' might still cause the same confusion this patch =
aims=20
to resolve. Changing it to something like 'tab-in-yaml' might better align =
with=20
the new function name.

>           'YAML examples may not contain tab characters',
> -         check_tab_in_dts, applies_to=3D('yaml',)),
> +         check_tab_in_yaml_example, applies_to=3D('yaml',)),
>      Rule('mixed-indent-chars', 'relaxed',
>           'indent must not mix tabs and spaces',
>           check_mixed_indent_chars),

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-dts-style-=
checker-v3-0-03ffacff9226@oss.qualcomm.com?part=3D1

