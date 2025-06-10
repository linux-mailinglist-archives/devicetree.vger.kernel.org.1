Return-Path: <devicetree+bounces-184266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E3EAD381D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:06:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59C889C06EC
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E182D321A;
	Tue, 10 Jun 2025 12:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JEHtCXEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAD32C17A0
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749560015; cv=none; b=ipEQ+36d3yqp3NdxNdrGHyky9eOQtUs+e7tsn5xxYoP5KWhT3CynhAmGBF6rBhBofS6i7SgZcteY+1G3f5h1U9eUcZvd0bxH5XhRDc1lNHA4EwqOSgUQBrQVZbQ0uOxmYqi4bCizazkxVzkhRMyFDCJv+qqKiJboz/uJFtoC0lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749560015; c=relaxed/simple;
	bh=BdEOtlwKT5cm8r2CwV8DPp+MGOvYNyQWEEliBnZf68w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mBQtdnfCN00lvQxYLq9WgKFbpDqSawIvv52Cvj2CXOUpDuo+BOmsOkiGhq8aJiT4rJpzZmvIaQo+Fo2GdE+dKfyMMPq/cND5SQng1g9qjpItPN6dVp3xcchQ19XmJMhiFUOyoxH5R080xS31BH7/+IlioO+e0lo6Wh7Ud+w1qa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JEHtCXEb; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ade750971f2so137831366b.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749560011; x=1750164811; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ua43JbNUP+RRPO3HRaTeqoeNTy0CSQSVsdia/VGFSEg=;
        b=JEHtCXEbzOuiQwxAWbrFgpoH1kg3gXqgolDuApgn/XttVi+ZBDshB2ZecwisSQl60R
         lBpk3PX0665VCIEILCp8SlNQO9vXMeNB/5tv8v+A9rDRe//eWBHHc3jvdKhNx/ls3tPN
         GCVDdq3z+VmSUG1eoI3RlMEzmPC6rgRkTNOQn2QMumqIiuKKBimCIG019Mr05uTUWc0O
         /8csdJqAfMLU+vz8YWZkHWo5pU21HUZJoHwTuf3Wwa/P523LGSuU2K7t3M7HS2nzu/Vc
         dZetiT3HSM/7Ip5nbjgwm4I/+pjFwUbU334vuR+x4kfBN2Q6CrAnNkp0S3G9VdyvmFKS
         MpoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749560011; x=1750164811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ua43JbNUP+RRPO3HRaTeqoeNTy0CSQSVsdia/VGFSEg=;
        b=tG/bQcwSFM3Wst6ML9/S7U6dsI50PvLrAumFrI3b8H5rFyG9M/q7Ar2Ws77Uu5x2hH
         cTYOQaWFotPKimRE9NJctjgfoWWGF4QKlB5tIu0duyJGKaApMQGwKsLBzJc2BJqz0o9B
         Tvj/Wfe8DYbcqjU3o55Jk6uSCcsTFL0pvUozXLTP5qnEcn+WdBzQ5t7WSQkBb+FjtYKV
         TLcXX9faYZKFbssBcSiR2Ulo0ZzIv0kWzlIb5iUWuIH4M716b4zlBC94GZ69/iwb4iMP
         GTNfS6Q46iHtc7Hxwr8Md77HF6FwI9X4se4RkeAtmbwzTxtKPLwW9xv6r5LqqLjyrXzQ
         IbYg==
X-Forwarded-Encrypted: i=1; AJvYcCVAXmPY8sXR6JU2lnt9dm47Iernw3jKlnMwjK3JIw/VyhhipPIbbG1vPO6fvdi4QaSreMC1TvOxW8D8@vger.kernel.org
X-Gm-Message-State: AOJu0YxqW/Ka+9r/R/dZKBSP793T8n4mU6XTifnyIPl6dg2olbV8rA7T
	zyMc/WY3FtjCq/YRnXd2ZbauGm/3q/NJs3GFBLVxz9NDg1lS2r4F2kKHCj8Bb/40QwUAkNL5ZuQ
	wrocmnoa71kCbXEhjmCUhgoGPiAi09bK0P0P5lDRVNA==
X-Gm-Gg: ASbGncuGgzRXUA45xvFeWy9ZXMsRjwIfI5Y/7PPDdH+ytkRdO6kT7p0+zjJRdW+fOU6
	XHvYhwjX5R6aUCj1Kyk/YGInjsgu31vg5QvpDv7quXUxQL/6uBg5NEuhed8udfDLHB8v1aP4upk
	0tycH42dEm/TP0nLjgcInxE4CmPG38g56CrEHa03+MJcud
X-Google-Smtp-Source: AGHT+IE0dnXtTd0cJKE4NbTH+mEK1zcSfNIzItd4LPIjOHRSwOojAZ1aIgIzoBnogv+j1Y6Xx9Qy218nbJLUy1UaMQg=
X-Received: by 2002:a17:907:94c8:b0:ad8:91e4:a91c with SMTP id
 a640c23a62f3a-ade1aab9825mr1680318466b.29.1749560011469; Tue, 10 Jun 2025
 05:53:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1746581751.git.zhoubinbin@loongson.cn> <704447268706b1b9f25bbe9d15459163d0ac3404.1746581751.git.zhoubinbin@loongson.cn>
 <CAPDyKFo4n=K5-SeKFpCm-0u4Bbk-E0XqUrx+KSK1yuZa35a7ug@mail.gmail.com> <CAMpQs4JCaUzJXgcQwiWOoJ0YAj=ORnyaK0dC3-GamV-cbyhNnA@mail.gmail.com>
In-Reply-To: <CAMpQs4JCaUzJXgcQwiWOoJ0YAj=ORnyaK0dC3-GamV-cbyhNnA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Jun 2025 14:52:52 +0200
X-Gm-Features: AX0GCFv5tUexuVjVKPNZfCscSU_1kpR3xlCvzeNqP1bE90dtiqOaTc7DD1DnFvo
Message-ID: <CAPDyKFo5BjZsst=vXhU8Rv2HN-Ewy8vwnyFkZdo1-XCXX0_wsA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] mmc: loongson2: Add Loongson-2K2000 SD/SDIO/eMMC
 controller driver
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 3 Jun 2025 at 14:54, Binbin Zhou <zhoubb.aaron@gmail.com> wrote:
>
> Hi Ulf:
>
> Sorry for the late reply.
>
> On Mon, May 19, 2025 at 7:17=E2=80=AFPM Ulf Hansson <ulf.hansson@linaro.o=
rg> wrote:
> >
> > On Wed, 7 May 2025 at 09:28, Binbin Zhou <zhoubinbin@loongson.cn> wrote=
:
> > >
> > > This patch describes the two MMC controllers of the Loongson-2K2000 S=
oC,
> > > one providing an eMMC interface and the other exporting an SD/SDIO
> > > interface.
> > >
> > > Compared to the Loongson-2K1000's MMC controllers, their internals ar=
e
> > > similar, except that we use an internally exclusive DMA engine instea=
d of
> > > an externally shared APBDMA engine.
> > >
> > > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> >
> > [...]
> >
> > > +
> > > +static void ls2k2000_mmc_fix_cmd_interrupt(struct loongson2_mmc_host=
 *host,
> > > +                                          struct mmc_command *cmd)
> > > +{
> > > +       int val;
> > > +
> > > +       if (cmd->opcode !=3D MMC_WRITE_BLOCK && cmd->opcode !=3D MMC_=
WRITE_MULTIPLE_BLOCK)
> > > +               return;
> > > +
> > > +       regmap_read_poll_timeout(host->regmap, LOONGSON2_MMC_REG_FSTS=
, val,
> > > +                                (val & LOONGSON2_MMC_FSTS_TXFULL), 0=
, 500);
> >
> > Can you please elaborate on what goes on here?
>
> This is a controller hardware issue. We need to wait until the Tx FIFO
> full flag is set before sending the write command. Otherwise, a data
> timeout will occur.

Okay, thanks for clarifying. Please add a comment in the code about
this as I think it useful to know.

Moreover, I think we should have the value of the timeout specified in a de=
fine.

[...]

Kind regards
Uffe

