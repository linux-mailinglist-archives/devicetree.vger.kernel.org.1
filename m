Return-Path: <devicetree+bounces-182734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C65ACDDC5
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 14:21:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 336A9188E56E
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 12:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B9E28EA51;
	Wed,  4 Jun 2025 12:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="NMkVPZiv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642792C327E
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 12:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749039658; cv=none; b=M8q8wBQKXs2Mf67myPd0g5mcUwF8DW+qZfUuTL5zB4zhDz48mJhMu3LMI4vx4uRIC2IiCRKQInJ2PSwhPBm2BsOgS/dxhNAm8a3JXQQhZ+P/V3SFvhHtUF49oFzWa9evPqQ/df6OVzHgeUzVyPG47hgxOzqjJU695ztvTIr+c4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749039658; c=relaxed/simple;
	bh=UJO8fx4zrjzUtoGazJLMeF4iUYaNpSkc62UBtLsRXWY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BjF54rhAxc5SzRqVow5O79I7BPLfpzT2RCmx27QhP509eP++3e3DuVHHqxsIjBQcwATOZis4TYjzdnOc3/rlDNSb4mDwts5yLY5PMwfqOknQ44Af0UnljscQmrWhr0fJMW9HXm1909o4UGELqxCp33L3OPhhBB3nJHrjknxtYzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=NMkVPZiv; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2347012f81fso83169885ad.2
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 05:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1749039655; x=1749644455; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ztn23ugr0Et0nrkznY5+W0yWLUSMNK7u22fb8u5+6Hs=;
        b=NMkVPZivcRBwtpL9R+33KwuaB+8SNvHkf2nNNgHoUFVcjzLjbkjDrZONUuGCM2wGku
         KAoBJDWybfEdwheXsoq1yV+fmEDyIlb+ML55J9Jk/Qd4wVVZI++HhF972M+6gq6LnyaH
         TCWXS0+ieU+yvH0gJnoYcvyEkZaZkUJehc6qU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749039655; x=1749644455;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ztn23ugr0Et0nrkznY5+W0yWLUSMNK7u22fb8u5+6Hs=;
        b=jTK0jq0CfbSHHbcxKHa0YkNt/T/dzWxYnwyrVHgzhl217Hm13aU0NcA8uWi9qboIKW
         EiJViueIRPvePJ9IcFYI++95TmHCLfLx+1oYiSR272t2DrJSB1OBp4y61jjMozhqKU0Y
         jyMRRbsPt3XRBFiaFKEIsCfK9Qp0jIc9HrTmLa3/yw3olZuG2VO7rEwnX+xEFKsvahxy
         bEyT4H15l4GPdf3QkIS2KDLwj6oiF81YcGpyr4t1WVYVafUUwn6zU/d6aQUzdRBapKFE
         lF8/ntIEX3XifJFDuAn/dJLCFYSM9co1D48iT3ZFV5Iy0Co8DRHHaqexGvXKZ0+KG7I9
         JcVg==
X-Forwarded-Encrypted: i=1; AJvYcCVgM1ReLdMe31I0cUPVrr2A2Q1nfAYHXzufwwpyKyl58gSATwvtQRDR4xaa6LOCHpE3v08hgdKnHyuo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4o7VfzPd2PINPI6imZReli7LOjJ6x08Q+kHdlRtpgWsegP04O
	hhOUqhH5v0B5cUo51fjSKwakguMIjDM9yILNQJBbWfxeFtYNWf2+YLU0p09ERrZlHFm7oY7eUx/
	0rhx0mw8CPAmijSkmpxYIuejxH8+bc4OckadHOKvOxZpv5qbPo8ITYEs=
X-Gm-Gg: ASbGncurTANwutG5VAQ1n+xwb5WKmyzAu0N3SW0bpGQYqutXa3XmgCUURA+PzI1V6xY
	Cn4439UUU2ZcGvJMEOIZETvC9u62wtqhQARCdatWbAp2Go6TDim4t8HMBiUmd8ISsRIHSXdxFY+
	vFqHmsU5noDEns8bTkSBjuiiB6zp6G/Thc6A==
X-Google-Smtp-Source: AGHT+IEGMdIOkMV/uQ7zUK4UFRQ/YPtl1qy/zuPQpsLGtSK7QRRT2HbpWbVUamoQWNHk/kCuifvCQu4eWbBNQYRgwmA=
X-Received: by 2002:a05:6902:1207:b0:e7f:66d2:702b with SMTP id
 3f1490d57ef6-e8179dacd59mr3554043276.35.1749039645410; Wed, 04 Jun 2025
 05:20:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250602053231.403143-1-pavitrakumarm@vayavyalabs.com>
 <20250602053231.403143-2-pavitrakumarm@vayavyalabs.com> <fae97f84-bdb9-42de-b292-92d2b262f16a@kernel.org>
 <CALxtO0mpQtqPB0h_Wff2dLGo=Mxk02JJQkK4rn+=TuScNdSfxQ@mail.gmail.com> <3570be5b-cb20-4259-9a9b-959098b902d0@kernel.org>
In-Reply-To: <3570be5b-cb20-4259-9a9b-959098b902d0@kernel.org>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Wed, 4 Jun 2025 17:50:33 +0530
X-Gm-Features: AX0GCFsFCDL3Q847lJwuNMF8LuDkhE19L7HG54evtY5CFetlay22p3RmnolgEVg
Message-ID: <CALxtO0mH=GwhQxQBsmMQYd+qgAue9WxXN1XWo9BncVJvJk6d8A@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: crypto: Document support for SPAcc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, herbert@gondor.apana.org.au, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, adityak@vayavyalabs.com, 
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof.
  Appreciate your inputs. My comments are embedded below.

Warm regards,
PK

On Tue, Jun 3, 2025 at 5:34=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 03/06/2025 13:45, Pavitrakumar Managutte wrote:
> > Hi Krzysztof,
> >   Thanks for the inputs, my comments are embedded below.
> >
> > Warm regards,
> > PK
> >
> > On Mon, Jun 2, 2025 at 11:28=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On 02/06/2025 07:32, Pavitrakumar Managutte wrote:
> >>> Add DT bindings related to the SPAcc driver for Documentation.
> >>> DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
> >>> Engine is a crypto IP designed by Synopsys.
> >>>
> >>> Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> >>> Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> >>> Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> >>> Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
> >>
> >> Where was this Ack given? It's not on the lists, it's not public, so i=
t
> >> cannot be after your SoB.
> >
> > PK: Yes, its not on the mailing list. I will remove that.
>
> If it was given in private, then happened for sure before you sent the
> patch, so it should be above your SoB.

PK: Sure, I will fix that. Yes, that was an internal Ack.

>
> ...
>
> >>> +
> >>> +  snps,vspacc-id:
> >>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>> +    description: |
> >>> +      Virtual SPAcc instance identifier.
> >>> +      The SPAcc hardware supports multiple virtual instances (determ=
ined by
> >>> +      ELP_SPACC_CONFIG_VSPACC_CNT parameter), and this ID is used to=
 identify
> >>> +      which virtual instance this node represents.
> >>
> >> No, IDs are not accepted.
> >
> > PK: This represents the specific virtual SPAcc that is being used in
> > the current configuration. It is used to index into the register banks
> > and the context memories of the virtual SPAcc that is being used. The
> > SPAcc IP can be configured as dedicated virtual SPAccs in
> > heterogeneous environments.
>
> OK. Why registers are not narrowed to only this instance? It feels like
> you provide here full register space for multiple devices and then
> select the bank with above ID.

PK: No, we cant narrow the registers to only this instance since its
is just a single SPAcc with multiple virtual SPAcc instances. The same
set of registers(aka register banks) and context memories are
repeated, but sit at different offset addresses (i*4000 +
register-offsets). The crypto hardware engine inside is shared by all
the virtual SPAccs. This is very much for a heterogeneous computing
scenario.

>
>
> > This was also discssed with Rob Herring and updated from
> > "vpsacc-index" to "vspacc-id" based on Rob's inputs
> > https://lore.kernel.org/linux-crypto/CALxtO0mkmyaDYta0tfx9Q1qi_GY0OwUoF=
DDVmcL15UH_fEZ25w@mail.gmail.com/
>
> Yeah, it is still ID and thus look at his comment about proper
> justification.

PK: Agreed

>
> >
> >>
> >>> +    minimum: 0
> >>> +    maximum: 7
> >>> +
> >>> +  snps,spacc-internal-counter:
> >>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>> +    description: |
> >>> +      Hardware counter that generates an interrupt based on a count =
value.
> >>> +      This counter starts ticking when there is a completed job sitt=
ing on
> >>> +      the status fifo to be serviced. This makes sure that no jobs a=
re
> >>> +      starved of processing.
> >>
> >> Not a DT property.
> >
> > PK: This is a hardware counter which starts ticking when a processed
> > job is sitting on the STAT FIFO. This makes sure a JOB does not stay
> > in STATUS FIFO unprocessed.
> >
> > This was called watchdog timer - wdtimer, which we renamed to
> > "spacc-internal-counter" based on your inputs.
> > https://lore.kernel.org/linux-crypto/CALxtO0k4RkopERap_ykrMTZ4Qtdzm8hEP=
JGLCQ2pknQGjfQ4Eg@mail.gmail.com/
>
> I suggested to use watchdog schema if this device has a watchdog feature.
>
> Why would you configure here different values for the same hardware in
> different boards?

PK: Agreed, it does not make sense to have this here in DT. I am
moving this as a Kconfig option.

>
>
>
> Best regards,
> Krzysztof

