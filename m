Return-Path: <devicetree+bounces-138432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADCCA10545
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 12:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B359188792A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E303422DC5D;
	Tue, 14 Jan 2025 11:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Hai0nwT8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4006D20F97C
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 11:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736853927; cv=none; b=bihkbEUFFb/yyk2HNAK0BrLSrajZWwI08lrW8M2Gv8XjYf24atHlKIfN04LjcTGRbqoSN1EcF+4ij4vgo6KhVjuI3TFmOW987wxywEDOy/jnU6dZlKMiT7/j+PrlWPCthXvwmrczwViAtNzXf8vl78kFUCz1gSj5WK7PKBV/T7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736853927; c=relaxed/simple;
	bh=hJ+djB3d/zAzbtQIrH3vQ1RhorhbA7PXwlkOtnRzC24=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UFmCwsoL4muNRUH2rI7oJbRs4EdwrRIjEhflGHWL5eeFhe9GYWkn/7OVz5FWdJBBS8X25WTm4kvh6jUC4Plg5aCsS2AYazIUZaD5w57dYfiJPBHR3JyzW9D5o5JxlmiHaNwCM9erUADH2rWMheUzrUDFqYqSpphpKrNoRDlm4jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Hai0nwT8; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e3c9ec344efso8336149276.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 03:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1736853925; x=1737458725; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DNeWxGrE8uIS0WDqmIGcYolBV0o+ZDhi6egQ4fiiws8=;
        b=Hai0nwT8lbb/tSW2tqWGbJerhP2ItnHL7ClWxAQ4RS7bFHlQ4xSMKgHHJg3g7pUNPW
         2mxBFNzi8TPt18cknmoPV7iiPMuML+7n79fzb/NpWwOHdOEM1yLbURAEr5lR/uqMaeo3
         9OhZgbtKeyoEB9obeVdeO4yQ7sLF7Vw+xg4Wo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736853925; x=1737458725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DNeWxGrE8uIS0WDqmIGcYolBV0o+ZDhi6egQ4fiiws8=;
        b=D2h0SLe18ZCGg/E4wjpfdJteBQyZT+9EPut9rtVQHoODYYT+o69I3ks/47n/OOvitK
         9/33+wWFgjcPOaMh3RqlRFfdl3cQOAqBCnseWYECFHQOu8QOMkTM3hIsrW16kKt4rY1B
         06i8bTkKqE9mZF/SMefdo9Cn0PbhBGR4nYQlxIlBoQWrRLHZpp+1lMdfmISeHL6jHGhV
         HyRdDPuWtUx90PxV1F8BsWXrYm8JhznaFQbaXBEbkBPeFUq5iEsWETjMtkw8w7CJBlvg
         aixivpc3ci6VENBXOIYJUiU6LXloVEtohk0e+bduYI8I+OdmQfq1IbPMK7l3twnNUFAQ
         ygWw==
X-Forwarded-Encrypted: i=1; AJvYcCUV7kcVViCNFyRA4EptmKcKUDi9lQe7w4fpXJyjzXPhorN3AUzt2NHtepLNwpi5T5FCyvzjoiGJWWIj@vger.kernel.org
X-Gm-Message-State: AOJu0YzglrVOFxBG/d/XA7doDM8AIsJPl6DligrdDlVsJt2nu++3W3nX
	XOR5sJ4OSQPNmQKxuFd5OHg/5UtWN5bpsTC/uEAGkQTkHylsiBA6riVZ36A9G3LwlDXB954LZmc
	GP9aPn6qa/1us9WSgTbLrG6G8Zal9Qd72pMLANw==
X-Gm-Gg: ASbGncu8HdVFFytd3vesX0VbxufLkhnqMz+8VWq2O2umHI+Tade7K1Iwi4uTsKmb9NY
	5pebgU7SxApuV7rtxFTk6Buk5DGxTlkJXtMEH
X-Google-Smtp-Source: AGHT+IE5ADFy4Rcdxdx8eIWS6qutMEezXMUhyeb5SIbQjo2wdqwdsiAVueYpuLW3T5twpKf4mq41MGduOKyevWn0ZOQ=
X-Received: by 2002:a05:6902:988:b0:e57:3a77:99b6 with SMTP id
 3f1490d57ef6-e573a779d1bmr8361818276.19.1736853925209; Tue, 14 Jan 2025
 03:25:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250114091128.528757-1-dario.binacchi@amarulasolutions.com>
 <20250114091128.528757-2-dario.binacchi@amarulasolutions.com>
 <79a90c01-9e21-4e3f-a334-6ba9e1df4150@kernel.org> <CABGWkvofUphcXTwBS5UBEoQ1GYpngP7gWi9Ax=WW28XKK0qoYA@mail.gmail.com>
 <54b63cfc-7a51-4b69-8b32-eb7591b2169b@kernel.org> <CABGWkvrYUU=HAh4uYNpZSpzeyanfp5a_xjK_178ftQyDKH=cTg@mail.gmail.com>
 <581275bf-11f3-4a8a-8e58-75b00c515c79@linaro.org>
In-Reply-To: <581275bf-11f3-4a8a-8e58-75b00c515c79@linaro.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 14 Jan 2025 12:25:14 +0100
X-Gm-Features: AbW1kvaNobnTd2MQAHzRF4uGLRR152GowylzO20cIOWKbfYsbQamDcVMjctIi7w
Message-ID: <CABGWkvpGGdjJVTHppOohGPq3yi_Y20t9b0WWkPOriFU9=CHQMg@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: convert stm32 rcc bindings to json-schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 14, 2025 at 11:13=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 14/01/2025 11:00, Dario Binacchi wrote:
> > On Tue, Jan 14, 2025 at 10:48=E2=80=AFAM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> >>
> >> On 14/01/2025 10:36, Dario Binacchi wrote:
> >>>> Nothing improved here.
> >>>
> >>> In my humble opinion, there is nothing to improve. Any modification
> >>> made causes the tests to fail.
> >>>
> >>> $ git grep st,stm32f746-rcc arch/
> >>> arch/arm/boot/dts/st/stm32f746.dtsi:                    compatible =
=3D
> >>> "st,stm32f746-rcc", "st,stm32-rcc";
> >>> arch/arm/boot/dts/st/stm32f769-disco.dts:       compatible =3D
> >>> "st,stm32f769-rcc", "st,stm32f746-rcc", "st,stm32-rcc";
> >>>
> >>> Or am I missing something?
> >>
> >> How can I know what you are missing if you do not show the code?
> >
> > Sorry, but I still can't understand. I run multiple tests, trying to
>
> You don't understand that I cannot improve your code if I do not see the
> code? So let me rephrase: In order to tell what is wrong with some sort
> of code, I need to see it. I cannot tell what is wrong with code without
> seeing it.

You told me that this code was not exactly correct for the parts
marked with *********:

properties:
  compatible:
    oneOf:
      - items:
          - const: st,stm32f42xx-rcc
          - const: st,stm32-rcc
      - items:
          - enum:
              - st,stm32f469-rcc
          - const: st,stm32f42xx-rcc
          - const: st,stm32-rcc
      - items:
          - const: st,stm32f746-rcc ********
          - const: st,stm32-rcc
      - items:
          - enum:
              - st,stm32f769-rcc
          - const: st,stm32f746-rcc
          - const: st,stm32-rcc
      - items:
          - const: st,stm32h743-rcc *********
          - const: st,stm32-rcc

I haven't found a way to make changes to those elements without causing the
tests to fail. Could you kindly provide more explicit guidance on the kind =
of
modification you're expecting?

Thanks and regards,
Dario

>
> > modify things
> > based on what I understood of your suggestions, but the tests failed
> > every time.
> >
> > Could you kindly provide an example of what you'd like me to do?
> Any qcom binding? Any other SoC binding with multiple devices?
>
> Best regards,
> Krzysztof
--

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

