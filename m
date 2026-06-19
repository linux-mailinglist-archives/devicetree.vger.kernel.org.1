Return-Path: <devicetree+bounces-313765-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ab2wN28xNWqVoQYAu9opvQ
	(envelope-from <devicetree+bounces-313765-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:09:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4E76A5989
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:09:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dE5YHfla;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313765-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313765-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26647301027D
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 12:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526983769EB;
	Fri, 19 Jun 2026 12:09:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FFC368D67
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 12:09:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781870950; cv=none; b=KrzhzzR/EEPKbkQawHM72HR/e6g3FG8+bDXfkVm2NB4/vNTBxMULwnt2dFxSroF11lSDUy4jQCmm95ZM4UaxktkNnaUptxV30sNg6+rgEDf8BBB0k+1bLE2z3zZbizao0LxMC2iPcVQK5eTilv1XbB7ACVoxQbtYF/1Eg2WpbYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781870950; c=relaxed/simple;
	bh=Yoyl/gPRJ7Xt7vCw/iBMFFgZfyLa745iyVrQ4uStNRE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Jflmp/x6zO3t8BE35nXU+iHMiPAueUYvSbnY9Blx2BIEbS7NMixCMvrNNN12jQQraIyc5HmexJQmWJ4Wb7UC5prrXgukenyFcsIzaQ6/9g4AMBxnuvhJCedrgKlWb+ZJ5/c3vtY77tB/4dn/58FyqCle4iCE7ki83kBkZn6EuSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dE5YHfla; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 934801F000E9;
	Fri, 19 Jun 2026 12:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781870948;
	bh=vbwjkfmIQbQWKwYpvdjuPZp5ZGYRa6jaA+b+twxRzCg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dE5YHflavLnbXOHznVwvq2WmsR0VuQGx/xH1m/6twvQb8UkdEhTUuK8G6+dCTLqaT
	 Efpp4lkdMnTOc3uCM7xbcBKgQRuXo1Ro5DCEaSw6S0vo5xMmBHsoTcX7+/XR5Qhx1J
	 DXVLSDF6ByCTKBF+VT5EC8Aw+xWnTj9nbr5FgwV8OItxQ+usl7LpqmqhuWYnfY2qlu
	 0yUMud4S7qsEX7qhXti7isCKGXiOSfktc66gPB0BM4IdwHxIGYv122ImwGDgiBIPUs
	 Dtl7e2uwE2rgilayQQNWbPmnLQGxqE4mcsrTo79VL/JV5v0SN1el1Q3HetCCZSlo93
	 nM/jhKRFFk6RQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: misc: convert lis302.txt to YAML
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jad Keskes" <inasj268@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260619115649.840676-1-inasj268@gmail.com>
References: <20260619115649.840676-1-inasj268@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 12:09:08 +0000
Message-Id: <20260619120908.934801F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313765-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:inasj268@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A4E76A5989

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `select` block incorrectly excludes standalone `st,lis3lv02d=
` nodes, breaking schema validation for in-tree boards and creating dead co=
de.
--

commit 4d572cc896007c912787ebc5396d56f2920edb3d
Author: Jad Keskes <inasj268@gmail.com>

dt-bindings: misc: convert lis302.txt to YAML

This patch replaces the legacy lis302.txt binding with a YAML schema for the
LIS3LV02D family of accelerometers. It introduces a select block intended to
restrict the schema to misc-driver-exclusive compatibles, under the assumpt=
ion
that standalone st,lis3lv02d nodes belong to the IIO subsystem.

> diff --git a/Documentation/devicetree/bindings/misc/st,lis3lv02d.yaml b/D=
ocumentation/devicetree/bindings/misc/st,lis3lv02d.yaml
> new file mode 100644
> index 0000000000000..85eb74c264bc0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/st,lis3lv02d.yaml
> @@ -0,0 +1,396 @@
[ ... ]
> +select:
> +  anyOf:
> +    - properties:
> +        compatible:
> +          contains:
> +            const: st,lis302dl-spi
> +    - properties:
> +        compatible:
> +          contains:
> +            const: st,lis331dlh
> +    - properties:
> +        compatible:
> +          contains:
> +            const: st,lis33de
> +  required:
> +    - compatible

[Severity: Medium]
The commit message claims standalone st,lis3lv02d nodes only go to the
IIO driver, but could this select block incorrectly exclude valid standalone
st,lis3lv02d nodes used by the misc driver?

For example, arch/arm/boot/dts/ti/omap/omap3-n950-n9.dtsi uses a standalone
st,lis3lv02d compatible while relying heavily on misc-driver-specific
properties like st,click-threshold-x and Vdd-supply.

Because this block explicitly omits st,lis3lv02d, that valid DT node bypass=
es
the misc schema entirely. It instead falls back to the IIO schema
(st,st-sensors.yaml), which specifies additionalProperties: false and does
not recognize misc properties, leading to validation errors.

> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - st,lis331dlh
> +              - st,lis33de
> +          - const: st,lis3lv02d
> +      - const: st,lis331dlh
> +      - const: st,lis3lv02d

[Severity: Medium]
Is the standalone const: st,lis3lv02d option rendered unreachable dead code,
since any node matching just st,lis3lv02d is excluded by the select block
above?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619115649.8406=
76-1-inasj268@gmail.com?part=3D1

