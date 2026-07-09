Return-Path: <devicetree+bounces-323496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bx82Oh9nT2o8gAIAu9opvQ
	(envelope-from <devicetree+bounces-323496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:17:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D12672ECE4
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:17:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mbbNrKBT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323496-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323496-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EE5D30580A8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C106F3FE67D;
	Thu,  9 Jul 2026 09:03:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3693FE649
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 09:03:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783587837; cv=none; b=bfiaEBSmyB+lEHMz+i4NVad32rnskiaB6cDbMduCYbhy8TShFj+YLMgoyPbknZRWDaWXZktVQ3FVUEfM3JFk3OzDR53y05B/XmS2WnwnIJ3fHIZKy857Tw4TqWR0Y81s5cm8k2OG1KGmlb/VfEHPVCVaLRaQSE2poSmIvt1xEZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783587837; c=relaxed/simple;
	bh=4+XajVTrkzcmsm4mif4x1I3DXDn0MXhZmjPyuwF0BTY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Sdq41HyhXychu3766l3mhzgz9fWK7hJkKGkEC7wKuIUM+dv8tbj5eSCzSDAJ55AV3m+S1jQQriMLCEbuCSEiyIBrizFOgO89HtIQ4AUZSPcAGoCYadrZeyU8R+UD+izVcYTC+RSxJEYHf1etQAxWdjtb0JzVv6lh7oRGiyGgSk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbbNrKBT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D9B31F000E9;
	Thu,  9 Jul 2026 09:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783587835;
	bh=AO/OmAU3ae33pcKOvKgBuBSAFq+N3dAjeHaYchrXT34=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mbbNrKBTXciv/q5eRyZLVjzvyAanSkLxg5UCzQSxZhdBH2SmyMyIBRoL0ZxwI1i8w
	 03hOMoJu/qG8WyfhZqOdbTIGXMc0k2vM+dmMK9a72DCz5yORPCFih3fly7vv5hMbCi
	 CjJFn4Ob0tQiNAuo18w5YP211bVhgNjbDFLqQ7T0t2N45cz2Gcmuo+riPKXRgaRqnh
	 /3mOFHaTG9ZBvLRIDfNXzbVlnViuVHaMs3Pju9d0c7hy8yGXDFON2NEIy/QaGO9bMB
	 mOATRR8s60dlecYOiiAQTHz7RVdRw9vHjLaNlmDMAE9GVDsqibRZ22M5OrXNRLSyBl
	 62WgepNbNpGHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/6] iio: backend: Add support for CRC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janani Sunil" <janani.sunil@analog.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-ad7768-driver-v1-2-44e1194fd96a@analog.com>
References: <20260709-ad7768-driver-v1-0-44e1194fd96a@analog.com>
 <20260709-ad7768-driver-v1-2-44e1194fd96a@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 09:03:55 +0000
Message-Id: <20260709090355.8D9B31F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323496-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:janani.sunil@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D12672ECE4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added `crc_enable` and `crc_disable` function pointers in=
 `struct iio_backend_ops` are missing their corresponding descriptions in t=
he kernel-doc block.
--

--- Patch [2]: [PATCH 2/6] iio: backend: Add support for CRC ---
commit 98a340052f70f8ab707e22920844ec1a36237e6a
Author: Janani Sunil <janani.sunil@analog.com>

iio: backend: Add support for CRC

This commit adds backend operations to enable or disable Cyclic Redundancy
Check (CRC) processing. This allows the backend to handle data integrity
verification for samples transmitted over the interface.

[ ... ]

> diff --git a/include/linux/iio/backend.h b/include/linux/iio/backend.h
> index 3f95ed1fdf9eb..197cf1ad5e68e 100644
> --- a/include/linux/iio/backend.h
> +++ b/include/linux/iio/backend.h
> @@ -189,6 +189,8 @@ struct iio_backend_ops {
>  			       enum iio_backend_filter_type type);
>  	int (*interface_data_align)(struct iio_backend *back, u32 timeout_us);
>  	int (*num_lanes_set)(struct iio_backend *back, unsigned int num_lanes);
> +	int (*crc_enable)(struct iio_backend *back);
> +	int (*crc_disable)(struct iio_backend *back);

[Severity: Low]
Are the kernel-doc descriptions for crc_enable and crc_disable missing from
the documentation block above struct iio_backend_ops?

>  	int (*ddr_enable)(struct iio_backend *back);
>  	int (*ddr_disable)(struct iio_backend *back);
>  	int (*data_stream_enable)(struct iio_backend *back);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-ad7768-dri=
ver-v1-0-44e1194fd96a@analog.com?part=3D2

