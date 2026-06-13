Return-Path: <devicetree+bounces-311284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SlQ1OXonLWpadAQAu9opvQ
	(envelope-from <devicetree+bounces-311284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:48:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2908667E48F
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:48:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=h5rw2D3D;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311284-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311284-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2CF93005AC1
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4216D35B63D;
	Sat, 13 Jun 2026 09:48:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE0B31DDBB
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 09:48:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781344120; cv=none; b=bCBkTbvNDYuWrAiupQZV3c8ChLnZwMTSbEPPpcQ3xep1Op0ZXfT0LR8YT+J2ErI+H6DjmHdlBWr5591OD5zZQZa/s/k/uAHNaa+qYIHE0lLd4I/+gE11Un1URNgWJff64sELdL4HKvMOp6Ujv8WaWGrHpJeOdDtvwZ/UMUVn0T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781344120; c=relaxed/simple;
	bh=i9POUnSeUlGGt0OQY46tvEVlpopoFe5kEVlRlx9fg8Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nB9WxLjkd6s9kwzXol0PspM5+TLpyAjYQP/168io8+1xTivuzeUc2BSlkfHzSOUkC1pVnUucqYK2Jg9Ywl8/5QkYTAmqHXt1hlVVtkFr+pEDKCqp43zzmdS1rjiHaumzT5Dgrno0oIbkw/jfNfcLMoGAVNmsX6pwo7qKHSGZe7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5rw2D3D; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5AF11F000E9;
	Sat, 13 Jun 2026 09:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781344119;
	bh=zmWgNRapEWoP69A9XvwUbTdGbbDeI4fvtW0+fQAsd34=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=h5rw2D3D+/gAUPYbCIRFmN5ycvSD5J5feqBHvWjsD6J9B6EL8XJZNqveXsfVVqUWv
	 U+3KNTnmlCiac9gV15e8QgfBcZCbQLlGrhtzB3RRjNeBpsZ/Z0lfE6EQTLk+2svKN8
	 5FBzFhe9X1NS0HunGfLXzIby4NrapbN7CuuNiyUfonS4Jdp1ZIFyBVw+Dwp6lUV/NE
	 WEH9I3laEbM8ALlB75Y+AM2sFje1kGlSBQUe+1seXPykt4IwSGiyeqH7UW2JMs6zxk
	 2nbuLK3um6qv7xDZwLb32sEiRkpstM7qdQkrAKh3u8F+jTnxnHA2cv59uaPueEIXX4
	 eJyhqW0g4Y/RA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/2] dt-bindings: mmc: st,sdhci: Convert to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Charan Pedumuru" <charan.pedumuru@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260613-st-mmc-v4-2-b3c385617c16@gmail.com>
References: <20260613-st-mmc-v4-2-b3c385617c16@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 09:48:38 +0000
Message-Id: <20260613094838.B5AF11F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311284-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2908667E48F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The DT schema fails to conditionally require `reg-names` when mu=
ltiple `reg` entries are provided, which can lead to silent runtime misconf=
iguration.
- [Medium] The YAML schema loses the original specific allowed values const=
raint for `max-frequency`.
--

commit e2c333948a6b09aa2bb42febade330d8715b076f
Author: Charan Pedumuru <charan.pedumuru@gmail.com>

dt-bindings: mmc: st,sdhci: Convert to DT schema

This commit converts the STMicroelectronics sdhci-st MMC/SD controller
binding from a text format to a YAML DT schema. It preserves the flexibility
of optional clocks and registers from the original binding.

> diff --git a/Documentation/devicetree/bindings/mmc/st,sdhci.yaml b/Docume=
ntation/devicetree/bindings/mmc/st,sdhci.yaml
> new file mode 100644
> index 0000000000000..0bf4fc3ca699f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/st,sdhci.yaml

[ ... ]

> +allOf:
> +  - $ref: mmc-controller.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: st,sdhci
> +      - items:
> +          - const: st,sdhci-stih407
> +          - const: st,sdhci

[Severity: Medium]
Is this a regression from the strict constraints of the text binding?

The original text binding restricted max-frequency to 200000000, 100000000,
or 50000000, which matches the driver's behavior in sdhci-st.c. Since this
new YAML schema omits max-frequency entirely, it falls back to the generic
mmc-controller.yaml which permits any integer.

Should this explicitly define max-frequency under properties with an enum
constraint to prevent unsupported frequencies from passing validation and
silently falling back to 50MHz at runtime?

> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description: MMC controller base registers
> +      - description: FlashSS Top registers for TX/RX DLL delay configura=
tion
> +
> +  reg-names:
> +    minItems: 1
> +    items:
> +      - const: mmc
> +      - const: top-mmc-delay

[Severity: Medium]
Does this omission create a regression where the schema validation silently
accepts an invalid device tree?

The previous text binding explicitly stated that if the FlashSS Top register
is provided, reg-names must also be specified.

Without an allOf conditional block making reg-names required when the reg
property contains two items, won't the schema validation pass even if
reg-names is missing? If the driver relies on
devm_platform_ioremap_resource_byname() for top-mmc-delay, could this result
in a silent runtime misconfiguration?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613-st-mmc-v4-=
0-b3c385617c16@gmail.com?part=3D2

