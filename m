Return-Path: <devicetree+bounces-323868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zZ/DNii0T2oZnAIAu9opvQ
	(envelope-from <devicetree+bounces-323868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:46:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F38A7326ED
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 16:46:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Gtv15BfV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323868-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323868-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6ED913062D47
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 14:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09AD821E098;
	Thu,  9 Jul 2026 14:25:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D84331EAD
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 14:25:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783607104; cv=none; b=WOhxLUQG/u3G3bl17t35AbNXyklNgYuSPT81nlDe5B2YyTci3J93qyC8a1IV8ZyH6V14ksWNqBfRh/D4JcyPtfFOVMT9I9nVuvWVvpWUPouAi0O5SWLdm7IGhbNs8vAcADpSjHY6oxfqXa304tHM0d7xbSqAaX5dx5kyXZVtWVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783607104; c=relaxed/simple;
	bh=0R6o5tXGg9r+ia7xYXgIqd62dU50g8XMfE3VhcSo2Qs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eqX5af0v9vP9RbuAgkPH9Kzm+2/4udyWqPSiNoMrfpvomLSmJk30380wkyPkIqWxVrXh7fhtWmE/tf7g5XQKLQmmu9uME5+vljsKRz7mnXYDuNVcA/gs1l8n/ycapOjMIWeJ152+YHXY0gf2MlK2IKzrc2VbiGxcYJTVHJ23GUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gtv15BfV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A8C91F000E9;
	Thu,  9 Jul 2026 14:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783607103;
	bh=Z+4pwgf+XYVLVh244acZA7zna3+DjBQmi1Sb9j/5f2Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Gtv15BfVx4xx5OoUio1Oj2buO1talgWbFNc1IRBIOm9bi7Lxw0Jyk5JPXMlDEzdT3
	 0eO6WE86EDceXIoREUcr+0HQznObqzfKkYrYcwOq5Hqx21Cc24qktAYb6fHPKkXOYg
	 U+5U1UXFF3B+spmdl5azfxDmCJzFIXayNFJUfghdcKSks4stPB3KhGpKSgWHT/t+P9
	 Ji0nQPO9YcRHVIXHDSA6pfyeKFFrhV05mBdXxDCJXyO3JMKC9/ibhrHIn8sKRLhN+q
	 lxvpJ7JJA3SNDHPzmk/b0prQmdYVTzLjb527VZuc8FdNjtjzZh+RzpBFIm619ZT/xa
	 KrJUw6WW40kWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 16/18] media: iris: add Gen2 firmware support on the
 Agatti platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-iris-ar50lt-v7-16-76af9dd4d1f6@oss.qualcomm.com>
References: <20260709-iris-ar50lt-v7-0-76af9dd4d1f6@oss.qualcomm.com>
 <20260709-iris-ar50lt-v7-16-76af9dd4d1f6@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 14:25:02 +0000
Message-Id: <20260709142503.6A8C91F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323868-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2F38A7326ED

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrect maximum QP limit for HEVC encoding in the Gen2 firmwar=
e capabilities for the Agatti platform.
--

--- Patch [16]: [PATCH v7 16/18] media: iris: add Gen2 firmware support on =
the Agatti platform ---
commit c95f463971a4ef87470f272f24b4d448ca8c4ba8
Author: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

media: iris: add Gen2 firmware support on the Agatti platform

This commit extends the Agatti platform support in the iris driver to
include HFI Gen2 firmware capabilities. It defines the capability
structures, configuration parameters, and initialization data for Gen2
encoding and decoding on the AR50LT VPU.

> --- a/drivers/media/platform/qcom/iris/iris_hfi_gen2.c
> +++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2.c
> @@ -1118,3 +1118,616 @@ const struct iris_firmware_data iris_hfi_gen2_dat=
a =3D {

[ ... ]

> +static const struct platform_inst_fw_cap inst_fw_cap_gen2_ar50lt_enc[] =
=3D {

[ ... ]

> +	{
> +		.cap_id =3D MAX_FRAME_QP_HEVC,
> +		.min =3D MIN_QP_8BIT_AR50LT,
> +		.max =3D MAX_QP,
> +		.step_or_mask =3D 1,
> +		.value =3D MAX_QP,
> +		.hfi_id =3D HFI_PROP_MAX_QP_PACKED,
> +		.flags =3D CAP_FLAG_OUTPUT_PORT,
> +		.set =3D iris_set_max_qp,
> +	},

[Severity: Medium]
Should the maximum bound for MAX_FRAME_QP_HEVC be set to MAX_QP_HEVC (63)
instead of MAX_QP (51)? This limits userspace from setting HEVC QPs between
52 and 63, which are valid values for HEVC encoding.

[ ... ]

> +	{
> +		.cap_id =3D I_FRAME_MAX_QP_HEVC,
> +		.min =3D MIN_QP_8BIT_AR50LT,
> +		.max =3D MAX_QP,
> +		.step_or_mask =3D 1,
> +		.value =3D MAX_QP,
> +	},

[Severity: Medium]
Does this also incorrectly limit the I-frame maximum QP to 51 instead of 63?
This same MAX_QP limit appears to be applied to P_FRAME_MAX_QP_HEVC and
B_FRAME_MAX_QP_HEVC in the array below.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-iris-ar50l=
t-v7-0-76af9dd4d1f6@oss.qualcomm.com?part=3D16

