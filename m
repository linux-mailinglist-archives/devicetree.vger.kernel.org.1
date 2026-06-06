Return-Path: <devicetree+bounces-307703-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0XTsNUo6JGpJ4QEAu9opvQ
	(envelope-from <devicetree+bounces-307703-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:18:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3885464DD11
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:18:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kk7+ZE9l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307703-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307703-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87BAD300A767
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 15:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3D6E158DCF;
	Sat,  6 Jun 2026 15:17:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2887B22D781;
	Sat,  6 Jun 2026 15:16:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780759020; cv=none; b=H0KfYyQCLLdDCDczgkQyGKz/hc08543SY6SWuhI1dZGWaQQr8QbEhBx0a4OpS5o6zoTcVvBwclCUMKm1+xXYmeDmuIL0EDUrSXEKL/Hf601Ru1LSDaNJX7DYqdfUY2VMTJfD6yKkJYz+a1zhs7QC7KWvEiN/EosdZfzDN+XMhbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780759020; c=relaxed/simple;
	bh=47kWpJuAJTbiDrQtze80qDzgl5xgbb0ABeCoNCv+D60=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d6KhLIZKQVumCNo7dlcd/2+2i3jqSYwJMm1uhodtETMoMiJnenPINls1uqDQKqE4E/ENDj3RChepAUQLTraOUjV4vzk2lTQJY4kYNwiUAqJt7mCq6INZnTOV9AcAt9AT7iO598dbKo578jcMnNVGmmiVXiu7DBBliXGQ0k0cH60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk7+ZE9l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60E2C1F00893;
	Sat,  6 Jun 2026 15:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780759018;
	bh=lD7TouPlf3gsrcHa1VjE35nehhJc6OhqW6fhuo4khls=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kk7+ZE9l+pEoPZmxtZMXFx/ytcRBz+xwq1CmdWItB5jP80xE0J7wJMAceDAgf46I0
	 w/7vz5FMN6D2toTv9+dSaWxlp0MqUn1SXfAKFgAkAhglUKYT7uaFx5CuHemOFeuFFM
	 XLSKKCd803nJ4OR822VfWhUd6vyAAEH8snxaiMW2R/5G+P1HrUt4Shhd6kYepZkMTR
	 Kq0DhQQbWgvco37XMMeSZm2YoqBwFcXrzG1I1JqictpmmyGxhuJjZbK1NUcBWd4utX
	 E6jEcSgimT/qi+azRA2tLp3YqkL6Yxh9VasYHr5RjfxgRVHV++Vs+pb96sl1tPUcgd
	 AF+3/oEuzrCsw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 7/8] dt-bindings: input: microchip,cap11xx: Add CAP1114
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: robh@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, linux-input@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260606150458.250606-8-jerrysteve1101@gmail.com>
References: <20260606150458.250606-8-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 15:16:57 +0000
Message-Id: <20260606151658.60E2C1F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307703-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3885464DD11

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The new `microchip,cap1114` compatible string was omitted from t=
he `if-then` conditional block that restricts `microchip,signal-guard` and =
`microchip,calib-sensitivity` for prior CAP11xx generations.
--

commit 5c58a6baee363da7434a9782efa913c250015130
Author: Jun Yan <jerrysteve1101@gmail.com>

dt-bindings: input: microchip,cap11xx: Add CAP1114 support

This commit adds device tree binding support for the CAP1114 capacitive
touch sensor. It updates the compatible string list, maximum LED channel
counts, and keycode entries.

> diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.ya=
ml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> index e307628350c24..08233386a4336 100644
> --- a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> +++ b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
[ ... ]
> @@ -26,6 +27,7 @@ properties:
>    compatible:
>      enum:
>        - microchip,cap1106
> +      - microchip,cap1114
>        - microchip,cap1126
>        - microchip,cap1188
>        - microchip,cap1203

[Severity: Medium]
Since microchip,cap1114 is being added here, could this validation
regression be avoided by also appending it to the if-then conditional
block further down the schema that restricts microchip,signal-guard and
microchip,calib-sensitivity?

Documentation/devicetree/bindings/input/microchip,cap11xx.yaml:
  - if:
      properties:
        compatible:
          contains:
            enum:
              - microchip,cap1106
              - microchip,cap1126
              - microchip,cap1188
              - microchip,cap1203
              - microchip,cap1206
    then:
      properties:
        microchip,signal-guard: false
        microchip,calib-sensitivity: false

Since the maxItems for these properties remains at 8 (and CAP1114 has 14
channels), it appears CAP1114 does not support them either. Omitting the
new compatible string from this block allows device trees with these
unsupported properties to pass schema validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606150458.2506=
06-1-jerrysteve1101@gmail.com?part=3D7

