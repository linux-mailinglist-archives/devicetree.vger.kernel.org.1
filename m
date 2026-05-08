Return-Path: <devicetree+bounces-294673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLaWKSJG/mlFogAAu9opvQ
	(envelope-from <devicetree+bounces-294673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:22:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2594FB75A
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:22:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46B02303E239
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 20:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06ECD3E5581;
	Fri,  8 May 2026 20:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO/KH3La"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67493E4C9D
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778271753; cv=none; b=pM3RnVgCgAq+HP6DEKy0LovAQC7FGqonNF2XP2+hoUVtEqLWK0nitjNfMJJv9AqGYKj19Wl+nutrz4BUrQAcrQOKVxxPHHkAULht6zoZ4QIloucovPQhPMYS6Rp7ZurrqqXvug7ch5SclYAzvgqviE53Pd/tKklKhHFs/XgjEDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778271753; c=relaxed/simple;
	bh=psqg2sRJEJcplzJJE8MgMgbQVSvNufy1RCjog95O5DE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=taihZ7jg8BD3aznlJIdmn6dW42YBwPeaprAJrNe/n6YwOwqel3QnpuRirYMVcYO3+n2tOzhPb5xdFUHMGKXgot+SlDaNypypL1BZR4i5C9Gi83mPxjR5PrV+dJ0yAt68fl7bj9aA/EeUvPWax4xYvFAVUqjHQGVkUELEkEVCuMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO/KH3La; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47B7DC2BCB0;
	Fri,  8 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778271753;
	bh=psqg2sRJEJcplzJJE8MgMgbQVSvNufy1RCjog95O5DE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=fO/KH3Lae8hSXsFsNv9CIEV4aVVsOwcfXWuoTS1LHbPVVFkDOTCCzOtrIY1ioGF2l
	 AChpPlOf0qhyEC26o07qinQtiQb0tzM0f4hDs4CBNCMymB/+QlD/jy+lJ/FkYvOnR3
	 9Tll/UIaINksMUNPS1Zh5INMAlB7YLC/cgz2m6AyTWanJbmg43pUJ4REi57SUOArLZ
	 UV4NnUSV2iYWRZLsg7vAXFnNbPaVSBHyMJLJmip5kJkcI6JF0nGs9getWFOHyJifQv
	 mNANgSvmOrPhIcZdOau+uFSNEHOq0xAYLS/opGqnsVrHqu6aN6gQJRFzEC9wv50NVA
	 nIbuI8LIp8llA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: display: renesas,rzg2l-du: Add
 RZ/T2H and RZ/N2H support
Reply-To: sashiko@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260508111744.771659-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260508111744.771659-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 20:22:32 +0000
Message-Id: <20260508202233.47B7DC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1D2594FB75A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	MISSING_MIME_VERSION(2.00)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294673-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email,lists.linux.dev:replyto,smtp.kernel.org:mid,renesas.com:email];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	FREEMAIL_TO(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.871];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c04:e001:36c::/64:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The conditional constraints for renesas,r9a09g077-du fail to explic=
itly disallow port@1, permitting invalid device trees to silently pass vali=
dation.
--

commit cd9bf5724c5d57e0dd67fd27e0187153179b0578
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

dt-bindings: display: renesas,rzg2l-du: Add RZ/T2H and RZ/N2H support

This commit documents the Display Unit (DU) support for the RZ/T2H and RZ/N=
2H
SoCs. It adds new compatible strings and updates the allOf constraints to
handle the SoCs' specific register differences and lack of reset control.

> diff --git a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.y=
aml b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
> index 2cc66dcef870a..18776ac9e7c7e 100644
> --- a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
> +++ b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
[ ... ]
> @@ -95,7 +98,9 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: renesas,r9a07g043u-du
> +            enum:
> +              - renesas,r9a07g043u-du
> +              - renesas,r9a09g077-du
>      then:
>        properties:
>          ports:
> @@ -137,6 +142,17 @@ allOf:
> =20
>            required:
>              - port@0

Should we also explicitly set port@1 to false here?

The base schema for 'ports' allows both 'port@0' and 'port@1' via the
patternProperty '^port@[0-1]$'. By not explicitly disallowing port@1 in this
conditional block for the single-port RZ/T2H DU variant, would a malformed
device tree containing an extra port@1 incorrectly pass schema validation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508111744.7716=
59-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D1

