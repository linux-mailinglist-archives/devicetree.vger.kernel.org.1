Return-Path: <devicetree+bounces-132642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F30729F7AC9
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:55:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47B6D163498
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7962C224890;
	Thu, 19 Dec 2024 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="m7Y3xX5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69D2223E9E
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734609293; cv=none; b=ZmS6n1Z+bntbjUquECdw1ikDKdw2f8d40Sb1Dyc8TGrZaFH3i4oVtomz3TsY9oyDsfz5MhQxSX+V0xACncQZbyrS3eNWZX9WY1GgcECJg+jJmT6FY8FMQFI+cn5TQKduq82jsmijTPKY22auiriSiaTJY+0D4nLUiH9nqO5hOYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734609293; c=relaxed/simple;
	bh=EHYcVJCjS9MLdkDbmlBkOr4fSwRLiQbf6tpZf9cStlo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MfXNQEoXqPPP5aPjy+D/n+I5VaAzRKs/wQe27eYMrAJ8fHVf1f9OazPbhNSDosgNhdsrs5aBzlVejZKAfmRMTRaIpMD2vsdEHFpufgrtBIIWbQpk3u+/zIvr0FSNv0q90aU7H5S11YjrrTWA3EITNmEW92ZLYt+8MstsTo4I7YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=m7Y3xX5R; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6f277a1ecfdso4812557b3.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 03:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734609290; x=1735214090; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gmwgUwZYCEh0dqq4h2U8DQ56kDdJWEaehUfFWLrhQUM=;
        b=m7Y3xX5RZP11Ji7gv88CdOs3TFLAc1OfeMiSGnsgwGVS0Dfve7qMaewTwNjEqubvTe
         23f2fA5AtYgZf7YAlw36gvKSOnc5PPJFTsFklZ/hfyngAubN/c0mJP0CBME5aywtsXbC
         ZSWhQoxnaWWkul3jfghL8esA+flW5QJspmKM7SFq5m0+3/3NQJ2gMSig7JPKiaaPoOyG
         T6rJfY1Eh+eS0/WaS+okBiEYRLncpytI6L4CUZ47nbWfEV9ZIBcuvBXhiqhdnWoI6Gq0
         5g+e4ZG9HMS0urMmYRWzl3D3w1RrOvZBHAbdXaoLoBXmC0Tb73VS1IKwmi24UjrlSnKy
         scRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734609290; x=1735214090;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gmwgUwZYCEh0dqq4h2U8DQ56kDdJWEaehUfFWLrhQUM=;
        b=clDwPF3m9npCMs7Hvx//fWV9zpnHTLdnPHe0Tr8IhE8s/QmjS9lWlyYN8L6I5YhT7K
         bKL1Ocb4DcwKjhcrggVZZWEA68aWYzLR/EY8sNx2sgMYmYw3xxAQWeD4y/Kfoi3m5AY4
         I9RbZd7Y3N6tjLuRSItsU3KLmvA/5wTUvVlD2UqhjbyF6M9bUsIciXhRhz9gI48hFWZ9
         wM0DuIGLpfHVUIPLiawnPSFuZZNnExxZkZfWkMut9LzJjgiXr05CfacWi4zL7GPJ1crP
         uoN3fnPxLefsz0u0yl4q2uGcLhtpYeNMLdUYGXFfGTJzIkwJZgPLYj+JthPEbSVBPKJ1
         jNjw==
X-Forwarded-Encrypted: i=1; AJvYcCXoShUEV2LQHOKtgU6qZmyDL7Dn/9zcuH2KrByQHyK4a8Kx9Yturl5kzq+8Fom0yeK0gMtF1dbboMOM@vger.kernel.org
X-Gm-Message-State: AOJu0YwjYFh1CL1CM4luvhR1nZBlSG6UE2sVdOPQKsnP0POWesT16lpM
	Qwcdo+ez/suN2ob133CU83dirhQna2pA4J5jf4pKG9HUxRJK/i8ySfPH7etWQLOxSmciVKVtAeq
	X/QM8qZS4Ne2pKe/2YJHdEWTjGwIxNByGiRJUGQ==
X-Gm-Gg: ASbGncsuL1Pj8Q3R7dCmv5S3uZCWCZR+vsK7LumOM2WBygJqqwIy+PAQrRW9Wsjxs20
	7G7flZgmv+4/eL2pFq29r/kTOnZ8G/UrTlKzLyA==
X-Google-Smtp-Source: AGHT+IF2LLGkHaJSarnPgvm0Kgxntz+fNWmnGhoCtlmHL5N4aI/xdAXLlv+RE/jSC8BOvNaB9ScXG0+oPhs6feqpfqg=
X-Received: by 2002:a05:690c:f86:b0:6ef:6f24:d0b1 with SMTP id
 00721157ae682-6f3e1c08eb2mr31197877b3.39.1734609289843; Thu, 19 Dec 2024
 03:54:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241218-dt-bcm2712-fixes-v4-0-54cc88b6c229@raspberrypi.com>
 <20241218-dt-bcm2712-fixes-v4-2-54cc88b6c229@raspberrypi.com> <lzvcaspulvsulbulqinzftt3xtdyro64hi674u2bnkpvbrihri@e2o247mjom5s>
In-Reply-To: <lzvcaspulvsulbulqinzftt3xtdyro64hi674u2bnkpvbrihri@e2o247mjom5s>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 19 Dec 2024 11:54:31 +0000
Message-ID: <CAPY8ntCX8+yg1RFhAXu4ystGF_JivTh43RY=k2P0bUm5JxvzRA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: display: Fix BCM2835 HVS bindings for BCM2712
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>, 
	=?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Doug Berger <opendmb@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Thomas Gleixner <tglx@linutronix.de>, Stefan Wahren <wahrenst@gmx.net>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof

On Thu, 19 Dec 2024 at 08:42, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Wed, Dec 18, 2024 at 02:48:33PM +0000, Dave Stevenson wrote:
> > Commit 6cfcbe548a3a ("dt-bindings: display: Add BCM2712 HVS bindings")
> > added the compatible string for BCM2712, but missed out that
> > the number of interrupts and clocks changed too, and both need to be
> > named.
> >
> > Update to validate clock, interrupts, and their names for the variants.
> >
> > Fixes: 6cfcbe548a3a ("dt-bindings: display: Add BCM2712 HVS bindings")
> > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> > ---
> >  .../bindings/display/brcm,bcm2835-hvs.yaml         | 84 ++++++++++++++++++----
> >  1 file changed, 70 insertions(+), 14 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
> > index f91c9dce2a44..fd25ee5ce301 100644
> > --- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
> > +++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
> > @@ -20,11 +20,20 @@ properties:
> >      maxItems: 1
> >
> >    interrupts:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 3
> > +
> > +  interrupt-names:
> > +    minItems: 1
> > +    maxItems: 3
> >
> >    clocks:
> > -    maxItems: 1
> > -    description: Core Clock
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    minItems: 1
> > +    maxItems: 2
> >
> >  required:
> >    - compatible
> > @@ -33,17 +42,64 @@ required:
> >
> >  additionalProperties: false
> >
> > -if:
> > -  properties:
> > -    compatible:
> > -      contains:
> > -        enum:
> > -          - brcm,bcm2711-hvs
> > -          - brcm,bcm2712-hvs
> > -
> > -then:
> > -  required:
> > -    - clocks
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: brcm,bcm2711-hvs
> > +
> > +    then:
> > +      properties:
> > +        clocks:
> > +          items:
> > +            - description: Core Clock
> > +        interrupts:
> > +          maxItems: 1
>
>
> clock-names and interrupt-names: false, unless driver needs them but all
> this should be explained in the commit msg because it would be a change
> to the binding.

False it is then.

Is there actually a full guide to binding requirements?
https://www.kernel.org/doc/html/latest/devicetree/bindings/writing-schema.html
is the closest I've found, but it doesn't obviously cover these types
of things.

> > +
> > +      required:
> > +        - clocks
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: brcm,bcm2712-hvs
> > +
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 2
> > +          maxItems: 2
> > +        clock-names:
> > +          items:
> > +            - const: core
> > +            - const: disp
> > +        interrupts:
> > +          items:
> > +            - description: Channel 0 End of frame
> > +            - description: Channel 1 End of frame
> > +            - description: Channel 2 End of frame
> > +        interrupt-names:
> > +          items:
> > +            - const: ch0-eof
> > +            - const: ch1-eof
> > +            - const: ch2-eof
> > +      required:
> > +        - clocks
> > +        - clock-names
> > +        - interrupt-names
>
> My previous comment still stands. Reply to people's feedback instead of
> ignoring it.

Your previous comment was
"Why requiring last two names? Commit msg does not explain that."

I didn't ignore it. The driver needs them, and the commit msg states
" but missed out that the number of interrupts and clocks changed too,
and *both need to be
named*.
Update to validate clock, interrupts, and *their names* for the variants."

Is that insufficient?

  Dave

> Best regards,
> Krzysztof
>

