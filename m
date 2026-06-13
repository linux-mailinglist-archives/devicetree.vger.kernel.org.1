Return-Path: <devicetree+bounces-311239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1V6MH7UELWqZZAQAu9opvQ
	(envelope-from <devicetree+bounces-311239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:20:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB63467DF90
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:20:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PkJqiRnD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311239-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311239-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BA593212293
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 07:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5573538886F;
	Sat, 13 Jun 2026 07:13:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47546387581
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 07:13:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781334809; cv=none; b=SEjGjOF3y+mzDqKdXdrNIAjua/1Ji3C2tHMs5GD90rxiwz9ceTPy5HIcPiuw6XHmRqWBmEAV5lbp6hoFXW+Jaab8aL6qFv/42lKg40Sh1Ps9DPVqjYfDDgYMsa2L0aPTJedESOdmf+Dt5Qip47+/5tkSmjavGYFeCGrR4d96Do4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781334809; c=relaxed/simple;
	bh=wNKb3Mw+r/xk/Vzw4O9tR/9Yu9JJhZw/1yXq6RjT7L4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qgpNuNLCREKv4U+C/q9FBstShQSaeHnHtvGfEZYC/QKJfDIvwBP+0cOgvvHoNLUZ6hx1lSXzd+O44FJA4ErCTcPm/7BODDgFGqlj38/H7ycLxGI3AHXY65Nn05oWvW99ZHhBpM22SURYfEsHe0HLSZ+ae3EQ59dksCoI1CX4UtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkJqiRnD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE3101F000E9;
	Sat, 13 Jun 2026 07:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781334807;
	bh=mpxYQDc3c6q57NRKIe0so6yDPzCGD16D0NSVJmBqKdI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PkJqiRnDqBZSIJwNlzYolfaK9z7BJpT7aRxCk6XYDKgoI/oX7XZz+kiTK7n4HgqqZ
	 9yVL+PFrNd+uYCdfDK9IpAohX0NdBPRYCQsxU4PJGV/maIrQORGXXjEWDXK1FXkUCj
	 LK3jSv7yghOo6KVuzX2N8rAfO5Vq4H1GCmt7UWfs0O/7+p/4s1IsUrXJjyeHPForI5
	 HvqcQY230V9xqTJ6MlNddA6Pf69P/CtEGQxa28UpeZOFNXPdTDXF0A+/EYtIyAHOMs
	 fRmDDMdTPVnoBKgrPDvTnxBr1VwLwkEUMdj9RpVz//D6P/hwDcg/jHQ41YDuWEeCjo
	 TFqhOwbuJEAbA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: st,pwm: convert to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Charan Pedumuru" <charan.pedumuru@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260613-st-pwm-v1-1-458c2c89709a@gmail.com>
References: <20260613-st-pwm-v1-1-458c2c89709a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 07:13:27 +0000
Message-Id: <20260613071327.BE3101F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311239-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DB63467DF90

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `interrupts` property is unconditionally required by the dri=
ver but omitted from the YAML schema's required list.
--

commit b16a62dff3236ec8b123a99775f6c90dbfd9912f
Author: Charan Pedumuru <charan.pedumuru@gmail.com>

dt-bindings: pwm: st,pwm: convert to DT schema

Convert STMicroelectronics STiH41x PWM/Capture controller binding
to DT schema.

> diff --git a/Documentation/devicetree/bindings/pwm/pwm-st.txt b/Documenta=
tion/devicetree/bindings/pwm/pwm-st.txt
> deleted file mode 100644
> index 19fce774cafad..0000000000000
> --- a/Documentation/devicetree/bindings/pwm/pwm-st.txt
> +++ /dev/null

[ ... ]

> -Required parameters:

[ ... ]

> -- interrupts:		IRQ for the Capture device

[ ... ]

> diff --git a/Documentation/devicetree/bindings/pwm/st,pwm.yaml b/Document=
ation/devicetree/bindings/pwm/st,pwm.yaml
> new file mode 100644
> index 0000000000000..2c10f54b5caf3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/st,pwm.yaml

[ ... ]

> +required:
> +  - reg
> +  - compatible
> +  - "#pwm-cells"
> +  - pinctrl-names
> +  - clock-names
> +  - clocks

[Severity: Medium]
Should interrupts be included in this required list?

The original text binding listed interrupts under the required parameters,
and the driver unconditionally requests it during probe:

drivers/pwm/pwm-sti.c:sti_pwm_probe() {
    ...
    irq =3D platform_get_irq(pdev, 0);
    if (irq < 0)
        return irq;

    ret =3D devm_request_irq(&pdev->dev, irq, sti_pwm_interrupt, 0,
                           pdev->name, pc);
    ...
}

Without interrupts in the required list, incomplete device trees will pass
schema validation but fail deterministically at runtime.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613-st-pwm-v1-=
1-458c2c89709a@gmail.com?part=3D1

