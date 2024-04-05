Return-Path: <devicetree+bounces-56552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D72E899AAE
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 12:26:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3730E283808
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 10:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63D811649D7;
	Fri,  5 Apr 2024 10:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="p9BH6h0S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BFA161B53
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 10:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712312769; cv=none; b=FuKjBoqSVcf8MlZpGeeScrvxMUqRjG6vYi5/v/9k776hrWFFqdcWGEcObcrkv0+vX47VsbqQ31chJ5VxE/78KKoSEkgveuC+Vm3fw3S6Muw9U2RuIEhGPlm/JznwXdOXRHCJ5IHKJZOHUJ3QzVgG53FyIO1tkjQ9BCDXoIIoiFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712312769; c=relaxed/simple;
	bh=BmBFgykMPvqdnMoOyGWVJk45cd5kDC9vL/wpVpRu1Xs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kle4pCPxLdE7DfO8V4w2DFx14FgcwWKC02ZU5W7CoxOWV1QGjugAqoAeN9mSU2CEvH5uTNEL7Besosgkwp56ZcL3F0RiBlYOUJn4Qr3uECWztEdcYROkipcef73Pcn/MVF3QBfCd8vNotPuIsV8sLVvBoepTLHseu/Fh43eS5a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=p9BH6h0S; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso2075179276.0
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 03:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1712312766; x=1712917566; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iARPaYJhsEjl43QzURc5h56Y/6xNJ33w7/reZZghG84=;
        b=p9BH6h0S5gK+WTCDV66QyrPRpG2IELHqzgoT2ckfqC/SmyxB9mCQAvRgO7mhWuz2NT
         ojbvmKt9Y3swtLE50ZnkTHJUeFolks7+bZFbY3nfcFiA0dde6npQGzebgjiklP+4um8M
         TQNN8MlDFAv8WRSV5ncwy2h5gqjiB4t9NFesBOIVTkd0BJIBIkiPQDsGQMWdyPLZ4PrR
         QhUdRQ1njlk/d1KALeSEHnWmJ2lVvbLPbZo0KXkwGSR9tRF9HRYyXUnKLOhdA0QS2EaV
         FD3BuTtyERfjzadLeYOfFxYHdPAD/c8K5x+1ox2dDwjzFctROywebUMgZcVH4hsADJOq
         MwEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712312766; x=1712917566;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iARPaYJhsEjl43QzURc5h56Y/6xNJ33w7/reZZghG84=;
        b=YqTr/2t8gynT5eBoRlFlmDgKCs1tlKdvgfSJoG+QLkW4sCJR7Wlols2s2x4k29XeDP
         1RZaPt7FLEeRUP3+Skr85pU1uq8vXs2nib5e4k/MizSM93OeCopysm3gKt9jxTzsLEjr
         Uve9BXB+f6IEsRkBfb1IIwuDegVHU7JNDu4kjaVCeHd5HW/9yA2rm1pqTnHRMohogH8W
         JR9N+SHjjfYg2qHAUSCBwTOA5X1x4HjF6+V/CQqkrJ057d+NelgIh1dRV/3kpFGbkO5I
         BiTJprVZqaQkqZWDwocMxEPCYbREvpNO8SRZOEYt5QttI9lftfFcgGd1Lrox90o5IWEg
         HxIA==
X-Forwarded-Encrypted: i=1; AJvYcCU1U1Juoz3ydY4XCuEvP+u3eGBwiR9sFTUM8dj0VdG6GW6aNRc1M/gg1nz5nqJI/5fZzHI4cGaJUpyUB7o23vdVbVWl++XTNkRmEA==
X-Gm-Message-State: AOJu0Yx/EBkM9KZfSNki8vKDHCz1iUb1sT0KBakmsdbzLmSvD7ZS2nsM
	VkcXSW16sV4FGRJCi30KPOFF6BeqU8jamQ5lARY0CM4ZPR4ecvWbB1809LWD5GJU6EWG/fsEpxE
	4kJtpXzL22mC6DGAwK9XtZz7c2pWCy4KU5zq3qg==
X-Google-Smtp-Source: AGHT+IGiNf41UOijFcS+nvm5XPR4W+ctyL+gK32z/KhUeqbVvoF5ElMWQNkmalXvInXcffwLsTBQ8Hmu10M3phXGLpo=
X-Received: by 2002:a5b:f04:0:b0:dc6:d22e:ef4c with SMTP id
 x4-20020a5b0f04000000b00dc6d22eef4cmr765600ybr.17.1712312766450; Fri, 05 Apr
 2024 03:26:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240403150355.189229-1-git@luigi311.com> <20240403150355.189229-19-git@luigi311.com>
 <20240403-vista-defendant-ebadbaa52059@spud>
In-Reply-To: <20240403-vista-defendant-ebadbaa52059@spud>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 5 Apr 2024 11:25:50 +0100
Message-ID: <CAPY8ntC9SHJ6Ma17s0Vf2coB-0NUk-xgCLK9KCkxFMuXKHXNwg@mail.gmail.com>
Subject: Re: [PATCH v3 18/25] dt-bindings: media: imx258: Add alternate
 compatible strings
To: Conor Dooley <conor@kernel.org>
Cc: git@luigi311.com, linux-media@vger.kernel.org, 
	jacopo.mondi@ideasonboard.com, mchehab@kernel.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	sakari.ailus@linux.intel.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	pavel@ucw.cz, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Conor

On Wed, 3 Apr 2024 at 17:14, Conor Dooley <conor@kernel.org> wrote:
>
> On Wed, Apr 03, 2024 at 09:03:47AM -0600, git@luigi311.com wrote:
> > From: Dave Stevenson <dave.stevenson@raspberrypi.com>
> >
> > There are a number of variants of the imx258 modules that can not
> > be differentiated at runtime, so add compatible strings for the
> > PDAF variant.
> >
> > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> > Signed-off-by: Luis Garcia <git@luigi311.com>
> > ---
> >  .../devicetree/bindings/media/i2c/sony,imx258.yaml       | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > index bee61a443b23..c978abc0cdb3 100644
> > --- a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
> > @@ -13,11 +13,16 @@ description: |-
> >    IMX258 is a diagonal 5.867mm (Type 1/3.06) 13 Mega-pixel CMOS active pixel
> >    type stacked image sensor with a square pixel array of size 4208 x 3120. It
> >    is programmable through I2C interface.  Image data is sent through MIPI
> > -  CSI-2.
> > +  CSI-2. The sensor exists in two different models, a standard variant
> > +  (IMX258) and a variant with phase detection autofocus (IMX258-PDAF).
> > +  The camera module does not expose the model through registers, so the
> > +  exact model needs to be specified.
> >
> >  properties:
> >    compatible:
> > -    const: sony,imx258
> > +    enum:
> > +      - sony,imx258
> > +      - sony,imx258-pdaf
>
> Does the pdaf variant support all of the features/is it register
> compatible with the regular variant? If it is, the regular variant
> should be a fallback compatible.

It has the same register set, but certain registers have to be
programmed differently so that the image is corrected for the
partially shielded pixels used for phase detect auto focus (PDAF).
Either compatible will "work" on either variant of the module, but
you'll get weird image artifacts when using the wrong one.

  Dave

> Cheers,
> Conor.

