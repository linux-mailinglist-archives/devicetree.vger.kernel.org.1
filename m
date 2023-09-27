Return-Path: <devicetree+bounces-3922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E987B082A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:26:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 75461281683
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F0B450C1;
	Wed, 27 Sep 2023 15:26:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEDF6FA2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:26:49 +0000 (UTC)
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A00D139
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:26:48 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-578a91ac815so7636025a12.1
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695828407; x=1696433207; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ijGPnahnzmrBSaCobVNQmuUKYt7yPdCWIYWpIr/wTF8=;
        b=hjKeOztX77x/UgBlb/sOUWMw2NpVfTcL6gcfBxYgDAlEOGlGQzgpcldsOKffgPbLXG
         Pf5oMfdNRhvBigCN07hCjMRv334euBZhX7mBA1ypLVxXvH4KYq/BrYvuJi94j6abjjLC
         mNfZLzCJKX8cdREu6Lg9Yll3QThHnZO3M+OSvicXvcXB5igrKf3SxUffcC5fPacsD2O1
         K+1BtM/3y/NjDEe6L7S9a1KW9PjBq2A1ezP9fZRqzEW0L+Fii8iTOFC90Iox2hGxSkLh
         8CMZ4VzMYHVnS0eHFFLwuLp/Lt0HcUiz2W1EIdP80CIqrop82Lxfm6VBidzQ1zgmqFpG
         ecew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695828407; x=1696433207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ijGPnahnzmrBSaCobVNQmuUKYt7yPdCWIYWpIr/wTF8=;
        b=nZEP6/TNRHrwCWUbblq8F6V4Lrzb0eWahomRoPnXKLxpr50UUI2VdQbjCor2Lmljl5
         +gjMbDfmgrCqFTrQpehkHdagu0JIBxyPgn1ttHFp7iADlRZdCrLiPZobvBcfLPdCMVWf
         adqnelLmCrm8UW4QFwnIuAIDmHbl840mxP/myZ7Qse+FmEKGvYXIBDcIwa/NtaA80wpM
         PaC0YaeZwm/l4Of/3acKine0pGw5MuvXy5Oe1d+BwnYnS8PYOAVYK8gGpopCdv2SSkOD
         F8mJcT5PcWl9y50XzwISHYgWJmrqeK5Wtz2D9F6oXkrRop1Y/llWGHBYiznePASsZXhX
         4S9w==
X-Gm-Message-State: AOJu0YyNnzS2/OOn46ApCdpCcGoCFoOmLgIA5ozo79ePzi1PqtxhcWRj
	W9IicqHhVW2z5lDWrYLWdd+fO3QvQl1cmUyu6mFLMQ==
X-Google-Smtp-Source: AGHT+IFU1LUpaO7sP7SIqPuvetp24KKi4LWrjjiTg6yxaFt1J+qS7fbA4ID8HUUXxvqmzStEvujat718B0LrMVGcjMI=
X-Received: by 2002:a17:90a:4983:b0:268:1b60:5031 with SMTP id
 d3-20020a17090a498300b002681b605031mr2049707pjh.12.1695828407438; Wed, 27 Sep
 2023 08:26:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230927-snowcap-stadium-2f6aeffac59e@spud> <mhng-ed1b5d0a-469c-43e3-a0fe-b8e498cde538@palmer-ri-x1c9>
In-Reply-To: <mhng-ed1b5d0a-469c-43e3-a0fe-b8e498cde538@palmer-ri-x1c9>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 27 Sep 2023 20:56:35 +0530
Message-ID: <CAK9=C2Xx76i-FmTm2Qt_9PssLrLL3zUDvxOUZRyyEQZzDV7JDw@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] KVM RISC-V Conditional Operations
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Conor Dooley <conor@kernel.org>, pbonzini@redhat.com, atishp@atishpatra.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, shuah@kernel.org, ajones@ventanamicro.com, 
	mchitale@ventanamicro.com, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Sep 27, 2023 at 8:31=E2=80=AFPM Palmer Dabbelt <palmer@dabbelt.com>=
 wrote:
>
> On Wed, 27 Sep 2023 07:45:28 PDT (-0700), Conor Dooley wrote:
> > On Wed, Sep 27, 2023 at 07:54:49PM +0530, Anup Patel wrote:
> >> On Mon, Sep 25, 2023 at 9:07=E2=80=AFPM Conor Dooley <conor@kernel.org=
> wrote:
> >> >
> >> > On Mon, Sep 25, 2023 at 04:33:15PM +0100, Conor Dooley wrote:
> >> > > On Mon, Sep 25, 2023 at 07:08:50PM +0530, Anup Patel wrote:
> >> > > > This series extends KVM RISC-V to allow Guest/VM discover and us=
e
> >> > > > conditional operations related ISA extensions (namely XVentanaCo=
ndOps
> >> > > > and Zicond).
> >> > > >
> >> > > > To try these patches, use KVMTOOL from riscv_zbx_zicntr_smstatee=
n_condops_v1
> >> > > > branch at: https://github.com/avpatel/kvmtool.git
> >> > > >
> >> > > > These patches are based upon the latest riscv_kvm_queue and can =
also be
> >> > > > found in the riscv_kvm_condops_v2 branch at:
> >> > > > https://github.com/avpatel/linux.git
> >> > > >
> >> > > > Changes since v1:
> >> > > >  - Rebased the series on riscv_kvm_queue
> >> > > >  - Split PATCH1 and PATCH2 of v1 series into two patches
> >> > > >  - Added separate test configs for XVentanaCondOps and Zicond in=
 PATCH7
> >> > > >    of v1 series.
> >> > > >
> >> > > > Anup Patel (9):
> >> > > >   dt-bindings: riscv: Add XVentanaCondOps extension entry
> >> > > >   RISC-V: Detect XVentanaCondOps from ISA string
> >> > > >   dt-bindings: riscv: Add Zicond extension entry
> >> > > >   RISC-V: Detect Zicond from ISA string
> >> > >
> >> > > For these 4:
> >> > > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> >> >
> >> > Actually, now that I think of it, I'm going to temporarily un-review=
 this.
> >> > From patch-acceptance.rst:
> >> > | Additionally, the RISC-V specification allows implementers to crea=
te
> >> > | their own custom extensions.  These custom extensions aren't requi=
red
> >> > | to go through any review or ratification process by the RISC-V
> >> > | Foundation.  To avoid the maintenance complexity and potential
> >> > | performance impact of adding kernel code for implementor-specific
> >> > | RISC-V extensions, we'll only consider patches for extensions that=
 either:
> >> > |
> >> > | - Have been officially frozen or ratified by the RISC-V Foundation=
, or
> >> > | - Have been implemented in hardware that is widely available, per =
standard
> >> > |   Linux practice.
> >> >
> >> > The xventanacondops bits don't qualify under the first entry, and I
> >> > don't think they qualify under the second yet. Am I wrong?
> >>
> >> The Ventana Veyron V1 was announced in Dec 2022 at RISC-V summit
> >> followed by press releases:
> >> https://www.ventanamicro.com/ventana-introduces-veyron-worlds-first-da=
ta-center-class-risc-v-cpu-product-family/
> >> https://www.embedded.com/ventana-reveals-risc-v-cpu-compute-chiplet-fo=
r-data-center/
> >> https://www.prnewswire.com/news-releases/ventana-introduces-veyron-wor=
lds-first-data-center-class-risc-v-cpu-product-family-301700985.html
> >>
> >> @Palmer if the above looks good to you then please ack PATCH1-to-4
> >
> > These are announcements AFAICT & not an indication of "being implemente=
d
> > in hardware that is widely available".
>
> The second two look to just be news articles quoting the first without
> any real new information, at least just from skimming them -- sorry if I
> missed something, though.
>
> The article says "SDK released with necessary software already ported to
> Veyron" and "Veyron V1 Development Platform available", but aside from
> quotes of the press release I can't find information on either of those
> (or anything VT1 related, as there were some naming ambiguities).
>
> Anup said during the call that they're still bringing up the chip and
> haven't started sampling yet, which usually means things are far from
> publicly availiable.  I thought I heard him say that these press
> releases would say the chip is sampling 2H23, but I can't find anything
> in them about sampling.
>
> Anup also said it's availiable as IP and I remember something at Hot
> Chips talking about an example place and route for a VT1, which also
> sounds very much like a chip that's not availiable yet -- usually if
> there's a chip folks are a lot more concrete about that sort of thing.
>
> So is there you can point to about this chip actually being publicly
> availiable?

The Veyron V1 chiplet samples are not available publicly at the
moment. Being available as an IP is not the same as chiplet
samples being available.

If this does not satisfy patch acceptance criteria then I will
defer/drop the XVentanaCondOps related patches for now.

Can you ack PATCH2 and PATCH3 which deals with Zicond ?

Regards,
Anup

