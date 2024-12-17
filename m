Return-Path: <devicetree+bounces-131985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3009F52FB
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 18:24:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D0C31894F65
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 17:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909FD1F7574;
	Tue, 17 Dec 2024 17:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aAg37WfX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE79A1F75A6
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 17:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734456045; cv=none; b=rtgqOa5JLpo363IXQo1RSUzcjf+wyYU3HOrqwnDPjvFx5liVsEdfFEYdh4Oi4p1F35jl2qLCVkXZa23cvqkmi/J7U1YF6Jmbmw5riK7RjdUHz+o7pJHHOaeJbd3Sp4Sq2SNM+YYltTwmou3+mATXq3BjFgKUpVdLsDi9ZkZJ1VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734456045; c=relaxed/simple;
	bh=lU3v/h95t9yKq+oPE/QPiEX37Ydf45Rwlzuvm1RuHwU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IyUBRAL+Zj+tHKCgbhcex/Z2o1DIEU0yOGC/z1tqAxV6Ye7vX50D+0vx93T2j6JvlkA0rVR34pZtT3BLfoiq9blb9GNU2PAx3cym5RUV4ISdJ3YO5XwJfCaTllo/m7ZsEvNVhdOEgeF8u8OO/LnThZIAjNK/Bk7Y7vg4KJlMtAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aAg37WfX; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2162c0f6a39so58669515ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 09:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734456043; x=1735060843; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=97u39/mB75Gyvq3MUoP9A6BWuOZp1jV8oYjBZnf5YHs=;
        b=aAg37WfXAKzH8J0gBo8+CmgbMQfNxTmLmgza8p7mM/WtKG4Udas38fPEtaCtY+COQ8
         WREMrEuUdRJIWM3Ymd0PILouuqEj3uWXJ2ZM+GVrRzxOp3nmuymm1rGPfnU7ZCmztpsK
         meVDvwXNmC6zdP1JJmkWIBpZvYmnFZ4FllTZid26VQpo5MC9INOj2k2jy56KfJXGIVNW
         vpvVOGsmL235elLgXzSlNW1tfiW0d+BDwkPqXiSBGjcC33iMaJ+FuaUJ73055VvY0dcL
         jowC5Fux9CdlXCmwEoyte6FMWxN7hArG0OBMzqpv1YmTObDdrzJjn1d73Cp+tc4RvTwY
         y0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734456043; x=1735060843;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=97u39/mB75Gyvq3MUoP9A6BWuOZp1jV8oYjBZnf5YHs=;
        b=OD4jBBgUOCpQEhvP/f7I3P30pnLLQkuxHb+NQrUJuJCSYDhXVGaZqdnNiEssdVNVlO
         3ZOU5zplMC9Wq+OTSRaLR9v6HefTnIaGi/LOsXO1skJx2ji1Kro0qHh4CVGTybl05QYu
         vBacVYP/9lVdDLimSgW7TZV7P77jE+u2BE17v49+ZHzSc55mF2EAaXUIcHPwgqrtPVem
         FzcU69s5Cga69t7E+kcR5YzJ9xT8IkAdLtWAU99j0jCxCvnSeGFN4YR14PpONpV/LNuk
         TryGgIELcl7IPKFjJGQWMXtp4Swbj8cjuzL++pGeU155KcojohlhXnmumpLnpaSj5cFr
         hM7A==
X-Forwarded-Encrypted: i=1; AJvYcCWonOVlQvVO6WA5TZQvAYHfWz8NRrCjVXvCipocFx9v64J5jATUDbrVE3REwph8GoN0BrR2O9NInUC5@vger.kernel.org
X-Gm-Message-State: AOJu0YyhQfwpW7k+LK3S9707W53C1OihOsxUv+8kr/LI5gqyXokoiuLg
	ELehZ2qxJucHSte98WgZ8QEHUbN6WunmuKMqhH7+6BvK05hrlFj9nW2Do9VUlg==
X-Gm-Gg: ASbGnctIoVntli1i7dY/zALcZ96U/Q8dRgvMqULBVmgHvBeqqnE/aeKKKY3sFQibfDs
	xrASPwhbsiMoa5+35Nwjd7Az1zteFpJ0TW8FXMx9D6S0p5yJX4yh3MoqPwor58ivuphn33ndI7/
	YWWCfeiIlXgGMV5CWv+YT4LSXlV6c2wM+EqOg0NF6URGGhQoffFwk18Fw462e+YYLJZMoutyDJF
	D0+SGGqbhggw6CgByO1Vm0HiWJx5hiPgeUL532yIycMCNotdi9xlo4iq2mEziJCY1a4
X-Google-Smtp-Source: AGHT+IGjUccenohiYb+SDkdAmpf0k5ZpdC9204RkXFZyFmXwB9GNV/fs0d/6P1jKINhalSCuMQyisw==
X-Received: by 2002:a17:90b:2750:b0:2ee:7504:bb3d with SMTP id 98e67ed59e1d1-2f2d867445amr6395058a91.0.1734456043265;
        Tue, 17 Dec 2024 09:20:43 -0800 (PST)
Received: from thinkpad ([117.193.214.60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f2a2434a7bsm6848964a91.36.2024.12.17.09.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 09:20:42 -0800 (PST)
Date: Tue, 17 Dec 2024 22:50:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Christian Bruel <christian.bruel@foss.st.com>,
	Rob Herring <robh+dt@kernel.org>, lpieralisi@kernel.org,
	kw@linux.com, bhelgaas@google.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,
	cassel@kernel.org, quic_schintav@quicinc.com,
	fabrice.gasnier@foss.st.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: PCI: Add STM32MP25 PCIe root complex
 bindings
Message-ID: <20241217172033.zxl4bufakzx7eww5@thinkpad>
References: <20241126155119.1574564-2-christian.bruel@foss.st.com>
 <20241203222515.GA2967814@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241203222515.GA2967814@bhelgaas>

On Tue, Dec 03, 2024 at 04:25:15PM -0600, Bjorn Helgaas wrote:
> On Tue, Nov 26, 2024 at 04:51:15PM +0100, Christian Bruel wrote:
> > Document the bindings for STM32MP25 PCIe Controller configured in
> > root complex mode.
> > 
> > Supports 4 legacy interrupts and MSI interrupts from the ARM
> > GICv2m controller.
> 
> s/legacy/INTx/
> 
> > STM32 PCIe may be in a power domain which is the case for the STM32MP25
> > based boards.
> > 
> > Supports wake# from wake-gpios
> 
> s/wake#/WAKE#/
> 
> > +  wake-gpios:
> > +    description: GPIO controlled connection to WAKE# input signal
> 
> I'm not a hardware guy, but this sounds like a GPIO that *reads*
> WAKE#, not controls it.
> 
> > +    pcie@48400000 {
> > +        compatible = "st,stm32mp25-pcie-rc";
> > +        device_type = "pci";
> > +        num-lanes = <1>;
> 
> num-lanes applies to a Root Port, not to a Root Complex.  I know most
> bindings conflate Root Ports with the Root Complex, maybe because many
> of these controllers only support a single Root Port?
> 
> But are we ever going to separate these out?  I assume someday
> controllers will support multiple Root Ports and/or additional devices
> on the root bus, like RCiEPs, RCECs, etc., and we'll need per-RP phys,
> max-link-speed, num-lanes, reset-gpios, etc.
> 
> Seems like it would be to our benefit to split out the Root Ports when
> we can, even if the current hardware only supports one, so we can
> start untangling the code and data structures.
> 

+1 for moving the properties to RP node where they should belong to. The
controller driver might have to do some extra work to parse the RP node and get
these properties, but it is worth the effort.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

