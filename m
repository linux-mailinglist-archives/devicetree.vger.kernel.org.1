Return-Path: <devicetree+bounces-299698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Yeg5IHXKC2onNwUAu9opvQ
	(envelope-from <devicetree+bounces-299698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 04:27:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1508E5766D3
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 04:27:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 785E33016424
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 02:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10DC03161BA;
	Tue, 19 May 2026 02:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmd4Ztk+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A67314B62
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 02:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779157618; cv=none; b=XtvmG7sEkFOpD/KlIVFExojL5c9042KYdk3AOgBVY1ZSPRVIgm5m/W881VHwr9mN1jsZ1BINygcusU7Hxd+l81wdFL3xy9Fj0AdpehCA6JA4DVKCn7iThyk4lmKqm9VGROk16YLudv6YxN31GuUf1ldJhXPx8wScDfRufc+Zos4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779157618; c=relaxed/simple;
	bh=jUs4Zj9+VblxMXXIPQ15fqmcIP+a1+kZ+/eRBPujkOg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UdUUVJJXk0S0DwgFq+UYYWc0TA47TG4Hm4LfIt2vd4P8Vs7PiuMw9yaLUjZLiNtFUC7G3r9rlKItoN/CJfubMAN7x4kdHmpJoPp2sZnN8hLz8l4InXs7aT28OH0QRW8ltttNBq7gxC9yULRZGXQPT/tSvpPi4xyG8LDgS65Z5GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmd4Ztk+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BDCCC2BCB7;
	Tue, 19 May 2026 02:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779157617;
	bh=jUs4Zj9+VblxMXXIPQ15fqmcIP+a1+kZ+/eRBPujkOg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=bmd4Ztk++KtJmDUrKjZ62RsRsOalE9TuoWpMxdEdx/KpuhxcMkOMEhKsc/ygNXKOU
	 2bTDkJWe4eJ5jSA3FVGPdN9EwtuxjiF+RrLKCOf0VeJE44uUog3RwSvSF9GlaevNC/
	 Y0d1ghkb+2VW2QOye7rl2m41T4RytXe0A2VYGsGtq5rS498jpALCSY/tE2thG5A7/c
	 srv/VS3ngIseDLIP90juEvHvNbhFCTypA1MCp4Wk1OQdw2u9SZEFF2PKGBbFK3AKkp
	 6EfSmNVT3Gwz//KKqsp1kOyVvdVIkGZX2CYIqyB3HqnCF+NkLBBYGH8jkcc9JCYIyL
	 JcVYS9EpcsI/w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 1/3] dt-bindings: media: mediatek-jpeg-decoder: add
 MT8189 compatible string
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jianhua Lin" <jianhua.lin@mediatek.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519021726.19137-2-jianhua.lin@mediatek.com>
References: <20260519021726.19137-2-jianhua.lin@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 02:26:56 +0000
Message-Id: <20260519022657.4BDCCC2BCB7@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-299698-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mediatek.com:email,sashiko.dev:url]
X-Rspamd-Queue-Id: 1508E5766D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch silently adds the `mediatek,larb` property and makes i=
t required for the `mediatek,mt8189-jpgdec` compatible without documenting =
this change in the commit message.
--

commit 7d5681943c1909dfa79c220036a9f22e9e47c5f2
Author: Jianhua Lin <jianhua.lin@mediatek.com>

dt-bindings: media: mediatek-jpeg-decoder: add MT8189 compatible string

This commit adds the compatible string for the MT8189 JPEG decoder, updating
the clock requirements to a single clock and enforcing conditional checks
for the new hardware.

> Compared to previous generation ICs, the MT8189 JPEG decoder requires
> 34-bit IOVA address space support and only needs a single clock
> ("jpgdec") instead of two. Therefore, it is added as a standalone
> compatible string without falling back to older SoCs.
>=20
> Update the binding schema to include the new compatible string and add
> an `allOf` block with conditional checks. This enforces the single clock
> requirement for MT8189 while preserving the two-clock requirement
> ("jpgdec-smi", "jpgdec") for older SoCs.

The commit message details the changes to the clock requirements and IOVA
address space, but it omits the introduction of a new hardware dependency.

> diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-decode=
r.yaml b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml
> --- a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml
> +++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml

[ ... ]

> @@ -60,6 +67,27 @@ required:
>    - power-domains
>    - iommus
> =20
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt8189-jpgdec
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 1
> +        clock-names:
> +          maxItems: 1
> +      required:
> +        - mediatek,larb

Could the commit message be expanded to explain why the mediatek,larb
property is being added and made required for the MT8189 hardware?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519021726.1913=
7-1-jianhua.lin@mediatek.com?part=3D1

