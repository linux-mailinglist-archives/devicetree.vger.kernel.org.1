Return-Path: <devicetree+bounces-306650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ysw3I98kIWqq/gAAu9opvQ
	(envelope-from <devicetree+bounces-306650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:10:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A50B63D889
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:10:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=i06CV7LD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306650-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306650-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8AB91303D2CE
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2D93DCDB2;
	Thu,  4 Jun 2026 07:08:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BD33DDDC7
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:08:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780556898; cv=none; b=dy+P0YpSPbjn9GLhNDU749M/1K8oqHrLPU+VCFUqH0en3O07+JxYAurAHw6wMrwe4X5AeReDJ/Ob23Tn0Z8znGVBGH738XvufwcmTgorGKIzVMEgxDE+IRSVSs+ipez40a8TmBUK/C0K4w0yBXGLKMabDZIW26GSYpmhbKroStk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780556898; c=relaxed/simple;
	bh=wKb15RiCdoQLWCfnrHec7iEVm33TQKi9kkmPlzGwJgo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uhyCOoNReB6z2nkxtAHg+rGz8HyFeAlDgOuaczQ2pDYW+S0es748JuxkZyeaXHAFp/LnVY4gHo5DfaLZnHT6jGLNeKNJVoonWZEZ2Z75aNSIyU8qDks0kKZRCOGlONcYU6DkqHZFw8fmY5zVqY3qqMeDCx4VZtw1AIXZgVAFAHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i06CV7LD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9DEC1F00898;
	Thu,  4 Jun 2026 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780556897;
	bh=sUk+isGJQR4jvlnkPDM0eOe7IxuUlMa2VydZM+2DvrU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i06CV7LD1aDrcgL1JfB16rGytBodsI5uuMVO5Ej82GIOZ0Ui7XKQJjtc1DpK/0O8v
	 BhBzN368JFg8va2ixudoC/Re86O/Jdq+1kALizSaxlpuTs6HOqWv0LH0mbGKto4T1F
	 MCTntwg8wj0Rou7/vX6+hm+JcKnGDAJshSNBFPO06wIxGQMzv5GKfDci81j/Z3mK9Z
	 Shp6F+3Y1RoX3Nx9v1zFXU52vfg5ncHcXBDj9r930AU9NHhzJ5po/evThkIL3VOGia
	 1UIn/iwJZW0eMfwAW87iYQC5n3zLlIKtXzpHJu0566Ov5T5tW/ZTe5QZSZvO+ZXs6A
	 CxF+BKPrImkkg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] spi: qcom-geni: Use geni_se_resources_init() for
 resource initialization
Reply-To: sashiko-reviews@lists.linux.dev
To: "Praveen Talari" <praveen.talari@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260604-enable-spi-on-sa8255p-v3-2-43984eac4c67@oss.qualcomm.com>
References: <20260604-enable-spi-on-sa8255p-v3-2-43984eac4c67@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 07:08:16 +0000
Message-Id: <20260604070816.D9DEC1F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306650-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:praveen.talari@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A50B63D889

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The driver ignores the return value of pm_runtime_get_sync() befor=
e accessing hardware registers in spi_geni_init().
--

commit 297907766125fb69231313b230385906933609be
Author: Praveen Talari <praveen.talari@oss.qualcomm.com>

spi: qcom-geni: Use geni_se_resources_init() for resource initialization

Replace resources initialization such as clocks, ICC path and OPP with the
common geni_se_resources_init() function to avoid code duplication. This
handles all these resources internally, ensuring consistent resource
management across GENI SE drivers.

> diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
> index a04cdc1e5ad4d..333216df922e8 100644
> --- a/drivers/spi/spi-geni-qcom.c
> +++ b/drivers/spi/spi-geni-qcom.c

[ ... ]

> @@ -1104,24 +1092,12 @@ static int spi_geni_probe(struct platform_device =
*pdev)
>  	if (spi->target)
>  		spi->target_abort =3D spi_geni_target_abort;
> =20
> -	ret =3D geni_icc_get(&mas->se, NULL);
> -	if (ret)
> -		return ret;
> -
>  	pm_runtime_use_autosuspend(&pdev->dev);
>  	pm_runtime_set_autosuspend_delay(&pdev->dev, 250);
>  	ret =3D devm_pm_runtime_enable(dev);
>  	if (ret)
>  		return ret;
> =20
> -	/* Set the bus quota to a reasonable value for register access */
> -	mas->se.icc_paths[GENI_TO_CORE].avg_bw =3D Bps_to_icc(CORE_2X_50_MHZ);
> -	mas->se.icc_paths[CPU_TO_GENI].avg_bw =3D GENI_DEFAULT_BW;
> -
> -	ret =3D geni_icc_set_bw(&mas->se);
> -	if (ret)
> -		return ret;
> -
>  	ret =3D spi_geni_init(mas);

[Severity: High]
This is a pre-existing issue, but does spi_geni_init() fail to check the
return value of pm_runtime_get_sync() before accessing hardware registers?

drivers/spi/spi-geni-qcom.c:spi_geni_init() {
    ...
    pm_runtime_get_sync(mas->dev);

    proto =3D geni_se_read_proto(se);
    ...
}

The pm_runtime_get_sync() function can return a negative error code if the
device fails to resume. By not checking the return value, spi_geni_init()
proceeds to read from the hardware via geni_se_read_proto().

On QCOM platforms, reading from unclocked or powered-off peripheral
registers causes a synchronous external abort (bus error), leading to a
kernel panic.

>  	if (ret)
>  		return ret;
> =20
> -	/*
> -	 * TX is required per GSI spec, see setup_gsi_xfer().
> -	 */

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604-enable-spi=
-on-sa8255p-v3-0-43984eac4c67@oss.qualcomm.com?part=3D2

