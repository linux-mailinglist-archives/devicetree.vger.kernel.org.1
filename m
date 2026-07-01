Return-Path: <devicetree+bounces-318667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O00vASUhRWoS7goAu9opvQ
	(envelope-from <devicetree+bounces-318667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:16:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F7E6EE974
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:16:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XwAwChjV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318667-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318667-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A85930160F8
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9159423E320;
	Wed,  1 Jul 2026 13:46:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744931A9FB7
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:46:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782913589; cv=none; b=Bl2rXEA9K2FoDxwFjqe1rPTbPO30pCAFWXNt6O3ppHt8A660WiY0NBRZ9ews2SyZ5bOFlZEkoEfJhGTBPyb1GpXh7IwT89h6Dm78aK1GCb4Ovj2k7g1ljcIObqMpRKHiD2m9TXKQQk7zIbJAwfrIw+1nEdRfFblRRbaoWHLT0l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782913589; c=relaxed/simple;
	bh=YIiyz1QvnvkiN7Ki5LAWImQBlnWxWBHbZhgrKHtzd9I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VBgYI0QPtDiLNTFKh7ma3+AggBcXd29j8rz4fU39xUNJG72m2b6Jfli74YAdRxqHGiZjRnr+40CoL5ZSM/o2g6uwh+4qrN96QbzQ8DgodkWZQSofVdDYUVKW7e6JzN3eODWvVbAROOGcLVom7QTMgB/yyzw5U6xVDQA/ANCs2RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwAwChjV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 106791F000E9;
	Wed,  1 Jul 2026 13:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782913588;
	bh=8q9xG+BgfX5ktGEGbjGuAUcOotYACZyorYTf/6K/qcQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XwAwChjVMX1qO2qi60/D/N0gZ59DbbX9Cg/SUUuWDYqzdgp/rKLyArqvP/kkYBOB9
	 jXRdORukThO3RiI0cczDdtm37+AzJv1fy5rJUuwkGLHZ/RRbj5A6x3PJocrHF2fYW4
	 5YhahOG3WH7YclXv28L1qYCYXWutSGmD867O+X2gS+neWfjpHmWMDSivW0+xr8pDJW
	 55SVE1K5EeeGi/XwGMmkFvu7qfRIYbcuutSK1bUwhAJaDPGPUO8mEyKk8QOkyohqNn
	 5j8A3rzBI/ZhXWFScV/uz9+s1AfepcuJaeaoAL36wRfwAFqe8QlW9jhvk1DY6bQgXG
	 2MpVDopySFSVA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 09/11] drm/mediatek: mtk_dp: Add support for HotPlug
 Detection in DP AUX
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260701122024.19557-10-angelogioacchino.delregno@collabora.com>
References: <20260701122024.19557-1-angelogioacchino.delregno@collabora.com>
 <20260701122024.19557-10-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 13:46:27 +0000
Message-Id: <20260701134628.106791F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-318667-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24F7E6EE974

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Unmapped hardware interrupt status bits from AUX HPD corrupt the H=
PD event handler logic, misclassifying interrupts.
- [Medium] Missing `legacy_regoff` when polling `MTK_DP_AUX_P0_364C` via `r=
egmap_read_poll_timeout`.
--

commit 01574255cf70f390467f27095e6af27a1759e430
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
drm/mediatek: mtk_dp: Add support for HotPlug Detection in DP AUX

This patch adds support for using the DP AUX channel to perform hotplug
detection (HPD) on newer MediaTek DisplayPort IPs. It enables configuring
and performing HPD in AUX, checking the correct HPD strategy with a new
platform data variable.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index 5272e717bfda0..2d58eacb3d3e6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c

> [ ... ]

> @@ -1046,7 +1047,21 @@ static u32 mtk_dp_swirq_get_clear(struct mtk_dp *m=
tk_dp)
>  	return irq_status;
>  }
> =20
> -static u32 mtk_dp_hwirq_get_clear(struct mtk_dp *mtk_dp)
> +static u32 mtk_dp_aux_hwirq_get_clear(struct mtk_dp *mtk_dp)
> +{
> +	u32 irq_status =3D mtk_dp_read(mtk_dp, MTK_DP_AUX_TX_P0_INT_STA);
> +
> +	if (irq_status) {
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_AUX_TX_P0_INT_CLR,
> +				   irq_status, irq_status);
> +		mtk_dp_update_bits(mtk_dp, MTK_DP_AUX_TX_P0_INT_CLR,
> +				   0, irq_status);
> +	}
> +
> +	return irq_status;
> +}

[Severity: High]
Is it safe to return the raw hardware interrupt bits here without mapping t=
hem
to the expected software constants?

In mtk_dp_hpd_event(), the returned irq_status is checked against software
constants like MTK_DP_HPD_INTERRUPT, which is defined as BIT(3):

	if (irq_status & MTK_DP_HPD_INTERRUPT)
		mtk_dp->irq_thread_handle |=3D MTK_DP_THREAD_HPD_EVENT;

	/* Cable state is changed. */
	if (irq_status !=3D MTK_DP_HPD_INTERRUPT) {
		mtk_dp->irq_thread_handle |=3D MTK_DP_THREAD_CABLE_STATE_CHG;
		cable_sta_chg =3D true;
	}

However, HPD_INTERRUPT_EVENT read from MTK_DP_AUX_TX_P0_INT_STA is BIT(2).

If we return the raw BIT(2) here, won't it fail the check for
MTK_DP_HPD_INTERRUPT and incorrectly fall into the cable state change path?
Could this misclassify short HPD pulses as cable state changes, potentially
causing spurious link teardowns?

> [ ... ]

> @@ -2125,10 +2194,15 @@ static int mtk_dp_wait_hpd_asserted(struct drm_dp=
_aux *mtk_aux, unsigned long wa
>  	u32 val;
>  	int ret;
> =20
> -	ret =3D regmap_read_poll_timeout(mtk_dp->regs,
> -				       MTK_DP_TRANS_P0_3414 + mtk_dp->legacy_regoff,
> -				       val, !!(val & HPD_DB_DP_TRANS_P0_MASK),
> -				       wait_us / 100, wait_us);
> +	if (mtk_dp->data->aux_hpd_supported)
> +		ret =3D regmap_read_poll_timeout(mtk_dp->regs, MTK_DP_AUX_P0_364C,
> +					       val, !!(val & HPD_STATUS_DP_AUX_TX_P0_MASK),
> +					       wait_us / 100, wait_us);

[Severity: Medium]
Should this regmap_read_poll_timeout() call include mtk_dp->legacy_regoff?

The trans HPD path below adds mtk_dp->legacy_regoff to the register offset,
and standard mtk_dp_read() calls also apply it.

If a platform uses the legacy DT binding but has aux_hpd_supported enabled,
could omitting the offset cause reads from the wrong hardware address?

> +	else
> +		ret =3D regmap_read_poll_timeout(mtk_dp->regs,
> +					       MTK_DP_TRANS_P0_3414 + mtk_dp->legacy_regoff,
> +					       val, !!(val & HPD_DB_DP_TRANS_P0_MASK),
> +					       wait_us / 100, wait_us);
>  	if (ret) {
>  		mtk_dp->train_info.cable_plugged_in =3D false;
>  		return ret;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701122024.1955=
7-1-angelogioacchino.delregno@collabora.com?part=3D9

