Return-Path: <devicetree+bounces-311160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DmK1HxZuLGowQwQAu9opvQ
	(envelope-from <devicetree+bounces-311160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 22:37:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 678E867C5B2
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 22:37:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="CK9my/HF";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311160-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311160-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 943DF3004C8D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 20:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BDD63126D7;
	Fri, 12 Jun 2026 20:37:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5EC2BE051;
	Fri, 12 Jun 2026 20:37:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781296656; cv=none; b=N9nczAb9zQWy061AR/1VNw7fjUdFmmx2wSXki7slSOWAkTG/c2+Vbx40TOEFa1JqW4tfNxxfcxCyUPLpV/MTaf5gUvmS5wAkvIQ7TbvRnQ5OtiFpliCT8B0cSFKhf0i3uf+SRdeliw8zGgvW6s6GDOKJV28V8FsgIbxCIsmRsXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781296656; c=relaxed/simple;
	bh=5xMU7jYPjEpgMvv2At42ASj8xs+7FtNbVL+1MBxmtwg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gDoxTmXQudC5TVxrK5oJFFf43lz3LTfK5uXiei+QVrKfzOpsZlFdL4KU/qOrxF3zScILuGJkOGcvzwdFHnQLNzSUnHKcQCZMVjyzVCfiyA0zQKTqlWJvrGsuQJAbyGZuiFPDSyMq1giwemArBzjTE3/njI7P701e3HQMNPNUnA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK9my/HF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C43DC1F00A3A;
	Fri, 12 Jun 2026 20:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781296655;
	bh=ll6oLUGeBbDzLHebdObHEFeG7v9OBSZ5q9PnL4B1E1g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CK9my/HFAKL8pIdwGWNEDYRYRtks02YI6s2mseGwQl3l+GdioVfsJ5NyVi0P13vb2
	 HAOjf7jT0mEBGwo81zQ08n8A7VZJyajoLdwXf+kr5RO4HZGpJ94IhwyHJLdbtzM8YT
	 gu079TcnV5Wai6unX5rUIlZ9PK7fIJ73JWNxYEY2G6vS+QWmLbtxAA+XcXBfxM2gP7
	 3h/rpq3HrKvZqFfTaC956eJnoczviJ+FLQ8Z34B532xx+NjwnVe/ulCQ8x+hyD3eOW
	 Xk1Fr8yXjks8BXRMdt6gBoFRxlDm5caFrKAW8cm/TMEA+z2doQSOEYRs0h9P/NI6MR
	 zy0N4EC0D5r+w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/7] dt-bindings: mfd: mt6397: Add MT6392 PMIC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: devicetree@vger.kernel.org, linux-input@vger.kernel.org, conor+dt@kernel.org, dmitry.torokhov@gmail.com, robh@kernel.org
In-Reply-To: <20260612200717.361018-2-l.scorcia@gmail.com>
References: <20260612200717.361018-2-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 20:37:34 +0000
Message-Id: <20260612203734.C43DC1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:lscorcia@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311160-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 678E867C5B2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The dt-bindings schema for the MT6392 PMIC omits the 'mediatek,m=
t6392-regulator' compatible string for the 'regulators' child node. Since t=
he 'regulators' node is unconditionally marked as required in the schema, a=
ny complete device tree correctly describing the MT6392 hardware must inclu=
de it. Omitting the MT6392-specific regulator compatible string from the sc=
hema forces DT authors to either write incomplete DTs (which fail validatio=
n because the node is required) or use incorrect/generic compatible strings=
, causing schema validation failures when they attempt to properly describe=
 the hardware with 'mediatek,mt6392-regulator'.
--

commit a20444c8e4c98a81558d6d5c619b650c00235e18
Author: Fabien Parent <parent.f@gmail.com>

dt-bindings: mfd: mt6397: Add MT6392 PMIC

Add the initial bindings for the MT6392 PMIC and its RTC device.

> diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b=
/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> index 3cbc0dc12c319..e39e81aa99249 100644
> --- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> +++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml

[ ... ]

> @@ -72,6 +76,10 @@ properties:
>                - mediatek,mt6331-rtc
>                - mediatek,mt6358-rtc
>                - mediatek,mt6397-rtc
> +          - items:
> +              - enum:
> +                  - mediatek,mt6392-rtc
> +              - const: mediatek,mt6323-rtc

[Severity: Medium]
Should the mediatek,mt6392-regulator compatible string be added to the
regulators child node as well?

Since the regulators node is unconditionally marked as required in the sche=
ma,
any complete device tree describing the MT6392 hardware must include it.

Does this missing string cause a regression where DT authors are forced to
either write incomplete DTs (which fail validation) or use incorrect compat=
ible
strings?

This causes schema validation failures when authors attempt to properly des=
cribe
the hardware with mediatek,mt6392-regulator:

Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml:
  regulators:
    ...
    properties:
      compatible:
        oneOf:
          - enum:
              - mediatek,mt6323-regulator
              - mediatek,mt6328-regulator
              ...

>            - items:
>                - enum:
>                    - mediatek,mt6359-rtc

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612200717.3610=
18-1-l.scorcia@gmail.com?part=3D1

