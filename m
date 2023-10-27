Return-Path: <devicetree+bounces-12381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C417D92C6
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A07F1C20FDC
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 08:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED03514A9C;
	Fri, 27 Oct 2023 08:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="jPXDVdwO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62894156C8
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:54:49 +0000 (UTC)
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A941D5A
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 01:54:47 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-773ac11de71so136126585a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 01:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1698396886; x=1699001686; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PdaenGl9X0PEqjSYbPqn12MNPqtdvNAV8Oju3UsrrJ0=;
        b=jPXDVdwOZWiByTXtns5MQe3jfkq3+LXPNufNTO1vQAUqaeDOYmtPlXlOgarrTtfLMV
         M2CIsdzRrbDx2e/dbgtc1HL589v6No7k5n/8idt5+kKkMEN7ljGspvIYBt8wIs8LJyF/
         lGle5OFT5TeQNoP+wcvR+U/VZZUj3qNNHfx1brIlHFUFG8h18uU185y4fpVCYleWGnXg
         dcvxG8+FGoDhdXZ00WFa5EW7Ap1lSFkPyWQaf8qBR2jJSOnjLS2Y5B2qQAA8elRN5akv
         sEILGqFzy6ldoqZ92xuT7byvPKgHHwbYs6O8mNkKqdXeSQr1JDtzhTq0enz7nCt/SVqs
         vZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698396886; x=1699001686;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PdaenGl9X0PEqjSYbPqn12MNPqtdvNAV8Oju3UsrrJ0=;
        b=PJJVcYRNVrFG1ysNQ80/dNNqqillASWh3MbkVLOP8vn0FWhCXys5SsA7Ibc9bcO5WA
         NGIrEG1+i1bZ8vkIvsR+iRg10SRXeQyZKGyVyKBFhWxvsoPY86Bx9LA1GmO39uVXa6jK
         3I+Tu/uo4w9B42OF9978BYLr2AwItkadbtvlWrMjlEFA6jTc/rtU6/+Zc7G4QXZh0w3Z
         W3Tsk5280vy1carR3ecWIEYcG6cD83JFGKzXGOidFsEtVGj15+BxVq1NoQJChHKDiVDP
         9jtulwdxlRi50LR/5VVl+owJtMdCbMb3u1k3d7KEKTtUS+xD0yZuYcNuMGmgaT8yjzTe
         ButQ==
X-Gm-Message-State: AOJu0YxkizM7R8zZl8GNrhw13coqEW2EufyVYOjAi1rW2YcnXXoDnSmi
	4uuDNIo0RvptCS8IFD26EfOiKDBeLdDqYgEm2RLWuA==
X-Google-Smtp-Source: AGHT+IEeCm4aK9bpRM+LcIhgy8a9j/Ju0WiTVSP3A9XTCbcW3Gefp3T6ONYgGWcMpDzNEJEHYxXa/UkgFynZJD761IY=
X-Received: by 2002:ae9:c114:0:b0:777:2792:4a2d with SMTP id
 z20-20020ae9c114000000b0077727924a2dmr1687510qki.65.1698396886165; Fri, 27
 Oct 2023 01:54:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024101902.6689-1-nylon.chen@sifive.com> <20231024101902.6689-2-nylon.chen@sifive.com>
 <20231024-yin-coliseum-11f5e06fec14@spud> <CAHh=Yk_h_1r7ZG+yLK=SoK9AgPkestuQDH-CK621mz=X-PA+cQ@mail.gmail.com>
 <20231025-utmost-enforcer-eda125f636ac@spud>
In-Reply-To: <20231025-utmost-enforcer-eda125f636ac@spud>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Fri, 27 Oct 2023 16:54:35 +0800
Message-ID: <CAHh=Yk_MfFowjzUypgZ7DEc2nNN2Pd7MAFCk6W=5P4Asd20T_A@mail.gmail.com>
Subject: Re: [v5 1/2] riscv: dts: sifive: unleashed/unmatched: Remove PWM
 controlled LED's active-low properties
To: Conor Dooley <conor@kernel.org>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, 
	emil.renner.berthing@canonical.com, vincent.chen@sifive.com, 
	greentime.hu@sifive.com, zong.li@sifive.com, nylon7717@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Conor Dooley <conor@kernel.org> =E6=96=BC 2023=E5=B9=B410=E6=9C=8825=E6=97=
=A5 =E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=8810:14=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Wed, Oct 25, 2023 at 05:32:21PM +0800, Nylon Chen wrote:
> > Hi Conor,
> >
> > Conor Dooley <conor@kernel.org> =E6=96=BC 2023=E5=B9=B410=E6=9C=8824=E6=
=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=8810:55=E5=AF=AB=E9=81=93=EF=BC=
=9A
> > >
> > > Hey,
> > >
> > > On Tue, Oct 24, 2023 at 06:19:01PM +0800, Nylon Chen wrote:
> > > > This removes the active-low properties of the PWM-controlled LEDs i=
n
> > > > the HiFive Unmatched device tree.
> > > >
> > > > The reference is hifive-unleashed-a00.pdf[0] and hifive-unmatched-s=
chematics-v3.pdf[1].
> > > >
> > > > Link: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-=
7bf8453f8698_hifive-unleashed-a00-schematics-1.pdf [0]
> > > > Link: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-=
e68ce76f4192_hifive-unmatched-schematics-v3.pdf [1]
> > >
> > > >
> > >
> > > This blank line should be removed if there is a follow-up.
> > thanks, I got it.
> > >
> > > > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > >
> > > What did Vincent contribute to this patch? Are you missing a
> > > co-developed-by tag, perhaps?
> > Yes, Vincent was the first person to find the PWM driver problem, and
>
> That sounds like s/Signed-off-by/Reported-by/ then.
Thanks, I got it.
>
> Cheers,
> Conor.

