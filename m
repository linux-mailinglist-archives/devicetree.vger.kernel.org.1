Return-Path: <devicetree+bounces-305665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o2MXHQ/aHmrhWAAAu9opvQ
	(envelope-from <devicetree+bounces-305665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:26:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD7362E777
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:26:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lcNknc2n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305665-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305665-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BF0F3021B34
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E4043264DA;
	Tue,  2 Jun 2026 13:22:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8FD20E023
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 13:22:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780406543; cv=none; b=YlUfl05QKaYu+kMfDGxlEpli0OL+sD5QLhB3LO0tGJU6OWET04ZC2XsWangsdOT7fZ+jqFXnCsmny4XUf7XB74KPeoMyzQ/SiizPdTZsYmghBMYrLh9Wt2+r5BnJUCZSUR0k6v+B5T8h6duJRXNoFZMO50ZVox1WBm9S0T7QJok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780406543; c=relaxed/simple;
	bh=EjVEEKBeXKQZp5Q/F/zIneiQ7/FmVkRraqSvyene3tU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Sdu3QNuzSpoUD8lSfL3Uve3xIxxFlPtb/4Yvk1ahWh6mM1jU7L0Sef6jhGnaZsDDWHxSixANPP5ij9VYHS1gs5ioce2mBwGloxNdlqoVyFRK3IIFpTxIcR15wcrrzKj2Anib30hxD/6pJEkDM69weMm8iVx6hCvL56yA1EzDQ9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcNknc2n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51C101F00893;
	Tue,  2 Jun 2026 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780406542;
	bh=V7po90Ju1TEWRPdv1xM6Ve6CQkkMUmjkmT+1Cil0QN0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lcNknc2nDDKuRHU5GqdMRyWur6gGNlRoE8pANdyiHz2ZEfXi59T4N1WT0xSZJuuHh
	 QQZH21GxNQhpwFsILwWGEWphIrvMkXXaoU42AxTysmlxcV+SH3NmWGdPVlJpEXfs85
	 +noolIENc7TH8kPQhPHUWqBkvZchfcGRA5IRsQT4ZetqJnWW0aArMcWx8m2ILtnrlJ
	 3IhEWmD9vOuSDq/fWKFDD/l+SOKsVIfUgrqYSsso4t3pTEg4KjhH/Xminqe4/SL9yt
	 RdawFQs/cYO4VwLoxyRsVkkYZ9yOBLIC8IRmutoB4iQRCdUndGez+3+Zj1yB0x+MKa
	 PGC+3LrCT3MQw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: syscon: Make ranges required for
 renesas,r9a08g046-lvds-cmn
Reply-To: sashiko-reviews@lists.linux.dev
To: Biju <biju.das.au@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260602131331.90756-1-biju.das.jz@bp.renesas.com>
References: <20260602131331.90756-1-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 13:22:21 +0000
Message-Id: <20260602132222.51C101F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305665-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:biju.das.au@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:bijudasau@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAD7362E777

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The conditional schema rule for `renesas,r9a08g046-lvds-cmn` is un=
reachable dead code due to omission from the top-level selection lists.
- [High] The schema implicitly requires child nodes and address translation=
 for the device, but completely rejects them due to `unevaluatedProperties:=
 false`.
- [Medium] Defining `ranges: true` globally weakens schema validation for a=
ll generic syscon devices.
--

commit a221f26520a3a09abdff9436ec38d41103c001ab
Author: Biju Das <biju.das.jz@bp.renesas.com>

dt-bindings: mfd: syscon: Make ranges required for renesas,r9a08g046-lvds-c=
mn

This patch adds a conditional schema rule to the syscon bindings that
requires the ranges property when the compatible string contains
renesas,r9a08g046-lvds-cmn. This ensures the LVDS common control block
on the RZ/G3L SoC correctly declares its address translation for child node=
s.

> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Document=
ation/devicetree/bindings/mfd/syscon.yaml
> index e228670880631..088df592e7ace 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -268,6 +268,8 @@ properties:
>    resets:
>      maxItems: 1
> =20
> +  ranges: true

[Severity: Medium]
Does adding this globally weaken schema validation for all generic syscon
devices? Since ranges is also defined conditionally below, could we remove
this top-level definition to avoid making the schema overly permissive for
over 100 other devices?

> +
>  required:
>    - compatible
>    - reg
> @@ -275,6 +277,18 @@ required:
>  allOf:
>    - $ref: syscon-common.yaml#
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a08g046-lvds-cmn

[Severity: High]
Is this conditional rule unreachable? The schema uses a custom select block
to limit applicability:

select:
  properties:
    compatible:
      contains:
        enum:

Because renesas,r9a08g046-lvds-cmn is not added to the select enum, dtschema
might never select syscon.yaml to validate a node with this compatible stri=
ng.
Does this compatible string need to be added to the top-level selection lis=
ts
to ensure validation occurs?

> +    then:
> +      properties:
> +        ranges: true
> +
> +      required:
> +        - ranges
> +
>  unevaluatedProperties: false

[Severity: High]
Since the commit message notes the device has child nodes that need a valid
ranges mapping, will setting unevaluatedProperties to false reject them?

Using ranges to map child addresses mandates the presence of child nodes as
well as #address-cells and #size-cells. However, syscon.yaml does not define
#address-cells, #size-cells, or any child node pattern properties. Will a
correctly formed device tree node with children be incorrectly rejected by
dtbs_check with unevaluated property errors?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602131331.9075=
6-1-biju.das.jz@bp.renesas.com?part=3D1

