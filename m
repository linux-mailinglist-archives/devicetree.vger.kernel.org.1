Return-Path: <devicetree+bounces-309432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NoC0APgHKWpUPAMAu9opvQ
	(envelope-from <devicetree+bounces-309432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:45:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDC26665BA
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:45:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OCqFId0G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309432-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309432-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 08709301584E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 06:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F88F377566;
	Wed, 10 Jun 2026 06:45:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0687A34404E
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 06:45:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781073910; cv=none; b=khJnFaowI1a0VOGS5NUJz9AgCzpqYjluOrQydVcsaA/BuQW7rh8THYIRLa3vr0cvcBhgqsMVMv1dbaImOx4Pjf8LYcybBf88EZ7MJNqzyTAjTlMjF+m0RDEQszce1Nsp3C6JLSp0U+R9IAOXqqV66QBlJYS1vD64wX/+lwJb9oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781073910; c=relaxed/simple;
	bh=Qeuyer7NV4+7JuUDL5ggiF2mj0a+BmPY5fguB/+GORM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qmb2u4PbcNjK5Xt5C86KfwAZXj/n3VyzzJ91QnjL3oXS0JUxcD3RKQnmjzKc3cCsEA7T1awWVZvtcozTD42TUDwPwAJYt4KjN4JzkwxSUDtQYSV1vBBgaSCU9zUWh/cpO5UggtxtthJifTYtwbsFiYpJXQw57mnuTxc15KTAz8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCqFId0G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C548C1F00893;
	Wed, 10 Jun 2026 06:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781073908;
	bh=LXzn23+gtpINUpNaoCd9kX508MQA5RlJUg/Ia3oWtlo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OCqFId0GiO83y97K7MF0XqNR9ys0U9PqDZNeq5Gg37xrLTzPzAtlzF4dUeGfwzFcx
	 uU2TJGTZTTdOImeKOZ5VCered3v9328LPyro3ujz/Ou8TlZKsZVp9rvaMut91DCabn
	 2wpzWq+IamBJZSaEfTOb+2skzHIxgSpALPeUqCn7aXgvlj7THe2q2mWQBWpIrzcZhm
	 xiszhLFOGreSZfqDcRrsz7Trdn3Hj0G3YqK0cINEww6CRdP1Ix6XPiybTUdD0WCX7G
	 VUDe/7vLKpeixIzXxlDG8lI1csgcr9tmhPkPPHeKDZuRA+a4SgKYFSrkIBenmmFUjL
	 +pAbmQF4cZEWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 05/12] media: iris: Enable Secure PAS support with
 IOMMU managed by Linux
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vishnu Reddy" <busanna.reddy@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260610-glymur-v8-5-1c79b9d51fc0@oss.qualcomm.com>
References: <20260610-glymur-v8-5-1c79b9d51fc0@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 06:45:07 +0000
Message-Id: <20260610064507.C548C1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309432-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:busanna.reddy@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8DDC26665BA

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Failure of `devm_qcom_scm_pas_context_alloc()` leaves an `ERR_PTR`=
 in `core->pas_ctx`, causing a kernel panic on subsequent initialization at=
tempts.
- [High] Missing `qcom_scm_pas_metadata_release()` causes a persistent DMA/=
tzmem memory leak.
--

commit 1775c14d01e8bdf8905d074121532c742ef2030a
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

media: iris: Enable Secure PAS support with IOMMU managed by Linux

This commit transitions the iris driver to support Secure Peripheral
Authentication Service (PAS) on platforms where Linux manages the IOMMU. It
creates a firmware context device, replaces qcom_mdt_load() with
qcom_mdt_pas_load(), and maps the IOMMU when a firmware device SID is prese=
nt.

Link: https://lore.kernel.org/lkml/20260105-kvmrprocv10-v10-0-022e96815380@=
oss.qualcomm.com/

> diff --git a/drivers/media/platform/qcom/iris/iris_firmware.c b/drivers/m=
edia/platform/qcom/iris/iris_firmware.c
> --- a/drivers/media/platform/qcom/iris/iris_firmware.c
> +++ b/drivers/media/platform/qcom/iris/iris_firmware.c
[ ... ]
> @@ -30,14 +33,21 @@ static int iris_load_fw_to_memory(struct iris_core *c=
ore, const char *fw_name)
>  	if (strlen(fw_name) >=3D MAX_FIRMWARE_NAME_SIZE - 4)
>  		return -EINVAL;
> =20
> -	ret =3D of_reserved_mem_region_to_resource(dev->of_node, 0, &res);
> +	ret =3D of_reserved_mem_region_to_resource(core->dev->of_node, 0, &res);
>  	if (ret)
>  		return ret;
> =20
>  	mem_phys =3D res.start;
>  	res_size =3D resource_size(&res);
> =20
> -	ret =3D request_firmware(&firmware, fw_name, dev);
> +	if (!core->pas_ctx) {
> +		core->pas_ctx =3D devm_qcom_scm_pas_context_alloc(core->dev, IRIS_PAS_=
ID,
> +								mem_phys, res_size);
> +		if (IS_ERR(core->pas_ctx))
> +			return PTR_ERR(core->pas_ctx);
> +	}
> +

[Severity: High]
If devm_qcom_scm_pas_context_alloc() fails, it returns an error pointer whi=
ch
is directly assigned to core->pas_ctx. Since the context pointer is not
cleared back to NULL on failure, will subsequent initialization attempts
bypass the (!core->pas_ctx) check and illegally dereference the error point=
er
further down in this function?

> +	ret =3D request_firmware(&firmware, fw_name, fw_dev);
>  	if (ret)
>  		return ret;
> =20
[ ... ]
> @@ -53,9 +63,23 @@ static int iris_load_fw_to_memory(struct iris_core *co=
re, const char *fw_name)
>  		goto err_release_fw;
>  	}
> =20
> -	ret =3D qcom_mdt_load(dev, firmware, fw_name,
> -			    IRIS_PAS_ID, mem_virt, mem_phys, res_size, NULL);
> +	core->pas_ctx->use_tzmem =3D !!core->fw_dev;
> +	ret =3D qcom_mdt_pas_load(core->pas_ctx, firmware, fw_name, mem_virt, N=
ULL);

[Severity: High]
This patch transitions to using qcom_mdt_pas_load(), which allocates a
metadata buffer and stores it in core->pas_ctx->ptr. Does this code leak
the metadata buffer by omitting the required qcom_scm_pas_metadata_release()
call in the error paths of this function, as well as during the teardown
sequence?

> +	if (ret)
> +		goto err_mem_unmap;
> +
[ ... ]
> @@ -100,7 +148,11 @@ int iris_fw_unload(struct iris_core *core)
>  {
> -	return qcom_scm_pas_shutdown(IRIS_PAS_ID);
> +	int ret;
> +
> +	ret =3D qcom_scm_pas_shutdown(core->pas_ctx->pas_id);
> +	iris_fw_iommu_unmap(core);
> +
> +	return ret;
>  }

[Severity: High]
Can memory exhaustion occur from repeated initializations and teardowns sin=
ce
qcom_scm_pas_metadata_release() is missing from the normal iris_fw_unload()
cleanup path?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-glymur-v8-=
0-1c79b9d51fc0@oss.qualcomm.com?part=3D5

