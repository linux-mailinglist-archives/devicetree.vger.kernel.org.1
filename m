Return-Path: <devicetree+bounces-295812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bsoZOXdJAmqoqAEAu9opvQ
	(envelope-from <devicetree+bounces-295812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:26:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 47869516458
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3796730242B0
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CDC496904;
	Mon, 11 May 2026 21:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcZTFzC7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CDA381B19
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 21:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778534773; cv=none; b=gF9oZZULe3wHsEtxj+1172gqHqU8/Sr44YQCj+TZHx+GunwGdaG2UAQbLxv6eQtyxvM1zJepo0m+5OIgAoRWSs1xUapaaJAO5apN5zADoI8r8Nxm5npzyepK/fhNk3ffc+Mvj/bnfWvuCBsC37cJ62MYSWJWl0Lzs5r5Q0gsXuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778534773; c=relaxed/simple;
	bh=iZTlK47jEAVOvMzTlWNfLpYMwO2vMOqV5WPf2Zi35fg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kA9+Z4DquzqHBEM8OOO1PK5nv56jgXxm/OCmilM70SjquIu1ne8/zBubDVIO2PGhiUfar2rH6S0ogAkwq5H1oujFhJMPwp770tfNeEBHHiXHANut/+YX3pvlH1L4/LYlBBRPp0S7lxypcU15LphLCWS8OFbR5bnmypv4WLi3RCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcZTFzC7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 746E6C2BCB0;
	Mon, 11 May 2026 21:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778534772;
	bh=iZTlK47jEAVOvMzTlWNfLpYMwO2vMOqV5WPf2Zi35fg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=qcZTFzC7LGrl8vcdfbbgnDgnUVzC5hAdTBhtlpdSi3VYtKXvB/YOGFfpod9MdnJ6h
	 Bler8vQhUIFNkXTZqyW4m7QtA2PcU81x+BvhTXGWHaZO945XIU5N2DIDnuqaoGgbuy
	 s1sTwe9Nx2nzTuM0/LcvC3q5vsedqU1MHjItmzsXm+hdVWNn6VxSp0fT1Ozu7HGwzx
	 /ybvtKkyIZzcNtcB9Lg0r2kV1uuxH1ZVbtF2MPLat7c5xgRYqPxcPth+VCDvr/1B5m
	 Q64HezG0nPblFFbentYiuJ2cVmMp84G6O5BfyVt4UW2RLpFEU+C/6N0WatOrjYZcZL
	 MQVLHOtUny2/w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: document the Ayaneo Pocket
 DS
Reply-To: sashiko@lists.linux.dev
To: "Alexandre Hamamdjian via B4 Relay" <devnull+azkali.limited.gmail.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260510-pocketds-v1-1-cf05acec06af@gmail.com>
References: <20260510-pocketds-v1-1-cf05acec06af@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 21:26:11 +0000
Message-Id: <20260511212612.746E6C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 47869516458
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,sobir.in:email];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295812-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,azkali.limited.gmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The compatible string 'ayaneo,pocketds' omits a hyphen between word=
s, violating typical devicetree naming conventions and internal consistency.
--

commit 3beb9c18c4855d596e09aceb2276fb3c8a70aff3
Author: Teguh Sobirin <teguh@sobir.in>

dt-bindings: arm: qcom: document the Ayaneo Pocket DS

This commit documents the device tree bindings for the Ayaneo Pocket DS
gaming console. It maps the new device to the Qualcomm QCS8550 and SM8550
platforms.

> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentat=
ion/devicetree/bindings/arm/qcom.yaml
> index 2741c07e9f416..f130a6b092b95 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
[ ... ]
> @@ -1107,6 +1107,12 @@ properties:
>            - const: qcom,qcs8550
>            - const: qcom,sm8550
> =20
> +      - items:
> +          - enum:
> +              - ayaneo,pocketds

This isn't a bug, but should this compatible string include a hyphen
between the words (ayaneo,pocket-ds)? Standard devicetree naming
conventions typically use hyphens to separate words, and it would match
the existing format used for the Ayaneo Pocket S2 below.

> +          - const: qcom,qcs8550
> +          - const: qcom,sm8550
> +
>        - items:
>            - enum:
>                - ayaneo,pocket-s2

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510-pocketds-v=
1-0-cf05acec06af@gmail.com?part=3D1

