Return-Path: <devicetree+bounces-1312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 566647A5D84
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 11:14:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FBAE1C20D8D
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 09:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C79D3D3A3;
	Tue, 19 Sep 2023 09:14:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444D3328B0
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 09:14:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A514EC433D9;
	Tue, 19 Sep 2023 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695114873;
	bh=HybvwmhtyJesrVC22Rh7+YLNJe2p1RpasmQCB/Dldfc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=BTxBUNRxDo8BBc71pE/LG13Ckbea7DicktBvolK5R5kKi2gw1Um3czp8B+WJ/V1Io
	 a1EPFo3XIALvhMaAZ0nzYevTcexOLSvPbQWihhmhRHWZbSMN9TCELt4mGrPUID7WqW
	 r0hau1g+dxfvdho1vLbQ+IBRds+T0rxAOVL1+NkVxjxPI7V2PA3Y2PSQD++Xpt/R2h
	 4WxUMtH26UykPDK8IFh6k5pX80UI/HC7vIlk4AI9+3UBoEkMsZodw4cKg+X0l/sgdO
	 76y6PqLvrfDMokALzfy/NuJJUyUtdRDkKe3EDfTaxEKp4bURqmaNIzIX4QbTj170vG
	 AMRdsWKu7TfSg==
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-99bf3f59905so723294166b.3;
        Tue, 19 Sep 2023 02:14:33 -0700 (PDT)
X-Gm-Message-State: AOJu0Yz+yrqNIgbNbGPjj8/2x5a/+K2EvcHoxoRj1ag3r4GjxNgyVCBZ
	QD2+XBqKsrqyUGMrz4ugmy+DD53+dzP5dbOXaHA=
X-Google-Smtp-Source: AGHT+IGS9l0z8unte+sTRED9Gzkj31X9NjUD+GwvTkR8yI8Ja3cCauOflzugWFIGsC1E/8MGxUZ8QcWj+4yH7SpKllU=
X-Received: by 2002:a17:906:5a63:b0:9ad:dfe5:f8d8 with SMTP id
 my35-20020a1709065a6300b009addfe5f8d8mr8634206ejc.63.1695114871998; Tue, 19
 Sep 2023 02:14:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918045125.4000083-1-k.son@samsung.com> <CGME20230918045134epcas1p1b80b338b66512a976c3783cd0e51da50@epcas1p1.samsung.com>
 <20230918045125.4000083-2-k.son@samsung.com> <20230918-4ef7f52da269f3a7e4023bb3@fedora>
 <005301d9eab7$5688c920$039a5b60$@samsung.com> <20230919-42333064be342f6ab125dd75@fedora>
In-Reply-To: <20230919-42333064be342f6ab125dd75@fedora>
From: Guo Ren <guoren@kernel.org>
Date: Tue, 19 Sep 2023 17:14:20 +0800
X-Gmail-Original-Message-ID: <CAJF2gTR6unxNBMs-xV_BU-+MxemR_GOgzPb1tz0A-aah0Y2U9g@mail.gmail.com>
Message-ID: <CAJF2gTR6unxNBMs-xV_BU-+MxemR_GOgzPb1tz0A-aah0Y2U9g@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: reset: Document th1520 reset control
To: Conor Dooley <conor@kernel.org>, wefu@redhat.com
Cc: Kwanghoon Son <k.son@samsung.com>, p.zabel@pengutronix.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jszhang@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	inki.dae@samsung.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 19, 2023 at 4:47=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> Guo,
>
> On Tue, Sep 19, 2023 at 02:08:32PM +0900, Kwanghoon Son wrote:
> > > > > +      - const: thead,th1520-reset
> > > > > +      - const: syscon
> > > >
> > > > iDumb question perhaps, but why is this a syscon?
> > >
> > > This is good point.
> > > In fact, I took it from the vendor kernel, and I tried to keep it as =
same as I could.
> > > Vendor also followed drivers/reset/reset-imx7.c
> > > As Rob said, if don't need it, I'll change it.
>
> > I have investigated vendor kernels, but it is still not sure reset info=
rmation.
> > I thought this is about sys_reg, but without datasheet, can't tell.
> > Therefore, should be stopped patch for a while until knows better comes=
 out.
>
> Is there documentation in English you can provide to these people that
> are trying to add support for your product?
Yes, Fuwei would help with this, and thx for all of your work.

>
> Thanks,
> Conor.



--=20
Best Regards
 Guo Ren

