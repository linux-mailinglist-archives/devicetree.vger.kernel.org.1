Return-Path: <devicetree+bounces-106642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C61398B29A
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 04:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE44E284473
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 02:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5063725771;
	Tue,  1 Oct 2024 02:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="FX0kwgIP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E1DA5F
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 02:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727751473; cv=none; b=F1GmkpnOpdRxs2PNJoRZ/aKElnhHZ9dAI5Wy36zZqKghs2Jzaf8kr/kMlmpCqEPvOXMi5iSMPyd7sIUxlyKU2PoNakgvB374p8y4eFjixrG+2rlBqM/FI7IkVRgl2fORHHrtsUwdCJI186gaBnf9+slxE3UIo9+JmZOhk230lVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727751473; c=relaxed/simple;
	bh=a7gE8MxTh835RNRXGIOa2/xHJJmADtOY2kgSyMPAR1k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sltr0uDWxdg14W2qQZl7VPEBQjYLnLYx10/KoaEHSNJAzBj/ntxuJe+j5mIL9udDkNCT5isSnewRCV1XSrgQf00f69EWEE+a1D3CvAwYY3baK//Y2UNJghOUis7zHWgwgPnK3G27qSePmE1vYds6abcB7TmKsiJOwUC2T9Ai7cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=FX0kwgIP; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e25d164854dso4225158276.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 19:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1727751470; x=1728356270; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Zmmviv8Nbf7NFD947/zuQfLYwqSSIVbYL4cdeXLyvc=;
        b=FX0kwgIPDvC4CXol+IuftRDm+fA2Ryheqi6oDCeU3toMQePROXji2/2uGgrsZR3PB0
         bl3gRkLLtJ78xCLyPOmF17A7P6/ooZWKx3vFyOiy8XobgBU+VP+f6Y7GXniw7dK9Y+9x
         tcI+1gwI7WC/8UMfriGhK6PlQZnC0msJ/PXQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727751470; x=1728356270;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Zmmviv8Nbf7NFD947/zuQfLYwqSSIVbYL4cdeXLyvc=;
        b=uw45PVJsC1tS213D7npNJPwWkt2/1yoCSDxxg58a+MvOASCSDTyL86FNuHO1evlXrm
         A8+47P9XoD9H2nmQP1Q4QwdGYUkFIOrDwbk4vqm9SCgpaoTbPm7jfi+6cVzEWDLZcThT
         3E9b/MreBjyQMf+2BUI2X09pwX07JMWWqXWXTjAmCrn0vj9YsnYcDaBzNNKdKg2XYjB7
         WFYBsym5ourkQlpcWnKJdRY/lEEvatSuS3ipRFy+VGR3MjTTUnKofqPoKvsvjRsdDT+E
         8Wk6vT4cEIDGoM7CntrYVBnptC5rkHf+dF9fQemkg9yBy40+O9A/7jrV7yeRDwkmlpHN
         pN2g==
X-Gm-Message-State: AOJu0YyEv8bbJPNlueRXZ52x4G81c6LKsYrFBWmAnd1O6+jVCtoBRUTq
	fFxTV34rkVoSQcimxOGXEsqxazP9xIiuJTKL7c2t0wzVbbYDAs/8P6g99l4bR9SkS4IbzJe4xpQ
	UIfGTD39nbMOgrP4EBEOPXjoWQeJytIRhP+2pVg==
X-Google-Smtp-Source: AGHT+IH1mDHLPd77fwrmf4LGhrAPJo4Z5Zacv4dRF9GJmC8icx81sdl8WyUbXB83Ajnu5pcguW0R0YiL6NBcYC6wOW0=
X-Received: by 2002:a05:6902:2509:b0:e26:1be1:5a44 with SMTP id
 3f1490d57ef6-e261be15c33mr4330216276.33.1727751470715; Mon, 30 Sep 2024
 19:57:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240930093054.215809-1-pavitrakumarm@vayavyalabs.com>
 <20240930093054.215809-8-pavitrakumarm@vayavyalabs.com> <6ae71793-4188-4356-b314-e2d2db5b3cb1@kernel.org>
In-Reply-To: <6ae71793-4188-4356-b314-e2d2db5b3cb1@kernel.org>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Tue, 1 Oct 2024 08:27:39 +0530
Message-ID: <CALxtO0=7+8sX5LXK0XLjrCJH7P3s9FkKWPGVjp2q_dgq1q2M3g@mail.gmail.com>
Subject: Re: [PATCH v9 7/7] dt-bindings: crypto: Document support for SPAcc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, herbert@gondor.apana.org.au, 
	linux-crypto@vger.kernel.org, robh@kernel.org, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, bhoomikak@vayavyalabs.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,
   Thanks for the quick review and I do really appreciate everybody's time =
here.
   If something got missed, it's just because of the exhaustive
hardware and the SystemC Model testing.
   We make minimal/incremental changes and run things in debug mode
which takes a lot of time,
   since this is a large code base. Never ignored anything till date.
   Every single comment has been and will be addressed. We will work
on code quality as per your inputs.

Warm regards,
PK


On Mon, Sep 30, 2024 at 6:50=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 30/09/2024 11:30, Pavitrakumar M wrote:
> > Add DT bindings related to the SPAcc driver for Documentation.
> > DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
> > Engine is a crypto IP designed by Synopsys.
> >
> > Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> > Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
> > Co-developed-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> > Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> > Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
> > ---
> >  .../bindings/crypto/snps,dwc-spacc.yaml       | 71 +++++++++++++++++++
> >  1 file changed, 71 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-s=
pacc.yaml
>
> Bindings come before users, so please re-order your patches.

PK: Will re-order
>
>
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.ya=
ml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
> > new file mode 100644
> > index 000000000000..6b94d0aa7280
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
> > @@ -0,0 +1,71 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/snps,dwc-spacc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Synopsys DesignWare Security Protocol Accelerator(SPAcc) Crypto=
 Engine
> > +
> > +maintainers:
> > +  - Ruud Derwig <Ruud.Derwig@synopsys.com>
> > +
> > +description:
> > +  DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto En=
gine is
> > +  a crypto IP designed by Synopsys, that can accelerate cryptographic
> > +  operations.
> > +
> > +properties:
> > +  compatible:
> > +    contains:
>
> Nope, you cannot have contains. From where did you get it? Please use
> existing, recent bindings as starting point or just use exampl-eschema.

PK: Will fix that.
>
>
> Eh, you already got this comment and just ignored it.

PK: It got missed, never ignored. Too valuable to ignore comments from demi=
gods.
>
>
> You ignored all other comments as well. This is quite disappointing to
> ask us to do the same review over and over.

PK: That never was the intent nor the impression I wanted to make.
Appreciate everybody's time here.
>
>
> Best regards,
> Krzysztof
>

