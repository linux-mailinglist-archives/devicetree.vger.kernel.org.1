Return-Path: <devicetree+bounces-12663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CC87DAC55
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 13:06:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02D1B1C208D6
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 12:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A548EC8E7;
	Sun, 29 Oct 2023 12:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aBtGXSZs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AED1818
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 12:06:42 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 376DBC1
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 05:06:37 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c1807f3400so39588491fa.1
        for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 05:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698581195; x=1699185995; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BYlRod4wDEFpvFXoIownUpP0zdL3YpKnzYbN8/TlHdU=;
        b=aBtGXSZsiImy7nYOPL8gUegLQ4ibeX/Vr200Gh6XvHOcH8uIGugNKkskT9C3SExiCr
         bYF71ChkLNwsHioljlQJV6GK1b5KE9st4jAK/azoyeg8cyV+png6CMH03J/GPivc1VgV
         CK3tAzZFvtvuxKKk2SzQdjHwcBA34zTdY62UJnlM8J1FIz+TnEVKPlkSWcXEylPMPWhy
         JcdXAZpUBsfq0kHV9XWx9J0Shtz1x04S7bs1ttKHpwHwkdRPzzDOh19jrFjMKPlNyTUP
         ZAQjqJ5XlbUmdDj6QUNps/M0orb32YPp2X3s80Vb9gpzWS2UPr3P6ozS8w7UwcbcST82
         EUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698581195; x=1699185995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BYlRod4wDEFpvFXoIownUpP0zdL3YpKnzYbN8/TlHdU=;
        b=bM3Uf2nO7sFhl68Wow/0WvubcBNH+NacR6I0MbjsjVsK9Vq3ZKiquT7trX7YTG+25E
         NNj0pdPGk3ACURpYGwQXC09Eyfji+41nJLUIamp1/GmsRfrjFeT3dPtVi2pQm7D8Fg1f
         aLIJw+7xCWB+OR3aC7vxu78XM3hI+AgVoqV5LjMU1pstMuyqTEzjyQl8XxhUltLs8sc2
         gHAM68PWR3f3FYyFp+kelMJHGiZQ9SPj9qBH3NJOiOMm78grPrYcVcd+NUow1O+x20F4
         XcpauB8FNzdR9TdJ5pXupVW4RWgPpIk7a9u8tNq6mis+mHqJkEHPjNniETzwfJkjOLGA
         EtTQ==
X-Gm-Message-State: AOJu0YzdOEr2JIw3HF+Q8jr6VSKCTPRQxEiM563XqRpMMbmsH/jHAyIj
	UBLwQ3cV+bMOru37KrDXygBQ8N0atIrUarDEax37FO2UERc=
X-Google-Smtp-Source: AGHT+IFlYHXakpABcT+G86MuL6mmAs4F5xcyGqvzxrWkMNa/wxd5ZdCBa36DOWkCm87NcXJU7hHpCtnwxe//EhXZW50=
X-Received: by 2002:a2e:8859:0:b0:2c1:86da:3f61 with SMTP id
 z25-20020a2e8859000000b002c186da3f61mr3413069ljj.9.1698581194879; Sun, 29 Oct
 2023 05:06:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024154338.407191-1-dsankouski@gmail.com> <20231024154338.407191-2-dsankouski@gmail.com>
 <5c126f13-d199-4e09-bb58-fbf281947115@linaro.org> <CABTCjFAkjw+EO2ZgPcbKP+dX8d-Rem+ceoNUVGahFM8zUhKbMQ@mail.gmail.com>
 <dd889d4b-fb76-4862-9756-110cec04927f@linaro.org>
In-Reply-To: <dd889d4b-fb76-4862-9756-110cec04927f@linaro.org>
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Sun, 29 Oct 2023 15:06:23 +0300
Message-ID: <CABTCjFBq4fDOq5KHCXxzv0C0fE5BY7eCJm5zvcggbdxnP_RvaQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: regulator: add Samsung s2dos05 pmic
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=81=D0=B1, 28 =D0=BE=D0=BA=D1=82. 2023=E2=80=AF=D0=B3. =D0=B2 23:17, Krz=
ysztof Kozlowski
<krzysztof.kozlowski@linaro.org>:
>
> On 28/10/2023 18:01, Dzmitry Sankouski wrote:
> > =D0=B2=D1=82, 24 =D0=BE=D0=BA=D1=82. 2023=E2=80=AF=D0=B3. =D0=B2 18:59,=
 Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org>:
> > ....
> >>> +title: Samsung s2dos05 regulator
> >>
> >> Not a PMIC/MFD device? If not, then:
> >> Samsung S2DOS05 Power Management IC
> >>
> >> Otherwise, if this is only for regulators:
> >> Samsung S2DOS05 Power Management IC Regulators
> >>
> > AFAIU, PMIC/MFD would be a device, with more than one function.
> > Analysing s2dos05 vendor code it's capable of generating interrupts
> > and measure current(which I'm planning to implement as a hwmon module).
> > There're regulators with interrupt functionality in linux. Since
> > current measurement
> > feature would be in hwmon subsystem, can we consider s2dos05 NOT a PMIC=
/MFD
> > device?
>
> These PMICs often have also RTC, USB connector, battery charger and/or
> fuel-gauge. If the main function is PMIC, keeping it in regulators seem
> fine. The bindings should be complete though (or at least ready for more
> features), so you should investigate hwmon or fuel-gauge now.
>
The right place for s2dos05 current measuring functionality is hwmon,
because fuel gauge term is for ICs determining the current State of
Charge of accumulators.
Hwmon modules doesn't rely on device tree binding, but on '.*_detect' funct=
ions,
so the binding would be fine.

