Return-Path: <devicetree+bounces-215986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D2294B535B1
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:37:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B14D188FBD2
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A41CB340D94;
	Thu, 11 Sep 2025 14:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elWTtEGL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0E1340D8D
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757601303; cv=none; b=T51A/zFbG3FqJdA8zLGI+4J+Ch8RK96jpsPcs/OjFWbqrZdrl7eaN3AIhfkEeKYurc9ulFGa0ClOoJFYIaph6YwAlKNA524n7LrAxIyPdPuXaFQn2xkJzfT0k2hlUeeMW4tmK8ZhdaTVRJ5huYFhk3Ds+HlZCJvSfasSL2Vi2n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757601303; c=relaxed/simple;
	bh=iMzG/CcCx26y1q8q6NfIgg2DJd4ZzyOhYMQx+nPRPdk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n+Y5hJZpK+Da7kK+wS9kfcLc2ZZqEX/D++thog5zv3sOo7LXO3+lYq4iFGSa+Q60+yLyR16MAhu3E4NPfWH+4qtAtaKhhK5M0iFwi10PJ1oQ2WEiX7+UfMAS0FvGQc2tTD5gxPmcPNuNb6FXSDHDuhKftPlkM9E2SDUgNp5Mb3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elWTtEGL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45B87C4AF0C
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757601303;
	bh=iMzG/CcCx26y1q8q6NfIgg2DJd4ZzyOhYMQx+nPRPdk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=elWTtEGLKCFSA0mAuhlGu1JsH4ySSxJspVrY0wylJg7+mJqTEU0zyrDquuBXVr8rs
	 UMDJWvN0a7ItJM0eWVODYFWbTsYtLn/PkVGxCXX6hHMmPGYUuWT11ckHpXgaOBrDZW
	 4dKDew8GAd1kGYeX8DYaF+g0pmATd9txmFUDhtwuisQUWLYDTxwEwhibwIprSCfGQb
	 lv9uUqLrom1nHjY6hoqx10XwMhy56LkJy6l/Nid94uqc7WjBtnY2lv0tBgiMsryD5X
	 FER6maMx4RUszXVZL+IbhZz8g4PWPLH5IPx9p8+Gv3i4Dns4MuCBuBBT5qBIYvoTkg
	 Y3lZLVsgJxaKA==
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-74be52f5447so328522a34.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:35:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXfL7o2EXQAVWcrF1SBtoMqYvb/UKLhwzu321g2r8197oI1NmgD1v+EaSHz2nEAuLpHwQAd9YYkfxRG@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ0pVR2vcJ6iWKVn2HiWw4gt9bLRf0h3MK3cfZdm39703P46qt
	wtnb3c8P0HO1IIYMRfD0luEsHTpREUuL5uVbUj/2Q9Q6xQYlh4iQjVbuJs/N01QTyET0KQZvuSI
	gL7e6hfsNl/yewhN961caXPgNinLs2as=
X-Google-Smtp-Source: AGHT+IHZtMxmT3PKgW8D45lfWGnvf8MtlK2OFbaUSrlrTQcqC99Lr9xsF9v4OlRKqo88j8vwstkoCjm/HxMq/v+c42g=
X-Received: by 2002:a05:6808:80ad:b0:438:2878:1c2e with SMTP id
 5614622812f47-43b29bc84d0mr9374771b6e.2.1757601302526; Thu, 11 Sep 2025
 07:35:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908053335.36685-1-xu.yang_2@nxp.com> <20250908053335.36685-4-xu.yang_2@nxp.com>
 <CAGTfZH1Mt3cYenBSHG9Uz0j6pr0Na_E6aPfrn7pKV0ah22k+WA@mail.gmail.com>
In-Reply-To: <CAGTfZH1Mt3cYenBSHG9Uz0j6pr0Na_E6aPfrn7pKV0ah22k+WA@mail.gmail.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Thu, 11 Sep 2025 23:34:24 +0900
X-Gmail-Original-Message-ID: <CAGTfZH17AwgMYahVpETFDZ-BdbAfsTg=DYzkwwJbjsE5BHUhMw@mail.gmail.com>
X-Gm-Features: Ac12FXzuclEtHheGbC8RwWOAxTMOnid_pYpLhgtobYy2CmNHbCNEM8PoKb7BcIY
Message-ID: <CAGTfZH17AwgMYahVpETFDZ-BdbAfsTg=DYzkwwJbjsE5BHUhMw@mail.gmail.com>
Subject: Re: [RESEND v4 4/4] extcon: ptn5150: Support USB role switch via
 connector fwnode
To: Xu Yang <xu.yang_2@nxp.com>
Cc: krzk@kernel.org, myungjoo.ham@samsung.com, cw00.choi@samsung.com, 
	robh@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org, 
	swboyd@chromium.org, heikki.krogerus@linux.intel.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	jun.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

In order to prevent build error, I dropped the patch from extcon.git
and reply Ack for this patch.

Thanks.

On Wed, Sep 10, 2025 at 12:34=E2=80=AFAM Chanwoo Choi <chanwoo@kernel.org> =
wrote:
>
> Hi,
>
> Applied it. Thanks.
>
> On Mon, Sep 8, 2025 at 2:34=E2=80=AFPM Xu Yang <xu.yang_2@nxp.com> wrote:
> >
> > Since the PTN5150 is a Type-C chip, it's common to describe related
> > properties under the connector node. To align with this, the port
> > node will be located under the connector node in the future.
> >
> > To support this layout, retrieve the USB role switch using the
> > connector's fwnode. For compatibility with existing device trees,
> > keep the usb_role_switch_get() function.
> >
> > Reviewed-by: Frank Li <Frank.Li@nxp.com>
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> >
> > ---
> > Changes in v4:
> >  - add Rb tag
> > Changes in v3:
> >  - no changes
> > Changes in v2:
> >  - improve commit message
> > ---
> >  drivers/extcon/extcon-ptn5150.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/extcon/extcon-ptn5150.c b/drivers/extcon/extcon-pt=
n5150.c
> > index 768428d306ce..f33f80e103c2 100644
> > --- a/drivers/extcon/extcon-ptn5150.c
> > +++ b/drivers/extcon/extcon-ptn5150.c
> > @@ -352,6 +352,8 @@ static int ptn5150_i2c_probe(struct i2c_client *i2c=
)
> >         }
> >
> >         info->role_sw =3D usb_role_switch_get(info->dev);
> > +       if (!info->role_sw && connector)
> > +               info->role_sw =3D fwnode_usb_role_switch_get(connector)=
;
> >         if (IS_ERR(info->role_sw))
> >                 return dev_err_probe(info->dev, PTR_ERR(info->role_sw),
> >                                      "failed to get role switch\n");
> > --
> > 2.34.1
> >
> >
>
>
> --
> Best Regards,
> Chanwoo Choi
> Samsung Electronics



--=20
Best Regards,
Chanwoo Choi
Samsung Electronics

