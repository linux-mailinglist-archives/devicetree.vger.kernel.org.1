Return-Path: <devicetree+bounces-225396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 327F6BCD5EC
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 15:58:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E05AA421899
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 13:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 093D22F363E;
	Fri, 10 Oct 2025 13:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Je/Lf1mM"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702D0260578
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 13:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760104675; cv=none; b=LoDpkXvWI3No5/UceAPnMlfGJsmrCX+qNCPh+WsYDKj0jD3q1DD1CrmT4sM7gp0fEGHNLyLqWaOAPXgzc5e1AMseuRkNT8YcRhx77BKG/62zY8OysQrWwGxnDImY3J68iUKw4b2B6r6vvTaQRWnRX3yWlBcdObcYN1cXoXzF0PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760104675; c=relaxed/simple;
	bh=WmMLjpW8k9D3Vj4lFyZiM0FU8HeMR5e01Jo/usM3Hig=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mYrZs5V/gDFcKHi0gy1SvlguhZ6jyggaG7DouDy6dxfgLE/2QLjoiwE1+j630Hwvy1rwXBJJ/TbQEF6njTY+6mMP2/bWX1HqnzWnlX3DXxmsNuV9e0FkjgJ5LTm3MDyR7lP9opI/rgCXsC+XqKR8WRDIQMZkORKkZzm/rUSi09I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Je/Lf1mM; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760104673;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6CSXAn3HygFwbaOpzUgisVz0Zeld7FaMqhQ8KH6Xb10=;
	b=Je/Lf1mM5FZJsl6PnGKuQM0MwrYNo7PO7kPLl4UJR+Z2CYRHKE3mEbsXhjMv2/k1pWB0zC
	/MubusnUOYypDSlB2QaRGf1TcgLpg/XCsligrcnkCBmKfDrt8ZMHW1ogaC0O6of6p0EgqA
	XNXsxfRWBzCD3IzkZfAr38iPWuKaRd8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-125-kuuCch2dOPGpCnTDEyOYrQ-1; Fri, 10 Oct 2025 09:57:51 -0400
X-MC-Unique: kuuCch2dOPGpCnTDEyOYrQ-1
X-Mimecast-MFC-AGG-ID: kuuCch2dOPGpCnTDEyOYrQ_1760104670
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-46e41c32209so10948625e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 06:57:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104670; x=1760709470;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CSXAn3HygFwbaOpzUgisVz0Zeld7FaMqhQ8KH6Xb10=;
        b=W7tfDUJLJpz/tB6UzIDtchxGv38YUpElXIZkGBfuHMwmJdTZezeNwv9k8mFhTcUJI9
         myfqUk/2rJuJf/YAJChbs+KCeT2DaDtiuTnplZNNbObk9sv7pLfbmr0pfJV+FL8ILXrp
         d2hcF2uUR5BM+zCK/D90TEuVdS1Di6/faSFWsba/pDJCOc+h3UOnToxezqzAnFpc7S3H
         mButI7kMXqR7f/6dZLQMrUCWtTFCoRiN29pENlycPvrIXmKpW3Z6DglC3DzDGVjVDFvd
         LG0BZekZxKSZbhIO9nMPz1Pv9Cpo5hRcK05ZEjI2+1CtdS/NTG5NjLWWt0ThFJ3krEEh
         3vkQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6v6MJrmaQSbXWOxJkVfjRx202zeFja0b2Tuj7Vk94kW4DRBw16/0bWShc27zkFCdwYJPoG29GXLcG@vger.kernel.org
X-Gm-Message-State: AOJu0YxrDafFYIF4sM4cCUtHidKo2Sgvk0m6/R+83Jy9Bb6F0HpFgXQx
	ocUL1fztU58x9ncIviSr/oKKYivPvfVAz1OnLrCqqs/1etdHfj7e6wpyZH39X6JagWez+d2qs+5
	2NbpkHCmwdvAxpb/LHk1mj2rCs0T5eMKHtf7usNJIaNZceSzBiTfJM9qILjxEeaH0lc7VHUS8Ux
	+isYB56IswIhM4qAORHJusZc+8YwwgsJmPIpoWZA==
X-Gm-Gg: ASbGncsUlRCbbEHz7FLVp3ZPYewUuz2zUjrYcxbkVTIB5tFebOB/cAMNxJ7pzp4jyYs
	VFUUvAyimB5Rmqw5zgDQrlXGT9/XXRYj4nYE8ZWdtnrkSjtulQ4EXn7HFw/Xu6a6cfuwA/N3r2+
	TD4UqysS1qCQjSkNfW5bwRszTKBZnwnD/eIKE4HdlYkxE8r0hI3jtO8bw=
X-Received: by 2002:a05:600c:138a:b0:46e:506b:20c5 with SMTP id 5b1f17b1804b1-46fa9b092aemr75146355e9.26.1760104670130;
        Fri, 10 Oct 2025 06:57:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF0nYvzZV/UpgrZSIsve1rRA0msPcsLYg020u5V/WHCcwHFFt5xA47G7YOSbI1lFXf6FO5ZLsE+5y5nNR6t9tQ=
X-Received: by 2002:a05:600c:138a:b0:46e:506b:20c5 with SMTP id
 5b1f17b1804b1-46fa9b092aemr75146085e9.26.1760104669691; Fri, 10 Oct 2025
 06:57:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009082013.1331361-1-lzampier@redhat.com> <20251009082013.1331361-3-lzampier@redhat.com>
 <9ae53c6d-613b-4a25-b672-88ffabfef4fa@kernel.org>
In-Reply-To: <9ae53c6d-613b-4a25-b672-88ffabfef4fa@kernel.org>
From: Lucas Zampieri <lzampier@redhat.com>
Date: Fri, 10 Oct 2025 14:57:38 +0100
X-Gm-Features: AS18NWBKt45vJ_tgZM0w0Qd10JOQmvNvfOo1vp2NkKU9_HUvebFUX254BfYm_oE
Message-ID: <CAOOg__BTJw53uTK4h_o4GK6x2D0XutTSQMpb-BDXh22Ac0-q-A@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: interrupt-controller: add UltraRISC
 DP1000 PLIC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Charles Mirabile <cmirabil@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 9, 2025 at 9:39=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 09/10/2025 17:20, Lucas Zampieri wrote:
> > From: Charles Mirabile <cmirabil@redhat.com>
> >
> > Add a new compatible string for UltraRISC DP1000 PLIC.
> >
> > Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
> > ---
> >  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml        | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/sif=
ive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controlle=
r/sifive,plic-1.0.0.yaml
> > index 5b827bc24301..a419de50f5a8 100644
> > --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,pli=
c-1.0.0.yaml
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,pli=
c-1.0.0.yaml
> > @@ -74,6 +74,8 @@ properties:
> >                - sophgo,sg2044-plic
> >                - thead,th1520-plic
> >            - const: thead,c900-plic
> > +      - items:
>
>
> Missing SoC specific front compatible, me thinks.

Right, if I'm understanding this correctly, I would need to add the
sifive,plic-1.0.0 fallback compatible to indicate register layout
compatibility. However, the DP1000 PLIC has a claim register hardware
bug that breaks interrupt handling without the driver quirk. Should we
still include the fallback even though the generic driver doesn't
work?

>
>
> Best regards,
> Krzysztof
>

Best,
Lucas Zampieri


