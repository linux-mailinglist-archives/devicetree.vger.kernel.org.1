Return-Path: <devicetree+bounces-312240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UKCsMCSWMGr+UgUAu9opvQ
	(envelope-from <devicetree+bounces-312240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 02:17:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 614BA68ADE2
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 02:17:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Vp7799k0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312240-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312240-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C73DC300A326
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 00:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CACC20E702;
	Tue, 16 Jun 2026 00:17:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771DC2046BA
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 00:17:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781569057; cv=none; b=rDAa23RyNySQ0u7Mq6XTPkZXMdfP411irY9haj3CWfhAVvbP0nXCJyz4XmhPQqy/IDPJCj0UVUx+gyQlGVhK7AbrSVtkOU1YtpO0UTj7etIBRpLgz3AQK4dzfzMLGz9H2gsqBY7ZSehXb7HB1RXxU+2V06UvrUvkOitByk6ZK/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781569057; c=relaxed/simple;
	bh=zggxm3wkajrIFqF4cid1g/e5uKT484xk/5fm2sMyqxY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mcYbBXawQXTXoBJiHEMVxpSbCj0QHMJH5xebxYGBisFRLR4Wa+ThbdVDpdGI5HljXICRIZA+eh2qb4UX6lhpbLt3snwBVfJaL0hda/B91Q2I2MOpi37faLnGd1Gdk78xARgW68VqTK9j4cmSFXGoS3dnOgtjmBfHBDQPpxoKC7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp7799k0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FC251F000E9;
	Tue, 16 Jun 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781569056;
	bh=LY4/xGJEoT3+TDH5yJ7nNVFLDPsq6QvPOJD/oOWLIIc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vp7799k0/ynedvFI7iufDH3byQijvC0ZCXHg8eJX068PyET0W7maXCeT+qvm0wjEi
	 k2msOXtoQBK+36W0aoMUjELWX22qgDSwriQfu17Eo9zbAW67ILdhAxJ3VNjaI/+9vm
	 fBCEM5ls0MGYBcIB70nQ9QC+Q2GwvWCNNbjgcWhobCuXSfTHyYX6VRW6pn4ueu4KA/
	 pEw9GzYgCJaNypCgNzUAY4ugRX2widcghrn/871k30+x/j00zWf9K+jfnYcaz0zLwW
	 vYTtbnXnhODT04uGWiYlJqGFqgcHiRMIfiTaEexpCF2OAOFLfsZSO5rtUipwG28FyV
	 H6MEyaSGtMSNg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 02/16] media: iris: Filter UBWC raw formats based on
 hardware capabilities
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616-iris-ar50lt-v5-2-583b42770b6a@oss.qualcomm.com>
References: <20260616-iris-ar50lt-v5-2-583b42770b6a@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 00:17:32 +0000
Message-Id: <20260616001733.5FC251F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-312240-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 614BA68ADE2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The `iris_vdec_formats_noubwc_cap` array contains a zero-initializ=
ed gap at index 1, which prematurely terminates V4L2 format enumeration and=
 improperly validates 0 as a valid pixel format.
--

commit 1ff6b6e464175bc1ccf6878e0aa89ffec126608b
Author: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

media: iris: Filter UBWC raw formats based on hardware capabilities

The raw formats supported by Iris were previously advertised
unconditionally, assuming UBWC support on all platforms. Use the UBWC
configuration provided by the platform to dynamically filter raw formats
at runtime, keeping linear formats available when UBWC is not supported.

> diff --git a/drivers/media/platform/qcom/iris/iris_vdec.c b/drivers/media=
/platform/qcom/iris/iris_vdec.c
> index 9e228b70420e4..63b7c9dec60a0 100644
> --- a/drivers/media/platform/qcom/iris/iris_vdec.c
> +++ b/drivers/media/platform/qcom/iris/iris_vdec.c
[ ... ]
> @@ -69,8 +70,14 @@ static const u32 iris_vdec_formats_cap[] =3D {
>  	[IRIS_FMT_QC10C] =3D  V4L2_PIX_FMT_QC10C,
>  };
> =20
> +static const u32 iris_vdec_formats_noubwc_cap[] =3D {
> +	[IRIS_FMT_NV12] =3D V4L2_PIX_FMT_NV12,
> +	[IRIS_FMT_TP10] =3D  V4L2_PIX_FMT_P010,
> +};

[Severity: High]
Does this create a sparse array with a zero-initialized gap at index 1?

Because IRIS_FMT_NV12 is 0 and IRIS_FMT_TP10 is 2, skipping index 1=20
(IRIS_FMT_QC08C) implicitly initializes it to 0.

When check_format() in iris_vdec.c iterates through this array:

	for (i =3D 0; i < size; i++) {
		if (fmt[i] =3D=3D pixfmt)
			break;
	}

Won't it incorrectly accept 0 as a valid pixel format by matching against t=
he
uninitialized gap?

[ ... ]
> @@ -110,6 +122,7 @@ static bool check_format(struct iris_inst *inst, u32 =
pixfmt, u32 type)
> =20
>  static u32 find_format_by_index(struct iris_inst *inst, u32 index, u32 t=
ype)
>  {
> +	const struct qcom_ubwc_cfg_data *ubwc =3D inst->core->ubwc_cfg;
>  	unsigned int size;
>  	const u32 *fmt;
> =20
> @@ -119,8 +132,13 @@ static u32 find_format_by_index(struct iris_inst *in=
st, u32 index, u32 type)
>  		size =3D inst->core->iris_platform_data->inst_iris_fmts_size;
>  		break;
>  	case V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE:
> -		fmt =3D iris_vdec_formats_cap;
> -		size =3D ARRAY_SIZE(iris_vdec_formats_cap);
> +		if (ubwc->ubwc_enc_version) {
> +			fmt =3D iris_vdec_formats_cap;
> +			size =3D ARRAY_SIZE(iris_vdec_formats_cap);
> +		} else {
> +			fmt =3D iris_vdec_formats_noubwc_cap;
> +			size =3D ARRAY_SIZE(iris_vdec_formats_noubwc_cap);
> +		}
>  		break;
>  	default:
>  		return 0;

[Severity: High]
Will the V4L2 enumeration stop prematurely when encountering the gap?

Since the V4L2 framework queries formats using a sequential index, querying
index 1 will hit the zero-initialized hole, causing find_format_by_index()
in iris_vdec.c to return 0.

When 0 is returned, V4L2 typically stops enumeration, meaning the valid 10-=
bit
linear format (V4L2_PIX_FMT_P010) at index 2 will be completely hidden.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-iris-ar50l=
t-v5-0-583b42770b6a@oss.qualcomm.com?part=3D2

