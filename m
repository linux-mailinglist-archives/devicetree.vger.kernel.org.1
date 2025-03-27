Return-Path: <devicetree+bounces-161195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 12092A72D37
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:01:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 414F6167345
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 09:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C53B520E005;
	Thu, 27 Mar 2025 09:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="kG+/ZIg7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BAB20D4FE
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 09:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743069489; cv=none; b=KtWCASXaMPJnxsrjLXIiQa9cWKpzit30SAD/pHa9IeMIQLB3rnG2/d1s0uv5E0tRZ7X5LEBwPhJn2GpLhKR7QAsiAup/ZW2LmBRT9reulIcLMqY0XSfB7r4v9/EHTFgFmaLBFwQAodizTH/I6Stom/pBrNXoBiVFwo79PpqYQzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743069489; c=relaxed/simple;
	bh=p3JC4yQhrsYhpFs8EKo57zPThjeS/Gbcpw5YS1QEuI4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=agd4yhl4vVtz/QElR0wXrWq0eesRA/N4g+cJLyAXj1OvUPL/7I0rHWjEhcNMZExsav+fOFeqCpVLIsDK9F97xoWyF0aXZ6K9gBLIDJnSCFDXSJwHk9X80LSjHAbOlFNB+PW8WhMBWzk9AKmOs7k4fhtFQKRJqpn4/1YSiTD1zMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=kG+/ZIg7; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3E6263FE2B
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 09:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1743069163;
	bh=B77IjrCuB6vIebp/9p2+ET8GiOtyI9dx9sa72qBo+cs=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=kG+/ZIg7s24EVWtPf3XKfIm1jil8ZtsoxNK+5eOD3TiO9Azs91VwzGnDa2JAryzJT
	 aQRTtLfhl0aH63EH33ByxYyb4PL+IFhWiklxIRumORZaDk2Pll1Gx4hpRPGpP6y8vN
	 ObLPwb2bB4sFnrum/fkCDPbsgTkVYv3C+dHb8/DU6XUHJvLyvug3ElJ3BEzyRjv4Ui
	 //FJOeAHqky3Oj/0gCFz4GEeQJ0I+ANtUdirkL6XAr9F1PEg1qVnsB2vQsd4oDmx46
	 3GdRSTc8OWFSoT+l2ik7c6YqoIWz4zxrg8nbcLcLkdE4qNg/nm6kO4CxdxUDXXpK9P
	 yYWo5Ao9qSxFg==
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5fa359ec475so649595eaf.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 02:52:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743069161; x=1743673961;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B77IjrCuB6vIebp/9p2+ET8GiOtyI9dx9sa72qBo+cs=;
        b=nAAAtrEJ1iXbG3qrihaBq3xFo23+NrhKCBDFfz+8YNLv0GB5535INNlRcqo982XzCJ
         TfiPSQlFPiHM6sumaB0YzpFCNR3TkojsikaBQeve3ze0QTHj8SfaJHZt6j3tqePsHOGW
         8hFZ2jOVnScfLPgB7LsId4oM1n6nDP9X2sreWBrCm4gu2C+hf0XZ4yuFTN7CHbpEL/dK
         KABXrZGu7S1lVrRa5jT5eZ3PDGhRp+DuAKzI7V2diyY59F/2bCL8aF2pH9ePd5YP6+68
         gN9IQw0wyutCnNDEvNVSPSqIZqxh7okWAKQjEvZyA236P1o6NPyLh71Etj0a2UfkKYBV
         M/+w==
X-Forwarded-Encrypted: i=1; AJvYcCW/yWZddutBB43+IEwKpTAG+O6yCGS/vrbnKCpLw/fc5QKIa86L88k8ETmlmu6pdk6xFKcIxjjOF8eH@vger.kernel.org
X-Gm-Message-State: AOJu0YzsJdTjsj5toyYsgh+stuWAc0EK+iIp53PafRKos9d8Eh2Lqepm
	a88ihJVavDq5h2aNgGVfpme+EUrPSqYD7kl3q5Qcu+eJx+Np+STviTlYQ1q0JFdkdyVDE1Icuwl
	LjPOWDWTldZbiogKLfTpkjyhnQSTgQ/fLVYHckEyuNmXgTzesCWdaiYteeoxZ8dbk/6v6yvGkGH
	KxHIpXfB/wjazfKU5VbAbZt6I4zajqM7LNN6wZJU+jRV5NWrNufg==
X-Gm-Gg: ASbGncvImpf0g7qXsn2tgvQwG2biffzBnJTWXMjQRJxN8LSE4JMgx/AI8rLw1yVHi6Z
	Ok4zErkD0r1VyA7AYpYOYKj3c/wLxzKZbG71AK4l+GJg9QhhMQ5rBOPKzrLU6QdByahuVTkY2
X-Received: by 2002:a05:6870:d24f:b0:2c1:504f:42ed with SMTP id 586e51a60fabf-2c84819f95bmr1979686fac.29.1743069161495;
        Thu, 27 Mar 2025 02:52:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE83awQwNx+dMBWzJP2MzicfAHDKESqCJA4TNMWkSjbXkwlUAjf18/JZSrbIX0oCS21SczuNPt9Cl5/K55Brwg=
X-Received: by 2002:a05:6870:d24f:b0:2c1:504f:42ed with SMTP id
 586e51a60fabf-2c84819f95bmr1979649fac.29.1743069161029; Thu, 27 Mar 2025
 02:52:41 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 27 Mar 2025 02:52:40 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 27 Mar 2025 02:52:40 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CH3PR04MB89282DDB25C289C34581DC0083A62@CH3PR04MB8928.namprd04.prod.outlook.com>
References: <20250320105449.2094192-1-pinkesh.vaghela@einfochips.com>
 <20250320105449.2094192-10-pinkesh.vaghela@einfochips.com>
 <CAJM55Z-LUoeh0pSDnPKpduub_UBOPeg4g3t20JA0GBosJKuiAQ@mail.gmail.com> <CH3PR04MB89282DDB25C289C34581DC0083A62@CH3PR04MB8928.namprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 27 Mar 2025 02:52:40 -0700
X-Gm-Features: AQ5f1JqCbdx_VNT37OdJPVr3F0efA0rT47C_sey_CmVIAYSwd2z2XmZaZ3-bc1k
Message-ID: <CAJM55Z9=0sxXiC20OEe=W0E5S_jHd6JW+7SWvW5JFiu4vpr=nQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/10] riscv: dts: add initial support for EIC7700 SoC
To: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Min Lin <linmin@eswincomputing.com>, 
	Pritesh Patel <pritesh.patel@einfochips.com>, Yangyu Chen <cyy@cyyself.name>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Yu Chien Peter Lin <peterlin@andestech.com>, Charlie Jenkins <charlie@rivosinc.com>, 
	Kanak Shilledar <kanakshilledar@gmail.com>, 
	Darshan Prajapati <darshan.prajapati@einfochips.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Aradhya Bhatia <a-bhatia1@ti.com>, "rafal@milecki.pl" <rafal@milecki.pl>, Anup Patel <anup@brainfault.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Pinkesh Vaghela wrote:
> >
> > Hi Pinkesh,
> >
> > Thank your for the patches!
> >
> > Should this not be marked dma-noncoherent to avoid having to mark each
> > peripheral as such?
>
> Thanks for your feedback.
>
> We have not added "dma-noncoherent" because there are no DMA-capable
> peripherals in the devicetree yet.
> We planned to add this later when we add any DMA capable devices
> i.e. sdhci, gmac, sata, pcie, spi.
>
> Do you recommend to add this property in current version?

Yeah, Conor also answered this already.

> > > +             gpio@51600000 {
> > > +                     compatible = "snps,dw-apb-gpio";
> > > +                     reg = <0x0 0x51600000 0x0 0x80>;
> > > +                     #address-cells = <1>;
> > > +                     #size-cells = <0>;
> > > +
> > > +                     porta: gpio-port@0 {
> >
> > Maybe these labels could be something like gpioA, gpioB, etc. to not be
> > confused with an HDMI port fx.
>
> The gpio node labels are based on the example provided in
> "snps,dw-apb-gpio.yaml" dt-binding and other dtsi.
>
> Could you clarify more on how these labels cause confusion with HDMI
> port as I don't see any example for HDMI port using name as porta, portb?

Sure. Try git grep 'port.*:' -- '*.dts*' and you'll see that "port" labels are
used for many things that aren't GPIOs. It'll be a lot easier to scan through
the device tree and see what <&gpioA 27 0> references.

/Emil

