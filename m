Return-Path: <devicetree+bounces-305578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FDQMnu0Hmr7JAAAu9opvQ
	(envelope-from <devicetree+bounces-305578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 12:46:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFAA62CD44
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 12:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C11C130086BE
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 10:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 519A13932D9;
	Tue,  2 Jun 2026 10:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYRLG+1X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC86246781
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 10:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780396570; cv=none; b=tEqvqtv+62U0SPE4jrRp09j/nhxczS3gpXHsFG0cWfzhqIBKrPqUYLfhayRkZV660ytmmnucP9skuCZNjRs1KgGEQcl0Xt93xM73B+J4g/2vVQ0jE7cwMGCPzvpi9bgLkHb7N54ON4DBfHbBvcKXPRoCdUPdNbrw6LQ5UEiCzVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780396570; c=relaxed/simple;
	bh=tUtpikAk5VkIuOfgp7Z6Q6hzwGmU4rW1P9KSv8BwMmw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EoFp+oR/JR30lvX/ky3ZCaSHHSQEjofDY/JS6HUTHpdwWa05FqJUEC6XlA1bKLyI3aWakkchSJAjufPlvY4M/uKiwYVDk3EH56KjF3KOqPW9xtuyrnmcoMau5hCDQhx0jGOvT59GNJgFc8EbiqUQ+ap8sTBsQCo4TSmvPShd8lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYRLG+1X; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 938EC1F00893;
	Tue,  2 Jun 2026 10:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780396568;
	bh=BCLqZANaSCrSSKStHfFpttQ6d+mH1z4LZ7RLwzDwu1I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XYRLG+1XSNbKyckwGQoWED4GIU44UD4IE8NSPhGifc7wH2RkKuYHrGrJwQlFoYfNr
	 0uZ2QyE6ULb7bPOmEkn/b/qQXGVtJCg1lxcBuIAkcu83L/yeUfMy+9D0i2Nq/ENeTQ
	 tsvllGMWB4jv/2InGDN/o9jVL7X2H3COAvHbESp1WXN4UDsteR0UlCze2XZc7bTHNg
	 MlsiDZNmAWL6CFSiVi2ou7N01lWzYLyF1gdEN04SVEPq0Z7OR8aifyXAmvSFxb/2L6
	 tfbi2+6im/0YjjCklNv2f6TunbW9utizBi3EZgMZIJ4Aa0BkCdnxi69SARHyKBrHLx
	 6XyU51CL5dZDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/5] ASoC: rockchip: spdif: Reorder clock enable
 sequence
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260602101608.45137-3-phucduc.bui@gmail.com>
References: <20260602101608.45137-3-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 10:36:08 +0000
Message-Id: <20260602103608.938EC1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CDFAA62CD44
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305578-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Reading channel status bytes via a u16 pointer causes unaligned me=
mory accesses and endianness bugs.
- [High] The MCLK domain reset bit is asserted but never de-asserted, which=
 poisons the regmap cache and causes unintended resets on resume.
--

commit d98bc7bb278e4f820ed1d93795c2185544cad12b
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: rockchip: spdif: Reorder clock enable sequence

This commit reorders the clock enable sequence during runtime resume for the
rockchip spdif driver. It enables the hclk bus clock before the mclk
controller clock, keeping the clock ordering consistent with the suspend
sequence.

> diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/roc=
kchip_spdif.c
> index 581624f2682ef..8de5b76cfe791 100644
> --- a/sound/soc/rockchip/rockchip_spdif.c
> +++ b/sound/soc/rockchip/rockchip_spdif.c
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

[Severity: High]
This is a pre-existing issue, but does this regcache_sync() call cause
unintended resets due to a poisoned regmap cache?

In rk_spdif_hw_params(), the driver sets the SPDIF_CFGR_CLR_EN bit to clear
the MCLK domain logic:

sound/soc/rockchip/rockchip_spdif.c:rk_spdif_hw_params()
	...
	regmap_update_bits(spdif->regmap, SPDIF_CFGR, SPDIF_CFGR_CLR_MASK,
			   SPDIF_CFGR_CLR_EN);
	udelay(1);

	ret =3D regmap_update_bits(spdif->regmap, SPDIF_CFGR,
	...

This bit is never explicitly de-asserted.

Because SPDIF_CFGR is a cached register, the cache permanently stores the
value with the clear bit set.

During pm_runtime_resume(), does writing this cached value back to the
hardware unintentionally re-trigger the MCLK domain reset and corrupt the
hardware state?


Also, looking elsewhere in the same file, there is another pre-existing iss=
ue
in rk_spdif_hw_params():

sound/soc/rockchip/rockchip_spdif.c:rk_spdif_hw_params()
	...
	ret =3D snd_pcm_create_iec958_consumer_hw_params(params, cs, sizeof(cs));
	if (ret < 0)
		return ret;

	fc =3D (u16 *)cs;
	for (i =3D 0; i < CS_BYTE / 2; i++)
		regmap_write(spdif->regmap, SPDIF_CHNSRn(i), CS_FRAME(fc[i]));
	...

[Severity: High]
This isn't a bug introduced by this patch, but does casting the u8 array to=
 a
u16 pointer cause unaligned memory accesses and endianness bugs?

The 6-byte cs array is cast to a u16 pointer and directly dereferenced.

Can this trigger alignment faults or undefined behavior depending on the
architecture and compiler optimizations?

Additionally, since it performs a host-endian read of the byte stream, does
this cause the IEC958 channel status bits to be incorrectly swapped when
running on big-endian architectures?

Could get_unaligned_le16() be used here instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602101608.4513=
7-1-phucduc.bui@gmail.com?part=3D2

