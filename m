Return-Path: <devicetree+bounces-7032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C957BEB5F
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E934F1C20AC9
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3817A3FB01;
	Mon,  9 Oct 2023 20:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IAxwbfIG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030B5210B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 20:14:23 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D05CFA4
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:14:21 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-538575a38ffso8082420a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 13:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696882460; x=1697487260; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1uXQa/ZJEUdrojO5Aa4jqc3aw9/PZXqCTxGgZi3gBeY=;
        b=IAxwbfIGkC6eI+EKQnpNhsDeOhV7ITL2yAKz94esk7pzQH1uSGQckXJm0GiF9397iQ
         AYxwBAU5xUzC15VIymCJ9Rfd8CwRt+WVV6iPrYo17ZGi67aBEUT4XweOYi/bKqYYoKLg
         clUvFV7KniBbJOmsriL5/lp0aW31Kjg8m0qVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696882460; x=1697487260;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1uXQa/ZJEUdrojO5Aa4jqc3aw9/PZXqCTxGgZi3gBeY=;
        b=Fj/LKIiQFrNJcOA/G2XhmpThIKm/e9LP1Tp7NriK57rHcScrAwueDTJ+fFdLldvvYI
         DuKvMCVm6O4Uf1Q3+un7NJPiC9jNj8XqJJwkTV4Ei6nvPkqAUzmrVWgReG6hR3nT//B8
         5cR+lx0HhCrKf245oQSs7LCwaM1cPLv50WJI7oggGxMLavQtkecomEs9q3bC9Mty7tRd
         421sVB37TcMC0VXYVPeWI4UbqJbQknO0v0wKoribStUvT5383SLqTwiSXoqwHSiRd9BU
         gaLLxh6umUds7O/gHClJnXU7aZhUUDYVGjUVol94IIPPW8sTH1g3RuEEKmzRTjZEOjXr
         Q8jg==
X-Gm-Message-State: AOJu0YwUXJkZ7bdy0EMEtwCJkj3fb0cxH3iHdHe+5vN0/NTBVLiNc+8F
	PG/zt7KU+vuSrbQs8N3GkEs7hb/FvOvvCUQcBTk3cw==
X-Google-Smtp-Source: AGHT+IFDWJjckfskC1B6/f5654aTGjBi2cIOSwQzya/T2F9iuEa5b2KYet9co1B2GIPdNo7j/JwjDyd82T613LqkAcw=
X-Received: by 2002:a17:907:2ccf:b0:9a1:f73b:90ce with SMTP id
 hg15-20020a1709072ccf00b009a1f73b90cemr14217955ejc.54.1696882460035; Mon, 09
 Oct 2023 13:14:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926194242.2732127-1-sjg@chromium.org> <20230926194242.2732127-2-sjg@chromium.org>
 <CAPnjgZ0Xf3U1aj32LbU-xiU1AqwnM3JL1F8xX-wZ18oEmg+irw@mail.gmail.com>
 <CAMj1kXEXcX7BkDyfy-6_5Vnch=N+onza-yfWfsVaGLE93h2c+Q@mail.gmail.com>
 <CAPnjgZ2SEby-ndrs=W_afBJH56eqc=-mhp1F1nwkvWks+=B54Q@mail.gmail.com>
 <CAMj1kXED3S+0cq+VT7naBrmWrUwT=HZAaZOBRMv8Ui1Pey1QNQ@mail.gmail.com> <CAPnjgZ0LrsJ2_ENTYoBrnyFaH3UKdHs3D2XWY=TzBuBpBoTXZA@mail.gmail.com>
In-Reply-To: <CAPnjgZ0LrsJ2_ENTYoBrnyFaH3UKdHs3D2XWY=TzBuBpBoTXZA@mail.gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Mon, 9 Oct 2023 14:14:08 -0600
Message-ID: <CAPnjgZ0asp6EAaTOUnvB1M0rn=DcaVf-kEDC09G0GNVBXBx8yw@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] schemas: Add some common reserved-memory usages
To: Ard Biesheuvel <ardb@kernel.org>
Cc: devicetree@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>, 
	Rob Herring <robh@kernel.org>, Lean Sheng Tan <sheng.tan@9elements.com>, 
	lkml <linux-kernel@vger.kernel.org>, Dhaval Sharma <dhaval@rivosinc.com>, 
	Maximilian Brune <maximilian.brune@9elements.com>, Yunhui Cui <cuiyunhui@bytedance.com>, 
	Guo Dong <guo.dong@intel.com>, Tom Rini <trini@konsulko.com>, 
	ron minnich <rminnich@gmail.com>, Gua Guo <gua.guo@intel.com>, 
	Chiu Chasel <chasel.chiu@intel.com>, linux-acpi@vger.kernel.org, 
	U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi all,

On Fri, 6 Oct 2023 at 18:03, Simon Glass <sjg@chromium.org> wrote:
>
> Hi Ard,
>
> On Fri, 6 Oct 2023 at 17:00, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Fri, 6 Oct 2023 at 20:17, Simon Glass <sjg@chromium.org> wrote:
> > >
> > > Hi Ard,
> > >
> > > On Fri, 6 Oct 2023 at 11:33, Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Mon, 2 Oct 2023 at 19:54, Simon Glass <sjg@chromium.org> wrote:
> > > > >
> > > > > Hi Rob,
> > > > >
> > > > > On Tue, 26 Sept 2023 at 13:42, Simon Glass <sjg@chromium.org> wro=
te:
> > > > > >
> > > > > > It is common to split firmware into 'Platform Init', which does=
 the
> > > > > > initial hardware setup and a "Payload" which selects the OS to =
be booted.
> > > > > > Thus an handover interface is required between these two pieces=
.
> > > > > >
> > > > > > Where UEFI boot-time services are not available, but UEFI firmw=
are is
> > > > > > present on either side of this interface, information about mem=
ory usage
> > > > > > and attributes must be presented to the "Payload" in some form.
> > > > > >
> > > > > > This aims to provide an small schema addition for the memory ma=
pping
> > > > > > needed to keep these two pieces working together well.
> > > > > >
> > > > > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > > > > ---
> > > > > >
> > > > > > Changes in v7:
> > > > > > - Rename acpi-reclaim to acpi
> > > > > > - Drop individual mention of when memory can be reclaimed
> > > > > > - Rewrite the item descriptions
> > > > > > - Add back the UEFI text (with trepidation)
> > > > >
> > > > > I am again checking on this series. Can it be applied, please?
> > > > >
> > > >
> > > > Apologies for the delay in response. I have been away.
> > >
> > > OK, I hope you had a nice trip.
> > >
> >
> > Thanks, it was wonderful!
> >
> > > >
> > > > >
> > > > > >
> > > > > > Changes in v6:
> > > > > > - Drop mention of UEFI
> > > > > > - Use compatible strings instead of node names
> > > > > >
> > > > > > Changes in v5:
> > > > > > - Drop the memory-map node (should have done that in v4)
> > > > > > - Tidy up schema a bit
> > > > > >
> > > > > > Changes in v4:
> > > > > > - Make use of the reserved-memory node instead of creating a ne=
w one
> > > > > >
> > > > > > Changes in v3:
> > > > > > - Reword commit message again
> > > > > > - cc a lot more people, from the FFI patch
> > > > > > - Split out the attributes into the /memory nodes
> > > > > >
> > > > > > Changes in v2:
> > > > > > - Reword commit message
> > > > > >
> > > > > >  .../reserved-memory/common-reserved.yaml      | 71 +++++++++++=
++++++++
> > > > > >  1 file changed, 71 insertions(+)
> > > > > >  create mode 100644 dtschema/schemas/reserved-memory/common-res=
erved.yaml
> > > > > >
> > > > > > diff --git a/dtschema/schemas/reserved-memory/common-reserved.y=
aml b/dtschema/schemas/reserved-memory/common-reserved.yaml
> > > > > > new file mode 100644
> > > > > > index 0000000..f7fbdfd
> > > > > > --- /dev/null
> > > > > > +++ b/dtschema/schemas/reserved-memory/common-reserved.yaml
> > > > > > @@ -0,0 +1,71 @@
> > > > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > > > +%YAML 1.2
> > > > > > +---
> > > > > > +$id: http://devicetree.org/schemas/reserved-memory/common-rese=
rved.yaml#
> > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > +
> > > > > > +title: Common memory reservations
> > > > > > +
> > > > > > +description: |
> > > > > > +  Specifies that the reserved memory region can be used for th=
e purpose
> > > > > > +  indicated by its compatible string.
> > > > > > +
> > > > > > +  Clients may reuse this reserved memory if they understand wh=
at it is for,
> > > > > > +  subject to the notes below.
> > > > > > +
> > > > > > +maintainers:
> > > > > > +  - Simon Glass <sjg@chromium.org>
> > > > > > +
> > > > > > +allOf:
> > > > > > +  - $ref: reserved-memory.yaml
> > > > > > +
> > > > > > +properties:
> > > > > > +  compatible:
> > > > > > +    description: |
> > > > > > +      This describes some common memory reservations, with the=
 compatible
> > > > > > +      string indicating what it is used for:
> > > > > > +
> > > > > > +         acpi: Advanced Configuration and Power Interface (ACP=
I) tables
> > > > > > +         acpi-nvs: ACPI Non-Volatile-Sleeping Memory (NVS). Th=
is is reserved by
> > > > > > +           the firmware for its use and is required to be save=
d and restored
> > > > > > +           across an NVS sleep
> > > > > > +         boot-code: Contains code used for booting which is no=
t needed by the OS
> > > > > > +         boot-code: Contains data used for booting which is no=
t needed by the OS
> > > > > > +         runtime-code: Contains code used for interacting with=
 the system when
> > > > > > +           running the OS
> > > > > > +         runtime-data: Contains data used for interacting with=
 the system when
> > > > > > +           running the OS
> > > > > > +
> > > > > > +    enum:
> > > > > > +      - acpi
> > > > > > +      - acpi-nvs
> > > > > > +      - boot-code
> > > > > > +      - boot-data
> > > > > > +      - runtime-code
> > > > > > +      - runtime-data
> > > > > > +
> > > >
> > > > As I mentioned a few times already, I don't think these compatibles
> > > > should be introduced here.
> > > >
> > > > A reserved region has a specific purpose, and the compatible should=
 be
> > > > more descriptive than the enum above. If the consumer does not
> > > > understand this purpose, it should simply treat the memory as reser=
ved
> > > > and not touch it. Alternatively, these regions can be referenced fr=
om
> > > > other DT nodes using phandles if needed.
> > >
> > > We still need some description of what these regions are used for, so
> > > that the payload can use the correct regions. I do not have any other
> > > solution to this problem. We are in v7 at present. At least explain
> > > where you want the compatible strings to be introduced.
> > >
> >
> > My point is really that by themselves, these regions are not usable by
> > either a payload or an OS that consumes this information. Unless there
> > is some other information being provided (via DT I imagine) that
> > describes how these things are supposed to be used, they are nothing
> > more than memory reservations that should be honored, and providing
> > this arbitrary set of labels is unnecessary.
> >
> > > What sort of extra detail are you looking for? Please be specific and
> > > preferably add some suggestions so I can close this out ASAP.
> > >
> >
> > A payload or OS can do nothing with a memory reservation called
> > 'runtime-code' it it doesn't know what is inside. So there is another
> > DT node somewhere that describes this, and that can simply point to
> > this region (via a phandle) if it needs to describe the
> > correspondence. This is more idiomatic for DT afaik (but I am not the
> > expert).  But more importantly, it avoids overloading some vague
> > labels with behavior (e.g., executable permissions for code regions)
> > that should only be displayed for regions with a particular use,
> > rather than for a ill defined class of reservations the purpose of
> > which is not clear.
> >
> > What I am trying to avoid is the OS ending up being forced to consume
> > this information in parallel to the EFI memory map, and having to
> > reconcile them. I'd be much happier if this gets contributed to a spec
> > that only covers firmware-to-firmware, and is prevented from leaking
> > into the OS facing interface.
>
> I don't know about "another DT node". We don't have one at present.
>
> There is already a note in the DT spec about this:
>
> > 3.5.4 /reserved-memory and UEFI
>
> > When booting via [UEFI], static /reserved-memory regions must also be l=
isted in the system memory map obtained
> > via the GetMemoryMap() UEFI boot time service as defined in [UEFI] =C2=
=A7 7.2. The reserved memory regions need to be
> > included in the UEFI memory map to protect against allocations by UEFI =
applications.
> >
> > Reserved regions with the no-map property must be listed in the memory =
map with type EfiReservedMemoryType. All
> > other reserved regions must be listed with type EfiBootServicesData.
> >
> > Dynamic reserved memory regions must not be listed in the [UEFI] memory=
 map because they are allocated by the OS
> > after exiting firmware boot services.
>
> I don't fully understand what all that means, but does it cover your conc=
ern?

I have reread the discussion on this memory-reservation problem,
several dozen emails at this point. I believe we have covered
everything.

For now we will go with the binding in this patch. I hope it can be
applied soon, or if not, someone can send a different proposal to meet
the requirements.

Regards,
Simon

