Return-Path: <devicetree+bounces-11816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B62967D6B15
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70CBA281A7B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0494D22F0C;
	Wed, 25 Oct 2023 12:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FCA2D604
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:17:22 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8877219F;
	Wed, 25 Oct 2023 05:17:20 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3b5220ea82cso296706b6e.0;
        Wed, 25 Oct 2023 05:17:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698236239; x=1698841039;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s928GPodxiFyTVYhjHx7bo5+mRGo8/ZxNiBtd95Cf+E=;
        b=oeRfM6rP4lSM1FxFtOwTihHNdv3EwIkyZaUoh7GaZXVKgw5hzdRGe0MFbTDkc1ua6Q
         hXEQ9CuL+DjtCKH1HNS4Ta6ZLrn5iLpHEse3oHJM+8MtAkUkYv8Mce2SGKzSed5KriYj
         GaHJuQANplwc3A1SHNwOkMicDt0wZ6THfwJNNtFl3N2hrVQPSpN5XgGj9H8/nEhszD5p
         HwmFeVMG0YGiigwUuXdwM9ADAL1F4zxerx5Wx/kGRHSym7ISS0gvE2sdNfnY/aS/+A3S
         okaIixMlh5+oD7CKNTHDSnhBg0YYxk5UGvWkDpIrGjY8a0bkjtlD4J+O7F1FdhvGVAm0
         kHzQ==
X-Gm-Message-State: AOJu0YyZtWAsDxTOpZDjpNtV9J74l6qVLkpj6D54kRfqpS9ObvPSvdtk
	LyzCqkoH8fK+Vi84O+jcMEW27lrvrNfBZg==
X-Google-Smtp-Source: AGHT+IG4z2fwqhSc3jzV5zmbP+u6FPp5NM83+Nq+7+v483RIZaGUk+E4aD55n85CVrP5rS62yROC/A==
X-Received: by 2002:a05:6808:1141:b0:3ab:870d:2d49 with SMTP id u1-20020a056808114100b003ab870d2d49mr21372026oiu.8.1698236239445;
        Wed, 25 Oct 2023 05:17:19 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id t9-20020a252d09000000b00d974c72068fsm4418019ybt.4.2023.10.25.05.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 05:17:18 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5a87ac9d245so55788467b3.3;
        Wed, 25 Oct 2023 05:17:18 -0700 (PDT)
X-Received: by 2002:a25:25c9:0:b0:da0:478a:940 with SMTP id
 l192-20020a2525c9000000b00da0478a0940mr4211358ybl.41.1698236238331; Wed, 25
 Oct 2023 05:17:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
 <46ef748dd27127ef9b39fa6c97fe51e8d3422a4f.1697199949.git.ysato@users.sourceforge.jp>
 <CAMuHMdU5brBPGuCaMra6pS4MRFvBFQ5vF9tEFVre=-032xuuMg@mail.gmail.com>
 <87ttqf6jjq.wl-ysato@users.sourceforge.jp> <D779B53C-D508-4112-8340-CB11F35EBACA@gmail.com>
 <CAMuHMdUpwdmOGB6BRfWFcd3NJ5Gigui7JpsX_RzMJPT5fsNyyA@mail.gmail.com> <38FB33F7-7740-4181-9F0F-902AC7D7C11C@gmail.com>
In-Reply-To: <38FB33F7-7740-4181-9F0F-902AC7D7C11C@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 25 Oct 2023 14:17:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV1+Ec=23pGrN-ZMDwx9xXgEeUs827J4768wmgfaOeCWg@mail.gmail.com>
Message-ID: <CAMuHMdV1+Ec=23pGrN-ZMDwx9xXgEeUs827J4768wmgfaOeCWg@mail.gmail.com>
Subject: Re: [RFC PATCH v3 25/35] Documentation/devicetree/bindings/sh/cpus.yaml:
 Add SH CPU.
To: "D. Jeff Dionne" <djeffdionne@gmail.com>
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org, 
	glaubitz@physik.fu-berlin.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

On Wed, Oct 25, 2023 at 2:10=E2=80=AFPM D. Jeff Dionne <djeffdionne@gmail.c=
om> wrote:
> On Oct 25, 2023, at 21:04, Geert Uytterhoeven <geert@linux-m68k.org> wrot=
e:
> > On Wed, Oct 25, 2023 at 1:33=E2=80=AFPM D. Jeff Dionne <djeffdionne@gma=
il.com> wrote:
> >>> On Oct 25, 2023, at 20:14, Yoshinori Sato <ysato@users.sourceforge.jp=
> wrote:
> >>> On Wed, 18 Oct 2023 23:27:43 +0900,
> >>> Geert Uytterhoeven wrote:
> >>>> On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
> >>>> <ysato@users.sourceforge.jp> wrote:
> >>>>> Renesas SuperH binding definition.
> >>>>>
> >>>>> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
> >
> >>>>> --- /dev/null
> >>>>> +++ b/Documentation/devicetree/bindings/sh/cpus.yaml

> >>>>> +properties:
> >>>>> +  compatible:
> >>>>> +    items:
> >>>>> +      - enum:
> >>>>
> >>>> Missing
> >>>>
> >>>>   - jcore,j2
> >
> >> We must not imply that Renesas is responsible for J2, or that it is a =
sanctioned SH core.
> >
> > Compatible values do not declare any such endorsement.
> >
> >> J-Core has the responsibility for maintenance of those SH ISA compatib=
le cores.
> >
> > The question is: does J2 implement the same instruction set as SH2,
> > i.e. can it run unmodified SH2 code?
>
> It can run all SH2 code, but an SH2 cannot run all J2 code.

This is exactly what

    compatible =3D "jcore,j2", "renesas,sh2";

represents.
Cfr. Section 2.3.1 ("compatible") of the Devicetree Specification
https://www.devicetree.org/specifications

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

