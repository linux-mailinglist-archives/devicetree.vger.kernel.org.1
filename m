Return-Path: <devicetree+bounces-39860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1A084E670
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 18:15:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6F9A1C23631
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 17:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25258121B;
	Thu,  8 Feb 2024 17:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Tz+3StRt"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0857E7FBA3
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 17:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707412498; cv=none; b=TI0RimivCaPxTWVoMxIXFjoGjMLQQEo8OMiU9Pc7jyndWEHptRq42aMftbSL+xSKaM2yGm+ZHSB/gD1koZ7WKO1URrwApCQQ46EkBqQEwq36gSNdZm+qYV/4P8VIlbvb2sQHUPmsGIpG5h88aDvgR1NanCiHJIYGjw1mHkBnySM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707412498; c=relaxed/simple;
	bh=Y0r4zejSC9VWwc8OnukUl3cp4kpBgPxtHcTOZAILMWY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jzShFq0gwAyyzlxTioYiR2pCDsjS1EyM03DmKPXEbBrr9UrfjGYLHPIvIJV1bMTGW00mjJW4v+v8Lw6h6YhMGd2hoJCPlDuv8zqVlL+iI4Klb5Rzbk0fmpIA8q+ztmkz7+CmVuI+wuJpWODh9BNGzBbVWlrkHAWYOQoA31zfmr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Tz+3StRt; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1707412495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xR4RHbfkwYwkWKAZQm9GK8FwvPGu1EB/xVzVABSRZsI=;
	b=Tz+3StRtetKK+sD8ZrhvLRfLuBYWoq3972fS18uQfwXHsrvEE9VUjEFp45shgGgryv22n1
	tXmhgnzbFbmPx5KFOg3zLWz5/Szrbk4SvjneKUIj1cQMFOZbeVJStESOEKYd6iQHSft2ot
	bSiIAYuG1nq4KoCYskBG99yeaZ7sI1U=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-203-anacqdhyOXCdbpwCN9ZCVw-1; Thu, 08 Feb 2024 12:14:54 -0500
X-MC-Unique: anacqdhyOXCdbpwCN9ZCVw-1
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-68cbfe09cb6so345476d6.2
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 09:14:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707412494; x=1708017294;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xR4RHbfkwYwkWKAZQm9GK8FwvPGu1EB/xVzVABSRZsI=;
        b=XJIYqFPPcBp2xL7Nsp1gCVGoaS5Cn9aJdfiMy08jxYWppKPsLS8GaDSmh/+7cFAFeF
         D+0OPeMgE3f+VZ0Aq6PxIakG5Am4PNdkqrVrPMEIa4Hx65QZYSpVQrQTVIg/vq8saRtw
         F5gqGVxopyasxMuDDiBF5SCKH5ov/18aecak0xZ5ICmyhPBsE1WhWMqTm2151Bd1Nbts
         Ji8mOKLtW6O6kHIKSGxN88g4ge49BtimAvMj08Ar771rF0oOugi0GevMCMA+f+3V1QnO
         GAqxIzn0nSzN9svexOb37pRccc9aTYC7ELzXCKqTgbe/iWpqWVj9OM7YmXlrrOfQZm+C
         WBqg==
X-Gm-Message-State: AOJu0Yyx4ZKekUpEz35f9tWbgKJhLlbOCzlGGB4Ud0wG7zAVH91eWldr
	xs3b7P2m2wwuajaVFII8s41gcBAgGP1sG+SaCtTbYBiXHxWesik1IlU0z7Kk8sTvm8TDYHAfEnM
	ttZNutM8TXBjTc6ZR3FhhjRG29G8rdvzX7j9WdiplBt23b9tDL3COkuHv7ZQ=
X-Received: by 2002:a05:6214:500a:b0:68c:ae6d:2959 with SMTP id jo10-20020a056214500a00b0068cae6d2959mr11937110qvb.26.1707412493941;
        Thu, 08 Feb 2024 09:14:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHYuXqpva6SZF2Aah0b10Z312RBpdPeN2QIUsmjUHlOSOk360M3rZ+hHlv/zNdE9PGoJ1Y3cg==
X-Received: by 2002:a05:6214:500a:b0:68c:ae6d:2959 with SMTP id jo10-20020a056214500a00b0068cae6d2959mr11937077qvb.26.1707412493654;
        Thu, 08 Feb 2024 09:14:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXW7BwTvO0LbHhIp+FRYAMN4I1CMQF/dqmLhHe7tOe54hdTsWbldG7uky9/bU9LCt1W82/+dMh5+gRXTTqdxrEDBJQSbajdk9cUrtCVRRyNqAWQ8M2cJyA+4RA1OqgKOgHonSrfWg0qz+WugtkkqaF85XXcF4A/7wT2FUVjBYE4Mq3yphlZkq19xh1rc9BIvRDqlsAxWOzkLGaTcMXB3gFx+JN9atuoB4ZzFoxTHM80OZOltLKZjQ7oQ8JQ3O/oaDB1Wcxu7Bjr2N7njyZXGDK/vrou9bJ+59FHxVCbciOpAsLKoemgggI0AwntEP1A/dEB5yj96hCqZ0GCtaksVg5sLCcsqB3DjzCvnvNZ4OhnYKYddoHyY5HXsT8jJlq5HNqE9qQqMmYTk1/p8J/3R3kcr3D/+Pv5UHuDOsA4us6a1YbC1hmTTyHhmAVCMSNSlps=
Received: from fedora ([2600:1700:1ff0:d0e0::37])
        by smtp.gmail.com with ESMTPSA id ly6-20020a0562145c0600b0068caacd861fsm176128qvb.25.2024.02.08.09.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 09:14:53 -0800 (PST)
Date: Thu, 8 Feb 2024 11:14:51 -0600
From: Andrew Halaney <ahalaney@redhat.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: neil.armstrong@linaro.org, 
	Krishna Kurapati <quic_kriskura@quicinc.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: Re: [PATCH 3/3] arm64: dts: qcom: sa8540-ride: Enable first port
 of tertiary usb controller
Message-ID: <baw3wxbdvzpkqqb6a7iut2wpt6jgzyqii5uyfkzptzt4ryjvao@4tpee6nqup5w>
References: <20240206114745.1388491-1-quic_kriskura@quicinc.com>
 <20240206114745.1388491-4-quic_kriskura@quicinc.com>
 <23824242-1b37-4544-ae9a-0a5a0582580e@linaro.org>
 <CAA8EJpqbXvKMQktGsxMFJnR+fXoOz8hFmm+E3ROPTjjiD0QLvg@mail.gmail.com>
 <6q2ocvrujbli42rjddflyol74xianr7j47jwcgdnnmwjanv25d@uw2da7zulqqd>
 <CAA8EJpr6k8c5C54S9xxQgZvd9NYFoxi5qQrOTz2AMrp0xeZZpw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpr6k8c5C54S9xxQgZvd9NYFoxi5qQrOTz2AMrp0xeZZpw@mail.gmail.com>

On Wed, Feb 07, 2024 at 03:32:03AM +0200, Dmitry Baryshkov wrote:
> On Wed, 7 Feb 2024 at 02:10, Andrew Halaney <ahalaney@redhat.com> wrote:
> >
> > On Tue, Feb 06, 2024 at 03:30:32PM +0200, Dmitry Baryshkov wrote:
> > > On Tue, 6 Feb 2024 at 15:28, <neil.armstrong@linaro.org> wrote:
> > > >
> > > > On 06/02/2024 12:47, Krishna Kurapati wrote:
> > > > > From: Andrew Halaney <ahalaney@redhat.com>
> > > > >
> > > > > There is now support for the multiport USB controller this uses so
> > > > > enable it.
> > > > >
> > > > > The board only has a single port hooked up (despite it being wired up to
> > > > > the multiport IP on the SoC). There's also a USB 2.0 mux hooked up,
> > > > > which by default on boot is selected to mux properly. Grab the gpio
> > > > > controlling that and ensure it stays in the right position so USB 2.0
> > > > > continues to be routed from the external port to the SoC.
> > >
> > > What is connected to the other port of the MUX?
> >
> > /me blows off the dust on the schematic
> >
> > It's a 1:2 mux, and one option is the out the board, the other
> > is a test point I believe if I'm reading things right, although its not
> > labeled so I'm not sure anyone would actually find it on the board.
> 
> Ack, this definitely looks like a static configuration.

Krishna, when you make v2 can you update the wording about the USB 2.0
mux? Maybe something like "which by default on boot is selected to mux
to the external port on the board (with the other option being a test
point)." instead of the wording I originally had? That way the
information Dmitry requested here is easily accessible in the future.

> 
> >
> > >
> > > > >
> > > > > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > > > > Co-developed-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > > > Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > > > ---
> > > > >   arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 21 +++++++++++++++++++++
> > > > >   1 file changed, 21 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > > > index b04f72ec097c..eed1ddc29bc1 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > > > @@ -503,6 +503,18 @@ &usb_2_qmpphy0 {
> > > > >       status = "okay";
> > > > >   };
> > > > >
> > > > > +&usb_2 {
> > > > > +     pinctrl-0 = <&usb2_en>;
> > > > > +     pinctrl-names = "default";
> > > > > +
> > > > > +     status = "okay";
> > > > > +};
> > > > > +
> > > > > +&usb_2_dwc3 {
> > > > > +     phy-names = "usb2-port0", "usb3-port0";
> > > > > +     phys = <&usb_2_hsphy0>, <&usb_2_qmpphy0>;
> > > > > +};
> > > > > +
> > > > >   &xo_board_clk {
> > > > >       clock-frequency = <38400000>;
> > > > >   };
> > > > > @@ -655,4 +667,13 @@ wake-pins {
> > > > >                       bias-pull-up;
> > > > >               };
> > > > >       };
> > > > > +
> > > > > +     usb2_en: usb2-en-state {
> > > > > +             /* TS3USB221A USB2.0 mux select */
> > > > > +             pins = "gpio24";
> > > > > +             function = "gpio";
> > > > > +             drive-strength = <2>;
> > > > > +             bias-disable;
> > > > > +             output-low;
> > > > > +     };
> > > > >   };
> > > >
> > > > Isn't gpio-hog the preferred way to describe that ?
> > >
> > > That depends. As this pinctrl describes board configuration, I'd agree
> > > with Neil.
> >
> > I unfortunately don't have the experience with gpio-hog to weigh in
> > here, but wouldn't be opposed to Krishna switching it if that's what's
> > recommended for this type of thing.
> 
> Quoting gpio.txt:
> 
> The GPIO chip may contain GPIO hog definitions. GPIO hogging is a mechanism
> providing automatic GPIO request and configuration as part of the
> gpio-controller's driver probe function.
> 
> See sdm845-pinctrl.yaml for an example of the gpio-hog node.

Thanks, that seems like the way to go. Krishna please take note of this
for v2!

> 
> >
> > >
> > >
> > > --
> > > With best wishes
> > > Dmitry
> > >
> >
> 
> 
> -- 
> With best wishes
> Dmitry
> 


