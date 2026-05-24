Return-Path: <devicetree+bounces-302201-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GVL2FbfPEmq44AYAu9opvQ
	(envelope-from <devicetree+bounces-302201-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 12:15:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5E35C1DA6
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 12:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DEEC300952A
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 10:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E76B31AA92;
	Sun, 24 May 2026 10:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmlmcAJE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430B5390CAD
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 10:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779617715; cv=none; b=iQQsNcZqQ8c8xHwo7N8rU6Bn6hZ3UMdLOs8ePPrF2oAkhTOC9ZeAux9CwX5iE0p2l/OurUAPQSXqjGr5Ok+uQxPBnH+VQYkg12u5FjujdzuCKP4JJh2YaimJXBdDnocdQ+4HHBfq4eUjXMeDN2tWKC8yHgGjCXu6OwcBY6A2PRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779617715; c=relaxed/simple;
	bh=yhdt8wxXVjuwmxOQZIK9Lb7cHjk4DG0wb2zcFmxRmJU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CLYRorGoxCztZu1k0i43IvUW2qCJXMjkBOOwDI6h0URIxsdHBYL1HKFTxMAHLE8SI0Ms8qAcwecrrVj7rFk6ikdQSxYbcqGPUDcy9DI0/tS98TDax/uLYPgrQVlg238QM3V4qFMYuSpUTaYDeYSzs2kq8vkos337SXCvXZTBBtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmlmcAJE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A76711F000E9;
	Sun, 24 May 2026 10:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779617713;
	bh=fhdCzy9cdkhSeDH0MHZOUWV7RAIGP52FT/NjpcjjJaM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UmlmcAJEFIDvXKKqmNh4OeWfb+HJQ6TQdt9gVYKxLV8loyKefo7CYOVJ/YBn7u09T
	 JKDw2OcOt6ZeGigCzxUjGFeg3xUjZaLGz/h+4EKrAt8Zh1ZLslfRrElEZtRPcjAfOD
	 Jk7iil5Xn/KiU/BvjEK/kn9lg5Nu+dTVkkeEdUQLzNdw2RWgborkuPNX5XqTRj4r/K
	 /UTGczPCuf+uD8piO3rRymKXhjVTZlCgKWTtRAQG+LhhMpcHp3GQCpq68QFdlgtu4U
	 06qmplCUQ9mpHajw5/FABd8YlmiEipyMsCKjT8xrybBsFbE6ler0MTyNTDuS8JNTlc
	 LyQzAx96sokqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: mellanox,bluefield-dw-mshc: Convert
 DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manish Baing" <manishbaing2789@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260524094616.106660-1-manishbaing2789@gmail.com>
References: <20260524094616.106660-1-manishbaing2789@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 May 2026 10:15:13 +0000
Message-Id: <20260524101513.A76711F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302201-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.42.201.32:email,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 6F5E35C1DA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Mismatch between node unit-address and `reg` property base address =
in the YAML example.
--

commit cdc4e472d6093984a0a6b661575b015b013ec9d6
Author: Manish Baing <manishbaing2789@gmail.com>

dt-bindings: mmc: mellanox,bluefield-dw-mshc: Convert DT schema

This commit converts the Mellanox BlueField SoC extensions for the Synopsys
Designware Mobile Storage Host Controller from text format to YAML schema.

> diff --git a/Documentation/devicetree/bindings/mmc/mellanox,bluefield-dw-=
mshc.yaml b/Documentation/devicetree/bindings/mmc/mellanox,bluefield-dw-msh=
c.yaml
> new file mode 100644
> index 0000000000000..32d50e45ddb86
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/mellanox,bluefield-dw-mshc.ya=
ml

[ ... ]

> +examples:
> +  - |
> +    /* Mellanox BlueField SoC MMC */
> +    mmc@2804000 {
> +        compatible =3D "mellanox,bluefield-dw-mshc";
> +        reg =3D <0x6008000 0x400>;

[Severity: Low]
Should the node unit-address match the first address in the reg property
here?

The converted YAML example uses mmc@2804000 as the node name, but retains
reg =3D <0x6008000 0x400>. This mismatch typically causes a unit_address_vs=
_reg
warning during dt_binding_check validation.

> +        interrupts =3D <32>;
> +        fifo-depth =3D <0x100>;
> +        clock-frequency =3D <24000000>;
> +        bus-width =3D <8>;
> +        cap-mmc-highspeed;
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260524094616.1066=
60-1-manishbaing2789@gmail.com?part=3D1

