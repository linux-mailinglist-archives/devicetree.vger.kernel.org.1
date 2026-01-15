Return-Path: <devicetree+bounces-255433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DF9D22E4C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9C953032736
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FE821CC58;
	Thu, 15 Jan 2026 07:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wnha1Hck"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305FF31578F
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768462748; cv=none; b=ZUUL8+X0gwFwvrwOIatwWUsVK8Z4knzSMuOMZvNecLCqlGksbXRNcUE7OlZRxuDmv6w/r6bWZ9Ntk5I37EnbiFAXmVVuEkH6IEDFWyq93+l60H7zP5cxf7L/jk/C6XX5x5nK2GM7fMhm8ZFppB1qst+9FivRnF7AIyCWLgYtw9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768462748; c=relaxed/simple;
	bh=wahNfXhrWaOBKB3KgjZKVohw0NuT5yRlweOyGs+9Fak=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l0rCBZCvyal0NboqG3ZQ0RqQV6HmNmyFe1OqzuRuge8VpcdEyauATODdE7TtT81l3HvFqykLLTo8FxfJ9r3ALvzop0RlL91e9LSLYHAiiltdTkESKAf2gutjFURSqbDwWoaopc/RUr3+MT8o4OSn3GSpOD7Hi8lvz+99tRI/wN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wnha1Hck; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-652fdd043f9so1132310a12.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768462745; x=1769067545; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wahNfXhrWaOBKB3KgjZKVohw0NuT5yRlweOyGs+9Fak=;
        b=Wnha1HckFusqomgF8JJewGlgwxzHVAIRZKTXX9KOPfrXUqxp6AybzdjoqGKZZ6AuBO
         G8R+Pt32Bu3Scmufe6nG48f7a3lOTFm9Tzk027kAgmBcYtOzS9FFlMH/uxHzE8hMyoRS
         Hu6Ht0tOdhM6oigyQ5cb3Avg5plBLOE0P4iWdN5FT7rfUE+3dCaEIK6WV1Xm/GOuvEN4
         XdnEwMn/WHTdxjxcsvI6dLYW+SQhoX65sWfatPAgddAtQQOEh7T1NbKPckURU266ZXyf
         UGpy5yA4YEMdQyXnvDNRHuf8jPy9cjNcGfXVRpKzbizIEviLW+tNd8ovvy2PAo6z7Mxk
         lCvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768462745; x=1769067545;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wahNfXhrWaOBKB3KgjZKVohw0NuT5yRlweOyGs+9Fak=;
        b=j3nyHDisMulNyV9gnFUySWMDt/qCfVlg+hvapBSm48629rEpurjf7+CCfRGsm9uXVe
         1SJXBcS67pLhSsvnAq8ebNPutmzI6EW6/IAQ6ItnW5qVUNawbswatMafbpEs8JCUOErY
         YHXn+xelkAtZG8cJfnufqG8O0uOT9Ea6xOhcOx68uWgKbTTMyafBF7+3O+Owgzh6j/Uf
         ixYULMSiH+MqHihh+oCFGb56vsdrg4pnG9Ul/VdaSQymxBCJlYhSNwbIVcsBFdM6qBWd
         gG9IVgJFJneIKKn59iMftZ6TLegwGAxDt3cj9WKQRiCgVcTvZihIEF/e7VfNx3Nqq33v
         4log==
X-Forwarded-Encrypted: i=1; AJvYcCVLjl+i5u6ZmSKcgQa5sUwlLCzp4CsvMoB4e1o5BkKy0DRl58TjVmAj7qnLMdQg98B+JkXQJBSTgL3l@vger.kernel.org
X-Gm-Message-State: AOJu0YzzknwFmkBFox+1a8mGoUkNguLnq1p5K+YRfabdA7n1ZI0U7kdJ
	9AVTm8Gd6RInbuHuGM+8PG40iNGTr4J7PL2ke2UX6J2pWrbuDhRVrgF0MzN9GBccN2UcDCkebvC
	+eDP9WcrLtsCJkelzIhO6eSSDnUQEAwY=
X-Gm-Gg: AY/fxX6TmOTGaE/ymjGG7adW6ldhcsnkBkJ0/v+TpQfuY8/qDjDRI/wtYN2USRJYv35
	IBXScXbzunD9DqEOXtm18jsfceWRCt05k04tX90ygVTVb71So8xFLXyXR6n05jqjBFOAuPvySSO
	ja8UTILu8lTmxI61uOFGcSICTK1zbhdcMW4QmLDJHzrrSzwEsZS+0fAMoJylhd9qGNazQH8db2m
	YLBg0e95SmQ+Hhba3KqxkWpHtSyzDKAdO5A2G7cqyM8z8QMtIf/kRKL9jdcAApHG6/XMkWP
X-Received: by 2002:a17:907:5ce:b0:b83:9767:c8ba with SMTP id
 a640c23a62f3a-b876775c257mr364217166b.17.1768462745211; Wed, 14 Jan 2026
 23:39:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1767663073.git.zhoubinbin@loongson.cn> <8876bebaf08121bb5edd2500f5289284b75df011.1767663073.git.zhoubinbin@loongson.cn>
 <20260106191314.GA2568583-robh@kernel.org> <CAMpQs4LpKSLGKySmzHeysS3x78inUQy9DF4dShneNymDvAi4Ew@mail.gmail.com>
 <20260114205855.GA3190839-robh@kernel.org>
In-Reply-To: <20260114205855.GA3190839-robh@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 15 Jan 2026 15:38:52 +0800
X-Gm-Features: AZwV_QjRRxACkfvlwb4vl80In-Ga3y0YpHc3YfqsZdPdlGNLPswkM9BXr7n-Nnc
Message-ID: <CAMpQs4+v=KhLW_Cru801p06vmpjJFotvyDfKBALg6mbwxFU5-A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-binding: rtc: loongson: Document
 Loongson-2K0300 compatible
To: Rob Herring <robh@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-rtc@vger.kernel.org, 
	Xiaochuang Mao <maoxiaochuan@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mips@vger.kernel.org, Keguang Zhang <keguang.zhang@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob:

Thanks for your reply.

On Thu, Jan 15, 2026 at 4:58=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Jan 07, 2026 at 09:22:41AM +0800, Binbin Zhou wrote:
> > Hi Rob:
> >
> > Thanks for your review.
> >
> > On Wed, Jan 7, 2026 at 3:13=E2=80=AFAM Rob Herring <robh@kernel.org> wr=
ote:
> > >
> > > On Tue, Jan 06, 2026 at 09:33:32AM +0800, Binbin Zhou wrote:
> > > > Add "loongson,ls2k0300-rtc" dedicated compatible to represent the R=
TC
> > > > interface of the Loongson-2K0300 chip.
> > > >
> > > > Its hardware design is similar to that of the Loongson-1B, but it d=
oes
> > > > not support the alarm feature.
> > >
> > > But you are requiring the interrupt property for it? Isn't it no alar=
m
> > > feature means no interrupt?
> >
> > Yes, the `interrupts` attribute is not required without the alarm featu=
re.
> >
> > But my judgment condition is `not contains` (added in patch-1[1]).
> > There are only a few SoCs on the Loongson platform that don't support
> > the RTC alarm feature, so I think `not contains` looks cleaner and
> > simpler.
>
> I should have said allowing rather than requiring.
>
> You are allowing (though not requiring) 'interrupts' for Loongson-1B and
> Loongson-2K0300. In patch 1, you made it required for other platforms
> which is an ABI change. That's fine if it was a mistake and is truly
> required.

Emm, it's true that for the binding interface, Patch-1 is indeed an
ABI change, but it's more of a fixed patch.

Throughout all existing Loongson DTS{i}, RTC nodes decide whether to
include the `interrupts` property or not based on the alarm feature.
Loongson-1c rtc nodes do not include the `interrupts` attribute [1],
while all other Loongson chip rtc nodes do [2].

So, while this is an ABI change, I don't think it affects existing
Loongson DTS{i} rtc nodes. Also, it more accurately describes the
features of the corresponding RTC device.

Therefore, I would like to clarify it in the Patch-1 commit message of
the next patch version and fix the error in the commit title:
dt-binding -> dt-bindings.

How do you feel about that?

[1]: https://elixir.bootlin.com/linux/v6.18/source/arch/mips/boot/dts/loong=
son/loongson1c.dtsi#L98
[2]: https://elixir.bootlin.com/linux/v6.18/source/arch/loongarch/boot/dts/=
loongson-2k0500.dtsi#L486

>
> Rob

--=20
Thanks.
Binbin

