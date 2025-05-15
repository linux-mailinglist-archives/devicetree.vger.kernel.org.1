Return-Path: <devicetree+bounces-177684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A66AB895B
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 16:25:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DA1AA072AE
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 14:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122751C7013;
	Thu, 15 May 2025 14:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Kx1lSGbe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16131D88BE
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 14:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747319049; cv=none; b=RnIt7/rF6dhpxuRYQoNSBAaV9dGWxMxeWeuitlWpfb0QKVUgxqyQgnJ/RF1iOiGuVEsuMXWvKn4BQPycAgFP4JpxdcfBJWhSU2x6cRcXLrdpMVEzLrJOlxxdFjZ8SmiTqjPreI4UX8Bl2DuWpfF6sV9nDybvaNj5mKXsjY/4CAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747319049; c=relaxed/simple;
	bh=VZtLi41nrdrlH0WLSGh9zP7FBrQwt7KlH8yLUw1Qss4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dtyCaC47Rc4Cwe6ucLPxQN4qcGwgR/JeOPchbSnHRSYYOEA8VVAA0gHmyyvwSYANR7+DMejXGBZfWUDTi6Oal+jnl3Glf2fNT95JOSApw3EBpIQg+khJNAAQraWim9aWfJqrvPpX2VA9VVqWeQQzPa5QPCYen8yfqAg/pIiotgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=Kx1lSGbe; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A53663F82C
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 14:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1747319043;
	bh=xlwQ+aA+muSzpaYiE0SvHYS1AnyEjU4h0g/olbACMZ4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=Kx1lSGbeYRWzql7+1L0lsUGA48SYZO7Rox+I1pEGPZUUFYPQ1S5nQH3ycD46NqsrY
	 DdiQ53zTH+YxhK8U2Z1jckqDTSUUBkj7tv9bOb5VlaXqoDoKnpUQmqq91BQA+i/PYR
	 M3wArJNXDg99LVVZ5m/iL+L8DeaXNnQi9nHsXijD9bh2FsgRjQGiFtMQoT5pfGeYsB
	 fBkswJbRg0FXMbzx5QMfBwX0wwcGpXc0vccHeDfnNRCcfQzL2aaTdteSjGY5F/aSkd
	 gqiRI5KG3qSTfT/NHS/7tQmUDaq7TM1srqmoXCYMjsQfpCDUjEQ346Q2bsY41rFdlA
	 KOgRNa8MYmPuQ==
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-6064d0103f8so1822076eaf.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 07:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747319042; x=1747923842;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xlwQ+aA+muSzpaYiE0SvHYS1AnyEjU4h0g/olbACMZ4=;
        b=tDnfcVtHffwfM1U3aBUgz/1Ir4T8prCXHs2JPu1+pcNNY6vqw7P1/aqvPFoiDhzlZ6
         Yic9eNOgpt5FQBPE58sIKSf4HdTKbtlEzApk3pDy0vP5PR71zrOjkyUWpW3CjIKf0Fkk
         uQAJmlz7L71dPpbgIvhk8fKYqdCiLIJsmZd60YAcjgMjWtwbZu0ikcWOYNH1K6VLU2nC
         Cy9GePIn9wQktBdlNZesCkBkTQAmddsacYbAHbfOAH6gjsx8JJ1IF+BbIOhbyqvhcaER
         1Bmg/nVVk7eM5yiC4DyXVjZpPkEVC64PSBgwtqF3g7EIniyXQABZ8KaUnN/PWNC1p8z4
         zs3g==
X-Forwarded-Encrypted: i=1; AJvYcCVtwqjRQ1aR4ztxh8Mx1Vi2hNCI2Q0DMjTl0v7lEET4jpm7Pgg8693bqfceba9rTK9JMarKlmV1t2XR@vger.kernel.org
X-Gm-Message-State: AOJu0YxIIBjkfsR58+sFPTGV9EAxaK/+6XlLel6OXZWmHSSJAnFjgy3R
	+BI+CgQnsvgu4txyC8+VuopZLYNwLfepsTv+rbr5ed+rJazQfN8wQslipyl7eP4kTJBxyVV+/AE
	l8D4ivfgsoi0KyHG6IEeYFwLKTMCXzdtd2PHyRz/B7YfQUjzX0xYuEwDnGJoMv3pNbEAOv1W5ah
	C4JuxPbw0KmhcgmMQaVGhGmmhSn4/Tk9/2PASFpVJyOX119lcGCw==
X-Gm-Gg: ASbGnctZh5xza9MVz1wT7rSjPiIVDGtF+BZg7lk+jQRtbHox52w/Lazk898jJigqPZh
	cb3Gtgb3ZhaSLnYOFGH09SvTMkz+nGKnpvxEN3cFcwj1ASnReefVakIYcPAL0TcgWUo9YGg==
X-Received: by 2002:a05:6870:e994:b0:2d6:246:dbe0 with SMTP id 586e51a60fabf-2e32b05a78bmr4002223fac.1.1747319042098;
        Thu, 15 May 2025 07:24:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH68dbr1tbLB515+jsbfah2xc7Zu3SzKVdWkjm3J29LlL6eUYcwXlX8tIrhIm/6dFYUiLHb9w4URfADfddYLgE=
X-Received: by 2002:a05:6870:e994:b0:2d6:246:dbe0 with SMTP id
 586e51a60fabf-2e32b05a78bmr4002200fac.1.1747319041629; Thu, 15 May 2025
 07:24:01 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 07:24:00 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 07:24:00 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250409-pulsate-buccaneer-ae996b6ff98e@spud>
References: <20250324020958.2235802-1-sandie.cao@deepcomputing.io> <20250409-pulsate-buccaneer-ae996b6ff98e@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 15 May 2025 07:24:00 -0700
X-Gm-Features: AX0GCFsniAbL8_iKhnPgXtKsmiLymV-zKuO-sYpzDWWvy82kMaCJo5ZnWZlRl1A
Message-ID: <CAJM55Z8J49VBr0WWcwBJvDnxnfX2UjGcC5egqjNu-oqqAjHcnA@mail.gmail.com>
Subject: Re: [PATCH v2 RESEND] riscv: dts: starfive: fml13v01: enable USB 3.0 port
To: Conor Dooley <conor@kernel.org>, Sandie Cao <sandie.cao@deepcomputing.io>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Maud Spierings <maud_spierings@hotmail.com>
Content-Type: text/plain; charset="UTF-8"

Conor Dooley wrote:
> On Mon, Mar 24, 2025 at 10:09:58AM +0800, Sandie Cao wrote:
> > Add usb_cdns3 and usb0_pins configuration to support super speed USB
> > device on the FML13V01 board.
> >
> > Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
> > Tested-by: Maud Spierings <maud_spierings@hotmail.com>
>
> Emil, can I grab this one?

Yes, please do.

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

>
> > ---
> >
> > Changes in v2:
> > - Remove space to pass checkpatch.pl.
> > - Add usb0_pins and pass test on board.
> >
> >  .../jh7110-deepcomputing-fml13v01.dts         | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> > index 8d9ce8b69a71..f2857d021d68 100644
> > --- a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> > +++ b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> > @@ -43,9 +43,28 @@ GPOEN_DISABLE,
> >  			slew-rate = <0>;
> >  		};
> >  	};
> > +
> > +	usb0_pins: usb0-0 {
> > +		vbus-pins {
> > +			pinmux = <GPIOMUX(25,  GPOUT_SYS_USB_DRIVE_VBUS,
> > +					       GPOEN_ENABLE,
> > +					       GPI_NONE)>;
> > +			bias-disable;
> > +			input-disable;
> > +			input-schmitt-disable;
> > +			slew-rate = <0>;
> > +		};
> > +	};
> >  };
> >
> >  &usb0 {
> >  	dr_mode = "host";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&usb0_pins>;
> >  	status = "okay";
> >  };
> > +
> > +&usb_cdns3 {
> > +	phys = <&usbphy0>, <&pciephy0>;
> > +	phy-names = "cdns3,usb2-phy", "cdns3,usb3-phy";
> > +};
> >
> > base-commit: 38818f7c9c179351334b1faffc4d40bd28cc9c72
> > --
> > 2.34.1

