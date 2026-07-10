Return-Path: <devicetree+bounces-324311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id feplFmK7UGqv4AIAu9opvQ
	(envelope-from <devicetree+bounces-324311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:29:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC8F7390B6
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 11:29:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="SoY1/+R9";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324311-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324311-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 865D93002B4C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E4A03D649F;
	Fri, 10 Jul 2026 09:21:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA11537AA99
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:21:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783675309; cv=none; b=HXA6MBzPMtSLUpoOB2lrEG800g8MKj3jFPqiNV7IdpbEtghF0l1Ig+8pzg1zU+NQkAcwkUgjUKdCCOijfYuDE4c/pDvDDEgrzf1cikoM5/jnK5eaDD1z6EKJt/7hat1dgitalSABCCMcc/0IZlCB6ceiqr0b2FxXBJ8UhpW3Ppg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783675309; c=relaxed/simple;
	bh=fyEWnGDAEa/HgG20jLg5jLlb6GIfg2Aa/vXS3MRTTxs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EZfqxjS8XoflyWUOnCwz0AKo/3ZctmDysnMM1afzFwWYBtVK1w5Tp6eD4O5apNtoxHnTt8l1Vkwe3g/WbXy+QQJvEwRq9SKrCLvUPby48Pgo59Woub33IdVUZ1goQCXFnBLpsb6ICLpEHPD8v9VrIGfwatzez1eglBfSEE+HWa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoY1/+R9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CCE21F000E9;
	Fri, 10 Jul 2026 09:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783675307;
	bh=MiMyDM8D8czwbte1kJuOVImGuOipqsJQKsUKKDhadDo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SoY1/+R9ZM54AZkyN9NnTaAHLYnvxxqQe986V/YdMwt0yKeg5HpByWZ8om1SaEeGV
	 CwDpXOD0cFBM5ixoN1hICvWkEtcdn30UeU8oI2TPDJIGVFKxJ/cPz352ZCkDkC4dzi
	 jzmbRBdZbz71TWcGTL9p2PkvhVwkXVNyLGAszuHfV3KqVU7Bx5xuU87WLb4kfMqIac
	 D5JwHGEA0P2zLO2ndvnlb6CViKyHdtka0exhiPrwIPU+JlTNsqfGx1+QOCcgcr9dE8
	 WzcYIzYra1We+NsME6oZ0CrC0tT98IcSzCNyanhqHRwiFlY/HwguoAO/f+N+y0YIKe
	 PVUSNibG9+ywQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/7] media: uapi: Add CAMSS ISP configuration
 definition
Reply-To: sashiko-reviews@lists.linux.dev
To: "Loic Poulain" <loic.poulain@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260710-camss-isp-ope-v4-5-51207a0319d8@oss.qualcomm.com>
References: <20260710-camss-isp-ope-v4-0-51207a0319d8@oss.qualcomm.com>
 <20260710-camss-isp-ope-v4-5-51207a0319d8@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 09:21:46 +0000
Message-Id: <20260710092147.4CCE21F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324311-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:loic.poulain@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9AC8F7390B6

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] The use of a `_MAX` enumerator and fixed maximum payload size macr=
o breaks forward compatibility in an extensible UAPI.
- [High] The CAMSS driver validates and parses the V4L2 ISP parameter buffe=
r directly from shared user memory without copying it to kernel space first=
, creating a severe Time-of-Check to Time-of-Use (TOCTOU) vulnerability.
- [Medium] Hardware configuration parameters explicitly documented as signe=
d values are defined with unsigned data types.
- [Medium] The Q-format ranges documented for `camss_params_color_correct` =
mathematically contradict the declared 12-bit signed data type, misleading =
userspace developers.
- [Low] Spelling errors in the UAPI header documentation.
--

--- Patch [5]: [PATCH v4 5/7] media: uapi: Add CAMSS ISP configuration defi=
nition ---
commit 3a76aaf5e8a665b80168c10573fd48e3e63313fc
Author: Loic Poulain <loic.poulain@oss.qualcomm.com>

media: uapi: Add CAMSS ISP configuration definition

Add the uapi header camss-config.h defining the ISP parameter structures
used by the CAMSS Offline Processing Engine (OPE) driver. This includes
structures for white balance, chroma enhancement and color correction
configuration.

> diff --git a/include/uapi/linux/camss-config.h b/include/uapi/linux/camss=
-config.h
> new file mode 100644
> --- /dev/null
> +++ b/include/uapi/linux/camss-config.h
> @@ -0,0 +1,161 @@
[ ... ]
> +enum camss_params_block_type {
> +	CAMSS_PARAMS_WB_GAIN =3D 1,
> +	CAMSS_PARAMS_CHROMA_ENHAN =3D 2,
> +	CAMSS_PARAMS_COLOR_CORRECT =3D 3,
> +	CAMSS_PARAMS_MAX,
> +};

[Severity: High]
Does including CAMSS_PARAMS_MAX break forward compatibility?

If new blocks are added to the extensible V4L2 generic ISP parameter framew=
ork
in the future, the max value will change. Applications compiled against old=
er
headers might miscalculate buffer sizes or array bounds, leading to ABI
breakage. Standard Linux UAPI guidelines recommend omitting max values for
extensible enumerations.

[ ... ]
> +/**
> + * struct camss_params_wb_gain - White Balance gains
> + *
> + * Implements the CLC_WB pipeline module.  The pipeline applies three
> + * sequential operations per channel:
> + *   1. Subtract sub-offset (black-level substraction)

[Severity: Low]
Is there a typo here? Should substraction be subtraction?

[ ... ]
> + * RGB2Y - Luma (Y) ceofficients

[Severity: Low]
Is there a typo here? Should ceofficients be coefficients?

> + * Y =3D v0 * R + v1 * G + v2 * B
> + *
> + * @luma_v0:  R-to-Y coefficient (12sQ8)
> + * @luma_v1:  G-to-Y coefficient (12sQ8)
> + * @luma_v2:  B-to-Y coefficient (12sQ8)
> + * @luma_k:   Y output offset    (9s,  0 =3D no offset)
> + *
[ ... ]
> +struct camss_params_chroma_enhan {
> +	struct v4l2_isp_params_block_header header;
> +	__u16 luma_v0;
> +	__u16 luma_v1;
> +	__u16 luma_v2;
> +	__u16 luma_k;
> +	__u16 coeff_ap;
> +	__u16 coeff_am;
> +	__u16 coeff_bp;
> +	__u16 coeff_bm;
> +	__u16 coeff_cp;
> +	__u16 coeff_cm;
> +	__u16 coeff_dp;
> +	__u16 coeff_dm;

[Severity: Medium]
Since these chroma enhancement coefficients are documented as signed 12-bit
fixed-point values (12sQ8), does defining them as unsigned __u16 force
userspace developers to cast or perform manual bitwise sign-extension logic?

Could these be defined as __s16 to allow native compiler support for
negative values?

[ ... ]
> + * @a:       G-input coefficients per output channel (12s;
> + *           a[0]=3DOut_G, a[1]=3DOut_B, a[2]=3DOut_R)
> + * @b:       B-input coefficients (12s)
> + * @c:       R-input coefficients (12s)
> + * @k:       per-output-channel offsets (typically 9s effective)
> + * @qfactor: Q-format selector (2u):
> + *           0 =3D 12sQ7  (range ~-256.0 .. +255.992)
> + *           1 =3D 12sQ8  (range ~-128.0 .. +127.996)
> + *           2 =3D 12sQ9  (range ~-64.0  .. +63.998)
> + *           3 =3D 12sQ10 (range ~-32.0  .. +31.999)

[Severity: Medium]
Are these documented Q-format ranges mathematically correct for a 12-bit
signed integer?

A 12-bit signed integer has a range of [-2048, 2047]. When divided by 128 f=
or
Q7, the actual hardware range would be [-16.0, 15.992] rather than
[-256.0, 255.992], which appears to be calculated based on a 16-bit signed
integer. Could userspace developers unknowingly supply out-of-bounds parame=
ter
values by trusting the UAPI documentation?

> + */
> +struct camss_params_color_correct {
> +	struct v4l2_isp_params_block_header header;
> +	__u16 a[3];
> +	__u16 b[3];
> +	__u16 c[3];
> +	__u16 k[3];

[Severity: Medium]
Similarly to the chroma enhancement parameters, these coefficients are
documented as 12s but are defined as unsigned __u16 fields. Should these use
a signed data type?

[ ... ]
> +#define CAMSS_PARAMS_MAX_PAYLOAD		\
> +	(sizeof(struct camss_params_wb_gain)	+\
> +	 sizeof(struct camss_params_chroma_enhan)	+\
> +	 sizeof(struct camss_params_color_correct))

[Severity: High]
Does hardcoding CAMSS_PARAMS_MAX_PAYLOAD break forward compatibility?

If new parameter blocks are added to the UAPI in future kernel releases, th=
is
fixed maximum size will become invalid and could cause applications compiled
against older headers to miscalculate buffer sizes.

[ ... ]

While reviewing the configuration parameters, I also noticed a potential
regression in how the blocks are validated in
drivers/media/platform/qcom/camss/camss-params.c:

drivers/media/platform/qcom/camss/camss-params.c:camss_isp_params_apply() {
    ...
	remaining =3D buf->data_size;

	while (remaining >=3D sizeof(struct v4l2_isp_params_block_header)) {
		const union camss_isp_params_block *block =3D
			(const union camss_isp_params_block *)&buf->data[offset];
		u16 type  =3D block->header.type;
		u32 bsize =3D block->header.size;
    ...
		offset +=3D bsize;
		remaining -=3D bsize;
	}
    ...
}

[Severity: High]
Does reading bsize directly from the user-accessible memory mapping (buf->d=
ata)
introduce a Time-of-Check to Time-of-Use (TOCTOU) regression?

If a malicious userspace thread modifies bsize to 0 concurrently with the
kernel's parsing, could it cause an infinite loop and denial of service?
Similarly, if bsize is changed to a large value, remaining could underflow,
allowing offset to point arbitrarily far out-of-bounds during subsequent re=
ads.

Does the payload need to be copied to kernel-only memory before parsing to
ensure safety?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-camss-isp-=
ope-v4-0-51207a0319d8@oss.qualcomm.com?part=3D5

