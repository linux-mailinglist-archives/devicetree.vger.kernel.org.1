Return-Path: <devicetree+bounces-323491-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hK/iCmpjT2oFfwIAu9opvQ
	(envelope-from <devicetree+bounces-323491-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:01:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9A672E9B9
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:01:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="eyA1F/eh";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323491-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323491-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC7F5302BBFD
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4BD63ED5D0;
	Thu,  9 Jul 2026 09:00:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C133EB818
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 09:00:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783587655; cv=none; b=TRP2RKqRIsZPrLMwtyCVE7zCrzISmkv0LPwCjYQHCaMQukvKfxJnPqxdUQ2C3G6INQbiz33yHVkt+FeRJ0VXlBiDzUNMwYwj3jepBy9L0N+DwKtSI3wHnXZXdHsudPtXpNOjNEp+us/zzV7Ta0Ma03IG8XZD/9uRHSocgcu27s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783587655; c=relaxed/simple;
	bh=pzKZK6OOMvtocIfCYPz86gZNXLlkFy+q8esWHjnUFTg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=O/qNGx9HMTuWuKCB6JmREqpxzzPeer+mmhYutVR+eJqrybd/PeSog2z1LHvptzqYT4u6w90Dr0aBPGsx4Oyw9ht0iBTTCNimnhZVtXBz+jHh4RSNXN61NL9lTSg6bL/fg7Ks9BwlyzFJ/O/NXZ7t+vLIRl1Mc8ddPDFACKWKfUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyA1F/eh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35ACF1F000E9;
	Thu,  9 Jul 2026 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783587654;
	bh=YRx2ixGiNlTCT020E6LEI0GOs9e6epyCPOVvW6d7Hc0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eyA1F/ehUJGBGRI55PM+X2ArgV8LmlfNTrtYuU5ltCUXlU1b/EE105Zt8Touaikyz
	 erFxkktO9Zccr98peeoHGQ7bMgnr+3Q+opcaHlEghsY4N1dwmuHj/LADKFiMtQegyw
	 XdlxCFGJye818qEsPUFXwEPMDMpA7bBw9FB62yX2DIbeDbfSkOqDUS9BEeixvFlQBP
	 ZzTvujo+5JdmOifwNjo7fSRXPPXQMfr0pqvTubdAna2YfZNzfKICxh2k04j2vQoU1R
	 SmK2Qf2q32S3tFaSw4borPX2tsgv89ks+ct3xTdDPegGp/ygpwct5fgFlm1Y8Zy1FE
	 7s5FXUrVO8yyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] remoteproc: qcom: pas: Add Nord ADSP support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shawn Guo" <shengchao.guo@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709085149.4072181-4-shengchao.guo@oss.qualcomm.com>
References: <20260709085149.4072181-1-shengchao.guo@oss.qualcomm.com>
 <20260709085149.4072181-4-shengchao.guo@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 09:00:53 +0000
Message-Id: <20260709090054.35ACF1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323491-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shengchao.guo@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	RSPAMD_EMAILBL_FAIL(0.00)[sashiko-reviews.lists.linux.dev:query timed out,devicetree@vger.kernel.org:query timed out];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DB9A672E9B9

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] The patch introduces a compilation failure by initializing a non-e=
xistent `early_boot` member, and omits the "attach path" logic promised in =
the commit message.
- [Low] The `qcom_pas_of_match` array is not kept in alphabetical order.

Pre-existing issues:
- [High] Missing unroll logic in `qcom_pas_assign_memory_region()` permanen=
tly leaks secure memory assignments on error.
--

--- Patch [3]: [PATCH 3/3] remoteproc: qcom: pas: Add Nord ADSP support ---
commit c4d506b746f90f7894797ce51ad96d54c9cd9077
Author: Shawn Guo <shengchao.guo@oss.qualcomm.com>

remoteproc: qcom: pas: Add Nord ADSP support

The ADSP on Nord SoC is pre-booted by XBL before Linux starts. This patch
adds the ADSP resource descriptor and sets the early_boot flag for the
attach path rather than a cold boot sequence.

> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom=
_q6v5_pas.c
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -1354,6 +1354,27 @@ static const struct qcom_pas_data milos_cdsp_resou=
rce =3D {
>  	.smem_host_id =3D 5,
>  };
> =20
> +static const struct qcom_pas_data nord_adsp_resource =3D {
> +	.crash_reason_smem =3D 423,
> +	.firmware_name =3D "adsp.mdt",
> +	.dtb_firmware_name =3D "adsp_dtb.mbn",
> +	.pas_id =3D 1,
> +	.dtb_pas_id =3D 36,
> +	.minidump_id =3D 5,
> +	.auto_boot =3D true,
> +	.early_boot =3D true,

[Severity: High]
Does this cause a build failure? Looking at the definition of
struct qcom_pas_data in drivers/remoteproc/qcom_q6v5_pas.c, it doesn't
appear to have an early_boot member.

Additionally, the commit message mentions setting the early_boot flag for
the attach path rather than a cold boot sequence. If the build is fixed by
simply adding early_boot to the struct, will the probe succeed but fall
back to the cold boot path since the driver appears to be missing the
attach logic?

This could cause the driver to reset and reload firmware on an
already-running DSP.

> +	.proxy_pd_names =3D (char*[]){
> +		"cx",
> +		"mx",
> +		NULL
> +	},

[ ... ]

> @@ -1578,6 +1599,7 @@ static const struct of_device_id qcom_pas_of_match[=
] =3D {
>  	{ .compatible =3D "qcom,milos-cdsp-pas", .data =3D &milos_cdsp_resource=
 },
>  	{ .compatible =3D "qcom,milos-mpss-pas", .data =3D &sm8450_mpss_resourc=
e },
>  	{ .compatible =3D "qcom,milos-wpss-pas", .data =3D &sc7280_wpss_resourc=
e },
> +	{ .compatible =3D "qcom,nord-adsp-pas", .data =3D &nord_adsp_resource },
>  	{ .compatible =3D "qcom,msm8226-adsp-pil", .data =3D &msm8996_adsp_reso=
urce },

[Severity: Low]
This isn't a bug, but does this break the alphabetical ordering of the
qcom_pas_of_match array? The compatible qcom,nord-adsp-pas is inserted
between qcom,milos-wpss-pas and qcom,msm8226-adsp-pil. Since nord starts
with n, it should likely be placed further down after the msm entries.


[Severity: High]
This is a pre-existing issue, but I noticed a potential leak of secure
memory assignments on error paths:

drivers/remoteproc/qcom_q6v5_pas.c:qcom_pas_assign_memory_region() {
    ...
    if (ret < 0) {
        dev_err(pas->dev, "assign memory %d failed\n", offset);
        return ret;
    }
    ...
}

If an assignment fails at an offset greater than 0, the function returns
an error code without reverting the permissions of regions that were
successfully mapped in prior iterations.

Additionally, in qcom_pas_probe():

drivers/remoteproc/qcom_q6v5_pas.c:qcom_pas_probe() {
    ...
    ret =3D qcom_pas_assign_memory_region(pas);
    if (ret)
        goto free_rproc;
    ...
}

The probe failure path jumps to free_rproc, bypassing the unassign_mem
label and failing to call qcom_pas_unassign_memory_region().

Does this permanently leak system memory to the secure environment,
rendering it inaccessible to the host OS?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709085149.4072=
181-1-shengchao.guo@oss.qualcomm.com?part=3D3

