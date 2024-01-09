Return-Path: <devicetree+bounces-30565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A5B82838C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 10:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 375FDB22B5A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 09:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AF42358AD;
	Tue,  9 Jan 2024 09:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JrZoMEKK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E566035890
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 09:57:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AFCAC433B2
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 09:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704794239;
	bh=lGD1VYSzbIozqojany1B4nD1TW6DSBEyoIz78q9RggE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=JrZoMEKK8+l2qLtIOhnKVymf5TvaXsyddXjl0BqIUn4lKuB60li6q3/vZYSILe7hm
	 mhN9x1m1FmT+UqnyTCDTHgOFbMotI0tGblgD7y5nMYbsxp6QQ28DSCCcGmPQsIaXUl
	 cr8oOie9bCtmHIah52CRNfovy/zs/oS3a4Q/otX+rKkYMKIl/1Ct9wAE6NByIFCtaz
	 w2BBu+qP20eSOED/uS9hMOAQEVTKtPMjj7kvfvjgWbmMToRA0Tp/DYQSXBSb152vGu
	 q6aTRsOtADhJDeXDezrigWWgDVM9ZgDTls4YQUjdersbe5bBjg+MRephzQdYR7DkZg
	 CFfnOpiSRvEBw==
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a28b0207c1dso214542766b.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 01:57:19 -0800 (PST)
X-Gm-Message-State: AOJu0YxnE+LuzxI0JaNHOhYqWcjnul85Hz4L49kjY0SJZaZDNxUgQw+/
	h6xX6zr4zwFrdmGhIHLZ9UQk1/R7Cq+rXilK/Wg=
X-Google-Smtp-Source: AGHT+IFjzBbYMXlJmOGzMy4q0IGkJetOZTUPve3851vC8/cUqEgYgSBBS7Mm3kCQ00usLht8PY0orBAK6cYPFvxmk9M=
X-Received: by 2002:a17:906:1ce:b0:a28:c16a:f18a with SMTP id
 14-20020a17090601ce00b00a28c16af18amr463673ejj.5.1704794238062; Tue, 09 Jan
 2024 01:57:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1703229766.git.zhoubinbin@loongson.cn> <20231222-support-relieve-5d8f25292b40@spud>
 <CAMpQs4+Uwu=j56Qa_V211_hC+F4MKE6mvTVtW75M1wuAY3-p1g@mail.gmail.com>
 <20231228-ultimatum-paramedic-6c0301f56d1c@spud> <CAAhV-H6O_Ke-xJPGFmgdwNVbGkDS2P6EK3ecfgo9KkkNyi9eOg@mail.gmail.com>
In-Reply-To: <CAAhV-H6O_Ke-xJPGFmgdwNVbGkDS2P6EK3ecfgo9KkkNyi9eOg@mail.gmail.com>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Tue, 9 Jan 2024 17:57:05 +0800
X-Gmail-Original-Message-ID: <CAAhV-H5aZc2sWhodA0+V9aWBUoD0oD4tQHiqDSyg2B-iuHDA9g@mail.gmail.com>
Message-ID: <CAAhV-H5aZc2sWhodA0+V9aWBUoD0oD4tQHiqDSyg2B-iuHDA9g@mail.gmail.com>
Subject: Re: [PATCH v6 0/7] LoongArch: Add built-in dtb support
To: Conor Dooley <conor@kernel.org>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Binbin Zhou <zhoubinbin@loongson.cn>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Applied to loongarch-next, thanks.

Huacai

On Fri, Dec 29, 2023 at 11:10=E2=80=AFPM Huacai Chen <chenhuacai@kernel.org=
> wrote:
>
> This series is good enough for me, I will apply it to the loongarch
> tree after [1] is merged.
>
> [1] https://lore.kernel.org/loongarch/cover.1701933946.git.zhoubinbin@loo=
ngson.cn/T/#t
>
> Huacai
>
> On Thu, Dec 28, 2023 at 10:09=E2=80=AFPM Conor Dooley <conor@kernel.org> =
wrote:
> >
> > On Wed, Dec 27, 2023 at 12:04:59PM +0600, Binbin Zhou wrote:
> > >
> > > Ah, yes, I tried looking at the `hwloc-ls` output before committing,
> > > and it's below(LS2K1000):
> > >
> > > [root@fedora ~]# hwloc-ls
> > > Machine (7730MB total)
> > >   Package L#0
> > >     NUMANode L#0 (P#0 7730MB)
> > >     L2 L#0 (1024KB)
> > >       L1d L#0 (32KB) + L1i L#0 (32KB) + Core L#0 + PU L#0 (P#0)
> > >       L1d L#1 (32KB) + L1i L#1 (32KB) + Core L#1 + PU L#1 (P#1)
> > >
> > > It's the same as what we actually have.
> >
> >
> > Yeah, that looks to be about what I would expect, thanks.

