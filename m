Return-Path: <devicetree+bounces-315457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OUEmLuSRPGrwpQgAu9opvQ
	(envelope-from <devicetree+bounces-315457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 04:26:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 923046C261C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 04:26:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QryLIjvp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315457-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315457-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8847D3002521
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 02:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F3436C0C8;
	Thu, 25 Jun 2026 02:26:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A583655E3
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 02:26:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782354399; cv=none; b=gXxFvpVqidpuckWK+qjvCfQ9AlwJv+ZgCLwci8zaX3nd5tl320xomjCMjlaOxmAEQ/hhtmI5GfLnTnobB0SKrg9S3MznoTNY/4Qq9VfHi1EVLac4gjoc9dzezcygQuhiIzuc3OhGX5cWHT8WKoX0Ok7W/Fzdsv7cE21DrZzOWrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782354399; c=relaxed/simple;
	bh=PgCBUmEK1cYzcl8pHA8wGIIEemv8P1lDK9pYq34EwQU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Sgcs12JZemuqGOc5hFM1DdYcmMy2l/ayIbdKXhl9hCrOO5xjRr9Bj84f4+sqzD0GKLgAPfMiqpyqXO5uXn4u5YImAicQ2jN+vOgGKckdNei2IUAdYY6UoG5kfGR/KO8OpgIxo5CrIeYjQWJyxd5uNuO70aOSeyL77BKSDiS2tDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QryLIjvp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07AB1F000E9;
	Thu, 25 Jun 2026 02:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782354397;
	bh=piVxViYlQ+kltRFXDt12OjI0Tk0TH9pkIuto1efw8U0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QryLIjvp2XY51GGWpzERWCxa0il/rXsoFjNiZe8G5sKwWx3IS0jBoCLXpX5zqyx+t
	 9004I/2xAALj9OH7KGfyaKnL79Do5bQIsby7tuc0oWX2ojpiBz/cTB6qWQysYj1xBj
	 a7bjiLA4eerbNn9TSfAuri+p/GNatUuNQwMn/Y6I/sEMCs0BG7aPGwIqgWZnN9lF5V
	 F/JEzmqrB8AJu2LV4GP5gIfylo5C3X8c3IuCcLL6aCEDA60R8X+XHS+SN5Me1V+lQu
	 CRfjqmrWuvDzQrZPI6kmierbnqUg2DyQh7GSHjykgFxK3z4etU6gXNp65OlM225tQj
	 /yhi8uq4t4QHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] regulator: dt-bindings: rtq2208: Label mtp-sel-high
 property as deprecated
Reply-To: sashiko-reviews@lists.linux.dev
To: cy_huang@richtek.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <d111d67d40cc182a2ab8c6292e4ffff9c7dad9ba.1782353659.git.cy_huang@richtek.com>
References: <cover.1782353659.git.cy_huang@richtek.com>
 <d111d67d40cc182a2ab8c6292e4ffff9c7dad9ba.1782353659.git.cy_huang@richtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 02:26:37 +0000
Message-Id: <20260625022637.B07AB1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315457-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:cy_huang@richtek.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[richtek.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 923046C261C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The deprecated property `richtek,mtp-sel-high` remains in the YAML =
example block.
--

commit 34889eeeff15702a135fa4ac9e6b9f3ab88ee425
Author: ChiYuan Huang <cy_huang@richtek.com>

regulator: dt-bindings: rtq2208: Label mtp-sel-high property as deprecated

Since it can be identified by hardware register, label the unnecessary
property 'richtek,mtp-sel-high' as deprecated.

> diff --git a/Documentation/devicetree/bindings/regulator/richtek,rtq2208.=
yaml b/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> --- a/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> +++ b/Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml
> @@ -42,11 +42,14 @@ properties:
> =20
>    richtek,mtp-sel-high:
>      type: boolean
> +    deprecated: true
>      description:
>        vout register selection based on this boolean value.
>        false - Using DVS0 register setting to adjust vout
>        true - Using DVS1 register setting to adjust vout
> =20
> +      The property is now deprecated. Will be identified by RG HW regist=
er.
> +
>    regulators:

[Severity: Low]
Since this property is now marked as deprecated, should it also be removed
from the example device tree in this binding?

Documentation/devicetree/bindings/regulator/richtek,rtq2208.yaml:examples:
    ...
      pmic@10 {
        compatible =3D "richtek,rtq2208";
        reg =3D <0x10>;
        interrupts-extended =3D <&gpio26 0 IRQ_TYPE_LEVEL_LOW>;
        richtek,mtp-sel-high;

        regulators {
    ...

Leaving the deprecated property in the example encourages its continued use
by developers who might copy and paste binding examples into their device
trees.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782353659.gi=
t.cy_huang@richtek.com?part=3D1

