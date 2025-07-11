Return-Path: <devicetree+bounces-195639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ED69AB02583
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 21:59:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B6F747B53ED
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 19:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C830E1B0420;
	Fri, 11 Jul 2025 19:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="hJJpuz9Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A6F1E47A8
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 19:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752263947; cv=none; b=FPAfEd7fMPrj73U0umZACFqFNEmN19Ogxi87VHCEDMbeqSthgzMxbr5AdEcvChJGibRXH5v0dwouuKbWnh3bCiuWwmJRUONEoqQFnTLrk4HFsHxCVpWwp+1H86nT2WLrS1H15MnyddRx/ilsdT3CvBHhe1QxwOzt3UA290nwZ3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752263947; c=relaxed/simple;
	bh=fNFTzgqdHk1FTXy3FdlifGdIkM/F9F6z1PqgTNcZdmM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kXTtK1RULEILNXud8P16Z2cuU/3VZ9TWtlyo//u1Tu1u7OgW6w8d7M7mMZHspnWs0wzrzlAXp2CbpWyvbfrLkp5XhIrE0TtHYyYgjU471sHz3bM4/xZKCdQT+XD9yLMiaM4NMnPn0b9zrFjVOhrBIZMdklr72vYeaOG9LG1VqJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=hJJpuz9Z; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7d3f5796755so220887285a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 12:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1752263945; x=1752868745; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KggEA/YDHTi+B94iHR0d5HwR3sGfFH/eH/dYBbqHvU0=;
        b=hJJpuz9ZKNqG1gsbWUiVri5XavO69fnewt0hXwCWgeMZ4FQutGfH4XjtmEaZlp0vot
         ruplIge60Npw0dsVGzECKQcmhD81C3ehplLfpEwDkgbXs6z9kzPbv/G7ZV0NVABxUpbL
         DN5JH2MzifTOgHXrrvsKYGWMe5HJFB2Egv2ry4YG9ySZQfOuho/vQ33/8gKR4M1xTeml
         jW7Re3cNJZzxgXVW1NQRsQDcoTGzXVaFx/Odm0q0KukAK0de3WgsitD+nvD+f/VPGtBp
         u7YGgSau7k+JtGRO2OT3HDbsjTq+oXPGzkwJc4SusYvdvGyGHmOnx7MTXl73kZgTBYDi
         Odwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752263945; x=1752868745;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KggEA/YDHTi+B94iHR0d5HwR3sGfFH/eH/dYBbqHvU0=;
        b=R5Fx8hwgc+5DEj98Knj5nvKLthdMUupoJBrrnk/TBSXHKtK400jinmBPMsJgJPVLjM
         rxVYDga1MFJu+pTH24kg1fKwRyW9hNmMT8+hXQpOhn2eekRzFV3Pu9zY0LVFleSRnofj
         znMDgclJzw0cpkInWOueP/mxfb3lGJPZPcmlWRz3ql0TNxvtWVcwDc2gIlrourgUvrtx
         Su2tjMBCLR1qgxwS4PLW1ntJj8s7QzCM0fTfkjPxEBe0seIS2WIBxsHb4fPW1mQOSSfD
         TyUGYfGlmocSqrLYz+zJ6ottd8IZlAez8Qo2GW5Ggsl3lEoJeAcDuy1VZw5ALm16esQm
         +tXw==
X-Forwarded-Encrypted: i=1; AJvYcCU5gpkAic/L2U6OwO3mdC1DMVsYOqpr+rbBaI0JkR4KKZzc6LaoAikqwUXOQsm3Wk4o+VNGwGd4XGsN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzxx+fvHGSWEX+sXjFGHFjRIVIw1h1MYmtoSXyrr9Lmq6x5JgoF
	uuTgkHGxQExyneU8ICcws/vEe70YMQ3RnAnF5FwiQfaGjIj4BrGb72VmcFVEHJNK4yM=
X-Gm-Gg: ASbGncsVG9Q5LORMlJph6ahK3u4iG93SyLBkJGEn5MSHl7a3BX0OGc3inIKsgMcwaLS
	5xL2nBnprm3kxNWwMeqFVccSw+qyVg1brIC0ANjopzZdSsNgWx4OmGnIMzxpDxgUuQiuawE6eYs
	evaZQJAYjOsg7tiPzrgze/794+acDQ0UKouz2w+RjLnqiFagL6rlLPtFXktFWla5SwbFmPK1zJB
	/YMuZ7G441RPO6KbJo6hRFlgl9jupeGznkZ/MHD2ny+/eqzNJghO+1dtX6GOghWVnAIXaHIxCcx
	fizwm4xjhxHaZDKXXXIC701t5Qsd5SdEkLep1jD5SAleS/apmdKfpri5A2IhCXhqdlFqw/SURHQ
	Ny3mFlu4k9XwyX6IWFLU7+cCkUC8=
X-Google-Smtp-Source: AGHT+IEMN28GIL2fj0mSdcwNMNRsi58DvX91WQKhdFH3bBY+HPq8y10Ik8GGOtDgnbxn+L/FmEEnxg==
X-Received: by 2002:a05:620a:6590:b0:7e0:892b:e447 with SMTP id af79cd13be357-7e0892bec92mr129076085a.22.1752263944593;
        Fri, 11 Jul 2025 12:59:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b699::5ac? ([2606:6d00:17:b699::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7dcde80650asm252765185a.90.2025.07.11.12.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 12:59:03 -0700 (PDT)
Message-ID: <9f4a00b3a0b6491b1f50c878cb18569009a4441e.camel@ndufresne.ca>
Subject: Re: [PATCH 5/8] media: uapi: HEVC: Add v4l2_ctrl_hevc_ext_sps_rps
 control
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel	 <sebastian.reichel@collabora.com>, Cristian Ciocaltea	
 <cristian.ciocaltea@collabora.com>, Alexey Charkov <alchark@gmail.com>, 
 Dragan Simic <dsimic@manjaro.org>, Jianfeng Liu
 <liujianfeng1994@gmail.com>, Nicolas Frattaroli	
 <nicolas.frattaroli@collabora.com>, Kever Yang <kever.yang@rock-chips.com>,
  Andy Yan <andy.yan@rock-chips.com>, Frank Wang
 <frank.wang@rock-chips.com>, 	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-rockchip@lists.infradead.org,
 Ezequiel Garcia	 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Hans Verkuil <hverkuil@xs4all.nl>, Ricardo Ribalda
 <ribalda@chromium.org>, Hans de Goede <hansg@kernel.org>,  Yunke Cao
 <yunkec@google.com>, linux-media@vger.kernel.org, kernel@collabora.com
Date: Fri, 11 Jul 2025 15:59:01 -0400
In-Reply-To: <20250623160722.55938-6-detlev.casanova@collabora.com>
References: <20250623160722.55938-1-detlev.casanova@collabora.com>
	 <20250623160722.55938-6-detlev.casanova@collabora.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0MU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT6ImQQTFg
 oAQQIbAwULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgBYhBO8NUoEVxMPCGgRvEtlBlFEpYHL0BQJ
 oLLLGBQkJZfd1AAoJENlBlFEpYHL0BEkA/3qkWYt99myYFSmTJUF8UB/7OroEm3vr1HRqXeQe9Qp2
 AP0bsoAe6KjEPa/pJfuJ2khrOPPHxvyt/PBNbI5BYcIABLQnTmljb2xhcyBEdWZyZXNuZSA8bmljb
 2xhc0BuZHVmcmVzbmUuY2E+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQ
 TvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyy+AUJCWX3dQAKCRDZQZRRKWBy9FJ5AQCNy8SX8DpHbLa
 cy58vgDwyIpB89mok9eWGGejY9mqpRwEAhHzs+/n5xlVlM3bqy1yHnAzJqVwqBE1D0jG0a9V6VQI=
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-QFZNUyCQD9CH6UQ+5gcH"
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-QFZNUyCQD9CH6UQ+5gcH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le lundi 23 juin 2025 =C3=A0 12:07 -0400, Detlev Casanova a =C3=A9crit=C2=
=A0:
> Some hardware (e.g.: Rockchip's rk3588 hevc decoder) need the parsed
> long and short term reference information for HEVC decoding.
>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
> =C2=A0.../media/v4l/ext-ctrls-codec-stateless.rst=C2=A0=C2=A0 | 73 ++++++=
+++++++++++++
> =C2=A0.../media/v4l/vidioc-queryctrl.rst=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 6 ++
> =C2=A02 files changed, 79 insertions(+)
>=20
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-statel=
ess.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.r=
st
> index 0da635691fdcb..745f38a8fe69c 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
> @@ -2958,6 +2958,79 @@ This structure contains all loop filter related pa=
rameters. See sections
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - 0x00000004
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -
> =C2=A0
> +.. c:type:: v4l2_ctrl_hevc_ext_sps_rps
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_ctrl_hevc_ext_sps_rps
> +=C2=A0=C2=A0=C2=A0 :header-rows:=C2=A0 0
> +=C2=A0=C2=A0=C2=A0 :stub-columns: 0
> +=C2=A0=C2=A0=C2=A0 :widths:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 1 2


Something, somewhere should say this is an array.

> +
> +=C2=A0=C2=A0=C2=A0 * - __u16
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``lt_ref_pic_poc_lsb_sps``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Long term reference picture order count=
 as described in section 7.4.3.2.1
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "General sequence parameter s=
et RBSP semantics" of the specification.

Each LONG term reference have one of these.

> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``delta_idx_minus1``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies the delta compare to the inde=
x. See details in section 7.4.8 "Short-term
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reference picture set semanti=
cs" of the specification.


And each SHORT term have one of these. How can both be int he same control =
? For
me this could make a bit more sense with two structures:

	v4l2_ctrl_hevc_ext_sps_st_rps[]
	v4l2_ctrl_hevc_ext_sps_lt_rps[]

Did I miss something ?

> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``delta_rps_sign``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Sign of the delta as specified in secti=
on 7.4.8 "Short-term reference picture set
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 semantics" of the specificati=
on.
> +=C2=A0=C2=A0=C2=A0 * - __u16
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``abs_delta_rps_minus1``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Absolute delta RPS as specified in sect=
ion 7.4.8 "Short-term reference picture set
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 semantics" of the specificati=
on.
> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``num_negative_pics``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Number of short-term RPS entries that h=
ave picture order count values less than the
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 picture order count value of =
the current picture.
> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``num_positive_pics``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Number of short-term RPS entries that h=
ave picture order count values greater than the
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 picture order count value of =
the current picture.
> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``used_by_curr_pic_s0[16]``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies if short-term RPS i (that has=
 a negative POC) is used by the current picture.

Use bit field for that, a __u16 works, and one per ST.

>=20
> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``used_by_curr_pic_s1[16]``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies if short-term RPS i (that has=
 a positive POC) is used by the current picture.
>=20

Same.

> +=C2=A0=C2=A0=C2=A0 * - __s32
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``delta_poc_s0[16]``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies the negative picture order co=
unt delta for the i-th entry in the short-term RPS.
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 See details in section 7.4.8 =
"Short-term reference picture set semantics" of the
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 specification.

Keep it delta_poc_s0_minus1 like int he spec, and then you can go back so u=
16.

> +=C2=A0=C2=A0=C2=A0 * - __s32
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``delta_poc_s1[16]``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies the positive picture order co=
unt delta for the i-th entry in the short-term RPS.
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 See details in section 7.4.8 =
"Short-term reference picture set semantics" of the
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 specification.

Same.


regards,
Nicolas

> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``flags``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - See :ref:`Extended RPS Flags <hevc_ext_=
sps_rps_flags>`
> +
> +.. _hevc_ext_sps_rps_flags:
> +
> +``Extended SPS RPS Flags``
> +
> +.. cssclass:: longtable
> +
> +.. flat-table::
> +=C2=A0=C2=A0=C2=A0 :header-rows:=C2=A0 0
> +=C2=A0=C2=A0=C2=A0 :stub-columns: 0
> +=C2=A0=C2=A0=C2=A0 :widths:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 1 2
> +
> +=C2=A0=C2=A0=C2=A0 * - ``V4L2_HEVC_EXT_SPS_RPS_FLAG_USED_LT``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - 0x00000001
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies if the long-term reference pi=
cture is used 7.4.3.2.1 "General sequence parameter
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 set RBSP semantics" of the sp=
ecification.
> +=C2=A0=C2=A0=C2=A0 * - ``V4L2_HEVC_EXT_SPS_RPS_FLAG_INTER_REF_PIC_SET_PR=
ED``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - 0x00000002
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies if the short-term RPS is pred=
icted from another short term RPS. See details in
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 section 7.4.8 "Short-term ref=
erence picture set semantics" of the specification.
> +
> =C2=A0.. _v4l2-codec-stateless-av1:
> =C2=A0
> =C2=A0``V4L2_CID_STATELESS_AV1_SEQUENCE (struct)``
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b=
/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> index 3549417c7febb..dc7caf4bf6208 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> @@ -523,6 +523,12 @@ See also the examples in :ref:`control`.
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - A struct :c:type:`v4l2_ctrl_hevc_d=
ecode_params`, containing HEVC
> =C2=A0	decoding parameters for stateless video decoders.
> +=C2=A0=C2=A0=C2=A0 * - ``V4L2_CTRL_TYPE_HEVC_EXT_SPS_RPS``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - A struct :c:type:`v4l2_ctrl_hevc_ext_sp=
s_rps`, containing HEVC
> +	extended RPS for stateless video decoders.
> =C2=A0=C2=A0=C2=A0=C2=A0 * - ``V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR``
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a

--=-QFZNUyCQD9CH6UQ+5gcH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHQEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaHFtBQAKCRDZQZRRKWBy
9ISzAPidxCwdhetQDnozQ9rkv6zHmwuNG2/63/iuwoWBzkyQAQD7SLIPvi5xterW
wf+MjUZIrzLCUQ4C8voHcQLpGbHPCA==
=sK20
-----END PGP SIGNATURE-----

--=-QFZNUyCQD9CH6UQ+5gcH--

