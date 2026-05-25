Return-Path: <devicetree+bounces-302665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPTnDOI2FGpuKwcAu9opvQ
	(envelope-from <devicetree+bounces-302665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:47:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF865CA280
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:47:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 919D13011C52
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8CDA32B119;
	Mon, 25 May 2026 11:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSrD0QJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F98305662
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 11:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779709662; cv=none; b=idsf/bbDhNet1RGRe/+vzxl54pfBLrEXBKK0wjx0XvyzH+Q0ykWEs33UqjsFwG3HYvX8Zo4uMXR2YFM/gQWAci+b+HfTgLgOqaMjAUkWZhJpSB7Y2J6W/b7EOWJzpnZere/EN7I/xK7otgeh3OJuMMCbJQTENsXty5EzfP7AWrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779709662; c=relaxed/simple;
	bh=LMcIXrkrSuePC/GLOWJrhgJLsndV2EtSGrsHMGHhfBs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TEUhl0Yx7BzDUmyZAJdZCq3cpJKmNj64MGjGqjNSdnoCkwKWCbXS9zRCFDyCwTyTOk71OxkAn5QY8k+2nd8kvZGyzQmnkr+m7g74rpFdMwu/JnHg5NrbEOj+npZSF+0Q7/luwPqCRSw7uiZOSw6MuRLqNGgYfTqZS95Rdleh/Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSrD0QJ1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E1DC1F000E9;
	Mon, 25 May 2026 11:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779709661;
	bh=PQHpopSh4+nk2H9m0gJtIxagld45rOULuhfLF4+Mc6o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WSrD0QJ1EM78vZLpFm1qtasVjksMzeC8sBMET9q4PVPaZpAnh87T3oUEi2smpD7ym
	 l6gTSRYM/OewSfYMdfol+tJlTuIKxR7kot3d+H8VZ3TYlvZTTcHtC0ftU5w57rwI/d
	 E3gjMi8esxd93znBg0zBrwIAPRxtRMx9ZSduwWQZKqRo08ZjGXHtNDb8sxJYphQw+b
	 TaOeYS1gbjmNQhLiVkKDFBC/kgKS2QZONZNojYR73wIOTCryF7qoL/Ky0EzyPknBcq
	 x0WmdbwLqYZ3Qc142lYoT+haQHvOlCBGq/NowZ7+DxSUw5o/qXuSyI+2h4pN+SgQm3
	 NNmM4Mb0iDNAQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 10/18] ASoC: rsnd: ssiu: Add RZ/G3E BUSIF support
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org
In-Reply-To: <20260525110230.4014435-11-john.madieu.xa@bp.renesas.com>
References: <20260525110230.4014435-11-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 11:47:40 +0000
Message-Id: <20260525114741.1E1DC1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302665-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 9AF865CA280
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Out-of-bounds array access and undefined bit shifts due to unvalid=
ated device tree node count.
--

commit cd52ab06a4f096e9c70d4a69a4f934f03c3b0b19
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: ssiu: Add RZ/G3E BUSIF support

This commit adds support for the SSIU on the Renesas RZ/G3E SoC, which has a
different BUSIF layout compared to earlier generations. It also introduces
a capability flag to parametrize the BUSIF error-status loops, as the
RZ/G3E only has two pairs of error-status registers.

> diff --git a/sound/soc/renesas/rcar/ssiu.c b/sound/soc/renesas/rcar/ssiu.c
> index 2b922ead62d09..8d4ce9d35e9e7 100644
> --- a/sound/soc/renesas/rcar/ssiu.c
> +++ b/sound/soc/renesas/rcar/ssiu.c
[ ... ]
> @@ -559,6 +575,9 @@ int rsnd_ssiu_probe(struct rsnd_priv *priv)
>  		} else if (rsnd_is_gen4(priv)) {
>  			list	=3D gen4_id;
>  			nr	=3D ARRAY_SIZE(gen4_id);
> +		} else if (rsnd_is_rzg3e(priv)) {
> +			list	=3D rzg3e_id;
> +			nr	=3D ARRAY_SIZE(rzg3e_id);
>  		} else {
>  			dev_err(dev, "unknown SSIU\n");
>  			return -ENODEV;

[Severity: High]
This is a pre-existing issue, but can an excessive number of SSIU nodes
from the Device Tree cause out-of-bounds array accesses and undefined
bit shifts?

In rsnd_ssiu_probe(), priv->ssiu_nr is initialized to the total number of
SSIU nodes from the DT without validating against the maximum supported bus
interface index.

During initialization, ssiu->id_sub is computed as i - list[ssiu->id].
If the DT provides too many SSIU nodes (e.g., >=3D 33 for RZ/G3E), id_sub
will become 8 or greater.

This out-of-bounds id_sub value is later used in rsnd_ssiu_get_status() to
return &ssiu->busif_status[busif], which can lead to kernel memory corrupti=
on
when the caller dereferences and modifies it.

Additionally, rsnd_ssiu_start_gen2() uses busif as a shift amount via
1 << (busif * 4), which can result in undefined behavior when shifting a
32-bit integer by 32 or more.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525110230.4014=
435-1-john.madieu.xa@bp.renesas.com?part=3D10

