Return-Path: <devicetree+bounces-52700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8AB887A67
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 22:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6ADC31F21803
	for <lists+devicetree@lfdr.de>; Sat, 23 Mar 2024 21:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6404DA05;
	Sat, 23 Mar 2024 21:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Dfit5m+P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F54543AB9
	for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711228345; cv=none; b=eglnbe0BB5vvweeS6xSfbIU7HrlZZQiXQapKEYmZnFF/pZWxIZbqWyogYu2LpZk/xs36qr2tOwf45mwXelcm0zT7ss8niZrYvEdfkBsj1RWI3Mro2EpPOuWU0ucHA+I/OUnz0mK5qSJ2PyNj1I+Czd+LEHSBTLt4ZmS+O0D2boI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711228345; c=relaxed/simple;
	bh=8KR4aIuTObNMIZnYJHEp/oGzvWujJwiW9zUrN00Y0aI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NotVMcBd+VkbOgVoES8CGtUMzJRZ2GIZDZg497LR5stkayr6i+NH4BEfEkRsdhSAo/aVRXrcdVKfgPdN92c2GiCdc03YY3YlAZiQMP3IzKqN3Gj38JZRWA5kc+rvQWYAZ+g2XNQY/qRHyjvHBJ0e0mjSSIUhvSpx+wtvgKDQVzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Dfit5m+P; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-60a0599f647so30256237b3.1
        for <devicetree@vger.kernel.org>; Sat, 23 Mar 2024 14:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1711228343; x=1711833143; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Y3ciYm0VxZfrPijrgMTJyMdjg8ZrAzLnw8EK162/0c=;
        b=Dfit5m+Pmr3dpiSh9d2JXKJRXjte4Y6efZAXVNdneO3ljOmWNifAjRBLxexUC4ZpJ7
         vCXVhw8xH5hCTIPt+KH79RqvTJLhBefHdGSLl1A/gOfix9SgH/jvH65aPsnISuQ7cK8U
         U9ozo86o8OgJVb22J3Rav3u3SPUIk1YaQTa0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711228343; x=1711833143;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Y3ciYm0VxZfrPijrgMTJyMdjg8ZrAzLnw8EK162/0c=;
        b=lFJqovM5Of3IjhU4Qtz64IHEswdDGMzrnZL7f1wg93ZJTX7Lyya6bI8F5th8jY5iBn
         Y4+C/ooVbzORMJorR93ynxuXqy9FUhnsjh4EgSjX1jM5jMHGhVl9Xe0ma0zWjt1dNK+K
         7RAMAFm1nRofsPC0Uf7VFuJ25KMbgwhbNy9euf1KHLiNf5/nf5V2C/uAFsuB8Uwp3fyA
         GNZ+XDJvnm4XaexW//jgqIAn0mlRVhG6UkBXGkcabZyfE2eu/Blj02sDK619swUYEea+
         KNljUcSP8JF9MxUJY3VnOyikCUKYv71XlY+MALUR43QRkaa4LUzd5We05HKSjPYtNQKq
         hnPA==
X-Gm-Message-State: AOJu0YzFaEMa1my4Q5QLKNNdQGSR8EJoCrbsEdPGwaTZaK3OcO59maIR
	AIC7X+OZW8ln1pGJpSgGmAEnwprcvK2s8MO1y8233HNENAkvfA2xBtslG+QQemBVCfqzQafqoOn
	6UpoU/BuhOYyBfKuchi7cDijUbcQZXbHV6I+j
X-Google-Smtp-Source: AGHT+IEDJszqpW1tP+cv5jXC4Oabaq1P2MqF2oGnuJi80CpG95eHJKzJDW7qqZ8SP+4LnF8HV/fDKJZxwXd9lg8KfQI=
X-Received: by 2002:a81:8404:0:b0:609:f898:9832 with SMTP id
 u4-20020a818404000000b00609f8989832mr2972227ywf.23.1711228343188; Sat, 23 Mar
 2024 14:12:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240320052449.175786-1-sjg@chromium.org> <20240321133905.GA1622174-robh@kernel.org>
In-Reply-To: <20240321133905.GA1622174-robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Sun, 24 Mar 2024 10:12:12 +1300
Message-ID: <CAFLszTg4UUhcs_oG=vq6ZuiyGfAGn015Usn58gYtGqKqLvNWUg@mail.gmail.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: mtd: fixed-partitions: Add alignment properties
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, 
	Michael Walle <mwalle@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Fri, 22 Mar 2024 at 02:39, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Mar 20, 2024 at 06:24:48PM +1300, Simon Glass wrote:
> > Add three properties for controlling alignment of partitions, aka
> > 'entries' in fixed-partition.
> >
> > For now there is no explicit mention of hierarchy, so a 'section' is
> > just the 'fixed-partitions' node.
> >
> > These new properties are inputs to the Binman packaging process, but are
> > also needed if the firmware is repacked, to ensure that alignment
> > constraints are not violated. Therefore they are provided as part of
> > the schema.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> > Changes in v9:
> > - Move binding example to next batch to avoid build error
> >
> > Changes in v7:
> > - Drop patch 'Add binman compatible'
> > - Put the alignment properties into the fixed-partition binding
> >
> > Changes in v6:
> > - Correct schema-validation errors missed due to older dt-schema
> >   (enum fix and reg addition)
> >
> > Changes in v5:
> > - Add value ranges
> > - Consistently mention alignment must be power-of-2
> > - Mention that alignment refers to bytes
> >
> > Changes in v2:
> > - Fix 'a' typo in commit message
> >
> >  .../bindings/mtd/partitions/partition.yaml    | 51 +++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> > index 1ebe9e2347ea..39c7d7672783 100644
> > --- a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
> > @@ -57,6 +57,57 @@ properties:
> >        user space from
> >      type: boolean
> >
> > +  align:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 1
>
> Shouldn't this and the others be 2?

It could be, but 1 means that there is no alignment and is a valid
value. I don't mind changing it if you like.

>
> Otherwise,
>
> Reviewed-by: Rob Herring <robh@kernel.org>

