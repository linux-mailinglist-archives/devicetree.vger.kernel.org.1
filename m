Return-Path: <devicetree+bounces-3902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C8E7B077D
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:01:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 113DB28174D
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E599E347CF;
	Wed, 27 Sep 2023 15:01:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E556224FB
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:01:36 +0000 (UTC)
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 674B8FC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:01:32 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-690f7d73a3aso10189079b3a.0
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1695826892; x=1696431692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yTY333uB+lnx85QRK4UhGRcNGGIw7L3jD83kYOSz/mk=;
        b=Isgr6KgaqmmexAKyGkB8Hpoivf3+H2r2oB1yNE2ZON1oXyA7UU/kXuh8qBYeFFaeQU
         4br+w0ziVpC8/buC3NCHU4jla3zb0Dhmzgi2aadrLxO9cOCAIMMgxairPzXDVv8La+Aw
         PQbtq9qXMYNwa0lcaekQHg76pP8zhHGTU7hc2QSxEdY9BtlJmdRIu8tcp3JNrjMsRYjh
         RMMV326M1bgXSr7JUTlTdiD4C+irrVVBANvCGdkifTM/2rwyHviNhDI0k+vZpCJbn3Z+
         ONUVPDltKaqw2CpKPAzGu7ol35YSZkHUE/VcXzYEhG9IuB+Vtyu4SL0bEy0ltItn47qM
         YdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695826892; x=1696431692;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yTY333uB+lnx85QRK4UhGRcNGGIw7L3jD83kYOSz/mk=;
        b=RP3p4FTXUzsSYuXkgESJHR9adpokcD30qNKzmg1Xes2Ay/TVaPD1pLWR+0a9cyfS08
         ErNn1yR1qBNgwixn4MyHtC3j0CdxzQ1ONRylB5oZnX1q/kdj0EKUawXKGYfNdqJtsRcu
         M8rEomgktEuMSGtkFewdwEMwOgClmNbIDQgwoTR8hNKtXaM6fxHF54lwrQUw1vdcEYLw
         aYgI0PH7WEjwCo9YL5ypjACjLpW1zuCxoV2yp0ouJp5wGMNb+rTL2XEK/ZfraItdeV57
         sCSXjf4FWCgusLBwRhu7OrLduMtIA2ggsUraWaxfVp6RN7LEwv2B+NYAFg65E703Sglg
         vBpQ==
X-Gm-Message-State: AOJu0Yz3vwzB9sAY4VucQP5mH01FWrYF/Ju6CwbN8Dok5IXTjkpmvorO
	pyMd10xhfVrVfMH3rBloUv9Jnw==
X-Google-Smtp-Source: AGHT+IGS9wTm9vyVcNuS0LVmu2jhxPRdEUlru4/3+hbsDAoZiukfMAFderu5eKF3apag2JrFxYUQQQ==
X-Received: by 2002:a05:6a20:3d0b:b0:134:4f86:7966 with SMTP id y11-20020a056a203d0b00b001344f867966mr2743151pzi.9.1695826891666;
        Wed, 27 Sep 2023 08:01:31 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id b19-20020aa78113000000b0069302c3c054sm4003815pfi.207.2023.09.27.08.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 08:01:31 -0700 (PDT)
Date: Wed, 27 Sep 2023 08:01:31 -0700 (PDT)
X-Google-Original-Date: Wed, 27 Sep 2023 08:01:29 PDT (-0700)
Subject:     Re: [PATCH v2 0/9] KVM RISC-V Conditional Operations
In-Reply-To: <20230927-snowcap-stadium-2f6aeffac59e@spud>
CC: apatel@ventanamicro.com, pbonzini@redhat.com, atishp@atishpatra.org,
  Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shuah@kernel.org,
  ajones@ventanamicro.com, mchitale@ventanamicro.com, devicetree@vger.kernel.org, kvm@vger.kernel.org,
  kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
  linux-kselftest@vger.kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Conor Dooley <conor@kernel.org>
Message-ID: <mhng-ed1b5d0a-469c-43e3-a0fe-b8e498cde538@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 27 Sep 2023 07:45:28 PDT (-0700), Conor Dooley wrote:
> On Wed, Sep 27, 2023 at 07:54:49PM +0530, Anup Patel wrote:
>> On Mon, Sep 25, 2023 at 9:07 PM Conor Dooley <conor@kernel.org> wrote:
>> >
>> > On Mon, Sep 25, 2023 at 04:33:15PM +0100, Conor Dooley wrote:
>> > > On Mon, Sep 25, 2023 at 07:08:50PM +0530, Anup Patel wrote:
>> > > > This series extends KVM RISC-V to allow Guest/VM discover and use
>> > > > conditional operations related ISA extensions (namely XVentanaCondOps
>> > > > and Zicond).
>> > > >
>> > > > To try these patches, use KVMTOOL from riscv_zbx_zicntr_smstateen_condops_v1
>> > > > branch at: https://github.com/avpatel/kvmtool.git
>> > > >
>> > > > These patches are based upon the latest riscv_kvm_queue and can also be
>> > > > found in the riscv_kvm_condops_v2 branch at:
>> > > > https://github.com/avpatel/linux.git
>> > > >
>> > > > Changes since v1:
>> > > >  - Rebased the series on riscv_kvm_queue
>> > > >  - Split PATCH1 and PATCH2 of v1 series into two patches
>> > > >  - Added separate test configs for XVentanaCondOps and Zicond in PATCH7
>> > > >    of v1 series.
>> > > >
>> > > > Anup Patel (9):
>> > > >   dt-bindings: riscv: Add XVentanaCondOps extension entry
>> > > >   RISC-V: Detect XVentanaCondOps from ISA string
>> > > >   dt-bindings: riscv: Add Zicond extension entry
>> > > >   RISC-V: Detect Zicond from ISA string
>> > >
>> > > For these 4:
>> > > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>> >
>> > Actually, now that I think of it, I'm going to temporarily un-review this.
>> > From patch-acceptance.rst:
>> > | Additionally, the RISC-V specification allows implementers to create
>> > | their own custom extensions.  These custom extensions aren't required
>> > | to go through any review or ratification process by the RISC-V
>> > | Foundation.  To avoid the maintenance complexity and potential
>> > | performance impact of adding kernel code for implementor-specific
>> > | RISC-V extensions, we'll only consider patches for extensions that either:
>> > |
>> > | - Have been officially frozen or ratified by the RISC-V Foundation, or
>> > | - Have been implemented in hardware that is widely available, per standard
>> > |   Linux practice.
>> >
>> > The xventanacondops bits don't qualify under the first entry, and I
>> > don't think they qualify under the second yet. Am I wrong?
>> 
>> The Ventana Veyron V1 was announced in Dec 2022 at RISC-V summit
>> followed by press releases:
>> https://www.ventanamicro.com/ventana-introduces-veyron-worlds-first-data-center-class-risc-v-cpu-product-family/
>> https://www.embedded.com/ventana-reveals-risc-v-cpu-compute-chiplet-for-data-center/
>> https://www.prnewswire.com/news-releases/ventana-introduces-veyron-worlds-first-data-center-class-risc-v-cpu-product-family-301700985.html
>> 
>> @Palmer if the above looks good to you then please ack PATCH1-to-4
>
> These are announcements AFAICT & not an indication of "being implemented
> in hardware that is widely available".

The second two look to just be news articles quoting the first without 
any real new information, at least just from skimming them -- sorry if I 
missed something, though.

The article says "SDK released with necessary software already ported to 
Veyron" and "Veyron V1 Development Platform available", but aside from 
quotes of the press release I can't find information on either of those 
(or anything VT1 related, as there were some naming ambiguities).

Anup said during the call that they're still bringing up the chip and 
haven't started sampling yet, which usually means things are far from 
publicly availiable.  I thought I heard him say that these press 
releases would say the chip is sampling 2H23, but I can't find anything 
in them about sampling.

Anup also said it's availiable as IP and I remember something at Hot 
Chips talking about an example place and route for a VT1, which also 
sounds very much like a chip that's not availiable yet -- usually if 
there's a chip folks are a lot more concrete about that sort of thing.

So is there you can point to about this chip actually being publicly 
availiable?

