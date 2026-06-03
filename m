Return-Path: <devicetree+bounces-305994-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3eHwOSHQH2r2qAAAu9opvQ
	(envelope-from <devicetree+bounces-305994-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 08:56:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E54634DCC
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 08:56:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OFraZSPS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305994-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305994-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8331C3040204
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 06:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7709222424C;
	Wed,  3 Jun 2026 06:51:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789B039935E
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 06:50:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780469461; cv=none; b=ZHi1Uv85MldN9i+7tokWLaa+I+YSdwrQaxwaL6Zc78dsio/YWIeXJT1wwTh4xkqFMkqU2375zv6MjSQo9+E9sF+TyhOPZHXK3y92mDX55FsOHuNCLak+8Tw3Dh5EdOf8PtagvpFCsnO95QRLs+ckhNv+pAT9Cp+YLp39KQm3CtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780469461; c=relaxed/simple;
	bh=ljbnEZtUBfLCmxK0auYfOUNPJkk/mJ7aisJ0VNE5lyg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OnkT3WxlCdII9P//niXlhulnO+bHQidQZNSSp1vKNp45XvNTg9o2IZjCp2I+/O4/Ub4AiTOwFFctZa6nekQFQSb4xS7659vOMDrdDG1I/cznYwwiEwFIbdRs3MISyyXePr5eOfzBFMtj1t044KkgLxyOVc8sZrqauGMy2R89owY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFraZSPS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB7AE1F00893;
	Wed,  3 Jun 2026 06:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780469459;
	bh=P+hJXiphsxLwT0JU32MhXZchznwnJLVBrkqI1VAs/T4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OFraZSPSyInMpCd6Jo7Z0p90EXouYFiDAJXeM0nrt15vAotqv/Ryy/hi4gFZuVRH1
	 EhbZbXlB/InY+o39H8OZZMrtXnl18J5Ddlx9Iu7yw+zUBgwr7S4z+a+MeqkLNDQSs9
	 Ak/b26pArAy2jt/p8aTDowzurPByE0IW9FgaUsqhxJE4J8qk92utdiLMSabZRDuAPD
	 W88KtYwxXGzA/yCWjglKWnhzgzRSHKMW/AW/gsJkRrhUJtExpQMzTXWCoQW/rnm7vE
	 CXAyf4HOeN/i0rpFtwIkKna5mK9XpDwg2NHkD6NbuX+gaU/tTCDMWeSrSK9UXI79ng
	 F9rWJ8oEqYOjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: net: ethernet-phy: move clocks
 property to invidivual PHY bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: "George Moussalem via B4 Relay" <devnull+george.moussalem.outlook.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260602-ipq5018-gephy-clocks-v2-1-65a1f1d881f3@outlook.com>
References: <20260602-ipq5018-gephy-clocks-v2-1-65a1f1d881f3@outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 06:50:58 +0000
Message-Id: <20260603065058.CB7AE1F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305994-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+george.moussalem.outlook.com@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,george.moussalem.outlook.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,outlook.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46E54634DCC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Removing `clocks` from the common `ethernet-phy.yaml` without pr=
opagating it to dependent PHY schemas breaks schema validation.
--

commit 670ca8e864ec47d85a59d1ab5fa91fe5fe6d6c54
Author: George Moussalem <george.moussalem@outlook.com>

dt-bindings: net: ethernet-phy: move clocks property to invidivual PHY bind=
ings

Move the clock property and restriction from the ethernet-phy.yaml file
to the individual PHY binding files. This allows each PHY to manage its
own clock requirements.

> diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Do=
cumentation/devicetree/bindings/net/ethernet-phy.yaml
> index 21a1a63506f01..709ea976ef790 100644
> --- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> +++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> @@ -105,12 +105,6 @@ properties:
>        1BR-10 names. The PHY must be configured to operate in BroadR-Reac=
h mode
>        by software.
> =20
> -  clocks:
> -    maxItems: 1
> -    description:
> -      External clock connected to the PHY. If not specified it is assumed
> -      that the PHY uses a fixed crystal or an internal oscillator.
> -

[Severity: Medium]
Does removing the clocks property from the common ethernet-phy.yaml break
schema validation for other dependent PHY bindings?

Bindings such as Documentation/devicetree/bindings/net/micrel.yaml enforce
unevaluatedProperties: false and depend on this parent schema. Since they
do not define the clocks property themselves, will any valid device tree
configuring a hardware clock for these PHYs now fail dtbs_check with an
unevaluated property error?

For example, micrel.yaml allows clock-names, which logically requires a
clocks property to be present in the device tree, but without inheriting
it from ethernet-phy.yaml, it now lacks the schema allowance for it.

Could the clocks property be added to all dependent PHY bindings at the
same time it is removed from the common schema to prevent dtbs_check
breakages?

>    enet-phy-lane-swap:
>      $ref: /schemas/types.yaml#/definitions/flag
>      description:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602-ipq5018-ge=
phy-clocks-v2-0-65a1f1d881f3@outlook.com?part=3D1

