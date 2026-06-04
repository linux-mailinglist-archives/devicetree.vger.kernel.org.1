Return-Path: <devicetree+bounces-306744-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lfLDHmJRIWrgDAEAu9opvQ
	(envelope-from <devicetree+bounces-306744-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:20:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AA963EF4D
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:20:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jg93pwqT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306744-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306744-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C3D1A305D992
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 10:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FDB3033E6;
	Thu,  4 Jun 2026 10:06:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F5733EF
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 10:06:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780567581; cv=none; b=Cw8DLHoFQx4IynGsbS1mItN99G34OiUcOs9nhPzdBI6kbhQR1wcF1n5pvKw9cemlFFuIiOrDEzorL2mNur671JgGXs+Am9AtsEQSCi2GGlloU6liQrrteCXJHc/RBvDY+w/11/OjAmPH4o/TJvNWVf2BhlalFlirdIg1UmSDCc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780567581; c=relaxed/simple;
	bh=yOaFXcdXPPm47/F9k7GtuW2IpRDhEGq72XRvP1nxFIQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JkW/WOkU2gDOFpQtx9MLHhSWlBsbgWiORfV92CZ8LUmNrOIBWrwGi3i07gghpVgTkDqX5lKJDzw0eCjRdTpvU97xOLOJOBa9XzDF94jWRM2FB0EC8S3bk1Q8UXhaB8zt5hJOnYzRzodukNsrHWNNCuhOHpr07AWxdu6ZdgNdI/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg93pwqT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75EC51F00893;
	Thu,  4 Jun 2026 10:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780567579;
	bh=s7DJZQhkQEu9G7myNftG1G/cbLeeivD3jnjNm9Z3yy0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jg93pwqTObIaLhDGfptXl9uPVtdrkB5n0lvca/QmJjCF6QAhtpg62rukYrawIciPs
	 ihRyaoU6V2+65iIU6q46obA93bRr4W/+CIqt0tIXN2hr7Oo1TkR8KaMV2TPaRNBRGj
	 pijaiSM5ebI9n4vBCgyejY6HZJaw1/k4huj/8/FWpYSUYMwrOU0rnoiI3vzrWen4QJ
	 Qwsn22VRnqMKWu35TYodSkvF+p/aRg5Xro0UB7Cx5eneVlRIrepwfJTXw78gGI6eZf
	 +PqudJQRXvhz3Q6O50tJtetldIHwVVI7i/x/7GOsPk6wsTt1e/5peJD+FxOH4bHzyD
	 fD9IalmYwEgxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 02/11] dt-bindings: pwm: rzg2l-gpt: Document
 renesas,poegs property
Reply-To: sashiko-reviews@lists.linux.dev
To: Biju <biju.das.au@gmail.com>
Cc: wsa+renesas@sang-engineering.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260604095647.108654-3-biju.das.jz@bp.renesas.com>
References: <20260604095647.108654-3-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 10:06:19 +0000
Message-Id: <20260604100619.75EC51F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-306744-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:biju.das.au@gmail.com,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:bijudasau@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1AA963EF4D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `renesas,poegs` property improperly encodes the consumer's c=
hannel index as a phandle specifier, which is a Devicetree anti-pattern and=
 breaks standard phandle-array parsing semantics.
--

commit 9d7f9847d3f320fb715022b6159c9c7e869aeedd
Author: Biju Das <biju.das.jz@bp.renesas.com>

dt-bindings: pwm: rzg2l-gpt: Document renesas,poegs property

RZ/G2L GPT IP supports output pin disable function by dead time
error and detecting short-circuits between output pins.
Add documentation for the optional property renesas,poegs to
link a pair of GPT IOs with POEG.

> diff --git a/Documentation/devicetree/bindings/pwm/renesas,rzg2l-gpt.yaml=
 b/Documentation/devicetree/bindings/pwm/renesas,rzg2l-gpt.yaml
> --- a/Documentation/devicetree/bindings/pwm/renesas,rzg2l-gpt.yaml
> +++ b/Documentation/devicetree/bindings/pwm/renesas,rzg2l-gpt.yaml

[ ... ]

> @@ -245,6 +245,28 @@ properties:
>    resets:
>      maxItems: 1
> =20
> +  renesas,poegs:
> +    minItems: 1
> +    maxItems: 8
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      items:
> +        - description: phandle to POEG instance that serves the output d=
isable
> +        - enum: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
> +          description: |
> +            An index identifying pair of GPT channels.

[Severity: Medium]
Does this property correctly follow standard Devicetree phandle semantics?

By Devicetree specification, phandle arguments in a phandle-array are
defined and interpreted by the target provider node, with their length
dictated by a cell-count property on the provider.

This definition appears to invert that model by using the specifier to enco=
de
the consumer's (GPT) own channel index rather than a provider argument.

Additionally, standard OS-agnostic DT parsers might fail to resolve this
because the referenced provider binding (renesas,rzg2l-poeg.yaml) enforces
additionalProperties: false and natively lacks a #poeg-cells property to
dictate the specifier length.

Is it possible to redesign this binding so it doesn't encode the consumer's
index into the provider's phandle argument, or at least ensure the POEG
provider specifies a #poeg-cells property?

> +              <0> : GPT channels 0 and 1
> +              <1> : GPT channels 2 and 3
> +              <2> : GPT channels 4 and 5
> +              <3> : GPT channels 6 and 7

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604095647.1086=
54-1-biju.das.jz@bp.renesas.com?part=3D2

