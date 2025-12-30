Return-Path: <devicetree+bounces-250403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0986BCE8E82
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CAD50300DA4F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 07:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D74E2BDC29;
	Tue, 30 Dec 2025 07:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a8onlBgw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D47A26E6E1
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767080344; cv=none; b=BOGm+MjyIo74wWvJwGebouXm4TAXd/9aZEhzfLzV1kmW2Zoqa4gDnanjHYKnI7jA2YC1DwrW3UdMaWbf78O/m1ZcJX/4FAPfFMgdRnx0BRaRmVqBvKm0EXW7YhPkVnS8FIzfpK5Forlvbw65LHyuDoScI7RsT5fVEu44nQ4fXEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767080344; c=relaxed/simple;
	bh=vgcUnS1052qwCBP6i7dco7h+vzHfUmkg5eMZKbGRNr4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xopi9uJypL61hmRzVC6JHU1KlSveZQUBHSrPcHT/N2Ob2G7tCb6i29n2BjH5fVgPLWgH202D6lIY25CHBFg4aGkMn3yVPQMLNJlZj8Cbm4Ax0FLwu3UTtbn5XihabwqlEmlZe6/oT442VdLBRrBpltRSVtB/ghwpF9gjbJGBXj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a8onlBgw; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64c893f3a94so10995582a12.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 23:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767080341; x=1767685141; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tmqv51wWnrt3khOKvuVGCkrOT4IpacjAgjWXw79Q7ps=;
        b=a8onlBgw1mwBiS8eltNEZNdgZehWdPGs5/uB65nT6cLQE8WQuoCNWcFlwcqIexEvn4
         Z9Z98nnxqWOfPMpPdEg6BDmizyuZ0AeyDor9YbcDw73kgxJiLRpkYJZXvJ3Si8BbM2Hl
         jryPLqPtpppv1B06JJFf029tkQBS/eoT3vMbBDvF3RHFMvnIZT2WgQax8NO9hOrmlDB+
         qBBjB4f3wx3LkpOMrmkQpbtLJGP2i3e4gOv8oE6PH4tT6+TAd2j4kqZ4NlVkKC5dfzQN
         CQNg/1/5mK3+7NbhVqhDByR64BWj9aEEpqX/Vi8xyexl0ZG9pi5+P7q98CX1/Y7nNRda
         EaAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767080341; x=1767685141;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tmqv51wWnrt3khOKvuVGCkrOT4IpacjAgjWXw79Q7ps=;
        b=eleck8pUSA/Ra6Blu/LTgmNHisYhemlxgF933xehXhZT/uzUUgJg4GVVfiXIfH055D
         c3eJu/n71Q3Ow5qMl+Jcq4uE2+41YRfvgTc1kdgbq/OGoLFnPctCJF+HnQZIcsxYrYsq
         M3FPBlcUGs/IC+8/mFw6GCrUTYo2ADgLjnb5J9fXagy7FEQTs75bepf4C6dQ6QpeRQ0S
         cSHmVhki/pdFKZ9aX7ISSzhR/k2XKt3ksUJE98cHePIJg+YIhGvDBeW29fKJ8isq1SdU
         YPn4cvV4HfGc2R+Xnbz31ToJIcO2vs74zW3s1I7WxEDlnvVoyHF+gLZgKqzuz6CyTJ/L
         ZrPA==
X-Forwarded-Encrypted: i=1; AJvYcCWYmF6+ENK+LdWFDjmogQ0TagO10UxsGzJfNNR4Eo0GIqjmmm4lNGPy8DTI8cfvAbInPeVehrMYzHQP@vger.kernel.org
X-Gm-Message-State: AOJu0YxMvuQI0Nyjw0f+UOg5gjnCpMGrvaTInKn/27O6itCm/HRyRHnd
	gJiNUXPhPTO86OOYA8QZjjgSkwE2oc0QJcS7oLpC8Av9hX5kwqYJLYf4ZbqwVoek+6qwVy1AqRq
	lhlAchZmEuo3fi6+FmXCTuRBEtiSnXvo=
X-Gm-Gg: AY/fxX5AWpS3h/IfCjvgRjGyEiO6QVb39hS3hgfdKH+yXeO5JIjvRt6ZRGo9MwooD4l
	iKsC8vHBzrTowjrDuWQKvHN0TZsZkU4QXf83O4Jds42VUmUcExYlOwcsrnEMLtUVaXaDNwSDwAc
	1Mm54iEBx0hxh/BrMZGamByc3zi1S2hoZos0O6FDdPwyDRvyTmIZmGbjLSrkNYyNQMkX/0BXLGm
	cMYxchf6lOUWS5sGp5wjSQghRLRSZznXdcEjAWHlLdfX7qnvJe7uSC/ZIguD2wRi6PmIOc=
X-Google-Smtp-Source: AGHT+IHAJA2AOTDuTqR84uN8GaoIGr40SvME92MC06j4BBxWbkvap6/SnuvE+IEmuyMd/yBZ9B48ALV/0MQM5/JfD0Q=
X-Received: by 2002:a17:907:fdc1:b0:b7d:266a:772c with SMTP id
 a640c23a62f3a-b803574c34fmr3563319966b.21.1767080340398; Mon, 29 Dec 2025
 23:39:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1766037997.git.zhoubinbin@loongson.cn> <fa13f6bc32832085fa06ec004ff0e8b6464e7a7d.1766037997.git.zhoubinbin@loongson.cn>
 <CAAhV-H4KpOGn44jDf09S2NVOnCD2KHbspK9OtZnrQd8Or+-UWg@mail.gmail.com>
In-Reply-To: <CAAhV-H4KpOGn44jDf09S2NVOnCD2KHbspK9OtZnrQd8Or+-UWg@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Tue, 30 Dec 2025 15:38:47 +0800
X-Gm-Features: AQt7F2qT8fMLe7RqULA_KkU7lSkbg6Oz1huOb4eO1oPpU_v58G5la13G1CATcu4
Message-ID: <CAMpQs4Lw3OTe53RXtZzCrj2u0O=ytcNpF+_39j7YsFbnLujSvQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] LoongArch: dts: loongson-2k0500: Add default
 Extend I/O Interrupt controller address cells
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Yao Zi <me@ziyao.cc>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi :

Sorry for the late reply.

On Sun, Dec 21, 2025 at 8:13=E2=80=AFPM Huacai Chen <chenhuacai@kernel.org>=
 wrote:
>
> Hi, Binbin,
>
> On Fri, Dec 19, 2025 at 4:48=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.=
cn> wrote:
> >
> > Add missing address-cells 0 to the extend I/O interrupt controller node
> > to silence W=3D1 warning:
> >
> >   loongson-2k0500.dtsi:513.5-51: Warning (interrupt_map): /bus@10000000=
/pcie@1a000000/pcie@0,0:interrupt-map:
> >     Missing property '#address-cells' in node /bus@10000000/interrupt-c=
ontroller@1fe11600, using 0 as fallback
> >
> > Value '0' is correct because:
> > 1. The extend I/O interrupt controller does not have children,
> > 2. interrupt-map property (in PCI node) consists of five components and
> >    the fourth component "parent unit address", which size is defined by
> >    '#address-cells' of the node pointed to by the interrupt-parent
> >    component, is not used (=3D0)
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  arch/loongarch/boot/dts/loongson-2k0500.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loonga=
rch/boot/dts/loongson-2k0500.dtsi
> > index 357de4ca7555..0594da1ea83d 100644
> > --- a/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> > +++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> > @@ -164,6 +164,7 @@ eiointc: interrupt-controller@1fe11600 {
> >                         compatible =3D "loongson,ls2k0500-eiointc";
> >                         reg =3D <0x0 0x1fe11600 0x0 0xea00>;
> >                         interrupt-controller;
> > +                       #address-cells =3D <0>;
> >                         #interrupt-cells =3D <1>;
> >                         interrupt-parent =3D <&cpuintc>;
> >                         interrupts =3D <3>;
> Like Patch-5, I think liointc also need #address-cells, so does Patch-6.

As Rob said[1], the `#address-cells` attribute isn't required unless
it's always referenced by the ` interrupt-map` attribute, so I'd like
to leave the liointc node unchanged.
Add attributes as needed based on existing DTB warnings, and Patch-6
will do the same.

[1]: https://lore.kernel.org/all/20251229234931.GA2804566-robh@kernel.org/
>
> Huacai
>
> > --
> > 2.47.3
> >

--
Thanks.
Binbin

