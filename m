Return-Path: <devicetree+bounces-299834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOREBfMTDGoZVQUAu9opvQ
	(envelope-from <devicetree+bounces-299834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:40:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB64579417
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:40:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 77B7730072A4
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 07:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 667D13DA5D5;
	Tue, 19 May 2026 07:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWs/CO+f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F393DA5B3
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 07:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779176044; cv=none; b=uJzvcKmg7VkcDKvhnOYnvDrMTigvRBXJK5lB5PcxgkPo7+E38wzN1B2THIOa6pHHgubrd0OQmc9uShk5+EBtvyazG/ukoo9qr9IkcmKl1ZW957j6oDXbEsjHaTdKyoHq8AaNrfflaJKlIEPWdVnIgOHgWDr5C/SaPoG6dQdYP30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779176044; c=relaxed/simple;
	bh=3DTiN8WLxAI7jEcU0DMmzkseLKAryypmV7z6A+MVvHE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mqWL9R8nMgmx2veHHAm0plc76c8eUyB5MVmidVTG5rJuGaRi+0ZtTTKntDVoAfhjKHpPtvpyiDa0lOWXvt2EU/cVDXohvwyGpuKCroW7NA/ZyffJuTS8HFH4082zXHJyaMPaYtsYlaPQ4P1oG+LOjA2Ai+M0zLuDpwTi9IPY198=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWs/CO+f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC07AC2BCF5;
	Tue, 19 May 2026 07:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779176043;
	bh=3DTiN8WLxAI7jEcU0DMmzkseLKAryypmV7z6A+MVvHE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=VWs/CO+faKLFqjXuTpUW8LwZ5AfrCLPVhNsrfHpP5eC40/RP3KyvuiFNgwDXvFuY8
	 oquk8APJTMXoB++eZzLRy7pghtCdWPHzu1fjKr3pnmgsuKeHnwCR53Sw7E3ZqJ5jHW
	 xrRmHHXcRFIkg1ZfjNnqXPR+97QXT0pbI95cYD3R+uRNt/gYAbMoQNziB5wcRe/HMC
	 U+noOPqgjYAa+uOd9hvsbbAHGF1+gy0lN0gkC/J7Un10B7eFGtTVDqA5/L9t8Dr4qr
	 8Ly2auSkCOmotXH0ewM3rtIutFWun/x9msmeON+FK4R0pO6nDPblE1f6hCcy0gvAeB
	 0dFiQglqb+m3g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 10/16] drm/msm: Switch to generic PAS TZ APIs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sumit Garg" <sumit.garg@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260518072856.22790-11-sumit.garg@kernel.org>
References: <20260518072856.22790-11-sumit.garg@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 07:34:03 +0000
Message-Id: <20260519073403.AC07AC2BCF5@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299834-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email,smtp.kernel.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 2FB64579417
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Infinite probe deferral on devices that do not support PAS.
- [High] Time-of-Check to Time-of-Use (TOCTOU) race leading to NULL pointer=
 dereference or Use-After-Free.
--

commit 168f850440ba0271d11e8bfd4d88f6adbd042e93
Author: Sumit Garg <sumit.garg@oss.qualcomm.com>

drm/msm: Switch to generic PAS TZ APIs

This commit switches the drm/msm client drivers to use the generic PAS TZ
APIs instead of the SCM-specific ones. This allows the driver to support
multiple TrustZone implementation backends.

> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.c b/drivers/gpu/drm/ms=
m/adreno/adreno_gpu.c
> index 66f80f2d12f95..6d68edf0578c2 100644
> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.c
> @@ -146,10 +147,10 @@ static int zap_shader_load_mdt(struct msm_gpu *gpu,=
 const char *fwname,
>  		goto out;
> =20
>  	/* Send the image to the secure world */
> -	ret =3D qcom_scm_pas_auth_and_reset(pasid);
> +	ret =3D qcom_pas_auth_and_reset(pasid);

Could this introduce a race condition if the PAS backend is unbound
concurrently?

Looking at the new generic PAS APIs, they do not appear to protect the back=
end
operations pointer:

drivers/firmware/qcom/qcom_pas.c:qcom_pas_auth_and_reset() {
	if (!ops_ptr)
		return -ENODEV;

	return ops_ptr->auth_and_reset(ops_ptr->dev, pas_id);
}

If a dynamic backend like qcom_pas_tee is unbound via sysfs between the che=
ck
and the dereference, ops_ptr could become NULL, leading to a NULL pointer
dereference.=20

Is there a mechanism preventing this race when switching from the SCM backe=
nd
to the generic PAS API?

[ ... ]

> @@ -175,9 +176,9 @@ int adreno_zap_shader_load(struct msm_gpu *gpu, u32 p=
asid)
>  	if (!zap_available)
>  		return -ENODEV;
> =20
> -	/* We need SCM to be able to load the firmware */
> -	if (!qcom_scm_is_available()) {
> -		DRM_DEV_ERROR(&pdev->dev, "SCM is not available\n");
> +	/* We need PAS to be able to load the firmware */
> +	if (!qcom_pas_is_available()) {
> +		DRM_DEV_ERROR(&pdev->dev, "Qcom PAS is not available\n");
>  		return -EPROBE_DEFER;
>  	}

Will this cause an infinite probe deferral on platforms that do not support
PAS hardware?

The SCM backend skips registering PAS ops if the hardware lacks PAS support.
If qcom_pas_is_available() is called on such a platform, it returns false
because no backend has registered.

Since this check happens before zap_shader_load_mdt() parses the device tree
to determine if a zap shader is actually needed (which is what updates the
zap_available flag), won't the GPU probe indefinitely defer instead of
failing gracefully?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518072856.2279=
0-1-sumit.garg@kernel.org?part=3D10

