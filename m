Return-Path: <devicetree+bounces-253590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CD0D0EFA1
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:30:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7024A30012F3
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 13:30:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D31F5733E;
	Sun, 11 Jan 2026 13:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZpR0UXRB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FE4BA3F
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 13:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768138255; cv=none; b=rOWfBVQ9Jkxi/qUFDjgJ2d2bf/fCzmge6C+OE5tu6GkYfVPQioIcZ4v3cxHqIKSk7ZxhtVpxDTxlcv/d6cyKvUm06wkgq9nmh34bzjIMIa0CPuW+0ZKTlzy0z44MG9FNjB+bOniKc3gtmV6cJQ5CWs7tWVJ/6q/bXi1TihNhwqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768138255; c=relaxed/simple;
	bh=DMPe2Otko5cydpSAzt1lYpSomvDNflW9xK/ETiX6TlI=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=dH/5/3oHZgckJ/s71v/UH9ylBCh3jNuAI4FJoIa3qIEIqb7BofnGj9izrNBHBrB+3N3VE2DLSz/QB8cSC3a3fgW9rlbTXOKLxxVxYsM7O3PyIbthZ/DDW4Vq/RIWEDG5fhVoBE6XtBIdiqpzDZvaSFb5W7sqIxweWOJlSXYePQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZpR0UXRB; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4327790c4e9so2763749f8f.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 05:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768138252; x=1768743052; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ckBPY9BcGf6vo2tq6j7tWFYJrA0tQ0sNu7QHFsHPJ+Y=;
        b=ZpR0UXRB/xzd0FBqRFHInVmTbh/mbwshqGOu3dlZxLUyR8q2MnzyPI6zl1GNZkeN6J
         8pMSpZy83z5vSIM243dAE/ORm+DkAB4TT7gjUn0TZ8g9VgJ57G8XYQRBvPPKK/m7JZ6F
         XDH6v/RoT+9D2UbaBKAfcQ+m0VZO9GdEBnj2QoCLyp8ovQRX6nKH0UwZISqrjfFhwGCd
         Afc+uLv8U33Ms9yriorHKHiH9kTRvgV+o6tj/M93eoGesceda/+8B9WH0Zr3IW2di820
         DMM5oXVHhzmjWTETmIx1OwGcTJ1gVioMJlm77oHyvrpdU5sjvuUDScLkbujFGcjeVFgv
         ayuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768138252; x=1768743052;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ckBPY9BcGf6vo2tq6j7tWFYJrA0tQ0sNu7QHFsHPJ+Y=;
        b=C5sQ7mRJD8whgG3kFoQ8ncFsPGsF7sJIqIqZq0JwMvaEwB47qSu+uzftsx70npaD3I
         zW2mBEkMX3v0cEayPXOlVPHqKV8w+AQEjfo+yoeBd/Q80mC/fReotSPjtarYaLFu+M4J
         A+J2iFm5yvmXMjue76okwdIpksDZBRRhZcDVQ9GfUQsXKN6q9g4B/P8FRNeFpZ+ttIkR
         vVpbsWVtn6DUygObLjs6HsU3Lke3uEdlCzYCE9tlmhAioQJaO30kxw+dWZ3V2EQ9Ffzf
         yDkTCYddeee5fiNZIvky4ZlXx2/ybjLBnWHLTLJJmnPn+CHWSwfPg/RNCCa6+1q/WwgG
         C46Q==
X-Forwarded-Encrypted: i=1; AJvYcCVLoibT9TrOExPLpNzEAgz6h7JmcKSDHFXhr/+0RC+eg+vj6dMXTBhWJ1sM07bgKWHLD5Kz9Aj+RXGH@vger.kernel.org
X-Gm-Message-State: AOJu0YxIF+iwmlS+EFW4/jcAukpCO3NCdtnBywAF1opbGk96xsl7W09U
	LOQQnGUNwlmNCcH/YIz+m/hdYZWP3e5Z0dsbYd6QIGNWxcFmMzhUExM8
X-Gm-Gg: AY/fxX7IeN6JRgg7KoYQNlgDhK3kKMeSvht2H5UV3+EoEWCJECWDJkD3CJalDa2yHdr
	KeZw9QqSGifGEZO4CXTIjz76lo2PxVVBQ3c7kmzz46jO0JIuJq+jFA+ItwLmGGfY6WVm9SrpYee
	bq+Gg/GMLQGRdVak9ZOdFEPuSAjSIVu0h8oT3T7CxV79CauJm5vB6Ao9IiiDqdmvneT84MHKP/B
	xiltB9QK7Eb9TmEGHgjIXw4rmOQDrJ58QHVQSXYnwiEQGJyYSIxpWeR11ZBXzA0qewpfFBiuGfB
	6EISPl1yDovZjEgdGdAzypJxD0vtR1s3yFAchyD6ZZNKScENiHx3b8qLZsNNd1qaUHodryiBSJz
	ETWkRlkh3zT/o3xMWQspdzTXimQeB38QbsGYMx4ysh3LIyrLdk72D6rW4QEj9/FMox+Rm2i/i0Q
	CJD5aboRTlxlr8mqYrCur7jgKrUd2j+D9L/1w4vsCkHSWe43HkMD3yJUl9yDnwFyLUERTd0T/r9
	qGFqqFBMA==
X-Google-Smtp-Source: AGHT+IFe9wWxjVQpeDITMzmRPx8fkixrUGFpGMFziE84e6O7knxtRUc2L2nWcJa5eYoiJK5xomAUhw==
X-Received: by 2002:a05:6000:401e:b0:431:488:b9b4 with SMTP id ffacd0b85a97d-432c36328d0mr15749317f8f.17.1768138251654;
        Sun, 11 Jan 2026 05:30:51 -0800 (PST)
Received: from smtpclient.apple (static.253.36.98.91.clients.your-server.de. [91.98.36.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5feaf8sm33320121f8f.39.2026.01.11.05.30.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Jan 2026 05:30:51 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.3\))
Subject: Re: [PATCH v3 2/3] media: rkvdec: Add support for the VDPU346 variant
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <DFL5TY0QQNMN.1RS04UM9D1V8S@cknow-tech.com>
Date: Sun, 11 Jan 2026 17:30:35 +0400
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 =?utf-8?Q?Olivier_Cr=C3=AAte?= <olivier.crete@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>,
 linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Dang Huynh <dang.huynh@mainlining.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E21F5FD9-AEBA-490F-A9DF-8E9BEF161763@gmail.com>
References: <20260110053727.2295260-1-christianshewitt@gmail.com>
 <20260110053727.2295260-3-christianshewitt@gmail.com>
 <DFL5TY0QQNMN.1RS04UM9D1V8S@cknow-tech.com>
To: Diederik de Haas <diederik@cknow-tech.com>
X-Mailer: Apple Mail (2.3826.700.81.1.3)

> On 10 Jan 2026, at 11:35=E2=80=AFpm, Diederik de Haas =
<diederik@cknow-tech.com> wrote:
>=20
> Hi Christian,
>=20
> On Sat Jan 10, 2026 at 6:37 AM CET, Christian Hewitt wrote:
>> VDPU346 is similar to VDPU381 but with a single core and limited
>> to 4K60 media. It is also limited to H264 L5.1 and omits AV1 and
>> AVS2 capabilities. VDPU346 is used with RK3566 and RK3568.
>>=20
>> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
>> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
>> Tested-by: Dang Huynh <dang.huynh@mainlining.org> # Pinetab2
>> ---
>> .../media/platform/rockchip/rkvdec/rkvdec.c   | 103 =
++++++++++++++++++
>> 1 file changed, 103 insertions(+)
>>=20
>> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c =
b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
>> index a5cf6f3240f8..6e49b129d11f 100644
>> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
>> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
>> @@ -236,6 +236,62 @@ static const struct rkvdec_ctrls =
rkvdec_hevc_ctrls =3D {
>> .num_ctrls =3D ARRAY_SIZE(rkvdec_hevc_ctrl_descs),
>> };
>>=20
>> +static const struct rkvdec_ctrl_desc vdpu346_hevc_ctrl_descs[] =3D {
>> + {
>> + .cfg.id =3D V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_STATELESS_HEVC_SPS,
>> + .cfg.ops =3D &rkvdec_ctrl_ops,
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_STATELESS_HEVC_PPS,
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_STATELESS_HEVC_SCALING_MATRIX,
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_STATELESS_HEVC_DECODE_MODE,
>> + .cfg.min =3D V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
>> + .cfg.max =3D V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
>> + .cfg.def =3D V4L2_STATELESS_HEVC_DECODE_MODE_FRAME_BASED,
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_STATELESS_HEVC_START_CODE,
>> + .cfg.min =3D V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
>> + .cfg.def =3D V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
>> + .cfg.max =3D V4L2_STATELESS_HEVC_START_CODE_ANNEX_B,
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_MPEG_VIDEO_HEVC_PROFILE,
>> + .cfg.min =3D V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
>> + .cfg.max =3D V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10,
>> + .cfg.menu_skip_mask =3D
>> + BIT(V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_STILL_PICTURE),
>> + .cfg.def =3D V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_MPEG_VIDEO_HEVC_LEVEL,
>> + .cfg.min =3D V4L2_MPEG_VIDEO_HEVC_LEVEL_1,
>> + .cfg.max =3D V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1,
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_STATELESS_HEVC_EXT_SPS_ST_RPS,
>> + .cfg.ops =3D &rkvdec_ctrl_ops,
>> + .cfg.dims =3D { 65 },
>> + },
>> + {
>> + .cfg.id =3D V4L2_CID_STATELESS_HEVC_EXT_SPS_LT_RPS,
>> + .cfg.ops =3D &rkvdec_ctrl_ops,
>> + .cfg.dims =3D { 65 },
>> + },
>> +};
>> +
>> +static const struct rkvdec_ctrls vdpu346_hevc_ctrls =3D {
>> + .ctrls =3D vdpu346_hevc_ctrl_descs,
>> + .num_ctrls =3D ARRAY_SIZE(vdpu346_hevc_ctrl_descs),
>> +};
>> +
>> static const struct rkvdec_ctrl_desc vdpu38x_hevc_ctrl_descs[] =3D {
>> {
>> .cfg.id =3D V4L2_CID_STATELESS_HEVC_DECODE_PARAMS,
>> @@ -463,6 +519,41 @@ static const struct rkvdec_coded_fmt_desc =
rk3288_coded_fmts[] =3D {
>> }
>> };
>>=20
>> +static const struct rkvdec_coded_fmt_desc vdpu346_coded_fmts[] =3D {
>> + {
>> + .fourcc =3D V4L2_PIX_FMT_HEVC_SLICE,
>> + .frmsize =3D {
>> + .min_width =3D 64,
>> + .max_width =3D 4096,
>> + .step_width =3D 64,
>> + .min_height =3D 64,
>> + .max_height =3D 2304,
>> + .step_height =3D 16,
>> + },
>> + .ctrls =3D &vdpu346_hevc_ctrls,
>> + .ops =3D &rkvdec_vdpu381_hevc_fmt_ops,
>> + .num_decoded_fmts =3D ARRAY_SIZE(rkvdec_hevc_decoded_fmts),
>> + .decoded_fmts =3D rkvdec_hevc_decoded_fmts,
>> + .subsystem_flags =3D VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
>> + },
>> + {
>> + .fourcc =3D V4L2_PIX_FMT_H264_SLICE,
>> + .frmsize =3D {
>> + .min_width =3D 64,
>> + .max_width =3D  4096,
>> + .step_width =3D 64,
>> + .min_height =3D 64,
>> + .max_height =3D  2304,
>> + .step_height =3D 16,
>> + },
>> + .ctrls =3D &rkvdec_h264_ctrls,
>> + .ops =3D &rkvdec_vdpu381_h264_fmt_ops,
>> + .num_decoded_fmts =3D ARRAY_SIZE(rkvdec_h264_decoded_fmts),
>> + .decoded_fmts =3D rkvdec_h264_decoded_fmts,
>> + .subsystem_flags =3D VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF,
>> + },
>> +};
>> +
>> static const struct rkvdec_coded_fmt_desc vdpu381_coded_fmts[] =3D {
>> {
>> .fourcc =3D V4L2_PIX_FMT_HEVC_SLICE,
>> @@ -1657,6 +1748,14 @@ static const struct rkvdec_variant_ops =
vdpu381_variant_ops =3D {
>> .flatten_matrices =3D transpose_and_flatten_matrices,
>> };
>>=20
>> +static const struct rkvdec_variant vdpu346_variant =3D {
>> + .coded_fmts =3D vdpu346_coded_fmts,
>> + .num_coded_fmts =3D ARRAY_SIZE(vdpu346_coded_fmts),
>> + .rcb_sizes =3D vdpu381_rcb_sizes,
>=20
> AFAICT this is not correct, the rcb_sizes are different for vdpu346 vs
> vdpu381. While for vdpu381 the sizes are the same across codecs, they
> vary for vdpu346. And vdpu346 does not have 'STRMD Row', 'Transd Row'
> and 'Transd col'.
>=20
> For RK3588/vdpu381 it is defined in RK3588 TRM V1.0 Part1 in
> paragraph 5.4.4.3 in 'Table 5-13 Row or Col buffer size required' on
> page 381.
>=20
> For RK3568/vdpu346 is is defines in RK3568 TRM V1.1 Part2 in
> paragraph 10.4.8 in 'Table 10-9 Row or Col buffer size required' on =
page
> 474 and 475.

This is what I=E2=80=99m hinting/referring to in the cover-letter. How
to correctly handle the differences in code is currently beyond
my n00b level comprehension of c and coding skills. I=E2=80=99ll need to
ask the audience for some assistance and coaching :)

Christian

>> + .num_rcb_sizes =3D ARRAY_SIZE(vdpu381_rcb_sizes),
>> + .ops =3D &vdpu381_variant_ops,
>> +};
>> +
>> static const struct rkvdec_variant vdpu381_variant =3D {
>> .coded_fmts =3D vdpu381_coded_fmts,
>> .num_coded_fmts =3D ARRAY_SIZE(vdpu381_coded_fmts),
>> @@ -1705,6 +1804,10 @@ static const struct of_device_id =
of_rkvdec_match[] =3D {
>> .compatible =3D "rockchip,rk3399-vdec",
>> .data =3D &rk3399_rkvdec_variant,
>> },
>> + {
>> + .compatible =3D "rockchip,rk3568-vdec",
>> + .data =3D &vdpu346_variant,
>> + },
>> {
>> .compatible =3D "rockchip,rk3588-vdec",
>> .data =3D &vdpu381_variant,



