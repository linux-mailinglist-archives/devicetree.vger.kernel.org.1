Return-Path: <devicetree+bounces-143784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22576A2BA88
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 06:16:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F4903A765D
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 05:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E66233136;
	Fri,  7 Feb 2025 05:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qFG/cY8T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A765114F9C4
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 05:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738905361; cv=none; b=Zzae1cIy2tgO/ErHBRvviw8ecLaMP1XGUgWvwcawVgu+hDsGLDHf+IDVnOItjVIMCctN5/FWuaJc87cCMypjfIYdAO1zOIyPTt0wSRuBgP37kWlLGetfa12139YwbFk/XZOr1HGnVJNozioxS1YLQDBZlZwiNYO4B+QZs6dDz3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738905361; c=relaxed/simple;
	bh=jP+p/Vacy1xJ74IjEfBF9T8eHQkkxzwI8Ca9hMobmtA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tkMbgSWu8K+Gs+fJ9ZVggejF2mNtKrB9rbjjv0GrgR3teqwAHvX6ofyDoBpSeS9E2K4jZBZvaIvP2UhCy3UgCYmHNHeh2jeW1RBEYRJBiEr6JWoGnSWnQhUZgKi1Qxx2y/2peXgyx1xLdigRIsAppLTA6I7lQparOBRbAfsZpmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qFG/cY8T; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-726819aa651so548216a34.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 21:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1738905358; x=1739510158; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9iaTXXUkJ0XQlMp+bPGvyxWXEVmOvK43hU2BmVDXyYc=;
        b=qFG/cY8T0Z3BXxvq6tOihrYrc/NsyC63GINdTspuvkRH39GTQyiG4o0zOwZXnKoobZ
         JRoBjepFS4iYudGmxQAVmr2XppLupM3bHbWBVCPsf5VU9PCRsrTi8S7JCfghoKGeoF+C
         h5l1+Rc89rQKvtFYqGLwjatH/P+gl4WFNkdOye8v/OperjBGprJnU1HXQXaFn/wNt4v2
         r2x3mRnvTtsM2Go9J5lqIUMnHiJiCAVxg+uBEHSDJXDol+g/eaVVStVBY0upgDV0LRGQ
         I4phV99ugl9KDuI4gsoLvMmTY35CLkEtR9tJNUQB+8nsLhjzclX6bWCjyLSZmm4arLI7
         y85Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738905358; x=1739510158;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9iaTXXUkJ0XQlMp+bPGvyxWXEVmOvK43hU2BmVDXyYc=;
        b=cRtD1ja8QWboki1bCTeKR7ZnYN1a69mK0neTY0kQeWPMOMBxk4NxOSqzcTAnmVHr77
         nFsGtbzdovVbOoth61nkmWG5z4m3z9SEmjoOo3zoQi3m7JoQk+d6FA2I29YhUWNXciEm
         7uDFtpn9mZb2bapYJ6aBMyBWGe3xREplYrhftN6yTc4+tO5TqbTq9xZ2gbFnkZjEM8Ho
         WAhCQVGvvq6skWQMVssQiOAj/TbnKgcgizdfnnRD2GUrl/f2pppsYz4F9L3TQIcntf5t
         AU6RBiW2TYc0rIXU7kfrkNHtzi6pubMixOjdSoMX9Mz3xACloHvuvxX1fxPgVEvng+EG
         Fuow==
X-Forwarded-Encrypted: i=1; AJvYcCVMn7/vffEmhHaqq7vg4nnyw64AQF6uSk8Y/yW55PnYNjHFbNAg5VIbVt68U65PRXmsaK0DetwJXp5Q@vger.kernel.org
X-Gm-Message-State: AOJu0YywfVcEtGt32HXQuAqy3lR51QvONgZLVLyn0XOMQRKmy0iSKhjc
	nODtmAwfhfq8nVNuYjXjWCQ34DKmbyC88JNVuJzS43OFXcHn54XosUFiEO1VPvTs88UxqpIwb+1
	RxkS1ImY1Akle+xW47cRrAEnJiJWgG56O1wNj
X-Gm-Gg: ASbGnct3BtZkQA+5IIDAXWtMv5g0rxSGK7k27XdI8hSgYdhv8iNx3wxkrCGrH7QGXVK
	1WuvWRv1Qk2KxGjqGXzC5KffZljG42N+cYpqBdPfwMGHBCAL4Dc5lW3m3t2TvJb/qnuuU0uglML
	OSHXJ/ZqEvaol7KA3zWSPZZa8lIeoCJQ==
X-Google-Smtp-Source: AGHT+IGQGY5NdZ93kF+5f4IYavkcRS2XZ5Na/KaJoM5Ynb1IgK8ZfqBUnv6jjnMg/exXMaCETPrhrHchnaMrFrtsfIM=
X-Received: by 2002:a05:6830:6609:b0:718:8dc:a5e with SMTP id
 46e09a7af769-726b87c2f0cmr1483112a34.9.1738905358534; Thu, 06 Feb 2025
 21:15:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250202035100.31235-1-badhri@google.com> <20250202-purring-ambitious-axolotl-4c6ff4@krzk-bin>
 <CAPTae5+j9N=RBpfHVE-As+dz7HzrxXAH1enWrmSdFzu6DuaTBA@mail.gmail.com>
 <80172550-a3d7-4d56-927c-ff63debc79f8@kernel.org> <CAPTae5+xF0B64AhT5fjMU9tcW8cT9smO5eUD=Wpsiw2CKAhDAQ@mail.gmail.com>
 <73d4153e-cc03-45ba-ae2e-3b9f4baf7346@kernel.org>
In-Reply-To: <73d4153e-cc03-45ba-ae2e-3b9f4baf7346@kernel.org>
From: Badhri Jagan Sridharan <badhri@google.com>
Date: Thu, 6 Feb 2025 21:15:22 -0800
X-Gm-Features: AWEUYZlimpkmNyuY7r3O8eUu90GQQvJjjgQXNzdH8cINDRChPE-KSLyudaku36U
Message-ID: <CAPTae5JYeuUwbwNfDTgZ1DdNDK-SDhNURuqoB547ecSUydOZQA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: usb: snps,dwc3: Add property for imod
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Thinh.Nguyen@synopsys.com, gregkh@linuxfoundation.org, 
	felipe.balbi@linux.intel.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, johnyoun@synopsys.com, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, jameswei@google.com, 
	stable@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 5, 2025 at 11:35=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 05/02/2025 19:19, Badhri Jagan Sridharan wrote:
> >>>>
> >>>>> +      during device mode operation. A value of 0 disables the inte=
rrupt
> >>>>> +      throttling logic and interrupts are generated immediately if=
 event
> >>>>> +      count becomes non-zero. Otherwise, the interrupt is signaled=
 when
> >>>>> +      all of the following conditons are met which are, EVNT_HANDL=
ER_BUSY
> >>>>> +      is 0, event count is non-zero and at least 250ns increments =
of this
> >>>>> +      value has elapsed since the last time interrupt was de-asser=
ted.
> >>>>
> >>>> Why is this property of a board? Why different boards would wait
> >>>> different amount of time?
> >>>
> >>> Interrupt moderation allows batch processing of events reported by th=
e
> >>> controller.
> >>> A very low value of snps,device-mode-intrpt-mod-interval-ns implies
> >>> that the controller will interrupt more often to make the host
> >>> processor process a smaller set of events Vs a larger value will wake
> >>> up the host processor at longer intervals to process events (likely
> >>> more). So depending what the board is designed for this can be tuned
> >>> to achieve the needed outcome.
> >>
> >> I do not see dependency on the board. Host has the same CPU always, so
> >> it processes with the same speed.
> >
> >  By "host processor", I am referring to the CPU which is scheduling
> > the TRBs and responding to the events reported by the Synopsys DWC3
> > controller. In a nutshell, the CPU which is driving the  Synopsys DWC3
> > controller. The Synopsys DWC3 controller could be paired with any CPU
> > configuration and therefore is "Host has the same CPU always" a fair
> > assumption to be made ?
>
> Not really, this is part of a SoC, so DWC3 controller is always here
> fixed per given setup with given CPU. You claim that this is independent
> of SoC, but so far arguments do not support that statement. This is
> related to given SoC, so no need for this property and you can deduce
> everything from SoC.
>
> You push this as a property because you (or vendor) do not want to
> upstream your SoC. That's common pattern, seen here many times. BTW,
> good counter argument would be to show me patches for upstream DTS users
> of this. Actually that would be very easy way to finish discussion...
> but there are no patches, right? Why? Because it is not upstream and it
> is done for downstream solution. Sorry, no. Develop code how upstream
> develops, not downstream.

Thanks for persisting in explaining this Krzysztof ! Much appreciated
! I finally understand your perspective.
What I missed to understand is that when
https://lore.kernel.org/linux-arm-kernel/9cb2e5fc-1bec-c19c-c04e-fe56e5c1bc=
16@codeaurora.org/T/#m392cc1fe604499984c61ac07dacc840616194efe
added "imod-interval-ns", it also added how the property was used. I
will look into upstreaming the SOC driver which makes use of the
property as well.
We can drop this patch till then.

>>> +++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
>>> @@ -46,6 +46,7 @@ Optional properties:
>>>    - pinctrl-names : a pinctrl state named "default" must be defined
>>>    - pinctrl-0 : pin control group
>>>   See: Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
>>> + - imod-interval-ns: default interrupt moderation interval is 5000ns
>>>
>>>   Example:
>>>   usb30: usb at 11270000 {
>>> @@ -66,6 +67,7 @@ usb30: usb at 11270000 {
>>>   usb3-lpm-capable;
>>>   mediatek,syscon-wakeup =3D <&pericfg>;
>>>   mediatek,wakeup-src =3D <1>;
>>> + imod-interval-ns =3D <10000>;
>>>   };


Thanks,
Badhri

>
> Best regards,
> Krzysztof

