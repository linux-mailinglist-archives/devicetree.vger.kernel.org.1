Return-Path: <devicetree+bounces-252140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A8421CFB968
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 02:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C6E43011A71
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 01:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC88F78F26;
	Wed,  7 Jan 2026 01:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AfE20v5h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EC8487BE
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 01:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767748979; cv=none; b=Bn+lmF8Ee2nps9XhSMywBKhJwm/hyEFxSEH8T92XvYWeqKg1as71qu8e5nGQJ7517fzDmeIRH/s4UEg5qq4bLCiQ593VrDscxozAulTspg2WQM34npVwjrkCS/2M47bpjNiTDdomxf/Vi8DTWvyoDXsQf9/mr+aCwX8PfBM/33g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767748979; c=relaxed/simple;
	bh=w68wXr5ticdVcWVVKaG3ZzO4fx1vzPS9uhBCrz5e59U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sWURqaUZPgZz1nMVVrl9mWRJFyBpVc1KM65eufW80quJ2GKbFCU585r1leajl/77smrSq+iXk0GsEUP3btpwtY70tNlNt1N8tLohxSi24Yi83MngvZLJZtmwZZXP1+u5WScLMmddqCdXDrCgHlG4UCjTNufOkbzXPRLPsAoxa08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AfE20v5h; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b76b5afdf04so293300866b.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 17:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767748974; x=1768353774; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0tsd9UwM4vLqBKUeV9xw/hj4H2ka06I0/7uWJwrkW5U=;
        b=AfE20v5hY4zXpvqBPLdiBoaZIs/i0+NHPNy0ghWxy7ZLenzS/fgYrVOFzST6frSBzN
         jx0NC4Ss45cCKeVdlv+MHCrrU0jJ4+b/j1speO5cuq4zTFRZY3ZfvrAeWb/gg6ZNNDbI
         flUxocJKhnOQ+q4sDOV4cyXETHZaFJcba2teT9Tg2Qfdp29CTiaCL8X/tKHdo8CKVgOL
         qqbanC2uA68VH16Mr0sCDBMYbr/nf0qoAW9Q/MzjxR5fNFctwoDkkvpWEgpUqbLhcQr0
         O7Au1xBBvAgt9lZ2mzGywp7LFlCD/ANH1XR7EXCwtneiOv3vtsySXQWgpmsxd28e56Lr
         XJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767748974; x=1768353774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0tsd9UwM4vLqBKUeV9xw/hj4H2ka06I0/7uWJwrkW5U=;
        b=kfriK4+zrWiGINzUD1y8xUNnGFjT+ebLEu0dFXADE9O8uGagmII/G1CLFSvLkVXE61
         owGRYoBRaeELagNgDU6L7oStHmPvvFymJj6fQmJf7X2AeZNfWijIcIVp3Tw0XqhWkT20
         N98ZVPbjAppDeSxehCu1qPQ3FaoMNS3Z7oHz4CjAXt62XYhelOJzzGfh/hh29K4ulnRj
         qz5y9KnGxbNnhLch6MyNLpl3J1B8ONZZAr3/UC0HFjnDurzNqVEpei3zwqLyp+2xkCE6
         rQTediKhgki/TC+6v6wF96/zadqUYVjajrh8CMB9yS7c5hDNEue3xfa7thx/EDDTViKY
         sfXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXx2EaMdTvwMV3qOcKmWfqzvJ5jIYNlf+rVdQaV0sWQ7Yas2nMEO/WMnyyf1EJbSVC+lUVJf1cApwA@vger.kernel.org
X-Gm-Message-State: AOJu0YzKNuXFg3IvXBbwaJ8QJ1SZy15wm5oUnP8sDiSpUg/k5ILAEdao
	cTM8fjP7h5oI8u3zS8p7qA6qsBmvRODY0NGJ22E/y6wD/r6B54sC2j1EeBA7Q8NojgKd3UXvXVh
	5MRJO+GZxLYHE2XgyXKTPRlSHGfIETUN/ksgfHRw=
X-Gm-Gg: AY/fxX6nkSl6qxYkuNAc+5ETs3y3ODPXV1hOs0ZnlP4M2kB+xZU+SYWwcfMPDnQkMN1
	nSf5DgIC91Mrp6g9X/op0mZ1R3vJPqxZ/c3wH+nHNTGAStz7iLwXza4iQMoUyyJxVNTUeRL0gNG
	nL3++N1+HGr41EIgRgLo/w+IDaQpoivLVQ3qrOKOrDvef1qr9JDbeOSJb7ukzqVR+IzvRLE+VWz
	cyr2dpAjva6M58N5nBgTsrhlXCehys+ZaCFf2a6Jnu2ZY84iimODSktHuL1v6B3EHZ20c2h
X-Google-Smtp-Source: AGHT+IHAqq5ImNkLGtB8Y1d2kLRKMdYzQ9MRuExrpqABDFBjUdXj3NxrF87jFkiZlC4Jeb6TBNib1kZQOqxBCF1a1Z8=
X-Received: by 2002:a17:907:70e:b0:b73:758c:c96f with SMTP id
 a640c23a62f3a-b844539fc89mr86070866b.52.1767748974057; Tue, 06 Jan 2026
 17:22:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1767663073.git.zhoubinbin@loongson.cn> <8876bebaf08121bb5edd2500f5289284b75df011.1767663073.git.zhoubinbin@loongson.cn>
 <20260106191314.GA2568583-robh@kernel.org>
In-Reply-To: <20260106191314.GA2568583-robh@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 7 Jan 2026 09:22:41 +0800
X-Gm-Features: AQt7F2rx2FP62gHMLs01g481K6zXg39jS3zpWijBpVZVQd9ZycV4AZkWto4-qZQ
Message-ID: <CAMpQs4LpKSLGKySmzHeysS3x78inUQy9DF4dShneNymDvAi4Ew@mail.gmail.com>
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

Thanks for your review.

On Wed, Jan 7, 2026 at 3:13=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jan 06, 2026 at 09:33:32AM +0800, Binbin Zhou wrote:
> > Add "loongson,ls2k0300-rtc" dedicated compatible to represent the RTC
> > interface of the Loongson-2K0300 chip.
> >
> > Its hardware design is similar to that of the Loongson-1B, but it does
> > not support the alarm feature.
>
> But you are requiring the interrupt property for it? Isn't it no alarm
> feature means no interrupt?

Yes, the `interrupts` attribute is not required without the alarm feature.

But my judgment condition is `not contains` (added in patch-1[1]).
There are only a few SoCs on the Loongson platform that don't support
the RTC alarm feature, so I think `not contains` looks cleaner and
simpler.

[1]: https://lore.kernel.org/all/8876bebaf08121bb5edd2500f5289284b75df011.1=
767663073.git.zhoubinbin@loongson.cn/

>
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  Documentation/devicetree/bindings/rtc/loongson,rtc.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/rtc/loongson,rtc.yaml b/=
Documentation/devicetree/bindings/rtc/loongson,rtc.yaml
> > index 8a2520f963d8..b62419c33fd5 100644
> > --- a/Documentation/devicetree/bindings/rtc/loongson,rtc.yaml
> > +++ b/Documentation/devicetree/bindings/rtc/loongson,rtc.yaml
> > @@ -23,6 +23,7 @@ properties:
> >            - loongson,ls1b-rtc
> >            - loongson,ls1c-rtc
> >            - loongson,ls7a-rtc
> > +          - loongson,ls2k0300-rtc
> >            - loongson,ls2k1000-rtc
> >        - items:
> >            - enum:
> > @@ -49,6 +50,7 @@ if:
> >          contains:
> >            enum:
> >              - loongson,ls1c-rtc
> > +            - loongson,ls2k0300-rtc
> >
> >  then:
> >    required:
> > --
> > 2.47.3
> >

--=20
Thanks.
Binbin

