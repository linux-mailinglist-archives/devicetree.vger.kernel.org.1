Return-Path: <devicetree+bounces-294796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HDDMZmW/ml5tAAAu9opvQ
	(envelope-from <devicetree+bounces-294796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:06:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 258534FD854
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:06:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E41BE3016516
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 02:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9CAE282F3F;
	Sat,  9 May 2026 02:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY7eehM/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867901F37D3
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 02:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778292356; cv=none; b=G4y/BucbhxOL7kZk2wyXeIOVEOCXtwFABc1Fi3ZkdmGuRZD7wJhaPBPdT9FfDl4h3xXH1DB2btLrkP4Xv/JlqbqgMSLX43oYGBBzDKHA7GzHDytyqKAN7lKQgsJTbzu6HQ1cpLCEUvME7twORlH/bleSk2qfXFpNRdPynxgq8po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778292356; c=relaxed/simple;
	bh=dis+AFywl6J6StzpuUKyVLmblXHO+8Whz6OQjPEA7Kg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JKohp0KvRy+3xElYwF3ZrwMmkRoD2x/5kmn4g5jea0Af6bd5/qP8V9pWOSaZ0F8cANfWh29IdlBHLNzKSFHccpa9nWocFfdnJN4kLm3QgQZlQ4lfDmRtVE0Q6wa82FYeaoFotgrGIXFbmuB7ZfISvfifYApgTOSibD1Btl3Q6G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY7eehM/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9238C2BCB0;
	Sat,  9 May 2026 02:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778292356;
	bh=dis+AFywl6J6StzpuUKyVLmblXHO+8Whz6OQjPEA7Kg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=BY7eehM/vcKYQZGdpTsmNIr/mcslmjjAO9UfFlt+PvuzV+DbyiY3f3G1AF4VZTVnM
	 2mrhxmc0+jBgmufnMJ2qEsrSIOLk3dQnB7kGddqLK5jJm8IZfDPx1O4O+6PaAFV6r4
	 fyCigdbaLhgp/up9CS/dgawTqSPlYs9xYT7wAxfTo1n6X3evE8+ZBMqV4ccN/n/hTF
	 cw0V6dZmzRG3YxVKuj1GMeDJ4ZTcgIynJyA7NInmWLN6+Uv576ITSsYTSzk47bFu/9
	 hBVQJ7SGOe0zEH0XaLTvVoec5kWqJJu7zVX3mrT/nCOXxpkDNSCHzSiSw0J3MLPP1m
	 /adLzARX0g7TQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 07/14] media: iris: Enable Secure PAS support with
 IOMMU managed by Linux
Reply-To: sashiko@lists.linux.dev
To: "Vishnu Reddy" <busanna.reddy@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260509-glymur-v5-7-7fbb340c5dbd@oss.qualcomm.com>
References: <20260509-glymur-v5-7-7fbb340c5dbd@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 02:05:55 +0000
Message-Id: <20260509020555.D9238C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 258534FD854
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294796-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Missing `qcom_scm_pas_metadata_release()` causes PAS metadata buff=
er memory leak.
- [High] Unbounded memory leak due to dynamic `devm_qcom_scm_pas_context_al=
loc()` inside `iris_load_fw_to_memory()`.
- [High] Skipped `iris_fw_iommu_unmap()` if `qcom_scm_pas_shutdown()` fails=
 causes permanent device failure.
- [High] Directly calling `iommu_map()` on a default DMA domain bypasses th=
e DMA API.
- [Medium] Original error codes from `iris_load_fw_to_memory()` are uncondi=
tionally masked with `-ENOMEM`.
--

commit f84ed6beb9478a59d8db52c92115b570f4c199ba
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

media: iris: Enable Secure PAS support with IOMMU managed by Linux

This commit extends the Iris driver to handle IOMMU and SHM bridge
configurations for firmware load and resources mapping in the absence
of a proprietary hypervisor.

[ ... ]
> --- a/drivers/media/platform/qcom/iris/iris_firmware.c
> +++ b/drivers/media/platform/qcom/iris/iris_firmware.c
[ ... ]
> @@ -29,14 +33,18 @@ static int iris_load_fw_to_memory(struct iris_core *c=
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
> +	pas_ctx =3D devm_qcom_scm_pas_context_alloc(fw_dev, pas_id, mem_phys, r=
es_size);
> +	if (IS_ERR(pas_ctx))
> +		return PTR_ERR(pas_ctx);

devm_qcom_scm_pas_context_alloc() ties the memory to the fw_dev unbind even=
t.
If iris_load_fw_to_memory() is called dynamically (e.g., when userspace ope=
ns
the device) and fails later in the function, this devres allocation isn't
freed. Could repeated failures here lead to an unbounded memory leak?

> +
> +	ret =3D request_firmware(&firmware, fw_name, fw_dev);
>  	if (ret)
>  		return ret;
> =20
[ ... ]
> @@ -52,9 +60,27 @@ static int iris_load_fw_to_memory(struct iris_core *co=
re, const char *fw_name)
>  		goto err_release_fw;
>  	}
> =20
> -	ret =3D qcom_mdt_load(dev, firmware, fw_name,
> -			    pas_id, mem_virt, mem_phys, res_size, NULL);
> +	pas_ctx->use_tzmem =3D !!core->fw_dev;
> +	ret =3D qcom_mdt_pas_load(pas_ctx, firmware, fw_name, mem_virt, NULL);
> +	if (ret)
> +		goto err_mem_unmap;
> +
> +	if (pas_ctx->use_tzmem) {
> +		domain =3D iommu_get_domain_for_dev(fw_dev);
> +		if (!domain) {
> +			ret =3D -ENODEV;
> +			goto err_mem_unmap;
> +		}
> +
> +		ret =3D iommu_map(domain, IRIS_FW_START_ADDR, mem_phys, res_size,
> +				IOMMU_READ | IOMMU_WRITE | IOMMU_PRIV, GFP_KERNEL);

iommu_get_domain_for_dev() will return the default DMA domain attached to
fw_dev. Is it safe to call iommu_map() directly on a DMA domain?=20

This bypasses the DMA API's IOVA allocator and might trigger a kernel warni=
ng.
Should the driver allocate and attach an unmanaged domain instead?

> +		if (ret)
> +			goto err_mem_unmap;
> +	}
> =20
> +	core->pas_ctx =3D pas_ctx;
> +
> +err_mem_unmap:
>  	memunmap(mem_virt);
>  err_release_fw:
>  	release_firmware(firmware);
[ ... ]
> @@ -79,10 +117,10 @@ int iris_fw_load(struct iris_core *core)
>  		return -ENOMEM;
>  	}

Now that iris_load_fw_to_memory() has been updated to return specific error
codes like -EINVAL, -ENODEV, or PTR_ERR(), is there a reason to continue
masking all of them with -ENOMEM here?

> =20
> -	ret =3D qcom_scm_pas_auth_and_reset(core->iris_platform_data->pas_id);
> +	ret =3D qcom_scm_pas_prepare_and_auth_reset(core->pas_ctx);

qcom_mdt_pas_load() allocates a secure DMA buffer for firmware metadata via
qcom_scm_pas_init_image(). Does this driver need to call
qcom_scm_pas_metadata_release() after authentication here to avoid leaking =
the
metadata buffer?

>  	if (ret)  {
>  		dev_err(core->dev, "auth and reset failed: %d\n", ret);
> -		return ret;
> +		goto err_unmap;
>  	}
> =20
[ ... ]
> @@ -93,17 +131,31 @@ int iris_fw_load(struct iris_core *core)
[ ... ]
>  int iris_fw_unload(struct iris_core *core)
>  {
> -	return qcom_scm_pas_shutdown(core->iris_platform_data->pas_id);
> +	int ret;
> +
> +	ret =3D qcom_scm_pas_shutdown(core->pas_ctx->pas_id);
> +	if (ret)
> +		return ret;
> +
> +	iris_fw_iommu_unmap(core);
> +
> +	return ret;

If qcom_scm_pas_shutdown() fails and returns early, iris_fw_iommu_unmap() is
skipped. Will this leave the IOMMU mapping active at IRIS_FW_START_ADDR,
causing the next iommu_map() attempt during initialization to fail with
-EEXIST?

>  }
> =20
>  int iris_set_hw_state(struct iris_core *core, bool resume)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509-glymur-v5-=
0-7fbb340c5dbd@oss.qualcomm.com?part=3D7

