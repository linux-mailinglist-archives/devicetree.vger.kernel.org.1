Return-Path: <devicetree+bounces-306484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f0mDBBqRIGqT5AAAu9opvQ
	(envelope-from <devicetree+bounces-306484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 22:39:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B4063B267
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 22:39:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SCWsTIXr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306484-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306484-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 067783013605
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 20:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DE73C5522;
	Wed,  3 Jun 2026 20:39:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37B5384CD6
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 20:39:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780519191; cv=none; b=RdUt14tYAphbiJizsx4O7W9yCdniAjHCSu5TrCP3Jil+NniIk+yJke+l8DoWiYTzyIBHG2ZPfrxu8IxLB331vkd2VOgTXXwH+zUKpPvMflH2hVnVRQ5C5oZGfmhCXzMADFg8neKlyVdS21NHwdRh8dnizXxq9ZD8n+kmcGKMBRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780519191; c=relaxed/simple;
	bh=+vRsFz7cfY5l9I4oz7IlPm0snO8psfUyGRx+MUBFiKk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rZoyisu924m+iPCpYfba66WJiClN1MTVRocJ0vujBdbIzk1smqJEw+ueYPHOwgc0VT4UHrVg8jww9DyAwXi3FBDplUBZ9sg09kDU1kUWv5joeThtuatf4AhGX1a5PoKuc5yqEeL9cnQeoZQHiOAj/1e5xYz6G5WPVc0zmzcn9dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCWsTIXr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 131831F00893;
	Wed,  3 Jun 2026 20:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780519190;
	bh=VnQSHJNXbAz+s60b8qG3os4OFaf12xs1pEgv1tMcaoI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SCWsTIXrNjjUx0cePTDTwRBZMaarm01A+ImPVZe0hp9NbCv4MkLWbdO0DPczIhwE9
	 7Ve7tmJ5WWX7xBwmexrVlqjM4qy2wKFTKO+DPyJx+8oDuDf0CA8Xp60N/iZHyLO5Ks
	 xlJzk3BIpnWS1Ga5V7DqoOBrf7eQKAm9YUBK2yJYs4A72MnlO7IuJ8NOYwdtwGOCkm
	 3wt3Xw4nOIk30LfbIG5hPIjcYPE1FJZjkP77cAq/Ra77OOzDDkAVIYeh3Q4x6ACwQg
	 VOC4n70M5sK1XMPG7zftfvwa8YRYtfLcBArkg80+02sBZTOoCK+7taLx97CkAqI1vp
	 4bHFrl4ii5grg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: sound: renesas,r9a09g047: Fix
 dma-names list and ports schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260603202805.3530046-1-john.madieu.xa@bp.renesas.com>
References: <20260603202805.3530046-1-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 20:39:49 +0000
Message-Id: <20260603203950.131831F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306484-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,renesas.com:email];
	FORGED_RECIPIENTS(0.00)[m:john.madieu.xa@bp.renesas.com,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93B4063B267

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `dma-names` schema modification unintentionally converts var=
iable-length arrays into strictly fixed-length tuples, enforcing exactly 5 =
or 10 items instead of allowing 1-5 or 1-10.
--

commit a5213139a119a047832e83895a5e3d493f04d666
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: dt-bindings: sound: renesas,r9a09g047: Fix dma-names list and ports s=
chema

Express the dvc/src/ssiu dma-names as an items list rather than an
allOf-wrapped single schema, and drop the now-redundant maxItems. Fix
the ports container to reference graph.yaml's ports definition instead
of port-base (a ports container is not itself a port), keeping
port-base on the port@N children, and constrain each playback/capture
phandle-array entry to a single phandle.

> diff --git a/Documentation/devicetree/bindings/sound/renesas,r9a09g047-so=
und.yaml b/Documentation/devicetree/bindings/sound/renesas,r9a09g047-sound.=
yaml
> index d7fa165546985..80670019d2f45 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,r9a09g047-sound.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,r9a09g047-sound.yaml

[ ... ]

> @@ -143,11 +139,12 @@ properties:
>                through the list to find a free channel.
> =20
>            dma-names:
> -            maxItems: 5
> -            allOf:
> -              - items:
> -                  enum:
> -                    - tx
> +            items:
> +              - const: tx
> +              - const: tx
> +              - const: tx
> +              - const: tx
> +              - const: tx

[Severity: Medium]
Does this unintentionally enforce exactly 5 items?

In dt-schema, specifying an items list without an explicit minItems property
defaults minItems to the length of the list. Since the property description
mentions "As many as 5 can be provided", should we add minItems: 1 here so
it doesn't reject valid device trees specifying fewer fallback channels?

[ ... ]

> @@ -203,12 +200,22 @@ properties:
>                falls through the list to find a free channel.
> =20
>            dma-names:
> -            maxItems: 10
> -            allOf:
> -              - items:
> -                  enum:
> -                    - tx
> -                    - rx
> +            items:
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]
> +              - enum: [ tx, rx ]

[Severity: Medium]
Similarly for the ssi and ssiu nodes, does defining an items list of 10
elements without an explicit minItems implicitly set minItems: 10?

Could this break dtbs_check for valid hardware configurations that provide
fewer than 10 channels?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603202805.3530=
046-1-john.madieu.xa@bp.renesas.com?part=3D1

