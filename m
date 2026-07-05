Return-Path: <devicetree+bounces-320571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ofkKDUoUSmqY+AAAu9opvQ
	(envelope-from <devicetree+bounces-320571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 10:22:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2BF7096D8
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 10:22:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MVj2HJbB;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320571-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320571-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 239DB3012C46
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 08:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C65F36A360;
	Sun,  5 Jul 2026 08:17:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556893672B5
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 08:17:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783239445; cv=none; b=rcF9BjZRVjZEIPPH548SjuoyCRss10164Z3GplTFcEdSy87B8BNrmRDKhn8Tm1h5c5W1qphDfbtbOEqhf3EGz1GwYrUL0W9289uGfDAZHXzwqyapc8Z9g4ox1tggv+G+2dlrR4VQypSzhR9WVOmij1aIuituFv8cl3oWQXVVf2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783239445; c=relaxed/simple;
	bh=OIOpxYIwCK7tMGtmAtcSVRrunLaNLo9r6kGxQ04NaAU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PbhMhl/n6+Joc8zfBuqLTAt+3wzdH7wbFiirMBufqAsqgiXkUvjG3c8gzJvfldNNIv1k1Gr6AM2bRhCz+KUkWbl/cTHlEfUXJh9fPvrYBc2V56wVU3RxANtXIkOZHDcC5VHg7eAficl/pnG1FTatk9pgggLtPAR/+wbeeMOZaKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVj2HJbB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDC071F000E9;
	Sun,  5 Jul 2026 08:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783239444;
	bh=IReY2qpkTZ9HFmy4i2itPiMHAlBWzg9RKPPI+b+wRhk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MVj2HJbBoMda3jmDw4ueruIWlYJ52sSrEUivOC27AVb8OdXpHAj+YftlqNmG3XE4g
	 N+gFDviN86uSYVHieBDp610EBido4Xjhv/cOiUwflgs29gjGleyUSzkQbF26DXqvFf
	 YZpLKLJ0D3qFpWzKNlN5Wn62vS+/zM8KNpoZWAdwtxUuWkv0TflmuAyMRKTPVCE5Uv
	 JYT+xj3xB8SL9kEPHy//1eY1DHEDTEY18W1iHVJ8aapmEy+21rTpgWD9LPzZ/WwMWA
	 RLFEZWmA/WHo72RjRtjmKdMidTQYhC/+enhvVkBeFOistjO6/8y49hnBPJUfojUAvP
	 2WGHWqYRvoNkw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/8] drm/msm/a6xx: Increase HFI GX perf level limit
 to 24
Reply-To: sashiko-reviews@lists.linux.dev
To: "Akhil P Oommen" <akhilpo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260705-kaana-gpu-dt-v2-1-6ac53de56314@oss.qualcomm.com>
References: <20260705-kaana-gpu-dt-v2-0-6ac53de56314@oss.qualcomm.com>
 <20260705-kaana-gpu-dt-v2-1-6ac53de56314@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 08:17:23 +0000
Message-Id: <20260705081723.BDC071F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-320571-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:akhilpo@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7D2BF7096D8

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] Expanding fixed-size arrays in packed HFI structures silently shif=
ts the offsets of subsequent fields, breaking communication with older GMU =
firmwares.

Pre-existing issues:
- [Critical] Out-of-bounds stack write in `a6xx_hfi_send_perf_table` and `a=
6xx_hfi_send_perf_table_v1` due to a mismatch between `GMU_MAX_CX_FREQS` an=
d the `cx_votes` array size.
--

commit b7dcd380638139f2d4f6982c947797f34b9ff256
Author: Akhil P Oommen <akhilpo@oss.qualcomm.com>

drm/msm/a6xx: Increase HFI GX perf level limit to 24

Newer Adreno GPUs expose more than 16 GX frequency levels. Introduce
HFI_MAX_GX_LEVELS and use it to size the perf-table and bandwidth-table
GX vote arrays, and to derive GMU_MAX_GX_FREQS, so these levels are not
truncated.

> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.h b/drivers/gpu/drm/msm/=
adreno/a6xx_gmu.h
> index 3f96b10b5f61a..62e3fb230cd3a 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.h
> @@ -20,7 +20,7 @@ struct a6xx_gmu_bo {
>  	u64 iova;
>  };
> =20
> -#define GMU_MAX_GX_FREQS	32
> +#define GMU_MAX_GX_FREQS	HFI_MAX_GX_LEVELS
>  #define GMU_MAX_CX_FREQS	6
>  #define GMU_MAX_BCMS		3
> =20
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.h b/drivers/gpu/drm/msm/=
adreno/a6xx_hfi.h
> index e10d32ce93e0c..f4da73a555c65 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
> @@ -5,6 +5,7 @@
>  #define _A6XX_HFI_H_
> =20
>  #define HFI_MAX_QUEUES 3
> +#define HFI_MAX_GX_LEVELS 24
> =20
>  struct a6xx_hfi_queue_table_header {
>  	u32 version;

[ ... ]

> @@ -119,7 +120,7 @@ struct a6xx_hfi_msg_perf_table_v1 {
>  	u32 num_gpu_levels;
>  	u32 num_gmu_levels;
> =20
> -	struct perf_level gx_votes[16];
> +	struct perf_level gx_votes[HFI_MAX_GX_LEVELS];
>  	struct perf_level cx_votes[4];

[Severity: High]
Does expanding this fixed-size array in a packed structure break compatibil=
ity
with older GMU firmwares?

Because a6xx_hfi_msg_perf_table_v1 is a packed structure, increasing the si=
ze
of gx_votes from 16 to 24 elements shifts the offset of cx_votes. During dr=
iver
initialization on older Adreno GPUs, firmwares expecting the previous fixed=
-size
v1 performance tables might read cx_votes at the old offset and receive
uninitialized zeros instead of the actual frequencies, which can cause syst=
em
instability.

This same offset shift appears to happen below in struct a6xx_hfi_msg_perf_=
table
as well.

[Severity: Critical]
This is a pre-existing issue, but can this cause a stack buffer overflow?

The cx_votes array is hardcoded to a size of 4 here. However, in
drivers/gpu/drm/msm/adreno/a6xx_gmu.h, GMU_MAX_CX_FREQS is defined as 6.

During initialization, a6xx_hfi_send_perf_table_v1() iterates up to
gmu->nr_gmu_freqs (which can be up to 6 on newer platforms with more OPPs)
and writes to msg.cx_votes[i] on the stack:

drivers/gpu/drm/msm/adreno/a6xx_hfi.c:a6xx_hfi_send_perf_table_v1() {
	...
	for (i =3D 0; i < gmu->nr_gmu_freqs; i++) {
		msg.cx_votes[i].vote =3D gmu->cx_arc_votes[i];
		msg.cx_votes[i].freq =3D gmu->gmu_freqs[i] / 1000;
	}
	...
}

If gmu->nr_gmu_freqs exceeds 4, this loop appears to write out-of-bounds on
the stack, which can corrupt memory. This identical loop is also present in
a6xx_hfi_send_perf_table().

>  } __packed;
> =20
> @@ -128,7 +129,7 @@ struct a6xx_hfi_msg_perf_table {
>  	u32 num_gpu_levels;
>  	u32 num_gmu_levels;
> =20
> -	struct perf_gx_level gx_votes[16];
> +	struct perf_gx_level gx_votes[HFI_MAX_GX_LEVELS];
>  	struct perf_level cx_votes[4];
>  } __packed;
> =20
> @@ -144,7 +145,7 @@ struct a6xx_hfi_msg_bw_table {
>  	u32 cnoc_cmds_addrs[6];
>  	u32 cnoc_cmds_data[2][6];
>  	u32 ddr_cmds_addrs[8];
> -	u32 ddr_cmds_data[16][8];
> +	u32 ddr_cmds_data[HFI_MAX_GX_LEVELS][8];

[Severity: High]
Does increasing the size of ddr_cmds_data risk breaking length validation
on older firmwares?

Expanding this array increases the overall message size by 256 bytes, which
older GMU firmwares might reject if they strictly validate the length of the
bandwidth table message.

>  } __packed;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705-kaana-gpu-=
dt-v2-0-6ac53de56314@oss.qualcomm.com?part=3D1

