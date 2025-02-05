Return-Path: <devicetree+bounces-143379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AE3A2989A
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 19:19:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A51C1883202
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 18:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A872B1FCCF2;
	Wed,  5 Feb 2025 18:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="JriIhorM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84FE1DE2C1
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 18:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738779588; cv=none; b=NgO0Ps6FeQafY+iDNEAbvYth5l7NeCFoj/DJJkkcQarwFerehUjKuwLicEqasldMDDrKoRKYmoVtawekaxZc8LTh8Ka7U3SEmbaWDccT64WvSCsN0h3Sb7nh00MOL+Re4vaH3JwUoeBLVu/DXHFnYnL2Y0MK9ur78uyyCcb6TAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738779588; c=relaxed/simple;
	bh=Y9cbveh2CwhVYwoFhmCN0UCeLgvgUnCU7TI71FPNIi0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W34oCb2X7Tgx5p1jNFTwbYw7bVz8yI9ElyaoL66TYMtGZZgYvtLjrdYiYbOV/VGBOjIW8YOlAkZJzwE+1ck4wBFuebdLJfLrnPEcul2/H2iwsvu6vgJMvT5m57/JFSaeIRwfSWK0i7yg//9gNqqLIJVTKT/rAGrEwbR5SOofAT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=JriIhorM; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-71e2766994bso60964a34.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 10:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1738779586; x=1739384386; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DYD314+kCrbyuPLEovXv8C/gyv8YrwaHmGXW6MFdMgQ=;
        b=JriIhorMzBoE8KnKupnIP982bFi10iXqcO46sHLhaylKOPOo8iBxGo/27laZaoI/vZ
         W4293dZMvJi3VwiqjFSdTgcVHHwg+NOGXD+vq/XC3NwHRsrSONcC/7xHla4pUdpKFmeO
         AnxvtXkBdPYfJIYFvssGz1KrMrJG7a9uzBLYCFUxrRH+/tmY0w4hK+kodsz/3O1+oPWW
         PNEMRUykRCeao2YNSYtdnKqFGCFDBGO6QDiLaBpo008Q+cr9bkTtRczx7+gCA3IrUK+s
         CPINyAovI2oKE7s26tQYq0PzAfXGlyMElzq8h31BYypnd2wjzZR0lu51xjLMmF278fsr
         y3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738779586; x=1739384386;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DYD314+kCrbyuPLEovXv8C/gyv8YrwaHmGXW6MFdMgQ=;
        b=SbXTOrEYTvc9Y60Y0LoYFrxo3NVe9Ph0kdaQvyNDoJcb7Wt4RypqklhCrUx83Jv1VR
         ymapEAilgAHWP/d6wR/vaTyjX8HyhpbsMyLWwIdrSqvKng6jKO2JZYx/EH3gagtLnXrf
         YO4K/yDnSHfG55d26vqPSEfajsidA+sO9DE2FfC69VOTQG8QAieJPQuJK10xEPwoFubz
         Fk8BZLL39nrWTMo8IzvkWAFKmh/UMP8f1lmvt7YDusxjNP8QN74lXMHFwjEybjMckUoR
         2oaZkBSzP77IKzFJPJ4Y3A753XKQkzxJC6hVg67gDtSd1XZ6wcz1GjS0F7TOS5K9NSLU
         DiiA==
X-Forwarded-Encrypted: i=1; AJvYcCUu4F5Mwz9pQ9xfmO4ILWC/eKHd9gkFxqHQtI6AVcQsko3BxP4DWcBNBLcI0lq9plzRAShrtNUAbp/a@vger.kernel.org
X-Gm-Message-State: AOJu0YyvkuwAuF+/f9Cd3t5iLNP5HfIS3OB9eDr9ZdEbXeTEi05/Y2/Z
	anV2NI/loZHofeifyix2VVf2hCgC1sHvtJeySvx2DTOujrsss2Rl61aMwxVvk3dYUijPUbP7ytj
	xl66iESdq/bUexVFo75d1bn8DA13RIZekiVtu
X-Gm-Gg: ASbGnctIuIWzP/U4GvaTXwIiZTFCIynNlFMWomL9ltqHg10qAt8qLmQVEfpCENe5t6K
	A/y43W0IXgZU8iQYwiRY9C3iqR33m5mnGOn49hrTHcxXjikFQPJOlDZRdgIyN24MYhDob9vyFcQ
	CAFt6K9NNLzPKTnlQh+bM92AYAXJla0Q==
X-Google-Smtp-Source: AGHT+IGuWZdwDyLPOPSuzL97lJDl1x5nZAEdalBO0y1kiEQKuLwR5fdEC2+CwMSeq2b9Rl/wMIZG79qj6WwSZi2Yqko=
X-Received: by 2002:a05:6830:4702:b0:71e:5a:f4f4 with SMTP id
 46e09a7af769-726a42882bcmr2685173a34.25.1738779585726; Wed, 05 Feb 2025
 10:19:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250202035100.31235-1-badhri@google.com> <20250202-purring-ambitious-axolotl-4c6ff4@krzk-bin>
 <CAPTae5+j9N=RBpfHVE-As+dz7HzrxXAH1enWrmSdFzu6DuaTBA@mail.gmail.com> <80172550-a3d7-4d56-927c-ff63debc79f8@kernel.org>
In-Reply-To: <80172550-a3d7-4d56-927c-ff63debc79f8@kernel.org>
From: Badhri Jagan Sridharan <badhri@google.com>
Date: Wed, 5 Feb 2025 10:19:09 -0800
X-Gm-Features: AWEUYZnQ_MjYKPi3GzKBCYvuUST4PyFu-pF3hOKR55xFpZgNJeJuOBnJiMENe7c
Message-ID: <CAPTae5+xF0B64AhT5fjMU9tcW8cT9smO5eUD=Wpsiw2CKAhDAQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: usb: snps,dwc3: Add property for imod
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Thinh.Nguyen@synopsys.com, gregkh@linuxfoundation.org, 
	felipe.balbi@linux.intel.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, johnyoun@synopsys.com, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, jameswei@google.com, 
	stable@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 5, 2025 at 5:50=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 05/02/2025 10:07, Badhri Jagan Sridharan wrote:
> > .
> >
> > On Sun, Feb 2, 2025 at 6:11=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On Sun, Feb 02, 2025 at 03:50:59AM +0000, Badhri Jagan Sridharan wrote=
:
> >>> This change adds `snps,device-mode-intrpt-mod-interval`
> >>
> >> Thank you for your patch. There is something to discuss/improve.
> >
> > Hi Krzysztof,
> >
> > Thanks for taking the time to review ! Happy to address them.
> >
> >>
> >>> which allows enabling interrupt moderation through
> >>> snps,dwc3 node.
> >>>
> >>> `snps,device-mode-intrpt-mod-interval`specifies the
> >>> minimum inter-interrupt interval in 250ns increments
> >>> during device mode operation. A value of 0 disables
> >>> the interrupt throttling logic and interrupts are
> >>> generated immediately if event count becomes non-zero.
> >>> Otherwise, the interrupt is signaled when all of the
> >>> following conditons are met which are, EVNT_HANDLER_BUSY
> >>> is 0, event count is non-zero and at least 250ns increments
> >>> of this value has elapsed since the last time interrupt
> >>> was de-asserted.
> >>
> >> Please wrap commit message according to Linux coding style / submissio=
n
> >> process (neither too early nor over the limit):
> >> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process=
/submitting-patches.rst#L597
> >
> > Ack! will do in V2 of this patch.
> >
> >>
> >>>
> >>> Cc: stable@kernel.org
> >>> Fixes: cf40b86b6ef6 ("usb: dwc3: Implement interrupt moderation")
> >>
> >> I don't understand what are you fixing here.  Above commit does not
> >> introduce that property.
> >
> > Although the above commit does not add this property, it has
> > implemented the entire feature except for the property so thought
> > sending this with "Fixes:" while CCing  stable@ will allow the
> > backport.  I am interested in having this patch in older kernel
>
> Not implementing DT bindings is not a bug. Otherwise provide any sort of
> proof that this was not intentional.



>
> I can easily provide you proof why this was intentional: negative review
> maintainers.
>
>
> > versions as well where imod support has been added. Wondering what
> > would be the right way to achieve this. Eager to know your thoughts !
>
> So again, downstream and forks... NAK, you cannot push things to stable
> just because you want them backported by Greg.
>
> This is not acceptable.

Hi Krzysztof,

I totally agree that this is not a bug but the intention here is to
not call it a bug but rather to land this in older versions of the
kernel as well which I wasn't sure how to do and I was perceiving
"Fixes:" while CCing  stable@ as a way to do that.
I will drop "Fixes:" and the CC to  stable@.  Came across the following
https://docs.kernel.org/process/backporting.html#submitting-backports-to-st=
able.I
will follow this and explicitly submit backports. Let me know if that
isn't reasonable

>
> >
> >>
> >>
> >>> Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
> >>> ---
> >>>  .../devicetree/bindings/usb/snps,dwc3-common.yaml   | 13 +++++++++++=
++
> >>>  1 file changed, 13 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3-common.y=
aml b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> >>> index c956053fd036..3957f1dac3c4 100644
> >>> --- a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> >>> +++ b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> >>> @@ -375,6 +375,19 @@ properties:
> >>>      items:
> >>>        enum: [1, 4, 8, 16, 32, 64, 128, 256]
> >>>
> >>> +  snps,device-mode-intrpt-mod-interval:
> >>> +    description:
> >>> +      Specifies the minimum inter-interrupt interval in 250ns increm=
ents
> >>
> >> Then use proper property unit suffix.
> >
> > Ack ! changing to snps,device-mode-intrpt-mod-interval-ns in V2.
> >
> >>
> >>> +      during device mode operation. A value of 0 disables the interr=
upt
> >>> +      throttling logic and interrupts are generated immediately if e=
vent
> >>> +      count becomes non-zero. Otherwise, the interrupt is signaled w=
hen
> >>> +      all of the following conditons are met which are, EVNT_HANDLER=
_BUSY
> >>> +      is 0, event count is non-zero and at least 250ns increments of=
 this
> >>> +      value has elapsed since the last time interrupt was de-asserte=
d.
> >>
> >> Why is this property of a board? Why different boards would wait
> >> different amount of time?
> >
> > Interrupt moderation allows batch processing of events reported by the
> > controller.
> > A very low value of snps,device-mode-intrpt-mod-interval-ns implies
> > that the controller will interrupt more often to make the host
> > processor process a smaller set of events Vs a larger value will wake
> > up the host processor at longer intervals to process events (likely
> > more). So depending what the board is designed for this can be tuned
> > to achieve the needed outcome.
>
> I do not see dependency on the board. Host has the same CPU always, so
> it processes with the same speed.

 By "host processor", I am referring to the CPU which is scheduling
the TRBs and responding to the events reported by the Synopsys DWC3
controller. In a nutshell, the CPU which is driving the  Synopsys DWC3
controller. The Synopsys DWC3 controller could be paired with any CPU
configuration and therefore is "Host has the same CPU always" a fair
assumption to be made ?

As a reference,
https://lore.kernel.org/linux-arm-kernel/9cb2e5fc-1bec-c19c-c04e-fe56e5c1bc=
16@codeaurora.org/T/#m392cc1fe604499984c61ac07dacc840616194efe
is the first patch which introduces IMOD as board specific property
for XHCI based controllers.

Thanks,
Badhri

>
>
> Best regards,
> Krzysztof

