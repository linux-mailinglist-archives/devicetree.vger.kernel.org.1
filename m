Return-Path: <devicetree+bounces-228044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD4DBE6FA1
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CFFD8502D32
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 07:41:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93BD523C516;
	Fri, 17 Oct 2025 07:40:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01B422173A
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 07:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760686857; cv=none; b=P9ROsMKiWjMeg3UY5iq78PXPK/S7HJRvH78PuWVnCIQ4hVWHXchfT1OuLUZedAeML8nPaLohOXA+SHFBjOciGT66aGc12CFBnMGHqqKRpngfvfB3C95PSy6H+/DNDg/ldYo8TZmI3Utk1Lr9DuOCnrrWcBcQ5KKkcwTphUcaTZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760686857; c=relaxed/simple;
	bh=cLKqVn8Z2TBqSDRqJdQ7TokPZf5KyC181WbIfaA6di8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dKPZtrJlDhI7vOzTIJpaTBJr8EBjLoGZfIjSzAA2PnQjhtVm5HQIki1aMt0VzMZ+8T7iPGPOS1onmQMkyfDt/ElDb8ABgvhRVlxeD1MF9OiWojy4M7bhebyVaEa6Rc12PMDxZ0OrzpNfFJdiBZi3Y7YAnxLRaVJ0VZiwDmye12E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5563c36f5dfso635712e0c.2
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:40:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760686854; x=1761291654;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FsO/hn7ZxXSEVqf0RwtjiX3Woc/Jh2yXP3yIe9HcSiA=;
        b=qZISnsVXiJ1zrEWuqID7Pd4UQi3M2/iB2hR3hGZ8p4rQ9oQ2a52l9VSr2kkwjMRK1K
         WgwhTnHJ4zR42SxWfHB5MlH/bgxDEXKhMbsXUzJkdLr5F8z+Ebfjw9bvvR+npXNXVqs9
         WtfmKP/Dg4fQ363t7bMXf8eiIip2Sx/E8KRkpROWTOrF1dt1eYyUcUJmCRVX+cCnzQ68
         1XXHm5bxWzkQuIasL/2jWkvwX7wwIViBhBU0Cz6ovyAYHF6A4fWYEB3ucA/8U11MCDGR
         PQY+gUiGd2jA75EXlXaRZ1MUaKRQuLVv7VBsDdomUlk+qiJWLe9zpwnnLz73wY/JRd3b
         GmfA==
X-Forwarded-Encrypted: i=1; AJvYcCX6ky61Gb8cPN5vFcqFfCK215hUT8+4ycfSUD37jJ6j7+cY3ZKjuIEiLAUix3CYkKqSmzZOH3px8LOy@vger.kernel.org
X-Gm-Message-State: AOJu0YztLSnjq49+ZxcSCb3fJhJTCqZep+oTfYX8Nj/Ps1Ydk5jN6dIK
	UVKvMGPncHPg5Oc+7UP1Qc5SHofbxdum66/YZHXx5CUhYRdtmoQ3dEkbFqijmuSw
X-Gm-Gg: ASbGncuN+uX3wjYDEkOX2hitndd2qg3Tyn73C+IkxgIcdyDtAIJ3tRCIBKfLK4nFc9n
	MHWJUeOGW/+l+o2TD+HaT1sql5jZfpEVeLI0FpxBGb41UwsK+oGcjeS9BjAS4UbGb65HVDfy/fu
	msWyEDyvyrA17J3ejYIJ+VJh0hT7y+8rRGUFZ/JhcHJ57S5I6HSQ7s+ZSjeR0VSWo9v+vddUMlu
	/QXVHi4EUumZqu1J4Oxsdv3g5JyzEdnRa+GLUzpqxbRD+DNwT39EiI5ZLALLdrMrgqHm2v8FDdK
	fH8VfNAZex/tqkBh4DRcUgXdXERdxLP9/ZwQar5uKYXt04xlDrVG2DmThiOjDSaQMmqQOzkZRh7
	Zf6fawIhCaRWZ69aoEuGoBgdxUFNCiRCvNyzMCOO7YXrIufxBRthhP6/bZYUcpLSn78jBxYjQM1
	ouB+EvF5eebjDGZLF1l9q2GY5wQy9SVTpKLY82wTIQN0BppL9r
X-Google-Smtp-Source: AGHT+IG9ppDr4Nc2Ro8Z2DeEfR50NXehMpzPz0qVFrE6wLHIfHG4cygOKC0qHzSvwv+FNi7XMj+XNQ==
X-Received: by 2002:a05:6102:3ec1:b0:5d5:f6ae:38ce with SMTP id ada2fe7eead31-5d7dd6f7d3cmr959889137.45.1760686854474;
        Fri, 17 Oct 2025 00:40:54 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-930bf6b17easm5973162241.3.2025.10.17.00.40.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 00:40:53 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-9231a251c01so471220241.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:40:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWnBQJDyHktwkluS7UzV+lCyo1mLNdA06PpOhseoS6SVmH/wt9X7UWSob6kTjuJM4htZI2TREisOgux@vger.kernel.org
X-Received: by 2002:a05:6102:3a13:b0:523:712d:4499 with SMTP id
 ada2fe7eead31-5d7dd6a442emr1096341137.26.1760686853648; Fri, 17 Oct 2025
 00:40:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015142816.1274605-1-herve.codina@bootlin.com>
 <20251015142816.1274605-3-herve.codina@bootlin.com> <aPHiAObA61OVf8mY@ninjato>
 <20251017093649.2d5549e4@bootlin.com>
In-Reply-To: <20251017093649.2d5549e4@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 17 Oct 2025 09:40:42 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV0As4XKG0P0y+pJpTT82Bq8qpq2rHufeX4_q0j-eOPPA@mail.gmail.com>
X-Gm-Features: AS18NWADsUKWogewe8kUaA0j69ci3ZpGRe2zEccgQpiOEHAKGQSGuqQNAabIlZg
Message-ID: <CAMuHMdV0As4XKG0P0y+pJpTT82Bq8qpq2rHufeX4_q0j-eOPPA@mail.gmail.com>
Subject: Re: [PATCH 2/4] iio: adc: Add support for the Renesas RZ/N1 ADC
To: Herve Codina <herve.codina@bootlin.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Fri, 17 Oct 2025 at 09:37, Herve Codina <herve.codina@bootlin.com> wrote=
:
> Wolfram Sang <wsa+renesas@sang-engineering.com> wrote:
> > On Wed, Oct 15, 2025 at 04:28:14PM +0200, Herve Codina (Schneider Elect=
ric) wrote:
> > > +static void rzn1_adc_vc_setup_conversion(struct rzn1_adc *rzn1_adc, =
u32 ch,
> > > +                                    int adc1_ch, int adc2_ch)
> > > +{
> > > +   u32 vc =3D 0;
> > > +
> > > +   if (adc1_ch !=3D -1)
> > > +           vc |=3D RZN1_ADC_VC_ADC1_ENABLE | RZN1_ADC_VC_ADC1_CHANNE=
L_SEL(adc1_ch);
> > > +
> > > +   if (adc2_ch !=3D -1)
> > > +           vc |=3D RZN1_ADC_VC_ADC2_ENABLE | RZN1_ADC_VC_ADC2_CHANNE=
L_SEL(adc2_ch);
> >
> > Are you open to either use an errno (maybe EACCES) or define something
> > custom (maybe RZN1_ADC_NO_CHANNEL) instead of hardcoded -1? I think I
> > like the latter a tad more.
>
> I prefer RZN1_ADC_NO_CHANNEL too instead of an error code and I will use
> that instead of -1 in the next iteration.

Or just -ENODEV or -ENOENT, and change the checks above to
"if (adc1_ch >=3D 0)"?

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

