Return-Path: <devicetree+bounces-143189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C61A28629
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 10:08:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 255043A729D
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 09:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D3EC22A4DE;
	Wed,  5 Feb 2025 09:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="pnshSceJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0B4219A6E
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 09:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738746513; cv=none; b=hhxaYKslVjRvAYl5ROsBI5IUhwKMVokxeh3vSFS9QLu8qH8uOfPFzYi6G8OOWuQ5QoJrWejoE7PttITfiTlre4yyMsr5netwj9JTl5mxqGvM7ObSzSvaSWMLbLaW/hW4Tmw6ytbDa0fzzYvdnu7a7p1FuFbMGybBE68p5vH6DNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738746513; c=relaxed/simple;
	bh=usR0FQgaPun7zX47de4ViGzhV1Dnd1psEq3MrpZDip4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ttG0HgbrO2LeqENqxsPKvgc3E49OPb5HNf3LgHPqXawlR4LgX1OFDHJm3pF3Pn4O2nQt+eOwt6lnxISarqBdM9wY0fSbRcIatkInoUcGYNvF7DuYJ4zRICdkXXq/yg+9G96JVrXNaXpg1P57wzWDDX2nkZxDKig1mfpeNOxONz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=pnshSceJ; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3ebc678b5c9so3576514b6e.3
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 01:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1738746510; x=1739351310; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1Zgcdqg6IL3nBRvW2f+NbDge7cbx+gJvQXWunXhYqw=;
        b=pnshSceJy0AQKWdaToO00t1zmpxhxYMmbs2R6cJz5xghp7fOlwFK3JbWYxbSJQJhAE
         rdP+zA/StgfK12p/cxlDF9YUR2mlxETAXme8fd/TS632itcp6WnNLponRYSfZLMu1+8U
         NI9qAv+Z0zxfpuzJoAp0LQhRfHAU341/AYbuDG1sOlpUwLFj7k76VBFw6QQEvoStQUAG
         peluCi2D8PflvISPr0QSZizzbqM+bsinpV8UIhaMR0o7afqowdYA+2omzGUecKOchvSJ
         fS9kaOo73GKFSxMN+NWuW6P2zxj53LoGDOWZYZRjf82fvHNB6i0oXW7WD9+uUlrPvDd9
         /SkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738746510; x=1739351310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p1Zgcdqg6IL3nBRvW2f+NbDge7cbx+gJvQXWunXhYqw=;
        b=pHIZBNRKfi90me0D7YRolLdGICb1f4P/0+NkmqkFzMeuKMJNuac9HscYnRvbvpo/Rj
         8Jj0R5urQKj0eoMluhk7d+TVCCWfOWM0VLBfXNiVDRd9eh5sroSxjaPg7nwiiumYxbla
         swYbBw0bQbT8WQYMpF4p6QwLBJx/cz0vMSXjdprnkt6i0JFTEXWtRK0joZoRLeA3zcst
         e1xWYytlo14J0VuAHSgh9f4OSyYDtFj/5cK1Rd7sUem5tCaVUIkYGiX4AqTILzNuV0sr
         Apybvno4VtI/oZfvXX1Yg4zdzF2h/je8SwMFvRS3wwoxe9yqTbCs3VEA+QiZshufcLy8
         Kqbw==
X-Forwarded-Encrypted: i=1; AJvYcCX3eTn9eUnE7xjDufbRFyfp02iOzJqdbPOKhNIEOvN+WzPGArBA0LwYdw9WXlPNb8HWCRD51K5+9Hus@vger.kernel.org
X-Gm-Message-State: AOJu0YwAONscy5xJeX4X3T6W2P22Q+N6H2U8KsPTQoC9FNst1OyKp/H7
	FsfunjcZHreQaaNKDM64LZz5Dn9aB73u6t7gVooqDqpXpjHLYx5MkfKtZOxpGE7vORnxfyp4LCG
	seplDjSyz6Z7K9M301drxIUiRkoafVI05pNZb
X-Gm-Gg: ASbGncsVb71rCFiU6NDKELJkfktFOFQK9wL87VSPzDSqxiERLaJ+Hqzmg40pm434imP
	ffT9MULI4qPP+Gaui+iO6ewgEaE8RJ8Sab+8ozMaJMd5MNIUcOICmqPWdJ5FBWjsmVnbQe5HV/x
	oicNgUHCI5VXKS9sWWBZq9IRMk44jS
X-Google-Smtp-Source: AGHT+IFQCqAxhs4WZyxuuQhaM0diAycGJMiaMQ6rNLAfPcZp1rv47WnGGRv7bsWrRbFQIUM9hREHyKVADC24UDpGX08=
X-Received: by 2002:a05:6808:2393:b0:3ea:3db5:ffe6 with SMTP id
 5614622812f47-3f37c17dab9mr1285991b6e.31.1738746510227; Wed, 05 Feb 2025
 01:08:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250202035100.31235-1-badhri@google.com> <20250202-purring-ambitious-axolotl-4c6ff4@krzk-bin>
In-Reply-To: <20250202-purring-ambitious-axolotl-4c6ff4@krzk-bin>
From: Badhri Jagan Sridharan <badhri@google.com>
Date: Wed, 5 Feb 2025 01:07:53 -0800
X-Gm-Features: AWEUYZlsLaPl0RCseB3hpPwL1zwP-Zbd_3h4jFyoYWHMscU1N-HH781WD_ssOyI
Message-ID: <CAPTae5+j9N=RBpfHVE-As+dz7HzrxXAH1enWrmSdFzu6DuaTBA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: usb: snps,dwc3: Add property for imod
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Thinh.Nguyen@synopsys.com, gregkh@linuxfoundation.org, 
	felipe.balbi@linux.intel.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, johnyoun@synopsys.com, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, jameswei@google.com, 
	stable@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

.

On Sun, Feb 2, 2025 at 6:11=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Sun, Feb 02, 2025 at 03:50:59AM +0000, Badhri Jagan Sridharan wrote:
> > This change adds `snps,device-mode-intrpt-mod-interval`
>
> Thank you for your patch. There is something to discuss/improve.

Hi Krzysztof,

Thanks for taking the time to review ! Happy to address them.

>
> > which allows enabling interrupt moderation through
> > snps,dwc3 node.
> >
> > `snps,device-mode-intrpt-mod-interval`specifies the
> > minimum inter-interrupt interval in 250ns increments
> > during device mode operation. A value of 0 disables
> > the interrupt throttling logic and interrupts are
> > generated immediately if event count becomes non-zero.
> > Otherwise, the interrupt is signaled when all of the
> > following conditons are met which are, EVNT_HANDLER_BUSY
> > is 0, event count is non-zero and at least 250ns increments
> > of this value has elapsed since the last time interrupt
> > was de-asserted.
>
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit):
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/su=
bmitting-patches.rst#L597

Ack! will do in V2 of this patch.

>
> >
> > Cc: stable@kernel.org
> > Fixes: cf40b86b6ef6 ("usb: dwc3: Implement interrupt moderation")
>
> I don't understand what are you fixing here.  Above commit does not
> introduce that property.

Although the above commit does not add this property, it has
implemented the entire feature except for the property so thought
sending this with "Fixes:" while CCing  stable@ will allow the
backport.  I am interested in having this patch in older kernel
versions as well where imod support has been added. Wondering what
would be the right way to achieve this. Eager to know your thoughts !

>
>
> > Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
> > ---
> >  .../devicetree/bindings/usb/snps,dwc3-common.yaml   | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yam=
l b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> > index c956053fd036..3957f1dac3c4 100644
> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3-common.yaml
> > @@ -375,6 +375,19 @@ properties:
> >      items:
> >        enum: [1, 4, 8, 16, 32, 64, 128, 256]
> >
> > +  snps,device-mode-intrpt-mod-interval:
> > +    description:
> > +      Specifies the minimum inter-interrupt interval in 250ns incremen=
ts
>
> Then use proper property unit suffix.

Ack ! changing to snps,device-mode-intrpt-mod-interval-ns in V2.

>
> > +      during device mode operation. A value of 0 disables the interrup=
t
> > +      throttling logic and interrupts are generated immediately if eve=
nt
> > +      count becomes non-zero. Otherwise, the interrupt is signaled whe=
n
> > +      all of the following conditons are met which are, EVNT_HANDLER_B=
USY
> > +      is 0, event count is non-zero and at least 250ns increments of t=
his
> > +      value has elapsed since the last time interrupt was de-asserted.
>
> Why is this property of a board? Why different boards would wait
> different amount of time?

Interrupt moderation allows batch processing of events reported by the
controller.
A very low value of snps,device-mode-intrpt-mod-interval-ns implies
that the controller will interrupt more often to make the host
processor process a smaller set of events Vs a larger value will wake
up the host processor at longer intervals to process events (likely
more). So depending what the board is designed for this can be tuned
to achieve the needed outcome.

This is very similar to the "imod-interval-ns" in
https://elixir.bootlin.com/linux/v6.13.1/source/Documentation/devicetree/bi=
ndings/usb/usb-xhci.yaml
except that in this case the Synopsys DWC3 controller supports this
for the device mode operation as well.

>
> > +    $ref: /schemas/types.yaml#/definitions/uint16
>
> Drop, use proper name suffix.

Ack, will drop in V2.

Thanks,
Badhri

>
> Best regards,
> Krzysztof
>

