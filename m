Return-Path: <devicetree+bounces-298526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OALFaF+B2qQ5gIAu9opvQ
	(envelope-from <devicetree+bounces-298526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 22:14:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6896557552
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 22:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 109D3302E790
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 20:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2B153909B3;
	Fri, 15 May 2026 20:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wos76SoQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906252BE639;
	Fri, 15 May 2026 20:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778876035; cv=none; b=BP5Fm5wMTbdcJWTdtWwikAEdNZOjoQxjsqHX2RLBdawkgPHwLePPcXc/Cvj0LTccJupyGZ+Hm5XDmvetuzL07Xv+GEjUeGY3hi8/NVj4fyBQ0Oyo3wfBhwYhiK2C3nEiWbx04Gy/pQMi3xMuMRSY1ukvdbj/EjJyAqlriPgyqEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778876035; c=relaxed/simple;
	bh=XG6aG8p+9EFzyM79pK1EYGPw2r3vm5VMkqiS2VrNnU0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oEoOs9qfhQ4G4WsmVz5f+uZhN/bLeixoVWqLUZ7lkJ+fJE1YK+pY7sbeSKKKWD3YkYZk1ln0z91X6hBkE9iUBwxqsQ58RhgFR5hAm5XxMHXg/EFaLsDGeXixvkKx1AJKR/kxgIerlXCwrtIfFl2t4sjISwM2SFXA942MPsW3Zyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wos76SoQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E168C2BCB0;
	Fri, 15 May 2026 20:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778876035;
	bh=XG6aG8p+9EFzyM79pK1EYGPw2r3vm5VMkqiS2VrNnU0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Wos76SoQJtrLDuUOPii9tZnMDsEGRih1hjAKGNajmdpNH18YOs6vrQNyu+8tUM10y
	 n1mponLsOxS738uSZrEEnPiD8UruVoiIabQAkf95ceKEKQu+0XVbrbgQVtzWnmSKA3
	 ZnTbW15FRK8I0t8H/0vpxgc7SjNaD1BA12DtECoSDzXwCIDJFJShSnLRvAYnhPpuEI
	 tFdyyoYcNjbap4V8q+9Anu92LEwWLCe4a1h8+IZ8y+i/EATq0JyIBYwvksH3wYwC1t
	 5bo/Cr7o6uBniDFkcEFp4woZiXlaDe3F94CLsy0itinjADrUOEuF1PH3Dt2p+ngbr6
	 Bf0gi7Ab2eIdw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: display: simple: add avic,tm097tdh02
 panel
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260515195935.2415466-1-Frank.Li@oss.nxp.com>
References: <20260515195935.2415466-1-Frank.Li@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 20:13:54 +0000
Message-Id: <20260515201355.1E168C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A6896557552
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-298526-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The commit adds the `avic,tm097tdh02` compatible string to the d=
evice tree bindings schema but fails to add the corresponding driver match =
data in the `panel-simple` driver, while the schema incorrectly rejects fal=
lback strings.
- [Low] Typo in the commit message: 'compatilbe'.
--

commit 6c3fff393da11c29533acb6535efaaa08a1b9910
Author: Frank Li <Frank.Li@nxp.com>

dt-bindings: display: simple: add avic,tm097tdh02 panel

This commit adds the compatible string for the AVIC Optoelectronics 9.7"
panel to the simple panel device tree bindings schema.

> dt-bindings: display: simple: add avic,tm097tdh02 panel
>
> Add compatilbe string avic,tm097tdh02 for AVIC Optoelectronics 9.7".

This isn't a bug, but there is a typo (compatilbe) in the commit message.

> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple=
.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 3e41ed0ef5d51..80e7c6420b289 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -63,6 +63,8 @@ properties:
>        - auo,p320hvn03
>          # Shanghai AVIC Optoelectronics 7" 1024x600 color TFT-LCD panel
>        - avic,tm070ddh03
> +        # Shanghai AVIC Optoelectronics 9.7" 1024x600 color TFT-LCD panel
> +      - avic,tm097tdh02

Does this new compatible string also need to be added to the match table in
the panel-simple.c driver?

The panel-simple.yaml schema restricts the compatible property to a single
string since it is added under an enum. If a device tree uses only the
avic,tm097tdh02 string to pass schema validation, the driver will silently
fail to probe at runtime because the string is missing from the driver's
match table.

Conversely, if a device tree relies on a fallback string to ensure the driv=
er
probes successfully, the schema validation will fail because it does not
currently accept an array of strings for this panel.

Should the schema be updated to allow a fallback string, or should the driv=
er
be updated to match this standalone string directly?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515195935.2415=
466-1-Frank.Li@oss.nxp.com?part=3D1

