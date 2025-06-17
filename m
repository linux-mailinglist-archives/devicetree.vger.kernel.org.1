Return-Path: <devicetree+bounces-186789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F84ADD576
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 18:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6260F2C3729
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 16:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C5C212B28;
	Tue, 17 Jun 2025 16:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b="H5ndgxt0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E47218EA8
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 16:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750176462; cv=none; b=VxEhv6If9hWm4oaJslCIX2FAxTB6Zc8Xly7JBYEn1zDs9jZ2LBlRzjCTP/h/XA9OT5qN3Z8BEdIQqL84EwDSrz50SXg8YnlC0rW+2xUjoU9MJR5E3gAusCDeybabgZU+uYplrXvEsbaO/is+lNU3ugRtmLFOsE6yGbjdDu1qhTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750176462; c=relaxed/simple;
	bh=hsUMZmu9Jou9ZkwheJsfLtzPKWC+X8bkFBOXoytw6Sk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rFHq/C8Q8kxNOG/LdJlbAfHY6e9Cl3dF07L4eZeivgI21wjkPSu2QLHQVT69RTpdAfvCQn62OlhA2XOC52GZyV8NVq6agv/qxJ7gEmDV2lSlbPlI9354kIJNKP+uptJm2S+HIRG8FuT6HF1hFcv26X7bAZWIQzFZidYzIiKmIQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com; spf=pass smtp.mailfrom=criticallink.com; dkim=pass (2048-bit key) header.d=criticallink.com header.i=@criticallink.com header.b=H5ndgxt0; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=criticallink.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=criticallink.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5533a86a134so5211477e87.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 09:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google; t=1750176459; x=1750781259; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W6kegWQ+4MbnquT0KfWvy4j8tbG9Vo6I4INeXpTpYPw=;
        b=H5ndgxt0F5+BpCrHmH8dtLHX4myo36SvslR19UDJMZGW608Ua+DzDFavhWnXPd0Z1r
         597H8cdToFt8llMVj1hyAhdINhLbLb15o1s2xFu1+c+9PTcjIA6uN95kmKINPIA0S5t5
         SZ3MajtrAVCATXPjsXD31/HTqFEMtpmP5EpKMEf9lS1sU+O988hhBk6h6pPklwI2Mm6r
         SYhRv+f07FIisizIMPI0iKbkEfps+rC+AMyf3HT1vxelYlTDK8EbdxCMIkT1+xAaq59K
         2pzWfZMrS2FOQoC4LHgpUcG75Ac1RsbDxIh7AoVqA3/CIUA+CAWtbrLo7AUeDe3umY+v
         uUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750176459; x=1750781259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W6kegWQ+4MbnquT0KfWvy4j8tbG9Vo6I4INeXpTpYPw=;
        b=BDhJCFlKYSyywirOPPqbNaXQsbb9ps2DD8vF6EV7vpWIzG1jTVg26L33wFYop/U124
         yCpdvM2T0g2KSzXTknEoU/bzL36x5sUMS0cC+ExQFI8MIVBhz8rfuPhk0tCMWcKUuSaA
         LrFBK5so610ZDzlLB1BEAXdsjqwy0JzGAYqwON2gpBrCQF6RwNLm3F6pbpSpINLDb3L3
         T+gFm3q815wF8Il2VqlxCPlKDkl4ODS7zxe67s4lND3IvZnIwKuTHdOgnF+6Mel/7PV9
         KlojREAVetE/9L5BUlDfY6bhJ3sQyiqZLwH5f2b7QX3wUH0VXBbmVJK5MNzKdq/GK7zO
         W2nA==
X-Forwarded-Encrypted: i=1; AJvYcCWe8Or6GhGQtrcaBia7KTWquFVa5L5Vs+fikkZaNLGt1IXIj4Q7/viesg2l3yj9PShlhywq9zMkS7ut@vger.kernel.org
X-Gm-Message-State: AOJu0YzgV8PXYfbzkcu0QUPIjqFvtyV+A6GY07m9w2G7ITmkYOQK4wmy
	ggJ8i6x6QD947QnIFL0vqMFoja7TcjCmSHOX7rO+9SYj0tSwk34rfd6t9dU6t03SIi71iP4P31Q
	kVW08xXdBpHfbv/4TX8YLMlZv18sCefLC3/zzHAeA
X-Gm-Gg: ASbGnctDs22X+QSw27RYqrusE1oCdylmJK8ncisFQlsA/Mbt0njCS6zbqBtWLZ+yF0s
	SBPlrv3VktcghIeTE6BhBclzdI6zuKK3iMtiCvuSahnlDMckiFJeDqOY0fJrxwK8x7Bsh+oDrU3
	mCKI9sNU6dSNDSG4Xlo6aAZU9VI0m9U2+UR8PlwBTaqzDLIZVlOtRt
X-Google-Smtp-Source: AGHT+IHsDY7mpM2G8XJVWvEJJPRcFA+0mxdcEtggouyF66TynFUpRJbKfe+JasuZ4UyZ8xeRrftFwLQMNsRZPMHpowc=
X-Received: by 2002:a05:6512:1195:b0:553:2bf7:77be with SMTP id
 2adb3069b0e04-553b6ee2a97mr3411368e87.22.1750176457199; Tue, 17 Jun 2025
 09:07:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250520-linux-stable-tps6594-pwrbutton-v1-0-0cc5c6e0415c@criticallink.com>
 <20250520-linux-stable-tps6594-pwrbutton-v1-1-0cc5c6e0415c@criticallink.com>
 <20250521-wandering-tested-porpoise-acbef7@kuoka> <CAKMwjwTP=xSsX3UuK02sKbXWaU7y-ErytNYCL_P0UveDytQW2A@mail.gmail.com>
 <20250529-wise-tremendous-stork-a7d091@kuoka> <CAKMwjwQOBE651A-5VVjwcv5TspO2eNZfgwWzMpTTWxhR3nGKUw@mail.gmail.com>
 <0fb4b411-1b27-43fc-8d48-e5220fc85478@kernel.org>
In-Reply-To: <0fb4b411-1b27-43fc-8d48-e5220fc85478@kernel.org>
From: Job Sava <jsava@criticallink.com>
Date: Tue, 17 Jun 2025 12:07:24 -0400
X-Gm-Features: Ac12FXxhURN5kmveW3NUmgy94-w86FHl3NzsERurIEnFbxrLzwxPI58nIBWu17I
Message-ID: <CAKMwjwSZEhXav2U-bd+JNyVDK3JdJoN1kJjnxpfKXBKsW2XxdQ@mail.gmail.com>
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

On Tue, Jun 3, 2025 at 2:52=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 02/06/2025 15:07, Job Sava wrote:
> > On Thu, May 29, 2025 at 5:26=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Fri, May 23, 2025 at 09:46:49AM GMT, Job Sava wrote:
> >>> On Wed, May 21, 2025 at 6:01=E2=80=AFAM Krzysztof Kozlowski <krzk@ker=
nel.org> wrote:
> >>>>
> >>>> On Tue, May 20, 2025 at 01:43:36PM GMT, Job Sava wrote:
> >>>>> The TPS6594 power-button option permits users to enter STANDBY or
> >>>>> ACTIVE state by a push, release, or short push button request.
> >>>>>
> >>>>> Signed-off-by: Job Sava <jsava@criticallink.com>
> >>>>> ---
> >>>>>  Documentation/devicetree/bindings/mfd/ti,tps6594.yaml | 15 +++++++=
++++++++
> >>>>>  1 file changed, 15 insertions(+)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml =
b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
> >>>>> index 6341b6070366..a40808fd2747 100644
> >>>>> --- a/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/mfd/ti,tps6594.yaml
> >>>>> @@ -37,6 +37,21 @@ properties:
> >>>>>        device on the SPMI bus, and the secondary PMICs are the targ=
et devices
> >>>>>        on the SPMI bus.
> >>>>>
> >>>>> +  ti,power-button:
> >>>>> +    type: boolean
> >>>>> +    description: |
> >>>>> +      Optional property that sets the EN/PB/VSENSE pin to be a
> >>>>> +      power-button.
> >>>>> +      TPS6594 has a multipurpose pin called EN/PB/VSENSE that can =
be either
> >>>>> +      1. EN in which case it functions as an enable pin.
> >>>>> +      2. VSENSE which compares the voltages and triggers an automa=
tic
> >>>>> +      on/off request.
> >>>>> +      3. PB in which case it can be configured to trigger an inter=
rupt
> >>>>> +      to the SoC.
> >>>>> +      ti,power-button reflects the last one of those options
> >>>>> +      where the board has a button wired to the pin and triggers
> >>>>> +      an interrupt on pressing it.
> >>>>
> >>>> Don't you need to handle two other cases as well? I assume you copie=
d
> >>>> this from the other binding, but all three options are valid?
> >>>>
> >>>> Best regards,
> >>>> Krzysztof
> >>>>
> >>> Hello Krzysztof,
> >>>
> >>> Thank you for your response!
> >>>
> >>> I agree that the other two cases are valid options. However, for this
> >>> particular patch series, they may be out of scope. The primary goal o=
f
> >>> this patch is to enable push-button functionality, rather than
> >>> addressing the VSENSE or EN modes.
> >>
> >> Binding should be complete, because if you design this as bool, it
> >> cannot be later changed to three-state (enum).
> >>
> >> I don't know if the EN and VSENSE modes are anyhow useful, maybe peopl=
e
> >> interested in this hardware should say.
> >>
> >> Best regards,
> >> Krzysztof
> >>
> >
> > Hi Krzysztof,
> >
> > Thanks again for the feedback.
> >
> > I modeled this binding after the TPS65219 PMIC, which uses a boolean
>
> Yeah, that's what I meant in my first reply.
>
> > for ti,power-button, despite the same EN/PB/VSENSE options. Since this
> > patch only enables PB mode, I felt a boolean was appropriate and
> > consistent.
>
> Properties should have only one type, so that would be a different
> property.
Yes, the type is boolean.
> Someone knowing the device should come with arguments whether
> other states for this are useful at all. Or not useful and then argument
> that in commit msg for example.
The other states are not useful for the kernel. Only the push button
has a need for an interrupt handler. The other states the PMIC handles
on its own.

What exactly do you want me to change?

Best regards,
-Job
>
>
> Best regards,
> Krzysztof

