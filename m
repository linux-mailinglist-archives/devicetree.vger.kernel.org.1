Return-Path: <devicetree+bounces-39313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B7084C1E6
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 02:32:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 144471C2150E
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 01:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E282F34;
	Wed,  7 Feb 2024 01:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OLwcyKEi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9761D2EE
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 01:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707269536; cv=none; b=HQbfVd0k5Ztr7XdBSvh18UXUxXsKUtSKmwIzE/+MhPzCF+IOVc400xgC61k2uYXYQP/n0b0CU1LX0ozJd7MMd1BBzKOecTsbAlhDT66I5lwUhMWvbAmtmGHtBLy39bd/vad+xHb+0T8nn4mEd6F4KrXp2S5Ej6+irelRTVpX9Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707269536; c=relaxed/simple;
	bh=kTyLhTinDOUD2dILnzoYkknmbWfY6CzsPssz5k9zVgc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R8ZdiPlwOjaZ8SxywJD1VOxKe+icpzBDRXorSL0dnHPYNpY/XhxRxglpq8aGzvU5/ixsTxMeXc9mYlxc4gDlBBrBeBs5AuER0aHAZnKi+2KB7ukPdReTbVAlyZNTgyKqF8fjqD84B9Gs00vu9Wh0OWdGp2w/F2ZWDSoCrTthQbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OLwcyKEi; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6040a879e1eso1195497b3.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 17:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707269534; x=1707874334; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UR5w5w3nYNrMr4t2252rxJ6poSbTDfrSVSynZ45Rb38=;
        b=OLwcyKEiUNBZZE52AOMT5StOIXxyZRIZnl0PmR08K2+1wZzuuchgCCiI8mJW8NvnFW
         XZGmAqh8oPJu17Xm41UNvYYR5Kpjn+kEs4H3oeRbHn2f+UmHuaoOu/KbRo+6DZpVmn1h
         e/uWjFPR8h2eaeDUW58gE9zXKC3S3HyMRJy67RmzN2kbkcHIlBf4fvQ8P3D93Y1D2B2f
         cob1Zwi5mrLkecjJ4N2od1Eakw/51qveFI2zjj6ftggQ6RnIn7xQte9XSmHRTJay81UE
         ESyd0el46yN2ddJp4eeSdX8r0nnHQg/lxDVDvonAI8v6CeYofMUiDBa6+VNRJp3hUlwq
         OI3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707269534; x=1707874334;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UR5w5w3nYNrMr4t2252rxJ6poSbTDfrSVSynZ45Rb38=;
        b=TDx5bR3oJsIqcOi0Hq3MBy4xCE7ZU8qZ09ESdAymCsee5dv3UVIZXe4C1otfQR5TFV
         qqiQHsgdesC1CumFIp6V9IO2iLEN5Oh0PNC4BsYR/uxpacFuBND+EFSJhOuZK7qeG8LH
         cJxurPGhl3YVNgTKKlhlx8L3ivF3mIhTUBKzU9XUvmosIxjub05YbUhrnrE1ZEe+2kxL
         uY+KCHeLIOaKiT40OrBsFybhrLKRThCsrWV1zfEf3h9khIZeqqZHBoMJJBKtGivQCW2q
         3qhxJ9whtAH77XyNe3p9YqYxkCDUlA9FMFpoCx6FJB8pnYQnxkczZC9u0FmH78yIuy1b
         TA6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWZjw4skblQpBweGmtY3BOFOPEKwv8Vl37TR+M//m6b2J5kxvB8Ofien0i1ZWI6ucuPDxWNcdFBmYCOqL4MVi2Tg5mAJb0h7YpEEw==
X-Gm-Message-State: AOJu0YzdlmSxh+gKsgMwELuMXPfdBc23WDivhWIzczFB5CEHd2zGkpm3
	CexVG6AuQIcPXKLAlJqEqKRvFBDQDTRIx+GLkz3on/msXIfyhmBgRDALI/TN6VQsvxGTKEmdi6a
	88biMzrMNmW7DTeNm+SPYLLm9eiair6gtrWngQg==
X-Google-Smtp-Source: AGHT+IE6HJChHEBK7iL2zfT9AySXYjwDAtbcfV2QOrHxvxPI3SzOJrJMh8q1Ex5CYOpYBW9Bgsv+IarM+lEcpeNr/wM=
X-Received: by 2002:a81:a193:0:b0:5ff:6028:99f5 with SMTP id
 y141-20020a81a193000000b005ff602899f5mr3377783ywg.41.1707269533799; Tue, 06
 Feb 2024 17:32:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240206114745.1388491-1-quic_kriskura@quicinc.com>
 <20240206114745.1388491-4-quic_kriskura@quicinc.com> <23824242-1b37-4544-ae9a-0a5a0582580e@linaro.org>
 <CAA8EJpqbXvKMQktGsxMFJnR+fXoOz8hFmm+E3ROPTjjiD0QLvg@mail.gmail.com> <6q2ocvrujbli42rjddflyol74xianr7j47jwcgdnnmwjanv25d@uw2da7zulqqd>
In-Reply-To: <6q2ocvrujbli42rjddflyol74xianr7j47jwcgdnnmwjanv25d@uw2da7zulqqd>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 7 Feb 2024 03:32:03 +0200
Message-ID: <CAA8EJpr6k8c5C54S9xxQgZvd9NYFoxi5qQrOTz2AMrp0xeZZpw@mail.gmail.com>
Subject: Re: Re: [PATCH 3/3] arm64: dts: qcom: sa8540-ride: Enable first port
 of tertiary usb controller
To: Andrew Halaney <ahalaney@redhat.com>
Cc: neil.armstrong@linaro.org, Krishna Kurapati <quic_kriskura@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 7 Feb 2024 at 02:10, Andrew Halaney <ahalaney@redhat.com> wrote:
>
> On Tue, Feb 06, 2024 at 03:30:32PM +0200, Dmitry Baryshkov wrote:
> > On Tue, 6 Feb 2024 at 15:28, <neil.armstrong@linaro.org> wrote:
> > >
> > > On 06/02/2024 12:47, Krishna Kurapati wrote:
> > > > From: Andrew Halaney <ahalaney@redhat.com>
> > > >
> > > > There is now support for the multiport USB controller this uses so
> > > > enable it.
> > > >
> > > > The board only has a single port hooked up (despite it being wired up to
> > > > the multiport IP on the SoC). There's also a USB 2.0 mux hooked up,
> > > > which by default on boot is selected to mux properly. Grab the gpio
> > > > controlling that and ensure it stays in the right position so USB 2.0
> > > > continues to be routed from the external port to the SoC.
> >
> > What is connected to the other port of the MUX?
>
> /me blows off the dust on the schematic
>
> It's a 1:2 mux, and one option is the out the board, the other
> is a test point I believe if I'm reading things right, although its not
> labeled so I'm not sure anyone would actually find it on the board.

Ack, this definitely looks like a static configuration.

>
> >
> > > >
> > > > Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> > > > Co-developed-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > > Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> > > > ---
> > > >   arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 21 +++++++++++++++++++++
> > > >   1 file changed, 21 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > > index b04f72ec097c..eed1ddc29bc1 100644
> > > > --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> > > > @@ -503,6 +503,18 @@ &usb_2_qmpphy0 {
> > > >       status = "okay";
> > > >   };
> > > >
> > > > +&usb_2 {
> > > > +     pinctrl-0 = <&usb2_en>;
> > > > +     pinctrl-names = "default";
> > > > +
> > > > +     status = "okay";
> > > > +};
> > > > +
> > > > +&usb_2_dwc3 {
> > > > +     phy-names = "usb2-port0", "usb3-port0";
> > > > +     phys = <&usb_2_hsphy0>, <&usb_2_qmpphy0>;
> > > > +};
> > > > +
> > > >   &xo_board_clk {
> > > >       clock-frequency = <38400000>;
> > > >   };
> > > > @@ -655,4 +667,13 @@ wake-pins {
> > > >                       bias-pull-up;
> > > >               };
> > > >       };
> > > > +
> > > > +     usb2_en: usb2-en-state {
> > > > +             /* TS3USB221A USB2.0 mux select */
> > > > +             pins = "gpio24";
> > > > +             function = "gpio";
> > > > +             drive-strength = <2>;
> > > > +             bias-disable;
> > > > +             output-low;
> > > > +     };
> > > >   };
> > >
> > > Isn't gpio-hog the preferred way to describe that ?
> >
> > That depends. As this pinctrl describes board configuration, I'd agree
> > with Neil.
>
> I unfortunately don't have the experience with gpio-hog to weigh in
> here, but wouldn't be opposed to Krishna switching it if that's what's
> recommended for this type of thing.

Quoting gpio.txt:

The GPIO chip may contain GPIO hog definitions. GPIO hogging is a mechanism
providing automatic GPIO request and configuration as part of the
gpio-controller's driver probe function.

See sdm845-pinctrl.yaml for an example of the gpio-hog node.

>
> >
> >
> > --
> > With best wishes
> > Dmitry
> >
>


-- 
With best wishes
Dmitry

