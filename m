Return-Path: <devicetree+bounces-254397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FE0D17C4D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 205DC3021FB0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC0143876C1;
	Tue, 13 Jan 2026 09:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ahYk/0Ig"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BA23815D4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768297569; cv=none; b=UAObLAFwduC349WqQ6k3ybjxB+zYQjc7qptU1vZO3PQ7ybcMsX0foQdgfOaRQ1uNhi9ITN4W8PjkmEQBuD+E7YIxSb/UikaPlFQCRGPlNb7WRo3iRzj8iKUO0RsNaICjyq+XAyl/xySTCvodIvuZ3N6Tm1aRXhlC/zNGxwukL0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768297569; c=relaxed/simple;
	bh=k/v2sHmLKvt5TKVX3IuC/AqiQrd5G3slPmFrDNQcw10=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e7y7VBp/TUIKzvpqaZL4VKg1h3UlqEtAw1w2R9QS3tKyzSNtBfNWgk1wgDI1P15lewEGWvzPFVMZYzRff6NfuLm/MOJ3xryFyq5QTB6HrzeSx42K82YQg/oTHVgGwm32Q2hxbOKwXjTxMR+nO+x4PXhO5WL4n3ABN/R/LAqmoJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ahYk/0Ig; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-64b4b35c812so11983638a12.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768297566; x=1768902366; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GOUzZNLG++BOpSvrwpgxq2EsKiP34h5YqbSCpa3qsnM=;
        b=ahYk/0IgSAMyHpVho+k73SeV7tSAND0WyGgqTw63lH8IKXqOcC0S4DhPTdaDuX/goK
         b8fhLiMd+GMEqj0NORQ7f5NjE0n4IOmfpOb9sgMb0FqbnwAS5fJQAg7NO2KeHlBJJy2Q
         w+yIyE1Jd4IM21juKkvHgMe/GBYaN8f/YqUW5nraBIj7/KUfmv0bKHsLKO9jgtqtm64Q
         VmwpZcSH0e2ED4chpak7C//DNlR9s6jBEnFMA+ghdGuInRlis9ld1QcG3R1WWm/OaTCz
         IAT32/RLRSzJc4cs6KlfjJuAMZJqP4k0QAF112n2gA29B8wTzc8P03VGsGjsoJ5G1QRX
         8GRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768297566; x=1768902366;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GOUzZNLG++BOpSvrwpgxq2EsKiP34h5YqbSCpa3qsnM=;
        b=KxmcBoPsJ14UTYPclzQy3r0qnPst+od1j9IG5rDwgWZNrIZ5LCvX2C6K5aKUvvJISS
         31YUy6yFSlOxT9d0GQR+1yHYGQSUohmnCGxy5t/S9dqwcC81HYYozfXK8LfRQjcBh7nk
         e3Db5V+vVOtjOteYPiiQKLZj/I+56xVAczs03Auy+QyCUCtyHNWVf2qzXQhnY8CGJk+0
         jID5VOGJxIhET1bDKpUqpS6vqbnWwTxHKd/PuklfwH5EgJhlTcBwtdIurxUywgMF23Tw
         VpX6sywuoXnuUdI3bGEE0+StxFcvBmLs9ECqTEfArH/DoOItPm2gxcdxZ9OOn8h2Uwww
         CGow==
X-Forwarded-Encrypted: i=1; AJvYcCV12Mdt8tuNpniL0qbw0EhQ+dtNfhsW35Um0PHomMNWoIqy9M3ZDSzQlJKhhURWEo9/aS0L0UlsQ+qt@vger.kernel.org
X-Gm-Message-State: AOJu0YwhFY2ugd+WTaMk6GBf6NZNiWK1x8gZuY3dORGEEN4lMp74HFdA
	Nff7UBkBj1JM2HPzBtvywKJASGTXuIguOcEN1Ta3eWukPYZ9sVOmudERfll7Dk4k1FpJOGNKgpB
	7mxDxH3ah1ZADX/ESeYzpmEjLhb8jw/i+QS24kWY4AQ==
X-Gm-Gg: AY/fxX7eRQ9A9kKOKykMXEsXNXbRwh11pOe48m4kp1hUnoCMWBN6arEYYS2gVtpVqKk
	m5kXLlP/pCzqDkH9StDsfqj51hc05mSIjXckQryFM2y9ZGeV5zZH5a4DH/3GCIwCxkeAw053HVF
	2bhzl1H9XsGXI2zj0nSifwVvlhhcUJT1WxbhUpw+C5WQbcMiXs2sqMZaBtS+PVHUmfGg4tWu0y+
	n4Eu4aG714B4X05kvhiDxeBejQLlPYFFDX09ce3sL5wyfAVBZEASDWFeiDSwi46l+qFuYpxJCdu
	+UHqCE2OZxlSbfVae4etlJOgZqfa
X-Google-Smtp-Source: AGHT+IE4ppyO6TNCEJ1MRxCWBiqYIPJmnwgMy07s6owsGKz/BEfqAuqNb/3sIyiNm3JkP0ej35Yf3DJuBcAcOZOJhOg=
X-Received: by 2002:a05:6402:1469:b0:641:8a92:9334 with SMTP id
 4fb4d7f45d1cf-65097dceb25mr19588758a12.6.1768297565698; Tue, 13 Jan 2026
 01:46:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
 <20260112-dpu-clocks-v2-2-bd00903fdeb9@linaro.org> <0076e60fb5a4d3a6970d93b4768d4f083baa7a83.camel@linaro.org>
In-Reply-To: <0076e60fb5a4d3a6970d93b4768d4f083baa7a83.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 13 Jan 2026 09:45:54 +0000
X-Gm-Features: AZwV_QhpR9BCCbo7U_TZArIDQIupa5HO8DwIuO1eb58xNI24g4aNmHsPIkfpRwA
Message-ID: <CADrjBPqUv7o+9Tc2buDcLtwCocNdwy=gXz+hBqXC0EGsoMq4Pw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: clock: google,gs101-clock: Add DPU
 clock management unit
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, kernel-team@android.com, 
	Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
	Doug Anderson <dianders@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andr=C3=A9,

On Mon, 12 Jan 2026 at 14:32, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> On Mon, 2026-01-12 at 14:16 +0000, Peter Griffin wrote:
> > Add dt schema documentation and clock IDs for the Display Process Unit
> > (DPU) clock management unit (CMU). This CMU feeds IPs such as image sca=
ler,
> > enhancer and compressor.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> > Changes in v2
> >  - alphanumeric placement (Krzysztof)
> > ---
> >  .../bindings/clock/google,gs101-clock.yaml         | 19 ++++++++++++
> >  include/dt-bindings/clock/google,gs101.h           | 36 ++++++++++++++=
++++++++
> >  2 files changed, 55 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock=
.yaml b/Documentation/devicetree/bindings/clock/google,gs101-
> > clock.yaml
> > index a8176687bb773ae90800b9c256bcccebfdef2e49..00620ab1872db0489dce182=
3ab500c0062b651f0 100644
> > --- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> > +++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> > @@ -28,6 +28,7 @@ properties:
> >    compatible:
> >      enum:
> >        - google,gs101-cmu-apm
> > +      - google,gs101-cmu-dpu
> >        - google,gs101-cmu-hsi0
> >        - google,gs101-cmu-hsi2
> >        - google,gs101-cmu-misc
> > @@ -82,6 +83,24 @@ allOf:
> >            items:
> >              - const: oscclk
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: google,gs101-cmu-dpu
> > +
> > +    then:
> > +      properties:
> > +        clocks:
> > +          items:
> > +            - description: External reference clock (24.576 MHz)
> > +            - description: DPU bus clock (from CMU_TOP)
> > +
> > +        clock-names:
> > +          items:
> > +            - const: oscclk
> > +            - const: bus
> > +
> >    - if:
> >        properties:
> >          compatible:
> > diff --git a/include/dt-bindings/clock/google,gs101.h b/include/dt-bind=
ings/clock/google,gs101.h
> > index 442f9e9037dc33198a1cee20af62fc70bbd96605..4ee46503663c1f8d9463536=
c347de5d991474145 100644
> > --- a/include/dt-bindings/clock/google,gs101.h
> > +++ b/include/dt-bindings/clock/google,gs101.h
> > @@ -634,4 +634,40 @@
> >  #define CLK_GOUT_PERIC1_CLK_PERIC1_USI9_USI_CLK              45
> >  #define CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK           46
> >
> > +/* CMU_DPU */
>
> Maybe add this block before hsi0 and after apm to keep alphabetic orderin=
g
> of CMU blocks in this file.

Thanks for the review. Good point, I'll fix that and send a v3.

Peter

