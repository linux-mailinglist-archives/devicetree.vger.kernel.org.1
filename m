Return-Path: <devicetree+bounces-277995-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PBcDj1FvGkJwQIAu9opvQ
	(envelope-from <devicetree+bounces-277995-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:49:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4492D14CE
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2D2930ADD63
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:45:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC5422D8399;
	Thu, 19 Mar 2026 18:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="FSar6Lf3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3374E3009E2
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945948; cv=none; b=dvSAQT75V/mDsjEkZAYARS2IbwMWXHOo8b2LjU39IO72ydLLQYNgTMoX23OB0B6EUoOz2Vvzx2TrvQm5it80CHr95eOTmIdhWXp8KiBA1hpOKWlR+5Z/rKLNVltUoWqZk+hqzSuB07DbAQSxvlRM0IdRKTFZ7nOIi9/Ne7Pjboc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945948; c=relaxed/simple;
	bh=c0qju6YXjNSnr1OosaMmqlXt4tuyPMGMBLmGUYCbjuk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XrFVKFoMhSmHqpgzN9AnBuVc0jrQOltaF1ecVQRSM9zy5uXGVypcChVAQBWO2e5MaUdvMtOWakMIX35gVKACTHo45xrCSJ1kddr3mBlC6LHqmQVM/HNYmK7xTyNCRf2QBHJMVhsCM3rfed3yfW92+RAPP4kWE4sc6pjthuM9/kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=FSar6Lf3; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8cfc085395fso88549085a.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773945945; x=1774550745; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fyxr2cT76xTmVXlGS1w9Azu54H6E559HX/Y7oAdioW8=;
        b=FSar6Lf33nLF04w6PqCjsboOwfCYnB/BubhosOgA8anmAG6KVGgKI6j7XLgjXm+82P
         OGyiin2pISjHdz0AhuRGCBUgpETmnKU6szfMT8RVVwcqshNzd5VhPKn/fc2tW+op9aBP
         8EPNg9udUk7jzVyHC9M2dwVBe02jqAp2XXNgXcpVhk8x9gywZ92Vi3TESugs6MbiNUDW
         dtjo8QkkmOjGggedcKl/QlYKki3tl6BeTES6e3HrlwfpQ7RLtZ9WC6dK7+VRUOEMA4yy
         RrIIqzPjNoD+AdR9pn5/QVBXwuw4neGeloVGdkGuMNioiUmnmJgxPQ27ZuX9LokFo+IP
         wryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945945; x=1774550745;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fyxr2cT76xTmVXlGS1w9Azu54H6E559HX/Y7oAdioW8=;
        b=rtbxxLkEy/kFE9x1mbyq/3pXEKU2cdzSTmGwlFtBUoKJZ3ExPq85mGL4TIbEvGWLHj
         mr4kxYnah+NFB3dddrjNaF8DPGjXAYdmcAR1gv++9FfKwvJ0SFVy1ehBqJ23hKbD+I06
         EAGuN/gbmgww+hbnysqmcTEDivF2HODsDwtKicxpOL1inZjzO+z7Utjsux7jsQvcJ6QP
         Bi4c6Pj5WiNtH372sjyqTRbCQ09tK7wlil3kb13q45AultSHoAWL/ZGV0bEPdfODOB/v
         O7ktwxnSp1XHU9v/tBclQd33igJCWnNYOfDEgkBX2amogE6aMPR8x8Z8p5DC4yNbVMza
         jclQ==
X-Forwarded-Encrypted: i=1; AJvYcCUn9liasxGbLMfqQOCf6B14LUwjAqfC0gtWQRjrVA7evXKdBj1kLlwgFWb16qW9zwPHdLy9YwBkxzCR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7jlCoXu6AFwyKXFOSEKvu7fKf0nk6UXE2C0n6Yz8mhZdHqSGB
	q9rUx3A9beTfAx1rzmXX+YT6LYNfpRVW0FKPWpRlp3NuAa6i/xFQJeJFG1k72NqpMrI=
X-Gm-Gg: ATEYQzxd3kwtFdFbnE6H0BN8Ph08UK56uF6zRem9PB1vPczxkE6rNhfoJXNCaKHEJp/
	kO1jdn3ufCg4ahKbA7ELVVcyWQE/7nH8Dq5CMUkVyCrxwFuwNP76E4jCSN5CnfG3EqJxpxI6KSh
	il1bmffIQxIKrwZHKnJOaBQ2Gjtm3Q+aqq5StffVfoD6P6iKYIR9HpkTGLsNeZoj/Xhil2nlPai
	+Xzj3VUghWOHidhaiTniHVCzA/XJOgAe1BUqJIM6o41XplYAkWw0C47ruHThzINfVs+1MBA7cz2
	iueA5RXABniAXsRqzLm3ir/BvLkYyfRaKpbkvwopRbd9Bdmrtb2iY+/7tdU/+cso8yzpNMaTC+x
	JXZ+2hdngclGkuQX1kZDiAcXxEYGetpqJqXUUBJ3Kl8r7rxcbkeVlI2xQb2a8TPVMpSiRkWdMoS
	MDTC7dyWziifBINJvB53gyqcmDlrD9
X-Received: by 2002:a05:620a:4050:b0:8cf:c08e:5f43 with SMTP id af79cd13be357-8cfc8097225mr45589685a.63.1773945944917;
        Thu, 19 Mar 2026 11:45:44 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfad16691asm485652985a.23.2026.03.19.11.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:45:44 -0700 (PDT)
Message-ID: <82eaf7e33273ab2f68ff6720244be2f268e52cb2.camel@ndufresne.ca>
Subject: Re: [PATCH v3 02/27] media: v4l2-common: sort RGB formats in
 v4l2_format_info
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Thu, 19 Mar 2026 14:45:42 -0400
In-Reply-To: <20260127-spu-rga3-v3-2-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-2-77b273067beb@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Wsz88yXF6Ple/ZN0Bspp"
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-2.16 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[ndufresne.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277995-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas@ndufresne.ca,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ndufresne.ca:mid,pengutronix.de:email,ndufresne-ca.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email]
X-Rspamd-Queue-Id: 8B4492D14CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--=-Wsz88yXF6Ple/ZN0Bspp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Sort the RGB formats in v4l2_format_info to match the format definitions
> in include/uapi/linux/videodev2.h . Also introduce the same sections to
> partition the list of formats and align the format info in each section.
>=20
> The alignment of the 1 or 2 bytes RGB formats contains an additional
> space in preparation of adding the missing formats to the list, as for
> V4L2_PIX_FMT_ARGB555X an additional space is necessary.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/v4l2-core/v4l2-common.c | 54 +++++++++++++++++++-----=
-----------
> =C2=A01 file changed, 30 insertions(+), 24 deletions(-)
>=20
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 554c591e11133..49c1ec08e2eb3 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -245,33 +245,39 @@ EXPORT_SYMBOL_GPL(v4l2_s_parm_cap);
> =C2=A0const struct v4l2_format_info *v4l2_format_info(u32 format)
> =C2=A0{
> =C2=A0	static const struct v4l2_format_info formats[] =3D {
> -		/* RGB formats */
> -		{ .format =3D V4L2_PIX_FMT_BGR24,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB24,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_HSV24,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGR32,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_XBGR32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGRX32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB32,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_XRGB32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBX32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_HSV32,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIXE=
L_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, =
.bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ARGB32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBA32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ABGR32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGRA32,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB565,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB565X, .pixel_enc =3D V4L2_PIXEL_ENC_RGB,=
 .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_div =
=3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB555,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGR666,=C2=A0 .pixel_enc =3D V4L2_PIXEL_ENC=
_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_=
div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGR48_12, .pixel_enc =3D V4L2_PIXEL_ENC_RGB=
, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bpp_div =
=3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_BGR48, .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .=
mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bpp_div =3D=
 { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGB48, .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .=
mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bpp_div =3D=
 { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_ABGR64_12, .pixel_enc =3D V4L2_PIXEL_ENC_RG=
B, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 8, 0, 0, 0 }, .bpp_div=
 =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> -		{ .format =3D V4L2_PIX_FMT_RGBA1010102, .pixel_enc =3D V4L2_PIXEL_ENC_=
RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		/* RGB formats (1 or 2 bytes per pixel) */
> +		{ .format =3D V4L2_PIX_FMT_RGB555,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB565,=C2=A0=C2=A0 .pixel_enc =3D V4L2_PIX=
EL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 },=
 .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB565X,=C2=A0 .pixel_enc =3D V4L2_PIXEL_EN=
C_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0, 0, 0 }, .bpp=
_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +
> +		/* RGB formats (3 or 4 bytes per pixel) */
> +		{ .format =3D V4L2_PIX_FMT_BGR666,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_BGR24,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 3, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB24,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 3, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_XBGR32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_BGRA32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_BGRX32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_RGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
.pixel_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .=
bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D=
 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_RGBX32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_ARGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> +		{ .format =3D V4L2_PIX_FMT_XRGB32,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .pixe=
l_enc =3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =
=3D { 4, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 }=
,
> =C2=A0		{ .format =3D V4L2_PIX_FMT_RGBX1010102, .pixel_enc =3D V4L2_PIXEL=
_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .=
bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGBA1010102, .pixel_enc =3D V4L2_PIXEL_ENC_=
RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_d=
iv =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_ARGB2101010, .pixel_enc =3D V4L2_PIXEL=
_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .=
bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> =C2=A0
> +		/* RGB formats (6 or 8 bytes per pixel) */
> +		{ .format =3D V4L2_PIX_FMT_BGR48_12,=C2=A0 .pixel_enc =3D V4L2_PIXEL_E=
NC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6, 0, 0, 0 }, .bp=
p_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_BGR48,=C2=A0=C2=A0=C2=A0=C2=A0 .pixel_enc =
=3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6=
, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_RGB48,=C2=A0=C2=A0=C2=A0=C2=A0 .pixel_enc =
=3D V4L2_PIXEL_ENC_RGB, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 6=
, 0, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_ABGR64_12, .pixel_enc =3D V4L2_PIXEL_ENC_RG=
B, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 8, 0, 0, 0 }, .bpp_div=
 =3D { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +
> +		/* HSV formats */
> +		{ .format =3D V4L2_PIX_FMT_HSV24, .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .=
mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 3, 0, 0, 0 }, .bpp_div =3D=
 { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +		{ .format =3D V4L2_PIX_FMT_HSV32, .pixel_enc =3D V4L2_PIXEL_ENC_RGB, .=
mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 4, 0, 0, 0 }, .bpp_div =3D=
 { 1, 1, 1, 1 }, .hdiv =3D 1, .vdiv =3D 1 },
> +
> =C2=A0		/* YUV packed formats */
> =C2=A0		{ .format =3D V4L2_PIX_FMT_YUYV,=C2=A0=C2=A0=C2=A0 .pixel_enc =3D=
 V4L2_PIXEL_ENC_YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0=
, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 1 },
> =C2=A0		{ .format =3D V4L2_PIX_FMT_YVYU,=C2=A0=C2=A0=C2=A0 .pixel_enc =3D=
 V4L2_PIXEL_ENC_YUV, .mem_planes =3D 1, .comp_planes =3D 1, .bpp =3D { 2, 0=
, 0, 0 }, .bpp_div =3D { 1, 1, 1, 1 }, .hdiv =3D 2, .vdiv =3D 1 },

--=-Wsz88yXF6Ple/ZN0Bspp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabxEVgAKCRDZQZRRKWBy
9No4AQD3/aAkAEwNjIOWQvIu1NDXoIuPzyXnLJ2iMFNMGp1u5wD/UwF3ZnJ1cn7m
BQCobwSyzvDMGTI14zeSx+a+Yoz9rwE=
=RVgQ
-----END PGP SIGNATURE-----

--=-Wsz88yXF6Ple/ZN0Bspp--

