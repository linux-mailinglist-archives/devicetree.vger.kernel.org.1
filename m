Return-Path: <devicetree+bounces-237208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AC5C4E252
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:38:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DA6423445A2
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1268B33ADB0;
	Tue, 11 Nov 2025 13:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jruR+34z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0B632471F
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 13:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762868310; cv=none; b=EUzh2oGH+bSVNswyouuIkENodIKwXVBKZvnwDyyw/2qeVQavMyhgFvMpjiyHaZgw2u2QfKGYzz3mWvezCBP2zeK/Xdv8UcxKe02tQNks4d/Iy+kSHsxf8Jq9ceII4d0CRZ7IbLybUGcSwTUlF4U9FxqUN20zbPs7Mr9htkQXE7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762868310; c=relaxed/simple;
	bh=9+8RKp3wpw269ST0pV/o23oBCV2SjRSEAo7Ju4JeE2I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VINIuZl9lrtlvlP8sy6K3RVDArm69hIGq+DmkviMxBbwT1RNHNondAsL6B6EqsINYQXi6BojggCKVU6cunC/Edg2LKkWDxFRx48nyaUaj5rBVdG81WmdfcS6VCDZslv0uw90ulEXn09W9hLvTLJ5ePI+Tq6DRK3GuDltxc2PVlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jruR+34z; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-429c8632fcbso2664458f8f.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762868307; x=1763473107; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qnh/EfFcC0OapeosDB3gm6ZI4b7oDHUMEpCiBaNixDQ=;
        b=jruR+34zAhhIRiwsoPh0IoK5V8sjOZ/5nWn1O8D38gdkstcgT2XWsgr3JBSSA+1sbb
         DMCspnhxoKNUoCfYDikjBbfjAk5VfCI34/MfJhRU/6ZUcGqZG+ByD4QvjhAAAHO1WRfX
         NxGZXe+C26/xkAcbJHnM8D4+WoOnrOk3HCQBiMlMvZHANM36A0r2l4kj9lTEPwUdwaj1
         Xs6eT+dGhVfsq/MiD+UKjv8dUYE+o4SB6fA9HGoubUfgWJmn7hF7F4ZY1t42AR9NUSuB
         u5n2GyrnHGXi60Tg4BAqZMcJvYZGnqyMiNqXUBEl0VvLU78Ecd+mShS5NWhHRWxgqRxl
         wUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762868307; x=1763473107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qnh/EfFcC0OapeosDB3gm6ZI4b7oDHUMEpCiBaNixDQ=;
        b=kE7E7NomGKMugUCYKDW6nz1w0FSUkTYysLt2LQIV1Iw2c2NRCf8+YiNwh62v9P2CVT
         gpFcSpvE3K3FKIclrTNj2ZqfFwPIzCy3FE/xhIqhRe8hOXrqZzfndWqewH9YUHN1Wvt8
         5eVxbbbOk0rxfimEMcM/cU41KTGz0V2/XZ/YHIZaON55Q6d80OqDFmu9bIzk7szGLDIj
         0am7YW2We2Pew8n/elGTsvi63EBDavtj+NxyhMsH3qmCpSa+ZVeUwE5G6DSXGW0iPpst
         7eEXC+5CIE5LZKji8BgFXXjaNaWXPQuW6kkvFMF3Pz8vz8XL44voOCqlrmRX489qg8EA
         ZyvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDjAzTm+LR2w1SFmmKltZ4l5SQy5ltk4htYojdm/JQGQXruzEDtiiyiTvbc1XTLOCpyuVQblMHGpka@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1lYB+5+dCr+sol7dMc7X1r0sEt5bPdr7tLoxxz9w8VZboEROJ
	N8c6jn1RV/1P2VLfWPMXcfoQ4ADMpFsmM3j0NWExoS/SkM3QqRg1hrnmRwzqAmP6Qukosz7BXwi
	EfCMzHruL6aymXZOzlfqOXOLycVLCcKc=
X-Gm-Gg: ASbGncvpm7ceL5bGdpe4e2ntl5SVT6XJV25KO7nyZ+kBA5OEAiEjmw8FpL4TDbs/fTf
	sPMmqrVA6v0NxbVPT7cGMcc3RLbEd3nFlpr82oQ1MPcF7YsiIMb4wLRkGNSN96oc3Jkq40ZW+hq
	4GyBLXAIZJJaAVxG44WAKQ9viUwNNzU81pCir322bftt/WiYWke81azlv3K2RnzzCLiHfWl5Qcm
	rhISzE+QrQGzDIBaeGKnMTkzsYeANSwbbnZrNEcuf6pyJXP+bWrPVyTez4yCA==
X-Google-Smtp-Source: AGHT+IFao47crFBXAEMryJc61/yylJAwMReb80upl39uZLXSP2IfrU0IRhz0HzfumpWstK5uhCcoN0mp9RwuTfUSerw=
X-Received: by 2002:a05:6000:22c5:b0:42b:3806:2bb4 with SMTP id
 ffacd0b85a97d-42b38062ee3mr8603188f8f.27.1762868306762; Tue, 11 Nov 2025
 05:38:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251103145629.21588-1-clamor95@gmail.com> <20251103145629.21588-3-clamor95@gmail.com>
 <aRMw_Qre1FY94soi@kekkonen.localdomain> <CAPVz0n1MokJq6d4s0cS3UdevRt2n-HaicPpwiBu=3HVSKfnzfg@mail.gmail.com>
 <aRM4x7SbdbxMYLCi@kekkonen.localdomain>
In-Reply-To: <aRM4x7SbdbxMYLCi@kekkonen.localdomain>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 11 Nov 2025 15:38:15 +0200
X-Gm-Features: AWmQ_bkmPJ4B9hg_v9slwZgU6JF6B0t9UvmnXNpUX7KozbO5YA-3mLRwPCTqEus
Message-ID: <CAPVz0n0zEmWrocqeFKHVdgegtwLKWZZ2xS5EYnT-rZtoTKxctA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] media: i2c: add Sony IMX111 CMOS camera sensor driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Hans de Goede <hansg@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, Dongcheng Yan <dongcheng.yan@intel.com>, 
	Heimir Thor Sverrisson <heimir.sverrisson@gmail.com>, Tarang Raval <tarang.raval@siliconsignals.io>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=82, 11 =D0=BB=D0=B8=D1=81=D1=82. 2025=E2=80=AF=D1=80. =D0=BE 15:2=
3 Sakari Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Tue, Nov 11, 2025 at 02:53:52PM +0200, Svyatoslav Ryhel wrote:
> > =D0=B2=D1=82, 11 =D0=BB=D0=B8=D1=81=D1=82. 2025=E2=80=AF=D1=80. =D0=BE =
14:50 Sakari Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
> > > I can make the two changes before applying, too, if that's ok.
> >
> > If you don't mind adjusting commit on your own before applying I have
> > no objections. Thank you very much!
>
> The diff is:
>
> diff --git a/drivers/media/i2c/imx111.c b/drivers/media/i2c/imx111.c
> index c269e9fdcb0b..8eb919788ef7 100644
> --- a/drivers/media/i2c/imx111.c
> +++ b/drivers/media/i2c/imx111.c
> @@ -1136,13 +1136,6 @@ static int imx111_set_format(struct v4l2_subdev *s=
d,
>
>         fmt =3D v4l2_subdev_state_get_format(state, format->pad);
>
> -       fmt->code =3D imx111_get_format_code(sensor, mbus_fmt->code, fals=
e);
> -       fmt->width =3D mode->width;
> -       fmt->height =3D mode->height;
> -       fmt->colorspace =3D V4L2_COLORSPACE_RAW;
> -
> -       *mbus_fmt =3D *fmt;
> -
>         if (format->which =3D=3D V4L2_SUBDEV_FORMAT_ACTIVE) {
>                 int ret;
>
> @@ -1183,6 +1176,13 @@ static int imx111_set_format(struct v4l2_subdev *s=
d,
>                         return ret;
>         }
>
> +       fmt->code =3D imx111_get_format_code(sensor, mbus_fmt->code, fals=
e);
> +       fmt->width =3D mode->width;
> +       fmt->height =3D mode->height;
> +       fmt->colorspace =3D V4L2_COLORSPACE_RAW;
> +
> +       *mbus_fmt =3D *fmt;
> +
>         return 0;
>  }
>
> @@ -1542,9 +1542,9 @@ static int imx111_probe(struct i2c_client *client)
>                 goto error_pm;
>         }
>
> -       pm_runtime_idle(dev);
>         pm_runtime_set_autosuspend_delay(dev, 1000);
>         pm_runtime_use_autosuspend(dev);
> +       pm_runtime_idle(dev);
>
>         return 0;
>
> Hopefully that works!
>

Yes, it seems to work as expected on my device. Thank you.

> --
> Regards,
>
> Sakari Ailus

