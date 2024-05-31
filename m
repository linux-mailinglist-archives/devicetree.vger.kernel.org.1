Return-Path: <devicetree+bounces-71286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB918D6406
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:07:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26A4028F4B3
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD6615B56F;
	Fri, 31 May 2024 14:07:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1568155C8E
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 14:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717164431; cv=none; b=WPfvbOPvHCuDeHCEDX7aUn9cgr36GJrBYfSXCf2gu1CS6kOkKFgLDzXsYNAR/BVEMvSw/ZKazla6tdjzyGCXAmlYPdcYK2pfhSIhM9+ez2Tdo3Iu3y31yYVvF2CBhNz6OzF4h1rA2MRTI64LddMiyno9Oq/lCuc1lqe84G85AvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717164431; c=relaxed/simple;
	bh=nmQunsmMFS02mUlNb8KHP4yW+f4xqiulwrxpcWvk6ic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bjtCwqOJU5jZjzcGVvDyrnENhFoAdrdHctTGdBGtQXeoMbhrDxoyeC+Mtj0nwdBtz6JYIIBvxHSkikDDs2XnGQ+UKnshap7m6cV/KnzX9OCSJQQ67DJqdT64GWIZ1SSec0Fy5zwMvlF6Za6dQ87gdWS0ZijSOXmaH/HzyEmqQno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-24c9f628e71so1022557fac.1
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 07:07:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717164428; x=1717769228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iwxLIMOSVfVH18gNtUlAA3J4KhcKzcU9VrmhJb1/aCc=;
        b=hJ4aVmpM9zxErEZpW5ep5LNSPiKH+O9Ekn4rV9BnH/W2zb8FXv06B+UOoedCcOzokX
         TfNaslLtQEu6DFnftsjo38vWR/61gRw3edO6thFel0OednFob92UDoOdvezpqjQKLTfH
         d8bOpXtb97Ck9uJIUtPoBbQDBiYCsIjxqrtYdJJgcQCuh/5WETMctB63EnjkzDr0LjRc
         EFTMMOFMGLeWtY59+nD48gxNaoJKLvxDPOAWvpOGRxT8bvC/7x+Nbb0MBWgoNebRTvmf
         Q4S6A57BQZZHN2dqpeqVhabUt5uR1XFWmZrIXi/RS+dFqmQox8Aj/V0mzj0sCQlnrF2F
         KHqA==
X-Forwarded-Encrypted: i=1; AJvYcCUoGVYWCfLHvRUggXS76WmnM8bp0qPL7I4p03p96DZNGfeUAQCfN9Y5eu2g1alKBZnnCOpYVAn19BFoCJh5DMkhfPbUgV7jphUZvA==
X-Gm-Message-State: AOJu0Ywe3FKgdH3ep6AGKhwrmp3cjhME6fbXxmkuK8IFPLljn0rGaNLL
	hxTr/iSwx5dpHDmPBb1gP5yeNyKvgRgASmynRj4fSGiiWeWdUQt7ricPDZ6t
X-Google-Smtp-Source: AGHT+IF7P2WulC5Iao01GkJsVioBm7Lp3RbMjqbFH2dMFLOTvI/4yZQGp63U3Y7Mpq5WnsIavbPQ1w==
X-Received: by 2002:a05:6870:219e:b0:22e:8408:a98f with SMTP id 586e51a60fabf-2508bbd8fa6mr1896581fac.36.1717164428173;
        Fri, 31 May 2024 07:07:08 -0700 (PDT)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com. [209.85.161.49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-250853c0674sm533371fac.53.2024.05.31.07.07.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 07:07:07 -0700 (PDT)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5b9776123a3so1036302eaf.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 07:07:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWik+prD49pWbZp889aFiPVM5g0Cub7Z01q5BySH8fExD+quGUrEcBOYh9bEIqnXGnrpVNS4Kg5VwMZ4Sk8gjAi9W5iRHOjEP/x3Q==
X-Received: by 2002:a05:6359:4d09:b0:199:42c8:389b with SMTP id
 e5c5f4694b2df-19b48d7f45amr236697155d.11.1717164427122; Fri, 31 May 2024
 07:07:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <a770cb5acb708e6d65570a4037a376321c9e8bb0.1716977322.git.geert+renesas@glider.be>
 <CAL_JsqLL3g4+nfu2NmC0drR-m5u287EBvK9jbY43XC=bSSVSpQ@mail.gmail.com>
 <CAMuHMdWxxDu-V_drs+dMdycQHY_+v0sPH7bVO_2-ixGWQkdTjg@mail.gmail.com> <CAL_JsqL7Vc2T1-JMf7bFAedmz4NYTD3Efm0z_-xdd7JF+xKmQA@mail.gmail.com>
In-Reply-To: <CAL_JsqL7Vc2T1-JMf7bFAedmz4NYTD3Efm0z_-xdd7JF+xKmQA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 31 May 2024 16:06:54 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV5q8cSz+SOry1ZJjMhTxhkb0ABNDFgCDySpKPijJjpcw@mail.gmail.com>
Message-ID: <CAMuHMdV5q8cSz+SOry1ZJjMhTxhkb0ABNDFgCDySpKPijJjpcw@mail.gmail.com>
Subject: Re: [PATCH v2] fdtoverlay: Remove bogus type info from help text
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Fri, May 31, 2024 at 3:43=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
> On Thu, May 30, 2024 at 8:32=E2=80=AFAM Geert Uytterhoeven <geert@linux-m=
68k.org> wrote:
> > On Thu, May 30, 2024 at 2:31=E2=80=AFPM Rob Herring <robh@kernel.org> w=
rote:
> > > On Wed, May 29, 2024 at 5:11=E2=80=AFAM Geert Uytterhoeven
> > > <geert+renesas@glider.be> wrote:
> > > >
> > > > "fdtoverlay -h" shows a.o.:
> > > >
> > > >     <type>      s=3Dstring, i=3Dint, u=3Dunsigned, x=3Dhex
> > > >             Optional modifier prefix:
> > > >                     hh or b=3Dbyte, h=3D2 byte, l=3D4 byte (default=
)
> > > >
> > > > However, unlike fdtget and fdtput, fdtoverlay does not support the
> > > > "-t"/"--type" option.
> > > >
> > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > ---
> > > > Upstream dtc has Uwe's commit 2cdf93a6d402a161 ("fdtoverlay: Fix us=
age
> > > > string to not mention "<type>"").
> > >
> > > So you want me to sync upstream? That's how upstream commits get into
> > > the kernel. I don't take patches (unless there's some urgent
> > > breakage).
> >
> > If that's the policy, then yes please ;-)
>
> With current dtc main branch, I get these errors:
>
> Failed to apply
> 'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
> FDT_ERR_NOTFOUND

Interesting...

Do you know what's the problem?
Are these the only ones failing?

Thanks!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

