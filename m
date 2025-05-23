Return-Path: <devicetree+bounces-179980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD74AC2472
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 15:48:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17AFB545113
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 13:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293D9293B74;
	Fri, 23 May 2025 13:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b="H/stWopO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0C7231850
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 13:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748008026; cv=none; b=acN/m3VzCQ1Hw3A8gk93Qt0i+kwbAf9z1kmbkcYOWa37TVJM9W0U84qmG98k7o/4sIuolwOzxuarja2ZKwWRix2g8u5DvCnokJElftaA7MEpd86vdDwuVJ5Gp9ZVsH+vExZnHuj8tn5tJlAB9s5lnJoqcLp7FsjIX96cRBUxSYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748008026; c=relaxed/simple;
	bh=FSHA508Zx5w9S90Tq/UMLHgC/yMWJlhl8nvRknZHglE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kvRHXXeXHI/xEJQ22UjzW5wOG6Grv0mTdjUsB5heLbLLNXplyN3hLT32i9S9xbcR1Y6oeS1bgGXXuEfRl5zS0gFvqZa9Mtawjx/Ypz3PA+7U8APaxHjbFxnsizH6u30HQlFNHN+JjD492HWxygc/RjzQMJP03BMh4nKalzxXE6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com; spf=pass smtp.mailfrom=criticallink.com; dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b=H/stWopO; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=criticallink.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-551eb17123cso9070436e87.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 06:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1748008021; x=1748612821; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YrwzOFaibSBgKTcouMrps7MGiltC3v5UujrMARI4LdU=;
        b=H/stWopOKv5SwodVqM1EiqfS+Y8453pHr1pfizTDP+Fp6TDrBF+/XS7qCUKa2Fly5s
         +FqhDxMA8RXqW4M1qVhak9BWhdEjIPPpPiIiYtTPk6tqONckmn/85iumanH+10dlWrB5
         52AApetRvtw1ZonLT3/Bz2cZ6MQcgRhMqB6Bic6rieqrohVqjt8ODOAGlRScY4aOejBl
         7R5gg66ozf4+mzHO/tLPHnOij2v+cYom2FpVZNsdO/Dh6/YoN0pDFXlKfsfCfXGsCvMu
         xbcMojycW/kpJDlOoNFsj2Nl7Mp5BEmBVlHaI2MzEO+MThqLXafv7L9aVtaRbyli+JZx
         ldWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748008021; x=1748612821;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YrwzOFaibSBgKTcouMrps7MGiltC3v5UujrMARI4LdU=;
        b=RrIR49WpQnXBa+fqQVdfzHcQKsCAZzITWVPtVsZt3nkb7OCVEFVgExaKEWcBtDO6d+
         Eg+1QbpYS2fohOV150iHSUMHA8vRV1DG9FWKUM73E9NJBHA9oED1Ci8gkWLsK0aRFmxc
         Qn4hX7s8E6GhFfdWV/Zl+ClFDEuvlXzQWdsJ9JDy4DJmSOLA+6DmNeIA7MdFbKoCNDtd
         N1cKV8i0imY6m9F1dTtE26ryhJXRY5CqPJITlZ2hfhErQPBoRQKm44p903CnKPdd1PZz
         B1b/Igu7CEN0crV6wvW+P3wC3hjSsPGLORcv38THyxGpSZA+WV4BA4S02oA9RR2doYWP
         qbMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJgakkuLgIc125xPMbxDfdO0naIhWvCeW2fSNWmpZOMTCG6ydsZgY/rrB/9xURPC9UZlfC0QB710r9@vger.kernel.org
X-Gm-Message-State: AOJu0YycbC62Be6WiA6DMPaChGAjUVGJOySKIlk0RslyqRnJwQpMjOVr
	/Q9qbEjp1nZ4MBRQd7JIfwxJ/SyCvX8ij1mzKPfbbw+ZkOr4bZAOes/oBtmIx0ZHHurFfj3hIyS
	Hpm+AqcSnHOX7JJMBoFMigldY6JmSG19Yys4sfUB3
X-Gm-Gg: ASbGncvjUKp4Fr6VE/R+Lw4WZf/LTtUVEvE85ujx10wXupy5418swK44r2MF9IxQi9J
	9c2mnrvJPpOKbK/5BmMQCrlOJGO4fH4UCLmyTwe0b79SSyNWRREjC42GDrSg4lMRpVr2S7vbXFH
	u7aCI2Uin+QguZaeY9odz4enliByg14gfaJbb76tH6fQ==
X-Google-Smtp-Source: AGHT+IHHm5TV9B7gRZ73qTKxIDPzBYU2sS4bwb2E7QFuk/XcQGzY8R2IXWtOb2EGzREWXaTS8diqJSkCr1nZgIDzuw0=
X-Received: by 2002:a05:6512:b28:b0:54b:117b:dc9f with SMTP id
 2adb3069b0e04-550e726d3d7mr10504874e87.57.1748008020530; Fri, 23 May 2025
 06:47:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
 <20250520-linux-stable-tps6594-pwrbutton-v1-1-0cc5c6e0415c@criticallink.com> <20250521-wandering-tested-porpoise-acbef7@kuoka>
In-Reply-To: <20250521-wandering-tested-porpoise-acbef7@kuoka>
From: Job Sava <jsava@criticallink.com>
Date: Fri, 23 May 2025 09:46:49 -0400
X-Gm-Features: AX0GCFssHvJPaC3DL1SsRw4B3Jo2LlFlcoIxMZjMh-TU0awo5CV7joxbaoy4nEk
Message-ID: <CAKMwjwTP=xSsX3UuK02sKbXWaU7y-ErytNYCL_P0UveDytQW2A@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mfd: Add power-button option for TI
 TPS6594 PMIC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Julien Panis <jpanis@baylibre.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, jcormier@criticallink.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 21, 2025 at 6:01=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, May 20, 2025 at 01:43:36PM GMT, Job Sava wrote:
> > The TPS6594 power-button option permits users to enter STANDBY or
> > ACTIVE state by a push, release, or short push button request.
> >
> > Signed-off-by: Job Sava <jsava@criticallink.com>
> > ---
> >  Documentation/devicetree/bindings/mfd/ti,tps6594.yaml | 15 +++++++++++=
++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml b/Do=
cumentation/devicetree/bindings/mfd/ti,tps6594.yaml
> > index 6341b6070366..a40808fd2747 100644
> > --- a/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
> > @@ -37,6 +37,21 @@ properties:
> >        device on the SPMI bus, and the secondary PMICs are the target d=
evices
> >        on the SPMI bus.
> >
> > +  ti,power-button:
> > +    type: boolean
> > +    description: |
> > +      Optional property that sets the EN/PB/VSENSE pin to be a
> > +      power-button.
> > +      TPS6594 has a multipurpose pin called EN/PB/VSENSE that can be e=
ither
> > +      1. EN in which case it functions as an enable pin.
> > +      2. VSENSE which compares the voltages and triggers an automatic
> > +      on/off request.
> > +      3. PB in which case it can be configured to trigger an interrupt
> > +      to the SoC.
> > +      ti,power-button reflects the last one of those options
> > +      where the board has a button wired to the pin and triggers
> > +      an interrupt on pressing it.
>
> Don't you need to handle two other cases as well? I assume you copied
> this from the other binding, but all three options are valid?
>
> Best regards,
> Krzysztof
>
Hello Krzysztof,

Thank you for your response!

I agree that the other two cases are valid options. However, for this
particular patch series, they may be out of scope. The primary goal of
this patch is to enable push-button functionality, rather than
addressing the VSENSE or EN modes.

Thanks again for the feedback.

Best regards,
Job

