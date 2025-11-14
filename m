Return-Path: <devicetree+bounces-238884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AD4C5EE61
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 19:41:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 972FB3B0EB4
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 18:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D476C2DC338;
	Fri, 14 Nov 2025 18:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbRWCcY5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6822DC332
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 18:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763145674; cv=none; b=qtD81SOStuGe5yW0hztGyVVrZuQGUYpGBLoJW6FXhEuSAtnBV6OKOR7bvJjkdwsRCTzCqXVZRazxgAgRsEsH2HLczdnSjd+sNEp2RL2AyoXq0EBkSOycrMcYVZKq2Cr3GS+x4Sg6Myz+vTOYpLdKU8QWrdRrg5co3rcld6UDgjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763145674; c=relaxed/simple;
	bh=uU3rKZArNQJfMmH8g2F3c3EvB0q/FTV9vy0xjSTNwGc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rSXy4BBZNT70zt428nY16KBFgBn1ygD7TYw/F5fd8qmQIV9RFR1oI12p55t2oE/9Ocb2gvsTKdOuYjominYJ6E7HoD/6oWgq7AGNFdwX6Ge4FTmeIOqbAWauz6NH9aKqIHSHY7Zco+6w6YTRBOvdkuCGBNmDQvC3o1jBzaidxg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbRWCcY5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 692BDC19425
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 18:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763145674;
	bh=uU3rKZArNQJfMmH8g2F3c3EvB0q/FTV9vy0xjSTNwGc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=cbRWCcY5USjcdSj47Pp23LIyarPtOwBgsWiU3/NMFMa5MBMglHjEJpgJ2c9OTHlmH
	 EmFMXKsdis97g6GYha81Fw0F/ajSvIdu/MJzNliyT2zGXy8qsMqC/SmrRqWWsWeONq
	 91uh8TeuxQr9ZwGVBmFhNFPrrO94oSD5s/3f8moD3X2Y/txM5b5k6gEky8B0OTfPI0
	 qfHxCEYcTEJVA9FXbFKNTn7Aqa56O1U9CbAMKJOK/rhJwCW5xUq8pSWWXPqPwg+KhM
	 2W0gLUCqwZdj62zIAvObyCRTJpgmSDc+YlPlWcW/aV7yOlbUYOGSa5fbGkbutmoeC3
	 n+oK5t3baj9iQ==
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b7346565d7cso306624066b.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 10:41:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWZ3hOoPHg7TcX/TA3Ihrs6G0BBVYJFuBjlPCKWkzJC9qMJRinpei7nhOXg7tDhkaikU7XSbN9QXsGx@vger.kernel.org
X-Gm-Message-State: AOJu0YxpR4p+HmkRLgN6MfKd3Muqn2VB7Seb6gUTA/Jm3eI4p9hiydNJ
	+vPplkbblmUk+hOejpMezmuK7WEHMhoZcuAb+H2mNMiHCWAxlbhauTztNrWZak6b8g8lAWdf6l7
	f5Z0Vt31pm4tlRXXZQ1lhuFgM8BE64w==
X-Google-Smtp-Source: AGHT+IHc2ZYhQaMLw8/0t5ii4Uq5xmDZtv8iTCdZaeuEuCGVJg4CCn4SxcbUH4Ipk3/KHt6cJaWR4f0E1HmJBCwT+PA=
X-Received: by 2002:a17:907:97c3:b0:b6d:5c4e:b09f with SMTP id
 a640c23a62f3a-b736789d444mr371783266b.5.1763145672998; Fri, 14 Nov 2025
 10:41:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com>
 <20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com>
 <176313578804.3261993.9727195642647352249.robh@kernel.org> <87qzu0bnmi.ffs@tglx>
In-Reply-To: <87qzu0bnmi.ffs@tglx>
From: Rob Herring <robh@kernel.org>
Date: Fri, 14 Nov 2025 12:41:01 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+tqGrSmFiEdyrgnsJ6eQ-gt2K9GVfb2nag_fLUWFcLpw@mail.gmail.com>
X-Gm-Features: AWmQ_bky6sQizUe8-QnLDwwW0UvWW-OY8BvouApVtd_66_FtgFJPhLRoI4LbsZg
Message-ID: <CAL_Jsq+tqGrSmFiEdyrgnsJ6eQ-gt2K9GVfb2nag_fLUWFcLpw@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: Add gpio_intc node for Amlogic S7D SoCs
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Xianwei Zhao <xianwei.zhao@amlogic.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-kernel@vger.kernel.org, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-amlogic@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org, 
	Heiner Kallweit <hkallweit1@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	Jerome Brunet <jbrunet@baylibre.com>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 14, 2025 at 10:11=E2=80=AFAM Thomas Gleixner <tglx@linutronix.d=
e> wrote:
>
> On Fri, Nov 14 2025 at 09:58, Rob Herring wrote:
> > On Wed, 05 Nov 2025 17:45:36 +0800, Xianwei Zhao wrote:
>
> > New warnings running 'make CHECK_DTBS=3Dy for arch/arm64/boot/dts/amlog=
ic/' for 20251105-irqchip-gpio-s6-s7-s7d-v1-5-b4d1fe4781c1@amlogic.com:
> >
> > arch/arm64/boot/dts/amlogic/amlogic-s7d-s905x5m-bm202.dtb: interrupt-co=
ntroller@4080 (amlogic,s7d-gpio-intc): compatible: 'oneOf' conditional fail=
ed, one must be fixed:
> >       ['amlogic,s7d-gpio-intc', 'amlogic,meson-gpio-intc'] is too long
> >       'amlogic,meson-gpio-intc' was expected
> >       'amlogic,s7d-gpio-intc' is not one of ['amlogic,meson8-gpio-intc'=
, 'amlogic,meson8b-gpio-intc', 'amlogic,meson-gxbb-gpio-intc', 'amlogic,mes=
on-gxl-gpio-intc', 'amlogic,meson-axg-gpio-intc', 'amlogic,meson-g12a-gpio-=
intc', 'amlogic,meson-sm1-gpio-intc', 'amlogic,meson-a1-gpio-intc', 'amlogi=
c,meson-s4-gpio-intc', 'amlogic,a4-gpio-intc', 'amlogic,a4-gpio-ao-intc', '=
amlogic,a5-gpio-intc', 'amlogic,c3-gpio-intc', 'amlogic,t7-gpio-intc']
> >       from schema $id: http://devicetree.org/schemas/interrupt-controll=
er/amlogic,meson-gpio-intc.yaml
> > arch/arm64/boot/dts/amlogic/amlogic-s7d-s905x5m-bm202.dtb: /soc/bus@fe0=
00000/interrupt-controller@4080: failed to match any schema with compatible=
: ['amlogic,s7d-gpio-intc', 'amlogic,meson-gpio-intc']
>
> The first patch in this series clearly adds the "missing"
> bindings.
>
> Confused....

You and b4. It looks normal reading the thread, but shazam is
thoroughly confused. I think that's because this series is missing a
'v2' tag.

$ b4 shazam -H 20251105-irqchip-gpio-s6-s7-s7d-v1-3-b4d1fe4781c1@amlogic.co=
m
Grabbing thread from
lore.kernel.org/all/20251105-irqchip-gpio-s6-s7-s7d-v1-3-b4d1fe4781c1@amlog=
ic.com/t.mbox.gz
Breaking thread to remove parents of
20251105-irqchip-gpio-s6-s7-s7d-v1-0-b4d1fe4781c1@amlogic.com
Checking for newer revisions
Grabbing search results from lore.kernel.org
Analyzing 18 messages in the thread
WARNING: duplicate messages found at index 1
   Subject 1: dt-bindings: interrupt-controller: Add support for
Amlogic S6 S7 and S7D SoCs
   Subject 2: dt-bindings: interrupt-controller: Add support for
Amlogic S6 S7 and S7D SoCs
  2 is not a reply... assume additional patch
WARNING: duplicate messages found at index 1
   Subject 1: irqchip/meson-gpio: Add support for Amlogic S6 S7 and S7D SoC=
s
   Subject 2: dt-bindings: interrupt-controller: Add support for
Amlogic S6 S7 and S7D SoCs
  2 is not a reply... assume additional patch
WARNING: duplicate messages found at index 1
   Subject 1: arm64: dts: amlogic: Add gpio_intc node for Amlogic S6
SoCs
   Subject 2: irqchip/meson-gpio: Add support for Amlogic S6 S7 and S7D SoC=
s
  2 is not a reply... assume additional patch
WARNING: duplicate messages found at index 1
   Subject 1: arm64: dts: amlogic: Add gpio_intc node for Amlogic S7 SoCs
   Subject 2: arm64: dts: amlogic: Add gpio_intc node for Amlogic S6 SoCs
  2 is not a reply... assume additional patch
WARNING: duplicate messages found at index 1
   Subject 1: arm64: dts: amlogic: Add gpio_intc node for Amlogic S7D SoCs
   Subject 2: arm64: dts: amlogic: Add gpio_intc node for Amlogic S7 SoCs
  2 is not a reply... assume additional patch
Looking for additional code-review trailers on lore.kernel.org
Analyzing 0 code-review messages
Checking attestation on all messages, may take a moment...
---
  =E2=9C=93 [PATCH] arm64: dts: amlogic: Add gpio_intc node for Amlogic S7D=
 SoCs
    =E2=9C=93 Signed: DKIM/linutronix.de
  =E2=9C=93 [PATCH] arm64: dts: amlogic: Add gpio_intc node for Amlogic S7 =
SoCs
    =E2=9C=93 Signed: DKIM/linutronix.de
  [PATCH 3/5] arm64: dts: Add gpio_intc node for Amlogic S6 SoCs
    =E2=9C=97 No key: ed25519/xianwei.zhao@amlogic.com
    + Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org> (=E2=9C=97
DKIM/linaro.org)
  [PATCH 4/5] arm64: dts: Add gpio_intc node for Amlogic S7 SoCs
    =E2=9C=97 No key: ed25519/xianwei.zhao@amlogic.com
    + Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org> (=E2=9C=97
DKIM/linaro.org)
  [PATCH 5/5] arm64: dts: Add gpio_intc node for Amlogic S7D SoCs
    =E2=9C=97 No key: ed25519/xianwei.zhao@amlogic.com
    + Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org> (=E2=9C=97
DKIM/linaro.org)
  ERROR: missing [6/5]!
  ERROR: missing [7/5]!
  ERROR: missing [8/5]!
  ERROR: missing [9/5]!
  ERROR: missing [10/5]!
---
Total patches: 5
---
WARNING: Thread incomplete!

