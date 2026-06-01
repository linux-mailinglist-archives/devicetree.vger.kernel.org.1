Return-Path: <devicetree+bounces-305125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cP9/FRdwHWqWawkAu9opvQ
	(envelope-from <devicetree+bounces-305125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 13:42:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC2E61E803
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 13:42:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34812300B10A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 11:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD9F36C9EB;
	Mon,  1 Jun 2026 11:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoZe8lJV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4C936167E
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 11:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780313898; cv=none; b=sVvh7/3zB+aLeqSy0wQfnVdFc2VV4h+v6N7RK/RuroJc40T2s8cASw/xv+6sejPTIzQ+iKP6rKzlvm2/pOPyJuxjiIw3oRaOcc0OruekT81wGpGc17fueJ1ub5hXFSJwIXOhiCPNLS2smsPMl8VUiA5M4X8srTm4uDaOJ9JRqfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780313898; c=relaxed/simple;
	bh=JYNcPU4tHWTeuvdMTIFZoV3rvC25niCjKa9uc5RRFeo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TWQ+1BrOkEBcYnHEUZHVH6Uqyj23DdFCNk0G/Cdmg4Lz2MpmLJciir7SWwhArptTF/ZmzdyoC1/1hnfao3vAj2fTEyEnOG0mOc2XjvpT02FOr6VxzX4a46l74DjEOzCXY1xNQaVvTeS8+P8NvguvTkb0VHMzbuKyaHMGRjqbOZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoZe8lJV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A9821F00893;
	Mon,  1 Jun 2026 11:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780313895;
	bh=XQFpHLBDekt5OJ7qh/rrTsSM2Bbn+wP5N3lcE2lSqUQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YoZe8lJVJzJYfafrJS+gvmpJxS1YpF2g/ds0kRwJA2z2cMTIXBVASIhdqfe6KCnPp
	 HMi8nusKpQVGJbfw3xXGJHL+Pdd7VEtSL9umM+nYv3lSO2Dn/NblCrkoCuumZW2Pgg
	 PU5ma/5O3vWigpEZQrVWRwWtLXU5CDsN7Ef7LsKUPcYUbQ3i/1kwnSTfFOeA+0cVEp
	 GKsucfkw61FKavdDbrF+0mvkkGczNCSusjj77KgT0KRSKxOmA4UCgyTkeEyB9150b3
	 ZVjsNjRcublCaj1xocBNeg4MAQuuz78x7dD2uaxCqk2FbnY9zEU+luyg6WvTW9FrUe
	 zFeEhuOJrCEPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: serial: maxim,max310x: describe
 per-channel rs485 subnodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tapio Reijonen" <tapio.reijonen@vaisala.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260601-b4-max310x-rs485-dt-v2-2-a105105f8e70@vaisala.com>
References: <20260601-b4-max310x-rs485-dt-v2-2-a105105f8e70@vaisala.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 11:38:15 +0000
Message-Id: <20260601113815.8A9821F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305125-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vaisala.com:email]
X-Rspamd-Queue-Id: ADC2E61E803
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Kernel panic in error path due to uninitialized port structures in=
 `max310x_probe()`
--

commit 8da77c1c050ab79e593fff225d7174a5db92f3bd
Author: Tapio Reijonen <tapio.reijonen@vaisala.com>

dt-bindings: serial: maxim,max310x: describe per-channel rs485 subnodes

The MAX310x is a family of one- (max3107, max3108), two- (max3109) and
four-channel (max14830) UARTs. The binding pulls in
/schemas/serial/rs485.yaml at the chip level, describing a single set of
RS-485 properties - enough for the single-channel parts, but a
multi-channel chip can wire RS-485 differently on each channel.

> diff --git a/Documentation/devicetree/bindings/serial/maxim,max310x.yaml =
b/Documentation/devicetree/bindings/serial/maxim,max310x.yaml
> index 889eeaca64a02..988864e795741 100644
> --- a/Documentation/devicetree/bindings/serial/maxim,max310x.yaml
> +++ b/Documentation/devicetree/bindings/serial/maxim,max310x.yaml
> @@ -40,6 +40,36 @@ properties:
>      minItems: 1
>      maxItems: 16
> =20
> +  "#address-cells":
> +    const: 1

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but could the error path in
max310x_probe() cause a NULL pointer dereference?

In drivers/tty/serial/max310x.c, the driver allocates the port state struct=
ure
using devm_kzalloc(), meaning s->p[i].port.line is zero-initialized.

If the probe fails early before any channels are registered, the function
jumps to the out_uart cleanup label:

drivers/tty/serial/max310x.c:max310x_probe() {
    ...
out_uart:
    for (i =3D 0; i < devtype->nr; i++) {
        if (test_and_clear_bit(s->p[i].port.line, max310x_lines))
            uart_remove_one_port(&max310x_uart, &s->p[i].port);
    }
    ...
}

Because s->p[i].port.line is still 0, this tests bit 0 in max310x_lines.

If another max310x device on the system has already successfully probed, it
will have claimed line 0, so bit 0 in max310x_lines will be set.

Would test_and_clear_bit(0, max310x_lines) then succeed, incorrectly clear
the bit owned by the other device, and call uart_remove_one_port() with an
uninitialized port?

This appears to lead to a NULL pointer dereference when
serial_core_unregister_port() calls serial_core_get_ctrl_dev(port_dev),
dereferencing port_dev->dev.parent since port_dev is NULL for the uninitial=
ized
port.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-b4-max310x=
-rs485-dt-v2-0-a105105f8e70@vaisala.com?part=3D2

