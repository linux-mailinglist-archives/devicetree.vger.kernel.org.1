Return-Path: <devicetree+bounces-319238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Iun9Cf5FRmopNgsAu9opvQ
	(envelope-from <devicetree+bounces-319238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 13:05:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BAD6F6676
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 13:05:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SWICG2FU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319238-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319238-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E53A530B1D2D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB4B47DD57;
	Thu,  2 Jul 2026 09:47:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362C43ACF05;
	Thu,  2 Jul 2026 09:47:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782985670; cv=none; b=Sdalrx4nK+yMBPUF1eoLlTqLswgEg4cjxuHR5aEo9Az0uX9I5JJNIxXZL1QD4AJn8EGxD6aQ29xzfydSNFZ7Jb0leCOzovqUyya1RGRwMzEHaepBiFbP6+Lo2vuvVDRnErb3Zz1Ca55dVtSqkruAup7sQb3i69CNa2U7uiAxNV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782985670; c=relaxed/simple;
	bh=AjJDbTyP3urKjXLeR+qIGCW6/CagjQkurRnUx8uBdI4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eYTJ/gIzAFWzVw4jmCYd93C7bRXZTe4yBBXGytkMdzA5OxflNpuQX8SGwOYpffDqbkjRVaeAScPlEpDNVMWUJlmdUS1ovzlIgWBVSeZqg2W+75eQiTR5B+pNVy8xfmA2uzwb2bcDcOwUJu5azrxwltDsLR0ewuomMe2bhLuJ+Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWICG2FU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45E391F00A3A;
	Thu,  2 Jul 2026 09:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782985669;
	bh=VjuFZCpSMJdYuZF3CEbPVWL5fxI3F8vKUBr9vSaA1tg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SWICG2FU2+5Qq8JvMnz6j8kGpzDfVtqRfAAbj9JSSsEbR+x/bTu+oCqUPNNtMDE41
	 2jzU/vsHNe3bJOPpZNCVrvyBCL4TaeFvU4pmdG6NkUhpuar8gFCHKvn+NSvArG+1Vb
	 YtjN5o01t1Pu7dPfquXnncMHqUxLZPlDKOkUnV5hxZZB8wjmVESUp3496mntRE1n/l
	 MfECOrSRDYlcLGZTPQT9+wuyXhVE1nSpL2bY4TT8wbOW1ICUAfFnIFHM+GzN+XouxU
	 FifDLMsz8ksxupmxRa+zmv/ecZXNpeDvcmfYsZll8mVs4iSco0wl9FImswByMs3tt/
	 1B/FC+nJV2PxA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 06/18] arm64: dts: ti: k3-j722s-main: Add multiple
 channels for CSI2RX DMA
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260702093123.1048575-7-y-abhilashchandra@ti.com>
References: <20260702093123.1048575-1-y-abhilashchandra@ti.com>
 <20260702093123.1048575-7-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:47:47 +0000
Message-Id: <20260702094748.45E391F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319238-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ti.com:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52BAD6F6676

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] DMA channel leak in ti_csi2rx_runtime_resume() on error path.
- [High] DMA channel leak in ti_csi2rx_probe() on context initialization fa=
ilure.
--

commit 93bee806331f1aba1613005a42f8e9a3e3a302f3
Author: Vaishnav Achath <vaishnav.a@ti.com>

arm64: dts: ti: k3-j722s-main: Add multiple channels for CSI2RX DMA

This commit adds additional DMA channels to the J721E CSI2RX SHIM layer to
enable multistream support for CSI2RX. It increases the number of DMA chann=
els
per node from one to four.

> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi b/arch/arm64/boot/=
dts/ti/k3-j722s-main.dtsi
> index 5a5b9a1bfd9ea..199c8652bcde2 100644
> --- a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
> @@ -173,8 +173,9 @@ ti_csi2rx1: ticsi2rx@30122000 {
>  		ranges;
>  		#address-cells =3D <2>;
>  		#size-cells =3D <2>;
> -		dmas =3D <&main_bcdma_csi 0 0x5100 0>;
> -		dma-names =3D "rx0";
> +		dmas =3D <&main_bcdma_csi 0 0x5100 0>, <&main_bcdma_csi 0 0x5101 0>,
> +		       <&main_bcdma_csi 0 0x5102 0>, <&main_bcdma_csi 0 0x5103 0>;
> +		dma-names =3D "rx0", "rx1", "rx2", "rx3";

[Severity: High]
This isn't a bug introduced by this patch, but adding multiple DMA channels
exposes a dormant hardware DMA channel leak in the CSI2RX driver.

If ti_csi2rx_init_dma() fails for a context where i > 0 during runtime resu=
me,
the function returns immediately without releasing the channels requested in
earlier loop iterations:

j721e-csi2rx.c:ti_csi2rx_runtime_resume() {
	for (unsigned int i =3D 0; i < csi->num_ctx; i++) {
		ret =3D ti_csi2rx_init_dma(&csi->ctx[i]);
		if (ret)
			return ret;
	}
	...
}

Does this code need an error path to release the successfully requested
channels when a subsequent iteration fails?

[Severity: High]
This is a pre-existing issue, but increasing the number of DMA channels here
also exposes another channel leak in the probe error path.

If ti_csi2rx_init_ctx() fails for a context i > 0, the driver attempts to
clean up previous contexts:

j721e-csi2rx.c:ti_csi2rx_probe() {
	for (i =3D 0; i < csi->num_ctx; i++) {
		csi->ctx[i].idx =3D i;
		csi->ctx[i].csi =3D csi;
		ret =3D ti_csi2rx_init_ctx(&csi->ctx[i]);
		if (ret)
			goto err_ctx;
	}
	...
}

However, the cleanup skips releasing the channel because the device's PM
runtime status is still suspended:

j721e-csi2rx.c:ti_csi2rx_cleanup_ctx() {
	if (!pm_runtime_status_suspended(ctx->csi->dev))
		dma_release_channel(ctx->dma.chan);
	...
}

Since pm_runtime_set_active() hasn't been called yet during early probe, the
condition prevents dma_release_channel() from being executed. Could this
permanently leak the previously initialized hardware DMA channels?

>  		power-domains =3D <&k3_pds 247 TI_SCI_PD_EXCLUSIVE>;
>  		status =3D "disabled";

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702093123.1048=
575-1-y-abhilashchandra@ti.com?part=3D6

