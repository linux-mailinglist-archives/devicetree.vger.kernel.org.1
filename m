Return-Path: <devicetree+bounces-326074-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4CElFjYOVmpwygAAu9opvQ
	(envelope-from <devicetree+bounces-326074-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:23:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A96877535CB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:23:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oLhgBws4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326074-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326074-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B42A73039257
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B37936D51B;
	Tue, 14 Jul 2026 10:23:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A10836896D
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 10:23:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784024627; cv=none; b=d8eZ/BSOFHWaOHW2jua9aKAAzSiQ78HUEH49Ts/X7T54zGsGSEGPLHv9p13/mk2K9d/WzLhCUfJmPMymupJyn/KGuVYbVs/r1eViizqAhWMQt2stBmrwmH5JqfHEJ/2/cjmTUWWKdMD6vaLCaVFmkFxIELlzpEb0psGnInrCu6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784024627; c=relaxed/simple;
	bh=HqgBNMdKO7nZQQPZ1Xs4mJ4Blmz7ZyNl44TpSjfw3O4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dA75B190xUk/9Q3ddHyTzPkYOHwcf7eMAACj3h94uweyORC+H2sxitBMD+f7zGFPHPm/GynJEcvluvvPGiX80KGV7353Ry7xhvk7gtzk4G4WNlenHwaXbYuyG1NGIvJzvUIA8KWw4Tsb7pUKiAlCmCcizjE0zVgwiqYCkqpH+YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLhgBws4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B74591F000E9;
	Tue, 14 Jul 2026 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784024626;
	bh=jZbB4JpbgaEMlXbIum927A4rbUBbripYkJxFdIqLe1w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oLhgBws4tXMBDAnfevnc1+InvUUsNl9GMnJ2SOUR1C5661gF/osFAZlw2MaeCibFC
	 d0LtayNQLhCC60pA/rise+kDScu54uBQi+cbuoQ+b+hiMrEpgd+9H9abhONB1IFdSH
	 qeghSbrZW3YeO+qASiRZJISB2JUUuA+T5KdOl7ZGdg8C3nAWqQhiDB3PC/SxsMprSv
	 tk0MyikcRJm7bG+zEP4kPz3zmsUtyWtHYmIVhyW1ZUOY4Z8N6d0kYzmI6R3Jj+rbx9
	 XMg5LRuxQbGPcMFig5axHVDTfqWKQuYKMNgcd+ALnRkKZjUs/tYk4zCWgNGoPESa43
	 RzhibVh9JzYxA==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 1/3] dt-bindings: display: Add GlandaGPU binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Leander Kieweg" <kieweg.leander@gmail.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260714101146.200416-2-kieweg.leander@gmail.com>
References: <20260714101146.200416-1-kieweg.leander@gmail.com>
 <20260714101146.200416-2-kieweg.leander@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 10:23:44 +0000
Message-Id: <20260714102345.B74591F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326074-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:kieweg.leander@gmail.com,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:kiewegleander@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A96877535CB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing newline at the end of the new YAML binding file.
--

--- Patch [1]: [RFC PATCH 1/3] dt-bindings: display: Add GlandaGPU binding =
---
commit 13be4be8578f4fe27e2424184082468464c6c35a
Author: Leander Kieweg <kieweg.leander@gmail.com>

dt-bindings: display: Add GlandaGPU binding

This commit adds Device Tree binding documentation for GlandaGPU, a custom
FPGA-based 2D display controller.

> diff --git a/Documentation/devicetree/bindings/display/glanda,gpu.yaml b/=
Documentation/devicetree/bindings/display/glanda,gpu.yaml
> new file mode 100644
> index 0000000000000..40304e77382a4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/glanda,gpu.yaml

[ ... ]

> +examples:
> +  - |
> +    gpu@c0000000 {
> +        compatible =3D "glanda,gpu-1.0";
> +        reg =3D <0xc0000000 0x1000000>;
> +        interrupts =3D <0 43 4>;
> +        clocks =3D <&osc1>;
> +    };
> \ No newline at end of file

[Severity: Low]
This isn't a bug, but should this new YAML file end with a newline?=20

Missing newlines can trigger styling warnings during yamllint checks when
running make dt_binding_check.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714101146.2004=
16-1-kieweg.leander@gmail.com?part=3D1

