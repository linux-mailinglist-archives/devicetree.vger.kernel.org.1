Return-Path: <devicetree+bounces-323704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IGViEQ6NT2oIjgIAu9opvQ
	(envelope-from <devicetree+bounces-323704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:59:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93463730BE5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:59:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="hQ/iIIEx";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323704-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323704-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 122EB3010393
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908FB3FAE14;
	Thu,  9 Jul 2026 11:56:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AFC41CB2C
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:56:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783598177; cv=none; b=n2/cJELmFORNLeQbu/VNhiABSvxYQbxY9sdSEvc4kinWtvSYzjujUZhNpzVovm05OvETIeOS3jm41SvDDilT+PlQnKYexIDVzKY+Og4Y/XpOOI9MPJUTibYQmeJ20YwX/3QS+5j2ne49Hi7+EMnKW8rGsxBHeaasJaCYnV8oqys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783598177; c=relaxed/simple;
	bh=tuzkvEZH8TmocMxyBbtLceIR4CIzCeZPERmuqX3IGQg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GRx61Zpa7ZF3F7A17ZLbXodgeCZyPqiw3EF9KYmGZK52nDnanQHiceAZTnp9YPjgHlkqbeLGi7yKNgZ64g/XaNxLWmnBgldlSKcTriJ5LogLIm61YxZaWnYrj1QEwBoRaLueqMTlRukYpr8u6Wj8SZPW3fx5z1tBb9foExYfYcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ/iIIEx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BD871F000E9;
	Thu,  9 Jul 2026 11:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783598174;
	bh=g2JA8bSYp870WSG3rBuZfD9QcY1pOJxtnPU3niKAy+Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hQ/iIIExcbxwa1O7MBXKTdw7I2cHP5MMN4lCBD/JkPW32VREOl1+0zn8XzZDLinc6
	 +qXFKwqVwQOq50BUJ9AYfp6Z70LxDZxqvVMAzBENKKaeyVEvXmozKImnz3dqRn+N1l
	 bAnzKfpRDIS3yvFiw0oaTDGJ6hIhYJEf35qpVDfeGb+Jzp6dsqB2uN1J9bsLHMrcnJ
	 rlZcljfFMbVdJojBd+aXnQt4js0X6wJ1GUYPPtsK2J7XhYXRX6tLUGUeAwSghU4ers
	 OD8V8qIMx45xgGsGzEzmcsJeeWKyNIfUCXbclYRGZ/XYoW89yWLbPa3Np97cAFfIHv
	 5X6fPyaxrGIZQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 11/11] drm/mediatek: mtk_dp: Clarify XTAL freq and
 Debounce registers
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709100617.42583-12-angelogioacchino.delregno@collabora.com>
References: <20260709100617.42583-1-angelogioacchino.delregno@collabora.com>
 <20260709100617.42583-12-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:56:14 +0000
Message-Id: <20260709115614.9BD871F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323704-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93463730BE5

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Undocumented functional hardware configuration change fixing a p=
re-existing double-shift bug
- [Low] Unused legacy macros left in the header file
--

--- Patch [11]: [PATCH v2 11/11] drm/mediatek: mtk_dp: Clarify XTAL freq an=
d Debounce registers ---
commit 6c2235134edb8d6bc77df71eedc7aaac802ae5fa
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dp: Clarify XTAL freq and Debounce registers

This commit updates the construction of crystal frequency and transmitter
interrupt debounce register values to use FIELD_PREP_CONST() with new
mask definitions. The commit message states the only purpose is to increase
human readability.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index 868d918a0b161..4403a25784d4e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c
[ ... ]
> @@ -1260,28 +1266,29 @@ static void mtk_dp_initialize_aux_hpd_detect_sett=
ings(struct mtk_dp *mtk_dp)
> =20
>  static void mtk_dp_initialize_hpd_detect_settings(struct mtk_dp *mtk_dp)
>  {
[ ... ]
> -	val =3D (HPD_INT_THD_DP_TRANS_P0_LOWER_500US |
> -	       HPD_INT_THD_DP_TRANS_P0_UPPER_1100US) << 4;
> -	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> -			   val, HPD_INT_THD_DP_TRANS_P0_MASK);
> -
>  	/*
> -	 * Connect threshold 1.5ms + 5 x 0.1ms =3D 2ms
> -	 * Disconnect threshold 1.5ms + 5 x 0.1ms =3D 2ms
> +	 * Set interrupt debounce threshold time
> +	 * VAL  |  0     1     2     3  INT_THD
> +	 * Low  | 100   300   500   700 uS
> +	 * High | 700   900  1100  1300 uS
>  	 */
> -	val =3D (5 << 8) | (5 << 12);
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> -			   val,
> +			   FIELD_PREP_CONST(HPD_INT_LOW_THD_DP_TRANS_P0_MASK, 2) |
> +			   FIELD_PREP_CONST(HPD_INT_HIGH_THD_DP_TRANS_P0_MASK, 2),
> +			   HPD_INT_THD_DP_TRANS_P0_MASK);

[Severity: Medium]
Is the commit message description accurate regarding the "only purpose of
increasing human readability"?

This patch appears to introduce a functional hardware configuration change.

In the previous code, HPD_INT_THD_DP_TRANS_P0_LOWER_500US and
HPD_INT_THD_DP_TRANS_P0_UPPER_1100US were defined with shifts of 4 and 6,
and then shifted again by 4 in mtk_dp_initialize_hpd_detect_settings().

This resulted in the value being completely masked out by
HPD_INT_THD_DP_TRANS_P0_MASK, writing 0 to the register.

The new FIELD_PREP_CONST implementation correctly constructs the value 0xA0
and writes it to the hardware.

Since this silently fixes a pre-existing double-shift bug and alters the
actual hardware behavior, should this functional change be explicitly
documented or split into a dedicated fix patch?

> +
> +	/* Connection and Disconnection thresholds: 1.5ms + (5 x 0.1) ms =3D 2m=
s */
> +	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3410,
> +			   FIELD_PREP_CONST(HPD_DISC_THD_DP_TRANS_P0_MASK, 5) |
> +			   FIELD_PREP_CONST(HPD_CONN_THD_DP_TRANS_P0_MASK, 5),
>  			   HPD_DISC_THD_DP_TRANS_P0_MASK |
>  			   HPD_CONN_THD_DP_TRANS_P0_MASK);
>  	mtk_dp_update_bits(mtk_dp, MTK_DP_TRANS_P0_3430,
> diff --git a/drivers/gpu/drm/mediatek/mtk_dp_reg.h b/drivers/gpu/drm/medi=
atek/mtk_dp_reg.h
> index 9caf743f4fe61..ce47b99dddc43 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp_reg.h
> +++ b/drivers/gpu/drm/mediatek/mtk_dp_reg.h
> @@ -253,6 +253,8 @@
>  #define MTK_DP_TRANS_P0_3410				0x1410
>  #define HPD_DEB_THD_DP_TRANS_P0_MASK				GENMASK(3, 0)
>  #define HPD_INT_THD_DP_TRANS_P0_MASK				GENMASK(7, 4)
> +#define HPD_INT_HIGH_THD_DP_TRANS_P0_MASK			GENMASK(7, 6)
> +#define HPD_INT_LOW_THD_DP_TRANS_P0_MASK			GENMASK(5, 4)
>  #define HPD_INT_THD_DP_TRANS_P0_LOWER_500US			(2 << 4)
>  #define HPD_INT_THD_DP_TRANS_P0_UPPER_1100US			(2 << 6)

[Severity: Low]
Should these old _500US and _1100US macros be removed?

They appear to be unused dead code now that the configuration in
mtk_dp_initialize_hpd_detect_settings() has been updated to use the new
masks with FIELD_PREP_CONST.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709100617.4258=
3-1-angelogioacchino.delregno@collabora.com?part=3D11

