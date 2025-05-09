Return-Path: <devicetree+bounces-175677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE004AB176E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 16:30:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2ED967B2352
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 14:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60290221DA6;
	Fri,  9 May 2025 14:30:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF37F221D8B
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 14:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746801010; cv=none; b=rCE+gRFK1o4SrSCcDH7DTM5BLXto0a1aeywhw/BfvTqtzV+LF4MOb8+9QeCWhVhrDNCsCGID5/Vqyh+iJTpcswnSRe/+0ISmo25bxXWuyRWoyW/ifYI76jV0gvTLNh7n13VYE1Cx/BE7JNSYkqCuqy0jrEDWgzCZGbpcSGtuTKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746801010; c=relaxed/simple;
	bh=vNvlyezxHft2rpglSMwbSxfJSSvIPWQDrGafo6IrV2A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=StOXo+hAOx0pbZb9oBJCnT4UczsnI2iJn4y+6OWAJleFddNoNc5UywVFWzRiUcEKSUhuKQ3f5fvbNxUqLAgNMf2nzeJG32LH786nIaQm4MgNqXqvX5dZRGeiFBOoe3g1bZ3ZMZbn07Y5cNUje7YHNEZS+lXSWMCuKLNzbb4PRwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54e7967cf67so2668462e87.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 07:30:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746801006; x=1747405806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L6HNDVpBlroLh+j3E6orAQRVPy/hUZu10Ujgmb+3j10=;
        b=vz7H8KGMZF2a6DDw4h7uR0/vm6WgMDsL+5uD28hqRYlb4JEViHwFL47RMwxzLwYoMO
         AvmlVXN5JIr25rqmHPPwlzVAJ7ueUE3iWYdL9hudz8Zasx6+Y5KoBW/2WTccwrqDMo5P
         Yrm0yJxIcvWjldrx56E0A2kGOT9zC4Llk8I1xufWvHHrDvjdWdfrIai7YDmLVU9KqNMK
         fh0hRDWWgVCpZhZvWsPrHYecqJznMNCD/L35K6q9ibsv9P886dDrnVRoYMzNDfbVqKhK
         geY93fBF/9UvSEm4tqLmO2s3g+b/Jab1L18PbRz7qg7MIo+1Xv+KW4WsRLtBuchhMQsF
         ouIw==
X-Forwarded-Encrypted: i=1; AJvYcCVIC5Dm1g6oFwYgLikNFxSJrVu/c5psbHxnNZYPkyawUHX2Fvpxzyw98YvmjXynTWQCrpEOtcNhrKF0@vger.kernel.org
X-Gm-Message-State: AOJu0YwoUwntAJbFppcS1MQgNJSHsBpE3ptQCf2uWmmRTg3gucokBM1O
	C9Tx2pRDLvpF8ykGEr6P9U7L0DpM+04PtdW0F7X9oQhlXSkaJO+VsJdBy5Df
X-Gm-Gg: ASbGncuJ0n9bGMG+yj7QHSbT+XVwKzbW/vc2ltXXE/S1Kh2lMfJ+FLKNaEHSZZAYhYb
	r3CZKtAxkSxJA9OQt3Hulf3O708m/KM7DCIzuUkh61eCXjrmvNLjZ7FzMXQeFRqv6vi9zft+kxV
	BAeOH8wFP3ki3Ng4T5fXcTCkvb37WjWV/979SrgSYDdhqSKDwbmhKLi1LrWMf38ovZT/mmwrk9m
	iY6l/ywbQyErXOLGLax0CxWih15VxFBqkB8QDjfOX+oOlXp0PVO+3UN55qAFr8dzzQAVUB+R8FB
	k/Eoec1XNXbMuZM7rRkcszfxwwSGBKe5QqXEBBKkEkVinHs+BNdu5YG8zcHrTn2UpRVHahIwPw=
	=
X-Google-Smtp-Source: AGHT+IEknHDU5iTQXKAdo+UgTrioltynbw5qVRXePLHsmg6YrKsHtAmFtAOFPdnPha7h/f2EFLzrsw==
X-Received: by 2002:a05:651c:154b:b0:30b:ee44:b692 with SMTP id 38308e7fff4ca-326c468068dmr21869051fa.33.1746801005567;
        Fri, 09 May 2025 07:30:05 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-326c33c21f4sm2696111fa.54.2025.05.09.07.30.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 07:30:04 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30ddad694c1so23814941fa.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 07:30:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXHqjq8qpVFJeNn1QX2ho7bXymCQDJAyXPSaNn6G/9/NU75LOdxD4mxVrueBsxicYgJKITwX/FR6RDe@vger.kernel.org
X-Received: by 2002:a2e:a542:0:b0:30b:f15f:1c02 with SMTP id
 38308e7fff4ca-326c45a7873mr15824391fa.18.1746801002903; Fri, 09 May 2025
 07:30:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250507201943.330111-1-macroalpha82@gmail.com>
 <20250507201943.330111-3-macroalpha82@gmail.com> <20250509151448.3191a3d8@donnerap.manchester.arm.com>
In-Reply-To: <20250509151448.3191a3d8@donnerap.manchester.arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 9 May 2025 23:29:50 +0900
X-Gmail-Original-Message-ID: <CAGb2v65ZhA3_pdgbq9aVdy-0rQcTNfrHoE_AvJxOvin0a6tnMA@mail.gmail.com>
X-Gm-Features: AX0GCFvJ_vLbDqqJ-IqQuPGDdkvp9YHoqLCtAkJwkmoZo8ZiJNtlDsE7n8dATBw
Message-ID: <CAGb2v65ZhA3_pdgbq9aVdy-0rQcTNfrHoE_AvJxOvin0a6tnMA@mail.gmail.com>
Subject: Re: [PATCH V9 02/24] clk: sunxi-ng: h616: Add LVDS reset for LCD TCON
To: Andre Przywara <andre.przywara@arm.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	ryan@testtoast.com, macromorgan@hotmail.com, p.zabel@pengutronix.de, 
	tzimmermann@suse.de, maarten.lankhorst@linux.intel.com, simona@ffwll.ch, 
	airlied@gmail.com, mripard@kernel.org, samuel@sholland.org, 
	jernej.skrabec@gmail.com, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 9, 2025 at 11:14=E2=80=AFPM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> On Wed,  7 May 2025 15:19:21 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:
>
> Hi,
>
> despite the slightly ill fate of this series, I was wondering if we could
> get the non-controversial clock parts for instance already merged, to
> reduce the number of patches and mitigate the churn with dependencies?

Sure. Are we expecting any of the DT bits to go in this cycle?
If not I won't have to split the DT header patch on a separate
branch.

ChenYu

> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > Add the required LVDS reset for the LCD TCON. Note that while this
> > reset is exposed for the T507, H616, and H700 only the H700 has
> > an LCD controller.
> >
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Ryan Walklin <ryan@testtoast.com>
>
> Matches the T507 manual:
>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
>
> Cheers,
> Andre
>
> > ---
> >  drivers/clk/sunxi-ng/ccu-sun50i-h616.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h616.c b/drivers/clk/sunxi=
-ng/ccu-sun50i-h616.c
> > index daa462c7d477..955c614830fa 100644
> > --- a/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
> > +++ b/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
> > @@ -1094,6 +1094,7 @@ static const struct ccu_reset_map sun50i_h616_ccu=
_resets[] =3D {
> >       [RST_BUS_TCON_LCD1]     =3D { 0xb7c, BIT(17) },
> >       [RST_BUS_TCON_TV0]      =3D { 0xb9c, BIT(16) },
> >       [RST_BUS_TCON_TV1]      =3D { 0xb9c, BIT(17) },
> > +     [RST_BUS_LVDS]          =3D { 0xbac, BIT(16) },
> >       [RST_BUS_TVE_TOP]       =3D { 0xbbc, BIT(16) },
> >       [RST_BUS_TVE0]          =3D { 0xbbc, BIT(17) },
> >       [RST_BUS_HDCP]          =3D { 0xc4c, BIT(16) },
>
>

