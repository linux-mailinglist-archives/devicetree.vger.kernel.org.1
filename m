Return-Path: <devicetree+bounces-301714-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FD/DGEzEGqqUwYAu9opvQ
	(envelope-from <devicetree+bounces-301714-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:43:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CF95B2621
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B04D7300D45A
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 336DD3C9440;
	Fri, 22 May 2026 10:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9EQqbA8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC003AE6E9
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 10:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779446235; cv=none; b=UEi65ix9E4TH62QXzWMfUFPZ4iDFrmE88QkKOOzkMENyFtZo3J26b/LbLUaGQzMVstm4sVZj1ECPp+WnxfkonEcOYltrUBeJxHVO7IqElTaorDidQOnOZFUcLvqqxLtzl/WpA1CpCEQ+H26nvLjxmHnvyIsFdLB4l9aA/v/VK2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779446235; c=relaxed/simple;
	bh=qpo/kTmsOeJRBlPiz+ct1HqTAZB5B8r6/dTcHFDbM7s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=E/TWztY9rx31NuZ1rcoT49p4nGddGOYFswndIYOzWRwZAJo6syx64WsjIg48w6xg4bnc/6ZxYbuHOagSc9rx80YTK0E6y/EZcG3qHxoRIoKsMqQdBul8nwNIrrdZvGfnMlayfW3X+1w09huN0J3UuFqWS8GZXg8RESCNfhxEzt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9EQqbA8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C09D1F000E9;
	Fri, 22 May 2026 10:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779446233;
	bh=PA9jpI/j8UAVj7kd5UtZzi6Aod3S6A+P1N1lXZsP0zY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Q9EQqbA8xfGS1eFBCoZawR/u5VWUOKyjmacCjq9RBREFrL2eWKT0ihTnQJsOAxXaq
	 d1IyuLL0q04phCyZFybVUIu1sYfm1d7PkQpqSchllBkPUbBuh1/TIg1wDfpj0DRnln
	 o1xcbrjpQIk2oCRawU8EUHTb2J/Nb3TwSvMCgd5zAfIgQX34mvQRHiN8q+uwEQq2lY
	 lzh14QCuWcV4nScwkXnY79p8HRfeMhaXjEe1l86Mv6peEsIvJhvxXJLyB8PWG8UG03
	 BYCd3JqYTCUZ6PB+7YyrwSQYbufJnKVKBzIZac19D+AckhTEechJShoJ5C5MNoc8D9
	 BH5str3Z04CbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] ASoC: rockchip: spdif: Reorder clock enable
 sequence
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260522100318.73474-3-phucduc.bui@gmail.com>
References: <20260522100318.73474-3-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 10:37:13 +0000
Message-Id: <20260522103713.6C09D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301714-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 88CF95B2621
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Failure to restore regmap cache-only state if `regcache_sync()` fa=
ils during runtime resume.
--

commit 517eeaafec0deb4d7a25eb1c2641316c2b2e2b72
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: rockchip: spdif: Reorder clock enable sequence

This commit reorders the clock enablement sequence during runtime resume.
It ensures the bus clock (hclk) is prepared and enabled before the
controller clock (mclk) to guarantee proper register access.

> diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/roc=
kchip_spdif.c
> --- a/sound/soc/rockchip/rockchip_spdif.c
> +++ b/sound/soc/rockchip/rockchip_spdif.c
[ ... ]
> @@ -76,16 +76,16 @@ static int rk_spdif_runtime_resume(struct device *dev)
[ ... ]
> -	ret =3D clk_prepare_enable(spdif->hclk);
> +	ret =3D clk_prepare_enable(spdif->mclk);
>  	if (ret) {
> -		clk_disable_unprepare(spdif->mclk);
> -		dev_err(spdif->dev, "hclk clock enable failed %d\n", ret);
> +		clk_disable_unprepare(spdif->hclk);
> +		dev_err(spdif->dev, "mclk clock enable failed %d\n", ret);
>  		return ret;
>  	}
> =20
>  	regcache_cache_only(spdif->regmap, false);
>  	regcache_mark_dirty(spdif->regmap);
> =20
>  	ret =3D regcache_sync(spdif->regmap);
>  	if (ret) {
>  		clk_disable_unprepare(spdif->mclk);
>  		clk_disable_unprepare(spdif->hclk);

[Severity: High]
This is a pre-existing issue, but is the regmap cache-only state left
unrestored on this error path?

If regcache_sync() fails, the driver disables the clocks and returns an err=
or.
This causes the runtime power management core to leave the device in the
suspended state.

However, the error path doesn't appear to restore the cache-only mode via
regcache_cache_only(spdif->regmap, true).

If a subsequent register read or write occurs while the device is in this
suspended state, could the regmap bypass the cache and attempt a physical
memory-mapped I/O access?

Since the generic power domain would be powered off when suspended,
attempting this access might trigger an asynchronous system error or
synchronous data abort.

>  	}
> =20
>  	return ret;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522100318.7347=
4-1-phucduc.bui@gmail.com?part=3D2

