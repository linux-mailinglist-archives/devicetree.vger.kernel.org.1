Return-Path: <devicetree+bounces-255819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3BAD298E6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 02:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 16F83301A820
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 01:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA91327218;
	Fri, 16 Jan 2026 01:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WGAdR3nK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845D3325739
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768526118; cv=none; b=INxmsZ6RJLcuSxZRc07FRpbEjVpx83ICoFQaZkamnWpz6S1kgjLWP/ZEIG7gdUkd9b3U7/WdHq6anrHMtWbLkbHQh0CIAkzhVLObbqWIQXCw+nm29YY8u5sc26JM+6hnaM1vYetU+tsWPkqqGKEL5As07h9py9Pn8vBMj+uxkPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768526118; c=relaxed/simple;
	bh=ROU4R67s950GbA7GHKQWHktozeFvbhpGduCMWOOF/Io=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RkiSYBz5c5l03uoLNOS2afDiSX8C+IOaiRaXqilVib1whzjAwgtb91K+Dnq/jgrWDlBnpWUkFb6fTEyrM15xDz1cqUc9vB0R+WcOsdt+Z0gOuZQ3hxFOynp1PhRb3mOFlhTvY5Vr3fomWt36K3liR1k0hv8qrLH6AJAn6rtkI5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WGAdR3nK; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-655af782859so64322a12.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 17:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768526105; x=1769130905; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KS5A6hdws9JgSg5NdQLN8SLz4AQmGLJR4UdFXen0ylY=;
        b=WGAdR3nKFmzxe9lIyP+fL2kMNvgUvbY6wKC8CqaQzX82a+RL56V18+r/CLd1LqW9Hb
         x/uiER+JeOClJ0qZ5qc4VoI8MkTyRRB2tC+8mcZTqlNG3UmszeTRYshboIw6Xb4HSSjj
         MHv/tizZeQGg7VKyEUZIdnC8xV/AWcOhjSZwuCd/c1EhEju/xP01UuqF5Se8yjfBsWWz
         Ovy2pth/gNaiUsVj/nYmxR7A72aWwI9fbT1cD5KLdvIDZe6J/DS1kM9dU5iW7rSFK9Yz
         KY2ZHf8MK8VWXesRwdMUpgbazedJKdA6rg3jAlR3M3WoQ51EWlIhCSAdmroHSvzU0JnD
         hUig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768526105; x=1769130905;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KS5A6hdws9JgSg5NdQLN8SLz4AQmGLJR4UdFXen0ylY=;
        b=KpyQSklUz5PUp98w7DTMBRjVx5otzXoYnlpikZV7c+G9GQEaJJuLJbXrQhVuMufu8w
         YZ6INfChxwSi2b26DockCHX9zj7ExM40eAIVjcy0QM+H6yaWYdIJUXQvYFmLMfdzPMbQ
         cqZ8T73tKJWeKiAHXgb7xCB0er4vnGIn98PAKNXvFmm8eixa43APHVY269jXqieA2xSn
         8HjFVk/y4+PjT42lquGn8M6pOYdzZYzef3dYO2B2S97fLHRhcqxFYz2urVlNg9ATmvW7
         0WK9e/+o+7VVkVBjSnlnLPI93jJY2i7qVaE3wun2UUTewzYnnxA7YBK1wcsuZp41Hbfe
         OmYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEsdTbzfrAJ8XMkVJhKsxWWlPg5bhVdzWrsIdwwcN/b0F5+7fMK5h2OT5ISCKA6Xg2V92j+Jn6sioS@vger.kernel.org
X-Gm-Message-State: AOJu0YzJQLWhbepI3aD0lvrfSd5+HIkCHm+VRt41P7ZoBAZgNtN5lpNH
	ujgu7j+kPX/JmnZ+NdS6Jz/OGsyOxJi7qEIEF8s8a84Eh4HmOLJ3euvnwpMMIEoQq4RbpkEDrqx
	+YUNrlJWJEM3e69VSmTb5Rh8RtDrZn+s=
X-Gm-Gg: AY/fxX72pfZX6pVyKUFnOsdTSVS6yt9POJG8+kdMJobG/BGE0HlVZb1oyuAQ3QJvVkP
	3o8yndKt8/CatwP95J08XLhsk8gJv+2a/09feniabdGfGG/45x0IkXQD+jiqAfJDymmiIi1Pp9K
	dxsFkknVWWg8ucGeXRDcVD4axEQLQo+oxcO8FvZ9KgLuCEWse7TcT948+urARixB1I8r+jF/iCh
	P+RWXSb6g8DxFnwZwQLpOLppdrwhJxjnmU7Qg4OSqQXhm2EDCic4jl2GHn0orNA/xiVLoBJRJye
	QOAAkE4=
X-Received: by 2002:a05:6402:51c9:b0:645:1078:22aa with SMTP id
 4fb4d7f45d1cf-65452acb341mr974597a12.19.1768526105360; Thu, 15 Jan 2026
 17:15:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1767663073.git.zhoubinbin@loongson.cn> <8876bebaf08121bb5edd2500f5289284b75df011.1767663073.git.zhoubinbin@loongson.cn>
 <20260106191314.GA2568583-robh@kernel.org> <CAMpQs4LpKSLGKySmzHeysS3x78inUQy9DF4dShneNymDvAi4Ew@mail.gmail.com>
 <20260114205855.GA3190839-robh@kernel.org> <CAMpQs4+v=KhLW_Cru801p06vmpjJFotvyDfKBALg6mbwxFU5-A@mail.gmail.com>
 <CAL_JsqJVD3o41Zch6fMY6s-qmyd9cQg6CJ+iya+3kdtuqvNMoA@mail.gmail.com>
In-Reply-To: <CAL_JsqJVD3o41Zch6fMY6s-qmyd9cQg6CJ+iya+3kdtuqvNMoA@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Fri, 16 Jan 2026 09:14:52 +0800
X-Gm-Features: AZwV_QhUFfli37YKjCtOZoZJEFk_EN3-i1wZz_UWr78liB25i8-qldPEHYjcGIE
Message-ID: <CAMpQs4JuGXvNA+gbo3LHeqEw+JZ2JNnmgfLZZQNV+A62e+psdQ@mail.gmail.com>
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

On Fri, Jan 16, 2026 at 1:00=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Jan 15, 2026 at 1:39=E2=80=AFAM Binbin Zhou <zhoubb.aaron@gmail.c=
om> wrote:
> >
> > Hi Rob:
> >
> > Thanks for your reply.
> >
> > On Thu, Jan 15, 2026 at 4:58=E2=80=AFAM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Wed, Jan 07, 2026 at 09:22:41AM +0800, Binbin Zhou wrote:
> > > > Hi Rob:
> > > >
> > > > Thanks for your review.
> > > >
> > > > On Wed, Jan 7, 2026 at 3:13=E2=80=AFAM Rob Herring <robh@kernel.org=
> wrote:
> > > > >
> > > > > On Tue, Jan 06, 2026 at 09:33:32AM +0800, Binbin Zhou wrote:
> > > > > > Add "loongson,ls2k0300-rtc" dedicated compatible to represent t=
he RTC
> > > > > > interface of the Loongson-2K0300 chip.
> > > > > >
> > > > > > Its hardware design is similar to that of the Loongson-1B, but =
it does
> > > > > > not support the alarm feature.
> > > > >
> > > > > But you are requiring the interrupt property for it? Isn't it no =
alarm
> > > > > feature means no interrupt?
> > > >
> > > > Yes, the `interrupts` attribute is not required without the alarm f=
eature.
> > > >
> > > > But my judgment condition is `not contains` (added in patch-1[1]).
> > > > There are only a few SoCs on the Loongson platform that don't suppo=
rt
> > > > the RTC alarm feature, so I think `not contains` looks cleaner and
> > > > simpler.
> > >
> > > I should have said allowing rather than requiring.
> > >
> > > You are allowing (though not requiring) 'interrupts' for Loongson-1B =
and
> > > Loongson-2K0300. In patch 1, you made it required for other platforms
> > > which is an ABI change. That's fine if it was a mistake and is truly
> > > required.
> >
> > Emm, it's true that for the binding interface, Patch-1 is indeed an
> > ABI change, but it's more of a fixed patch.
> >
> > Throughout all existing Loongson DTS{i}, RTC nodes decide whether to
> > include the `interrupts` property or not based on the alarm feature.
> > Loongson-1c rtc nodes do not include the `interrupts` attribute [1],
> > while all other Loongson chip rtc nodes do [2].
> >
> > So, while this is an ABI change, I don't think it affects existing
> > Loongson DTS{i} rtc nodes. Also, it more accurately describes the
> > features of the corresponding RTC device.
> >
> > Therefore, I would like to clarify it in the Patch-1 commit message of
> > the next patch version and fix the error in the commit title:
> > dt-binding -> dt-bindings.
> >
> > How do you feel about that?
>
> That's fine, but you also need:
>
> else:
>   properties:
>     interrupts: false
>
> So that on the 2 platforms without an interrupt(alarm), 'interrupts'
> is not allowed.
>
> With that, you might as well just drop the 'not' and flip the 'then'
> and 'else' schemas around.

OK, I'll fall back to the writeup in the v1 patchset as follows:

if:
  properties:
    compatible:
      contains:
        enum:
          - loongson,ls1c-rtc
          - loongson,ls2k0300-rtc

then:
  properties:
    interrupts: false

>
> Rob

--=20
Thanks.
Binbin

