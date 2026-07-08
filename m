Return-Path: <devicetree+bounces-323184-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7pMODDPHTmqBTwIAu9opvQ
	(envelope-from <devicetree+bounces-323184-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:54:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 962C072AAE7
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:54:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AgCm2ae5;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323184-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323184-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1DD3300A106
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 21:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 030473AA1BA;
	Wed,  8 Jul 2026 21:54:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24B23A6B81
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 21:54:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783547695; cv=none; b=bbbU42JoziUQ6Rp2jkFNSHFnRGVFtwwExoFQSatnYLWO/+rVQ75Ew7o2tG5r6ji+tGokVXXLY4V7/4EnFD/fWJH5VtLLrM51+gmf1eksG7YZvoEfIg3zqAI16LGsXINDdM0GHTX2Kmh1+c9wYSQaa2LpY2H4U2WHQlDO5HSi6oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783547695; c=relaxed/simple;
	bh=Ex0+gpCjDRtY5+oMEEU6B/9q/Q09KrwZIKePjAaza18=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=k+8c0vYw1gLn85T6R6vPQLRhtYW5N7jqw/NrqSPcdOnJzvf1OcaIcyf+2p1IPo7nA6KDfFydW92ONLvLho5jthweTxfqy7IQWRDafmdesFe5A6gnHGQlLA/fSpZGNXXHGGolZaJiqvQEapBiJerzQsMJPdjMYDxCZEQPhXKNRpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgCm2ae5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2879A1F000E9;
	Wed,  8 Jul 2026 21:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783547694;
	bh=6w+R1mf0TlvlvB1TKHCcuq+a4bqdxoEHhEQSGGmNSk8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AgCm2ae5GjSC73o8AIlDs0/hieZBjH8lMFcTxWhgq1cFtQ+ZHB6cIFILxq5k1w0oz
	 tuTwyiaUMZ+HuLCzH+6WS27rW7nZQnJwMSIA/DXyzQSeSBfFkgA78g6GqClI8yglNU
	 vfzQZhISIKwCH08+zYHjGmh3PxwjRjeq3aPgb3utQFNOtwGc38taZFY/6IFbOsoMVH
	 3mRZvUr6aYY5Y6i5faSPiIyS2A6fN5JD1JEaB4mr7gese97ciCOTEA8/HluPHDY6xG
	 tprSz3m/AXvWl9juq+yOvBYAh29c4Qc72QC0hU/0vTZLxIzAeREwbvsUURkv+MSoEM
	 jBhq8wpmK7pQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/5] dt-bindings: display: panel: add compatible for
 DCLTek 300250 9.35in panel
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marc-Olivier Champagne" <marc-olivier.champagne@savoirfairelinux.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260708213500.1867092-5-marc-olivier.champagne@savoirfairelinux.com>
References: <20260708213500.1867092-1-marc-olivier.champagne@savoirfairelinux.com>
 <20260708213500.1867092-5-marc-olivier.champagne@savoirfairelinux.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 21:54:53 +0000
Message-Id: <20260708215454.2879A1F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323184-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,savoirfairelinux.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marc-olivier.champagne@savoirfairelinux.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 962C072AAE7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The newly added compatible string `dcltek,dt300250` will not be =
probed by the panel driver due to missing `of_match_table` entry.
- [Low] Redundant assignment of `jadard->panel.prepare_prev_first =3D true;=
`.
--

--- Patch [4]: [PATCH 4/5] dt-bindings: display: panel: add compatible for =
DCLTek 300250 9.35in panel ---
commit eaec789ca9baff9cff690aca5a539d1f1eb81d5f
Author: Marc-Olivier Champagne <marc-olivier.champagne@savoirfairelinux.com>

dt-bindings: display: panel: add compatible for DCLTek 300250 9.35in panel

The DCLTek dt300250 is a panel using the jadard-jd9365da controller.
Add a new compatible for it.

> diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd936=
5da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365=
da-h3.yaml
> index 4eae802de9fd5..9e20e2faf82fa 100644
> --- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.=
yaml
> +++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.=
yaml
> @@ -19,6 +19,7 @@ properties:
>            - anbernic,rg-ds-display-bottom
>            - anbernic,rg-ds-display-top
>            - chongzhou,cz101b4001
> +          - dcltek,dt300250

[Severity: Medium]
Will the panel driver successfully bind to this new compatible string?

Looking at jadard_of_match in drivers/gpu/drm/panel/panel-jadard-jd9365da-h=
3.c,
it seems neither this new compatible string nor a generic fallback is prese=
nt
in the match table:

drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c:jadard_of_match[] =3D {
    {
        .compatible =3D "anbernic,rg-ds-display-bottom",
        ...

Without a matching entry in the of_match_table, does this regression cause
the device to fail to probe?


[Severity: Low]
Looking at the driver changes introduced earlier in this series by commit
1a793dbc7476, is there a redundant assignment to prepare_prev_first?

drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c:jadard_dsi_probe() {
    ...
    jadard->panel.prepare_prev_first =3D true;
    ...
    jadard->panel.prepare_prev_first =3D true;
    ...
}

Could this regression be a duplicated assignment in the same function?

>            - kingdisplay,kd101ne3-40ti
>            - melfas,lmfbx101117480
>            - radxa,display-10hd-ad001

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708213500.1867=
092-1-marc-olivier.champagne@savoirfairelinux.com?part=3D4

