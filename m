Return-Path: <devicetree+bounces-20558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAB28002A4
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 05:37:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B5E81C20AEA
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 04:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9824259537;
	Fri,  1 Dec 2023 04:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WQTx8HFP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBE04171D
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 20:37:46 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50abb83866bso2478369e87.3
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 20:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701405465; x=1702010265; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B+jcpVk/CzMrLl1xGP/BznaGgT2T4KFEs7BkhiB0I8U=;
        b=WQTx8HFPEO943LbdIt/oxjvMXRxLn01/KEs/gmF9kOK+7n5+ZxQM+V3JXn53W481aZ
         PFUHpyjEdxjQXBanHtfR4bHfuAeWyCgJDOdemfCTwcpxU45dU4PONy0JFsNGl7xYUX4D
         84QfW1juZgvFAf4Y6P7RV+bfQke4KkUE0jB8M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701405465; x=1702010265;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B+jcpVk/CzMrLl1xGP/BznaGgT2T4KFEs7BkhiB0I8U=;
        b=Gb8VlKa2WV/Ee/29+vdxcWRS5jUKngcHL4sIJLgEhG9NhMNNxol/5Fa7gpjyY1xVBV
         YNVneT0AJXQSYd9Ako9tI8f+SimpMR/uehKt964O9uY9jGjpLDKpW5Gdo2BDbjtcUS23
         AjLxf/UNxaSVKQWXh+dVYsOcV1d5WWGsgz8bjB8GP+dOonbzV8uXw/EDBs9jHE9cwD+h
         3hGqQfhdew1o2W0eXgNuo/hlh5vPff7g7WeeU+KwJK0GgJKFfJyPgvm60uqYn8jvP1W+
         sA2pHnQ6CkQu02y9pFYvo820L2bQ98hfZ/g7tqtt3vhIaZd4FSsOwOeAP5dbCf07TFQj
         6YPA==
X-Gm-Message-State: AOJu0YzDLS3my+qu8GtHmkW8S2wit7poshQtCNwrMZEBi0CXFB1rnIcj
	sXkXRA3F7Y8QzQ2cK7TFBgPEydiCKTwzrVNOsaRBFg==
X-Google-Smtp-Source: AGHT+IHjtP70U0cou0Khp4frD8Bd9W2gzREg9o3JzohtHlJxZwZqTL81+2+AdCVmMC8QPCRHBgSKZ2QKlPiqh2l+Yf4=
X-Received: by 2002:ac2:46db:0:b0:50b:c2ed:e28a with SMTP id
 p27-20020ac246db000000b0050bc2ede28amr232773lfo.13.1701405465218; Thu, 30 Nov
 2023 20:37:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130083333.932862-1-wenst@chromium.org> <2288442b-9002-4711-9b64-16b204f19985@linaro.org>
In-Reply-To: <2288442b-9002-4711-9b64-16b204f19985@linaro.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 1 Dec 2023 12:37:34 +0800
Message-ID: <CAGXv+5HwzSX=x_0u-95i1+q+xbstrCmuMxRoKXJwEL5ErnRgOQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: cros-ec: Allow interrupts-extended property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, devicetree@vger.kernel.org, 
	chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 4:52=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 30/11/2023 09:33, Chen-Yu Tsai wrote:
> > "interrupts-extended" provides a more concise way of describing externa=
l
> > GPIO interrupts.
> >
> > Allow using this instead of "interrupts" plus "interrupt-parent" for
> > cros-ec.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > ---
> >  .../devicetree/bindings/mfd/google,cros-ec.yaml          | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml =
b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > index e1ca4f297c6d..e514eac9f4fc 100644
> > --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> > @@ -75,6 +75,9 @@ properties:
> >    interrupts:
> >      maxItems: 1
> >
> > +  interrupts-extended:
> > +    maxItems: 1
> > +
>
> I don't understand why you need it. You already have interrupts there,
> so this is redundant. I suggest to drop the patch or provide real
> rationale (which I doubt you can get :) ).

I'm sorry, I should've included this in the commit message.

The other half of the patch gets rid of a DT validation fail when
interrupts-extended is used instead of interrupts:

.../arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dtb: ec@0:
'interrupts' is a required property
    from schema $id: http://devicetree.org/schemas/mfd/google,cros-ec.yaml#


maxItems for interrupts-extended was included for completeness. Maybe it
isn't needed? But then how would the validator know how many items should
there be when interrupts-extended is used


Regards
ChenYu

