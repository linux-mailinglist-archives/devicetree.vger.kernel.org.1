Return-Path: <devicetree+bounces-302899-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJm4HOJUFWqmUQcAu9opvQ
	(envelope-from <devicetree+bounces-302899-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 10:08:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EBD5D2386
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 10:08:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05F4D3041ABC
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 08:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CCB3CCA1F;
	Tue, 26 May 2026 08:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO196/DK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BFB3CCA13
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 08:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779782624; cv=none; b=TXTXWiFkPQUZ3w9ZLahgkOKYgw6zz7EPp+DG+H2T5bDtGLw+pBeJRtQl4FwmpbrEwjb1UZNbhD0xJs4pPaflpzOUOljIW20CH42RydbnCzPeH220VTUtfzNnjOyxq8TKZasSjBThGTY7Jq2Xy3hYtfmgcmCruSk1+jhfGH/DHjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779782624; c=relaxed/simple;
	bh=RZyFV4TYOkeTzWyuEJMljFmY7cUilYs9Dw78RjDEFGA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X9VgAwqyEzR6kMsAEXVFXwtpAgSXPGrIaFRWmmNGTYR+qGHPXu7LTB0VDVDoMtINc0yMIkniFdHl9ytVELocxM9bmXRHIUeJd3v0ueHZfxW31zZ5wcwd0egdDPW/7BujfEu4nmeYZibl5G4v1ROJpBfAnpRaMqFSHvhxjz2s2Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO196/DK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A0971F00A3A;
	Tue, 26 May 2026 08:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779782622;
	bh=I191zetXLOqY+FsNjawvzTiou9/ENSs/6VzCewKYCOk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AO196/DKBVhXI1+NTVKGn4CeDCBTS+3wxDkjOK1L00usyo5zhjR6iY7l7Wa7mPCg9
	 XfHKkJglVkZQhClC9Ekmm0XZGR4x0XtaVR5VPTr6WTUPiEzbS4CnP6WEM6VH2jN1Pr
	 djr27Xa4cHQwovJrtoWCkWmaQD4ZvVirJpRlFjJKx3CSrPHtDFAv+iMo/ZW9UdTQdQ
	 MKDYSRiN2cK29K+3KbO7wRKqy4JmZ8Z9UlJggwByVP8ByaqbW0OKhoG5E/H113HgG/
	 d/McnEhi1cO+YsCiu+U3N74Efe7EKOEwqggfBBTyJ2NN8gzVUWI5DgkJHQSo7/xu92
	 +KrrzvuuzM5Pg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: Document Renesas
 RZ/G3L LVDS encoder
Reply-To: sashiko-reviews@lists.linux.dev
To: Biju <biju.das.au@gmail.com>
Cc: devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260526074746.20371-2-biju.das.jz@bp.renesas.com>
References: <20260526074746.20371-2-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 08:03:41 +0000
Message-Id: <20260526080342.5A0971F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-302899-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: C3EBD5D2386
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The devicetree binding example uses an undocumented compatible stri=
ng 'renesas,r9a08g046-lvds-cmn'.
--

commit 9397f35a0f79e0fc93866629c771e20b121306e2
Author: Biju Das <biju.das.jz@bp.renesas.com>

dt-bindings: display: bridge: Document Renesas RZ/G3L LVDS encoder

This commit adds the device tree binding documentation for the Renesas RZ/G=
3L
LVDS encoder IP. It defines the required properties, clocks, resets, ports,
and provides a usage example.

> diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,r9a=
08g046-lvds.yaml b/Documentation/devicetree/bindings/display/bridge/renesas=
,r9a08g046-lvds.yaml
> new file mode 100644
> index 0000000000000..b1f6d020ae7b1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-=
lvds.yaml

[ ... ]

> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/renesas,r9a08g046-cpg.h>
> +
> +    lvds-cmn@108a0000 {
> +        compatible =3D "renesas,r9a08g046-lvds-cmn",
> +                     "simple-mfd", "syscon";

[Severity: Low]
Is the renesas,r9a08g046-lvds-cmn compatible string documented elsewhere?

It appears this string is not defined in any schema file or added to the
mfd/syscon bindings in this series. Will this missing definition cause a
schema validation failure during make dt_binding_check?

> +        reg =3D <0x108a0000 0x10000>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526074746.2037=
1-1-biju.das.jz@bp.renesas.com?part=3D1

