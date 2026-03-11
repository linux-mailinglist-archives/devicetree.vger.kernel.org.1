Return-Path: <devicetree+bounces-273946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLJcAL8psWkBrgIAu9opvQ
	(envelope-from <devicetree+bounces-273946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:37:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9150825F732
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 69294307BE30
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8426B3B3BFA;
	Wed, 11 Mar 2026 08:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kkwj7bRS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD3A3B3C02
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 08:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773217780; cv=pass; b=qJ3+TKn/UonRynYg94RqHm3eW2rTfdSkZa/XHq43ON7uMHTUTVP0087wlophY6X0BBuX6+RNTSHgzDIhbJSM0DZoIPjmVV7L9g3hBn0Qtul+9MqVqiXY4MDYHuaSMa3vgAP6BdmuSejVr6ydZwQTqGXKsB9xHzhXgYDVRJka0gI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773217780; c=relaxed/simple;
	bh=WpTM2bK03v+GeetS/yO9RyrJ2EbEhx/HhLsYsyaMS4Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EmQnCxTRo2xYuqDXvHZ2LlxpoVDqpNzrIJAJQcnTMC7CKXEkBWwDh9K6LnXfemzrhD07ArO0KqRlLmjzHgn2qFy6fX8IZm8+EeIyzcgDI76k8YJdBzATB5Hohngoct5SEMKxGaNd1kqT5JLw9GOEQAFpR0GNs0D4EPCUIK6Ylsw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kkwj7bRS; arc=pass smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-662bf05f7a4so2828049a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 01:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773217774; cv=none;
        d=google.com; s=arc-20240605;
        b=PyEtHr2oJtWrdhJlZZ3uulHAorYeT0HpMsWBKsoKRbIc4dVhQC7otyF2dnb34IK2Xx
         1r9n991zxWgQzWzM3SE7vR7Oth8+TVkb4S4rviuQPDbVnlqaK14ex9spIKr+S3DVMoD5
         fAAKaAUiqCtGojmWHtOgBXRZnnVo/rNu7LIEmcxSXJfcTdFwdqAopvgiITQct7l35n1o
         sRsKZYpdj1WrfA7gwBEjbIF+W7IZ1NQ6uimoFF5+UiTGPZZjI5W5dWVoHHsWOGDrLIPS
         qjm8sQfWkeYWqLVaiRHtE8h7nAs30KWrK18Sh/YBHPM0LUJarrjPQel/PD7W/Zxn2MK0
         duaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YPFuevo92I9LbD3FU4d+etP0u9DGkGJOBwn9Rvp7Sj4=;
        fh=FJcYsZ91WTNm5iJ2+Levzm2iKT+yx7pdU475O1q1Bfo=;
        b=exuBeC7dUYAMjYXB6G/1VWPuN2hx3vvPWqJYDYDq3XYEen+1p0cMgicgqih0frQpfp
         F2teRNn9w8hjgUj7pic+UYnZi4TeggVkWhFk5HHBCs8xzCn8ZEKmZK+vyItBm4WZOtVT
         Fal0mpw2EfdpCKEreiC0Dh7XAyPqtND56TGqaz0YDO5OQPmqef6SzlyU4C6EzxqeiXxo
         eG76m6Qs9OTy3LiB9jLMVKbrecmbvdSdAQBBxccoWv6I+IkTYIR+fvHfE/dcwO2+e+gX
         Utlk8hwCR7d5MXTSzwMpB0Y4czlHtOZ09TsIyFiDh+SYF5GDfmmdVchoEC2TsNtcrq8I
         r4HA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773217774; x=1773822574; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPFuevo92I9LbD3FU4d+etP0u9DGkGJOBwn9Rvp7Sj4=;
        b=Kkwj7bRSUntw31c/nnlS+IwNMs9LN5aAtCC1QJIL0d3BVyPqf1ZKtm5nQNrfwLOAFX
         fjJAj1QCDvdi6sDBjZvgIBf2Y/r7LNZcpLQ212RVWhhwsvej1sNDEmNwwpAOn+IkgdMe
         CMCan+j+SqVmHkX2YuMvcq6FBijuh/eCv9KV1vWV9Lvd+pg5sdAm2KaEKNzYuGydG+WH
         Q/snLFFgldNd/mh8xsZMpeOiBzyX2O5I5nSdjCd+SouIV+h5je11MVyIRPvzaOqJK5ix
         xhRprq0KHjzR+H3TBW/w0oYCbJoSrbPieOSdQ4UVPBTmeg1jqkyKyEI12FdgmtF24uaF
         JWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773217774; x=1773822574;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YPFuevo92I9LbD3FU4d+etP0u9DGkGJOBwn9Rvp7Sj4=;
        b=BMSVI2ZTo82UQNbR0m2lkAdvUpwQuBjL6RYm7nsse8xdlwsjHn5erlinZ1ztk8TW1r
         WqGMoOQZqejSa9ewbBFp2mmdSZ1j6REBcwbJQB8j3yJBP5fVoqbOtWDVp6ZMzVrh7uOn
         z/aTbLwU1vCd39bNB8ODAvw+yvfpiohN5nfOPL78xCilvmLd+htDqprkIqajkLbtsEzC
         jr+OZxstv/2hZ0YnWUj6161+34z+2fD1ITb1b6NN7cF2gkhL/KKmQ0WsITJ6FYQlGdVf
         nVXPucrlTVWC5Jtqk+NRJg84BdzpkJckAKMcfsobwHeO18wvG9BacemrO4/E5a712A1d
         3y7w==
X-Forwarded-Encrypted: i=1; AJvYcCUkVh9RBQd+NYuVQsJUKugPppCIV5wTf2s3D+eJvLpAEA2rIP/Utz8kFuOvVzMcZSlu8H894XiRC9yT@vger.kernel.org
X-Gm-Message-State: AOJu0YxsKEiRbZz+xc5Qj2RUx4s+u605373zBKq7IJRYgdf+hvpQUygA
	vcJxO4hiPiaE0UjOFsylJuVC2w4fpuXIo+IpQf4ew8TAv4kz9/sUK95bHgA9shHV2q2MSQjF+Mq
	bexxFJvSkkaX77wJR7TWuYD5bYGtWkF+ueuYf
X-Gm-Gg: ATEYQzwet8vdIUnkZeOBgVQpQktyPtT8FUy+82DvPmuCsvZiIIu/xKhiZ5nhteSS1MK
	GBO78wP9NmUon6ZWouFqPbH7frQzGnhbAxNKVBJL/+eS4j21Xk5EAY2iuMAuIZgTkKbfeaN/951
	FkcGNpb2OPStSeEqet2Z7HnPzRiOKd9zPz2SZQfpGjHD8vwzTTwcCsA028t0up6Xr9d1R0UO5UU
	yDH+eiNNVsqYw6DgiAC4eQmyX7PalYgs2ZqtXKaXXcCFvTOMUmZxCDeMLkUn0vZXilpSrtaNPFU
	+9U2G8T1z7+/WTyNWQ==
X-Received: by 2002:a17:907:3e23:b0:b93:8460:4af with SMTP id
 a640c23a62f3a-b972e638494mr92203866b.56.1773217773738; Wed, 11 Mar 2026
 01:29:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1773107475.git.zhoubinbin@loongson.cn> <600bfea91c1f14f089b2f7677578cd8690412fac.1773107475.git.zhoubinbin@loongson.cn>
 <CAAhV-H6zg2MfO2HC1+Q-FE4CJJLh2+Boo=ZP57XYPfufvCBhkw@mail.gmail.com>
In-Reply-To: <CAAhV-H6zg2MfO2HC1+Q-FE4CJJLh2+Boo=ZP57XYPfufvCBhkw@mail.gmail.com>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 11 Mar 2026 16:29:21 +0800
X-Gm-Features: AaiRm52LMclNErp_XC41jPQYbAEz3jRj8zDpbY8eNCvPJgxQGExmtPVsZSonLDk
Message-ID: <CAMpQs4Ja_+B28p30dJYM0WU-scwgZSxLO9igvsXY+0dtbSxAGA@mail.gmail.com>
Subject: Re: [PATCH 5/6] ASoC: dt-bindings: loongson,ls2k1000-i2s: Document
 Loongson-2K0300 compatible
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Xuerui Wang <kernel@xen0n.name>, 
	loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9150825F732
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273946-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[loongson.cn,kernel.org,gmail.com,perex.cz,suse.com,xen0n.name,lists.linux.dev,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,loongson.cn:email]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 3:57=E2=80=AFPM Huacai Chen <chenhuacai@kernel.org>=
 wrote:
>
> Hi, Binbin,
>
> On Wed, Mar 11, 2026 at 2:38=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.=
cn> wrote:
> >
> > Add "loongson,ls2k0300-i2s" dedicated compatible to represent the I2S
> > interface of the Loongson-2K0300 chip.
> >
> > The hardware integration of the Loongson-2K0300 I2S interface differs
> > significantly from that of the Loongson-2K1000. Specifically, while bot=
h
> > utilize external DMA controllers, the Loongson-2K0300 configures DMA
> > channel routing via the `dmas` property, whereas the Loongson-2K1000
> > requires additional register.
> Can this patch be the second one?

Typically, I place the dt-binding patch before the new platform driver
patches, while patch 2-4 involve code cleanup for existing drivers.
Therefore, I prefer to position this patch after them.
>
> Huacai
>
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../bindings/sound/loongson,ls2k1000-i2s.yaml | 22 ++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/sound/loongson,ls2k1000-=
i2s.yaml b/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.ya=
ml
> > index da79510bb2d9..51e23c189f7a 100644
> > --- a/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yam=
l
> > +++ b/Documentation/devicetree/bindings/sound/loongson,ls2k1000-i2s.yam=
l
> > @@ -14,9 +14,12 @@ allOf:
> >
> >  properties:
> >    compatible:
> > -    const: loongson,ls2k1000-i2s
> > +    enum:
> > +      - loongson,ls2k0300-i2s
> > +      - loongson,ls2k1000-i2s
> >
> >    reg:
> > +    minItems: 1
> >      items:
> >        - description: Loongson I2S controller Registers.
> >        - description: APB DMA config register for Loongson I2S controll=
er.
> > @@ -49,6 +52,23 @@ required:
> >
> >  unevaluatedProperties: false
> >
> > +if:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        enum:
> > +          - loongson,ls2k1000-i2s
> > +
> > +then:
> > +  properties:
> > +    reg:
> > +      minItems: 2
> > +
> > +else:
> > +  properties:
> > +    reg:
> > +      maxItems: 1
> > +
> >  examples:
> >    - |
> >      #include <dt-bindings/clock/loongson,ls2k-clk.h>
> > --
> > 2.52.0
> >

--
Thanks.
Binbin

