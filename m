Return-Path: <devicetree+bounces-49000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA38874912
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 08:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A324B21563
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 07:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07CAA6311E;
	Thu,  7 Mar 2024 07:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aPXUc351"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A59C63113
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 07:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709797830; cv=none; b=H2cBFNwSsE16yHbnbJtTDWa05/4xrxbfvK8DxF4acYXgS+zR2M8cGoTbqzs1oWf683RR86xYx1O0C1wZiad0y2nhJtfJbHOqDPtlQMwOK6OzkSZQsPFQGYVZaUmCC6AsPB+M5+mepMaU6XRDq6liOPam9efK344B9AtFTq1cwFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709797830; c=relaxed/simple;
	bh=obiCLTXc9AtSTZAokHiOqHN8TgdotsLfNQ198pkoL7I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VZIlOSgMsdvMQ391oFIGIvrBUTVtc0/WaPL2+emG8P7UN5E4w497KTWxjPTK98dZhUUrtdvjPXPyCIC9q9Kyvvohlbo4f9qs3xUodVM8VA6s0eUupvCQN9LxOVmDv+WvDa3Qd/5f438coCd4lNd10O7GTTgQz9131gNwpgZ/EyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aPXUc351; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dbed179f0faso1322518276.1
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 23:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709797828; x=1710402628; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ah0ukiTsKA1pY9lznY+1jzvEeB+m6H6B1R6XwmhrPB0=;
        b=aPXUc351/Aoy6e4tGorPE8vtqwU1567VlOfS4cK7aoPyV7Pk8ief4q7LrR9kS01mtg
         XgnUz7LVT87nVbGZfUWPhlh528KJuQSD0ZLhRMIGvLb4efBqjWg2Bu90sMXtrqLPDTQo
         e4OX4eqcZXclRsDLJ5rx9FsOAYKrFnUKRo1/EliMTCR+gIOUt2RIHA+yHfrM64AuiiJm
         Uuh+eAjKkDAENcpnf1aLpIINwC6Q/pKfs9suSXAHWLSzZw5wZn+gL6glNqBehNyJ5y61
         4yShUAJmLkpI+U62ZFkzYBGKjdRgjh6h05w44SosJ1Wp5gsZANkeo7WbbiVxYLhfPGbx
         w+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709797828; x=1710402628;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ah0ukiTsKA1pY9lznY+1jzvEeB+m6H6B1R6XwmhrPB0=;
        b=EHo4CEcU12dh7zpJPONqRu1qG7abGi0z+z+dW1ILY2nDjareySKULlklkzwXd5tBSb
         ZCn1r8I32MnsmVwbUdNkAHD/UpVJzGuYmOKRI1s7EAWx+YLWEhe4/OPi7aI5MlIwi30i
         VLGteOQsIgeypv8P+Qs0XzjwlNOONLjZrWxOvl60Ma91CiGIE19cB5fMCvWHDaNkEGgu
         nqZyi2jWzQ1Dt4EsxXORGHVF4sOXXF5yqDxadjBf4bpyaqDo8s5hnSWXt4BYPCK02y0j
         4lNdb3SBIi5nYCqz6e7ugM/S0GboOxsKGf/BxSKNHFTO35Tk6mKROgQEmKjb4nUlTjY9
         j0Hw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ70Xe6FwYyHnBWAq2xvL7ouDFqn4KMIRR3n2ntu1u06QZBUs7df9wDAwUdHin5x8LJV5ety6frOe3Iwfda4gC+QjNhqPi6QF12A==
X-Gm-Message-State: AOJu0Yy30uVVQhyr2bfNlY4h0XRkPCTOwwsc1x7MDPWBHgzCCAk7cqOt
	RphtHfyddrlCzyDDVE4sX7MxYoArV7YYpdMAoOZR3vHXqTdAVv53+74mT/BaR3a0LdSTTD25WB7
	yvuBpr4AkIuHVoO3w1lGMkKNLon0d1duUqWWqAg==
X-Google-Smtp-Source: AGHT+IFa/n55GR6mweEkfWDnqnH5Zm3qCZemeRU4pQouRAgZQOwh4xDQqFnwc99qBUSN19+gM9VcCOj7gor0L/AOjZI=
X-Received: by 2002:a25:1ed5:0:b0:dcd:9a9b:8d7e with SMTP id
 e204-20020a251ed5000000b00dcd9a9b8d7emr377200ybe.9.1709797828227; Wed, 06 Mar
 2024 23:50:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306123006.724934-1-amadeus@jmu.edu.cn> <20240306123006.724934-2-amadeus@jmu.edu.cn>
 <CAA8EJpqYjutM1Kh6QxysB6XNAmXywtOtRJ7KP0LbY5E36kCPvA@mail.gmail.com>
 <78b1a1a2-a9fa-4b28-9d96-d65bb5517199@gmail.com> <CAA8EJppJBOQh19r4A-igsh5znDE_R6mDNy+ao5ximx7vtsZZvA@mail.gmail.com>
 <CAOX2RU4W-zV3A8eW0A+1V838Fm=tUkXY=Bs3j4VJ8Jo9mxrOAw@mail.gmail.com>
In-Reply-To: <CAOX2RU4W-zV3A8eW0A+1V838Fm=tUkXY=Bs3j4VJ8Jo9mxrOAw@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Mar 2024 09:50:16 +0200
Message-ID: <CAA8EJpq=-r4XhnFJset0=X=YO5QNUpuw+e1r6DTsPvzNAZCyNw@mail.gmail.com>
Subject: Re: [PATCH v5 1/1] arm64: dts: qcom: ipq6018: add sdhci node
To: Robert Marko <robimarko@gmail.com>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 Mar 2024 at 09:38, Robert Marko <robimarko@gmail.com> wrote:
>
> On Thu, 7 Mar 2024 at 08:28, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Wed, 6 Mar 2024 at 22:35, Robert Marko <robimarko@gmail.com> wrote:
> > >
> > >
> > > On 06. 03. 2024. 20:43, Dmitry Baryshkov wrote:
> > > > On Wed, 6 Mar 2024 at 14:31, Chukun Pan <amadeus@jmu.edu.cn> wrote:
> > > >> Add node to support mmc controller inside of IPQ6018.
> > > >> This controller supports both eMMC and SD cards.
> > > >>
> > > >> Tested with:
> > > >>    eMMC (HS200)
> > > >>    SD Card (SDR50/SDR104)
> > > >>
> > > >> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> > > >> ---
> > > >>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 19 +++++++++++++++++++
> > > >>   1 file changed, 19 insertions(+)
> > > >>
> > > >> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> > > >> index 322eced0b876..420c192bccd9 100644
> > > >> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> > > >> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> > > >> @@ -441,6 +441,25 @@ dwc_1: usb@7000000 {
> > > >>                          };
> > > >>                  };
> > > >>
> > > >> +               sdhc: mmc@7804000 {
> > > >> +                       compatible = "qcom,ipq6018-sdhci", "qcom,sdhci-msm-v5";
> > > >> +                       reg = <0x0 0x07804000 0x0 0x1000>,
> > > >> +                             <0x0 0x07805000 0x0 0x1000>;
> > > >> +                       reg-names = "hc", "cqhci";
> > > >> +
> > > >> +                       interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> > > >> +                                    <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> > > >> +                       interrupt-names = "hc_irq", "pwr_irq";
> > > >> +
> > > >> +                       clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> > > >> +                                <&gcc GCC_SDCC1_APPS_CLK>,
> > > >> +                                <&xo>;
> > > >> +                       clock-names = "iface", "core", "xo";
> > > >> +                       resets = <&gcc GCC_SDCC1_BCR>;
> > > >> +                       max-frequency = <192000000>;
> > > > If I understand correctly, GCC_SDCC1_APPS_CLK support frequencies up
> > > > to 384 MHz, but here you are limiting it to 192 MHz. Why is it so?
> > > >
> > > > I am not sure that 384MHz is actually supported as IPQ6018 datasheet
> > > > clearly indicates that HS400 mode is not supported.
> >
> > I didn't check the datasheet, I opened the gcc-ipq6018.c
>
> I understand that, I just pointed it out, it wouldn't surprise me if
> the frequency table
> was just copy/pasted from IPQ8074.

Then it might be fixed instead, making the max-frequency property unnecessary.

>
> Regards,
> Robert
> >
> > > >
> > > > Regards,
> > > > Robert
> > > >
> > > >> +                       status = "disabled";
> > > >> +               };
> > > >> +
> > > >>                  blsp_dma: dma-controller@7884000 {
> > > >>                          compatible = "qcom,bam-v1.7.0";
> > > >>                          reg = <0x0 0x07884000 0x0 0x2b000>;
> > > >> --
> > > >> 2.25.1
> > > >>
> > > >>
> > > >
> >
> >
> >
> > --
> > With best wishes
> > Dmitry



-- 
With best wishes
Dmitry

