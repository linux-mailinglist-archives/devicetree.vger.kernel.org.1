Return-Path: <devicetree+bounces-213328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FD8B451E3
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:44:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 902BA1C82408
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 291E41A9FB3;
	Fri,  5 Sep 2025 08:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="SKP4+Wkn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AD227C872
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 08:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757061818; cv=none; b=kcUtB1pimbOoNkXDsiVW0Oxoav/BJrY7VbzJcG5hU59KYxvu22K5TY+y4IdxKl6hLJqPKwYZhhDVbtmSyOVtYqSF4kdcGq74zJeSEUZPkWYpS+BdP+mWag7/nKiKY0bz30fPvv92KOXQnox4QFH1sYAQ9+c98bKtf2dFv4CM+ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757061818; c=relaxed/simple;
	bh=qj3CPvvg9Wfb4aOeiYN5qE3V/WXSusmxmAmvExZAstk=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cp8GrcLpKF5GpvDXSS1ZH23KeDgkj/3/QpRkLIYqXNOmDMud4nynjFsgNjLtFnwAQJrq0jPrKBYvnN/6AZnWMRGHtJh769Gx0B606XZB5AbV9o8njZD+RQKX7iPLHhtciMAU9gpfRzHcT3+vH4T/kQhhk/mM+cNfiLYnnM/p8IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=SKP4+Wkn; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-61d143aa4acso2908137a12.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 01:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1757061814; x=1757666614; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KFZ44yopGrsYMfdLKOB5nzNR8YL97RtHy31e0eAGVGk=;
        b=SKP4+Wkn4MoJaOptM/YoCxClv5GNkiv72eza2pvsFYpJ9GQeFgehLlCMNs6AfSKxfH
         fz9A1ztgZ9PldNft6odD+WizNt/fVoaT7MVFkL6JcAUoTGQHLku3KuiSjnDI6UV0IvRs
         b4ru+cPfatayyhaezIv8YOEprweGB/nZ109gT2/8iXa0mUm8ZjezNa06rs8qOKsaA++q
         hXfZaudFUKKyJ+DU5SOe6k3PjEXQK3YuXo2NvnFkSJVRZzCrmKwbUZHBAxaBuVJ0nlsB
         woki3hIPlzwNfPrXex5v1OxflJwO5qTO1K5vyZV2DaXQg5N6MN2/yASr9eqi7TovYBAJ
         csAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757061814; x=1757666614;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFZ44yopGrsYMfdLKOB5nzNR8YL97RtHy31e0eAGVGk=;
        b=NyiKTGtCFV/Vo/egSVPD3OTY9Bt66FIipO7QRPILIlffwahTZ6jj3NE+CmuJ7ei/oC
         ItPOGV33Oqf5lDZ6GTS34jJ16RZuvYbyGqJEJMRhoDRYJ2GWcMDhbBsnlKm9n7MkOYFs
         AzF0UAqbgvE5kKdcc6vWtNpAkeTkLfw2kVaxSaCQ6+98TBhoPjJClGrMqa3KOsfV8VO9
         79UJatFPtfSkc7f/BxZVsJv5AxSPxAdECXdxJfBpfOrUlTmZJOObiUaKsnODmYTcQ5LY
         F7UtTyPtpb0f7Is1/Hd5PVNxvsE5kwTd6GlH8pPe/GPvCYjwqoidIk1xKHL3L2DAmWdU
         CfGg==
X-Forwarded-Encrypted: i=1; AJvYcCWlCbdciTIsi46+5kjRdmdqGIF1bV/FgXNin3hPKqPy4m/onnhd4AcDg7nbfrTMnHH2POEwAIZOvsbb@vger.kernel.org
X-Gm-Message-State: AOJu0YwH/ykGoMBpQySTpoMLCoIS+EHAEwou9/EANsV7GIs+moVP+qiY
	bsyC5o66A+OY0VxnCn/uuuuVlbSSjbD9uKDWMVvyuxGNKDtfGT8EOjh9bQNAenTHYJ0=
X-Gm-Gg: ASbGncuh+hNwGEw7RR1YTOlr3fHuZQ1QBu9LpySstUZXNmdR9PKQnPowNDNW8BmsfUn
	RFCZ9ub93IRb3oGZEyGvI1CR9nsUfJURuwOfF/tcUItI6j3NtU1Qv2j7L4DbLYoKWBlff+1Zfhl
	srhbPhasaCTwZq80MMU6m4NBr+oQXbJ9C0E203Hjjspz2FhTm5kT0gL8HQ9SsRngcMzykNheSW/
	+yhkGPoknqN5Q8Fq3nRDH9mvoCp8sOreWvUrbMcaT6QcHeXCY839YS2/mvpexvhVZ1vJWtpoPlG
	t+rrH/tT9ciLgNqd6WDVm7cDKOEOmOw3HW3KrBp6ivLhzO+Wy2Czy2ftClxIlOdf26gc3wdBNbU
	N1o2b0wpHznFbQTpQIZ3qP8DZJBVBV3HcHwvXWmv71k9Y/d9jWe7iqJmEpwzegHuYTSfBWxh/Bh
	08FYcctsCKz3zDRES0n46qnqt/wBL26i4+
X-Google-Smtp-Source: AGHT+IHSoczlmQQsMcIcDoA2nphrjHJmH+vwTBiXM5+w1FrleTBzhZMYXlRT74k2g1gKnwedKzI9pA==
X-Received: by 2002:a17:906:f5a2:b0:b04:3955:10e2 with SMTP id a640c23a62f3a-b0439551a93mr1777660366b.25.1757061814481;
        Fri, 05 Sep 2025 01:43:34 -0700 (PDT)
Received: from localhost (host-79-31-194-29.retail.telecomitalia.it. [79.31.194.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04148f95b5sm1353763866b.92.2025.09.05.01.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 01:43:34 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 5 Sep 2025 10:45:31 +0200
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	iivanov@suse.de, mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 1/2] arm64: dts: broadcom: rp1: Add USB nodes
Message-ID: <aLqjK0FYSkXtBvv5@apocalypse>
References: <4e026a66001da7b4924d75bd7bee158cbb978eed.1756387905.git.andrea.porta@suse.com>
 <50b59b27-cdf9-4af8-b31d-d5ccc68c73fd@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <50b59b27-cdf9-4af8-b31d-d5ccc68c73fd@suse.de>

Hi Stanimir,

On 13:46 Thu 04 Sep     , Stanimir Varbanov wrote:
> Hi Andrea,
> 
> Thank you for the patch!
> 
> On 8/28/25 4:50 PM, Andrea della Porta wrote:
> > The RaspberryPi 5 has RP1 chipset containing two USB host controller,
> > while presenting two USB 2.0 and two USB 3.0 ports to the outside.
> > 
> > Add the relevant USB nodes to the devicetree.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >  arch/arm64/boot/dts/broadcom/rp1-common.dtsi | 28 ++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
> > index 5002a375eb0b..116617fcb1eb 100644
> > --- a/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
> > +++ b/arch/arm64/boot/dts/broadcom/rp1-common.dtsi
> > @@ -39,4 +39,32 @@ rp1_gpio: pinctrl@400d0000 {
> >  			     <1 IRQ_TYPE_LEVEL_HIGH>,
> >  			     <2 IRQ_TYPE_LEVEL_HIGH>;
> >  	};
> > +
> > +	rp1_usb0: usb@40200000 {
> > +		reg = <0x00 0x40200000  0x0 0x100000>;
> > +		compatible = "snps,dwc3";
> > +		dr_mode = "host";
> > +		interrupts = <31 IRQ_TYPE_EDGE_RISING>;
> > +		usb3-lpm-capable;
> > +		snps,dis_rxdet_inp3_quirk;
> > +		snps,parkmode-disable-ss-quirk;
> > +		snps,parkmode-disable-hs-quirk;
> > +		snps,tx-max-burst = /bits/ 8 <8>;
> > +		snps,tx-thr-num-pkt = /bits/ 8 <2>;
> > +		status = "disabled";
> > +	};
> > +
> 
> I'd order the generic properties first and then vendor specific.
> Something like this:
> 
> rp1_usb0: usb@40200000 {
> 	compatible = "snps,dwc3";
> 	reg = <0x00 0x40200000 0x0 0x100000>;
> 	interrupts = <31 IRQ_TYPE_EDGE_RISING>;
> 	dr_mode = "host";
>         ....
> }

Ack.

Many thanks,
Andrea

> 
> > +	rp1_usb1: usb@40300000 {
> > +		reg = <0x00 0x40300000  0x0 0x100000>;
> > +		compatible = "snps,dwc3";
> > +		dr_mode = "host";
> > +		interrupts = <36 IRQ_TYPE_EDGE_RISING>;
> > +		usb3-lpm-capable;
> > +		snps,dis_rxdet_inp3_quirk;
> > +		snps,parkmode-disable-ss-quirk;
> > +		snps,parkmode-disable-hs-quirk;
> > +		snps,tx-max-burst = /bits/ 8 <8>;
> > +		snps,tx-thr-num-pkt = /bits/ 8 <2>;
> > +		status = "disabled";
> > +	};
> >  };
> 

