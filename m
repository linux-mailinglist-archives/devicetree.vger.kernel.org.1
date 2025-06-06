Return-Path: <devicetree+bounces-183297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 324ECAD00FB
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 13:02:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4BBD168DF4
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 11:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD1C2857CB;
	Fri,  6 Jun 2025 11:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="bgLhgynR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D7427FB01
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 11:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749207766; cv=none; b=DkJVx+GTRSOhZ6ZPOt82kxUH2KNMfJxPWA8OHUx8smIqBETNskLiC/h7cmVD89+d0BdLHoyyQSLdNzMG9ILHFlh4Sfsrg1yot7vJjg/1b12Nz5UFlU//KJiTNpDZFEqPKKZzsAsZWr/3dsMOGBTjPwGyKiJk/xH9U/7IYZRl4qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749207766; c=relaxed/simple;
	bh=sozKJ1pwU9KulGgyEdYs/zM27kuoxVEnTkT5+Zsz6DA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BSN/SjaD710SHOCprfGw2Gvmb8SqIPmyjOMmVUrlpU3JRVL8rXO3Gduurt3vvJyCKA8j5qVMnce14TcXduCcJsIE2h5u/FQNV/fWkWpaujQDPe8o2odOyEmFtidyBY4qFu0Tll2niyeZ5bS5YCKv5eLhQDZKOn4Tzo0DzS1MoCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=bgLhgynR; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e812ed38d02so1777713276.0
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 04:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1749207763; x=1749812563; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ahRtYL+8yDFcivQALpBf2mOu61lf53lXLD7NaXvC65s=;
        b=bgLhgynRYJXCbIemWLbGKSD0JM+LwkgiES6QeIwuoM8N659Q4sWIZMPLOsMlaA/9/U
         enBFcl0aFNzt31BPfVMt01cuNZdThraBCOfVipYOruONQ4fryUetYvet/H7ZrPoMPbiU
         diMeAPTrxOpTW6g5xLXp64KAfB2+iiy2/+IPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749207763; x=1749812563;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ahRtYL+8yDFcivQALpBf2mOu61lf53lXLD7NaXvC65s=;
        b=Vg0JSoJOOp6eJY+GjbxMG5Ne8RW7wFDJrbOwItUyEFNC9YOqd5jg/hJ2z07fkPTjPx
         fCRi2PZo6IQPtbr57CRuGkRI1BgzN7FYXZUnEKiBdGFRjvSkbYuxT8vfXgC+xCGI8Isk
         9s6IrU463xytwgqVlD3ywd5SUO4IAA6QDAOfoOp3sKnOlk7WHNPVzUUuZGFJf+InHa7N
         bkCclVcil9IhXrpcWbbf94pwpfjF2f3J/MkYZhvK3LIEUXDWbJTZXmEdhZU+OK4181t8
         1AIJXfKVws25Xbg+ty/mEYaygRAzhgOwkqNvnKHNtEBa5JXKD8sXw+WMkplE6ZV1N6J2
         dxNw==
X-Forwarded-Encrypted: i=1; AJvYcCXhwkpGe1DAscXZ8oFGwhYkjFXUG2AD7bLPPNPqHvNS+CeTND2EZd4dTr09ljs58xL7miWMhry5R5JK@vger.kernel.org
X-Gm-Message-State: AOJu0YxiT30FiDNQT8PD99XEdHowcgkpcYEQ5wL+/hcV5gqhvY9GPVl+
	ogZD7BQoyYfTnjK20hdcl+ZcfIHeKeffHeGPah7maNmrNuUhq3xFHWKxxnVCbs4Z7Xwsh6TmckU
	nMc80/LIYu3Lviji9RiyZyF6fae2tLWNgsZzzyD8mgQ==
X-Gm-Gg: ASbGncvPiUh0rMfZRUpMPd5ruj+X1t9W6yKoAYGNHaBAc2i83TpueVuHRrC0gFBM3Ab
	RfifRvp4kOyV7s5AGEkOAsGnwiV9G2IOuVrDA436RzIDaYzZy9emaHe2YnjKiZKVYlO5ZBoaYdj
	oHes9xqizQis0HnDlTpIJbCJg/v4C9lssdQQ==
X-Google-Smtp-Source: AGHT+IGPzGcL995Ml8WGyM8F6pt8IT4FINGEryh/hRSPtX851l83sDh2GRSHk3nE//BpH0WioFvDwKZiue7AzRpCHR4=
X-Received: by 2002:a05:6902:18c7:b0:e7d:ca03:4474 with SMTP id
 3f1490d57ef6-e81a21c56b0mr4251268276.36.1749207763644; Fri, 06 Jun 2025
 04:02:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250602053231.403143-1-pavitrakumarm@vayavyalabs.com>
 <20250602053231.403143-2-pavitrakumarm@vayavyalabs.com> <fae97f84-bdb9-42de-b292-92d2b262f16a@kernel.org>
 <CALxtO0mpQtqPB0h_Wff2dLGo=Mxk02JJQkK4rn+=TuScNdSfxQ@mail.gmail.com>
 <3570be5b-cb20-4259-9a9b-959098b902d0@kernel.org> <CALxtO0mH=GwhQxQBsmMQYd+qgAue9WxXN1XWo9BncVJvJk6d8A@mail.gmail.com>
 <cd6e92af-1304-4078-9ed7-de1cb53c66da@kernel.org>
In-Reply-To: <cd6e92af-1304-4078-9ed7-de1cb53c66da@kernel.org>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Fri, 6 Jun 2025 16:32:32 +0530
X-Gm-Features: AX0GCFsCPqpKREAd4CvP0DqZO_E5hMC88EBV6qNiDOowkNyZIs0O6qWj-K7X0KI
Message-ID: <CALxtO0mVMTWqidSv7LQSQd-rA_TmJy_0xgBSd=mP27kg=AXQRg@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: crypto: Document support for SPAcc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, herbert@gondor.apana.org.au, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, adityak@vayavyalabs.com, 
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,
  Appreciate your inputs and feedback. My comments are embedded below.

Warm regards,
PK

On Wed, Jun 4, 2025 at 7:37=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 04/06/2025 14:20, Pavitrakumar Managutte wrote:
> >>
> >>>>> +
> >>>>> +  snps,vspacc-id:
> >>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>>>> +    description: |
> >>>>> +      Virtual SPAcc instance identifier.
> >>>>> +      The SPAcc hardware supports multiple virtual instances (dete=
rmined by
> >>>>> +      ELP_SPACC_CONFIG_VSPACC_CNT parameter), and this ID is used =
to identify
> >>>>> +      which virtual instance this node represents.
> >>>>
> >>>> No, IDs are not accepted.
> >>>
> >>> PK: This represents the specific virtual SPAcc that is being used in
> >>> the current configuration. It is used to index into the register bank=
s
> >>> and the context memories of the virtual SPAcc that is being used. The
> >>> SPAcc IP can be configured as dedicated virtual SPAccs in
> >>> heterogeneous environments.
> >>
> >> OK. Why registers are not narrowed to only this instance? It feels lik=
e
> >> you provide here full register space for multiple devices and then
> >> select the bank with above ID.
> >
> > PK: No, we cant narrow the registers to only this instance since its
> > is just a single SPAcc with multiple virtual SPAcc instances. The same
> > set of registers(aka register banks) and context memories are
> > repeated, but sit at different offset addresses (i*4000 +
> > register-offsets). The crypto hardware engine inside is shared by all
> > the virtual SPAccs. This is very much for a heterogeneous computing
> > scenario.
>
> Then maybe you have one crypto engine? You ask us to guess all of this,
> also because you do not upstream the DTS for real product. Any
> mentioning of "virtual" already raises concerns...

PK: Yes this is a single crypto engine, maybe I should have detailed
that in the cover letter. I will fix that. And what I have pushed in
the patch is my complete DTS. It might need updating depending on the
vendor use case, which we are committed to support and maintain here.

>
> Best regards,
> Krzysztof

