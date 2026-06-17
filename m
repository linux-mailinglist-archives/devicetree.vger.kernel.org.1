Return-Path: <devicetree+bounces-313163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jImEMRYEM2pU8gUAu9opvQ
	(envelope-from <devicetree+bounces-313163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:31:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFC969C5D8
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:31:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b3LfjN7m;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313163-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313163-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E21FE3009838
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 20:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 414DE3BE651;
	Wed, 17 Jun 2026 20:31:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A16035B631;
	Wed, 17 Jun 2026 20:31:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781728272; cv=none; b=otEQ7SoMD6CqKBBwgfhKgULd15g8t49f+aK7Mr6Ieow4wcXKRXgW0zkLDrHDRCEVkw6MV3RHgjU5igN4SebCZLmI2ZtqnwqJNIHJBAU/E/cSNpcVuJgEmeTtb2o9wGseNW0tTn1Lp/61DlVYVtj7ex0o21nP06fL0U6eQw/qAU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781728272; c=relaxed/simple;
	bh=5A7sAOhhb2RfiJ+NOx1F4HByPaknrUUEQtps2W92ePs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MRgDdvdH/s/lnq72ttFrqQqjhqpv8XK6tHWibCY+0hnDqqfJvBC68i8ad3bxferrKl0+exgYq0c1w1uEAPA0VTFb2VfhcultxPN9Vf9ya34VJbx1b6ovNzdUYX1IsWaPJkeRLsNS0v4aJaD2V89rs939MA9SfrlrcLKkVjsN5uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3LfjN7m; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4FDE1F000E9;
	Wed, 17 Jun 2026 20:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781728265;
	bh=ozfQcw/O8CAMHls+vIGVb+Ve0akF50Yh5E7IY7QYNB8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b3LfjN7mRR05KiEjmhkwWu8skBH76BD4vfUODQcl2kWZqRzPEN4WV0Kt5LyPJfQE2
	 LMD0dtHNp8V/FFkhdH+HaTWeeQhXbbBv4gZmtRzjsbVY+vA8asIX7DsU6HkhoWx5LC
	 KnLI5bkJEBOuMRzdnWujJVx84DxhFPzDawamQFnQQvgAFpVRi3oyLFPqJQ1DsxsdGx
	 j7zmxnsFLgWFJ4iwioVxJwxtqZJ5or7lGtYfou2jktdqVxEz4SjjRIiS+W8TOI0AK0
	 H4PZVozVOvFOSC5Y5mKDLmbvb52G844lsfoWsVyDdveGusRagMbTpaUUbwV+LbXc2u
	 k39B7mmHASICQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 03/10] dt-bindings: input: microchip,cap11xx: Update
 datasheet URL and LED reg range
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-input@vger.kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260617150318.753148-4-jerrysteve1101@gmail.com>
References: <20260617150318.753148-1-jerrysteve1101@gmail.com>
 <20260617150318.753148-4-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 20:31:04 +0000
Message-Id: <20260617203104.A4FDE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:conor+dt@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313163-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCFC969C5D8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incomplete Refactoring / Code and Commit Message Mismatch
--

commit e8499e0ca62db6a2ee6dc0986e7c04ea1337f6c7
Author: Jun Yan <jerrysteve1101@gmail.com>

Add datasheet links for all supported CAP11xx variants.

Update LED node regex and replace enum constraints with minimum/maximum
for LED reg ranges in preparation for CAP1114 support. Drop unnecessary
led unit-address pattern.

> diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.ya=
ml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> index 7ade03f1b32b..eabf06a1163e 100644
> --- a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> +++ b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml

[ ... ]

> @@ -131,7 +140,9 @@ patternProperties:
> =20
>      properties:
>        reg:
> -        enum: [0, 1, 2, 3, 4, 5, 6, 7]
> +        description: LED channel number
> +        minimum: 0
> +        maximum: 7

[Severity: Medium]
Does this fully prepare the schema for CAP1114 support as mentioned in the
commit message?

While the constraints on the reg property were updated here, the main
patternProperties definition for the LED node just above this still uses
"^led@[0-7]$".

Since CAP1114 has 11 LED channels, wouldn't the schema fail validation for
nodes like led@8 and led@9 because the top-level pattern wasn't also update=
d?

[ ... ]

> @@ -158,7 +169,7 @@ allOf:
>                - microchip,cap1298
>      then:
>        patternProperties:
> -        "^led@[0-7]$": false
> +        "^led@": false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617150318.7531=
48-1-jerrysteve1101@gmail.com?part=3D3

