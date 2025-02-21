Return-Path: <devicetree+bounces-149570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92514A3FDB4
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 18:45:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F532703235
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C67FB2512CD;
	Fri, 21 Feb 2025 17:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BV3ibK08"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07857250C12
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 17:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740159657; cv=none; b=bnXedwHT6fv0QhenzLh8EqXytr1U6K2a8rVpAgajUogJzIsgNL/pSZYadbBcI03G8/FnU0UsGoTMa0mt16837wMTMzu10XZB7VegjQwOzEDiEeWFnHIkXS5pSjSxiE/pDXm8ntLHiCZ21/6PZQPdiDmUnwv15pEOG2KfzWOd6p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740159657; c=relaxed/simple;
	bh=1TOSqunaGscWN4l00qLq9s+/LjcCxdSYRcrFPYcw9e8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uudHcrEY+GFCqFT17RdfVGxMDW2IePWnSllHRTvDQYy5oPD/y/X11cCcCRYy2CdmRwgJNdbG3QAKafTiei7XBgtXPVsjQI2CVSgm3HTWVexDtZkkluTdhq0C9KJNJos/xDi/XqxgeZDmssCZZFvQnZPFtlJbqwPG92/HNRoMKhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BV3ibK08; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2fc1843495eso3707817a91.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 09:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740159655; x=1740764455; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q2oAkFXciPkZq9YMdViJHNElYAn9PdezEzpFc03PeNI=;
        b=BV3ibK08tOS4zCFfw5yR2J0OAOt6yZ9C39qBQkBy5mLDSQwUqWFTYb7q9GIU4cK7+d
         DZNh8Uv9ZKnXETwTcq9zTUrgc30W0pP7JsLqusgp3hA4yl5a0W8B8Fc/fLEV9fyQLXzK
         VBDdf/d528aPpA2xgFYhEQR+o29n4S/oJ9cwa+mRziYxd7mkT6LWp3iNTummd5ownBMX
         nh3yGBc5C3Edu9Gt48oYSb91EuE6uaFiEdNjY/4spafb6RqwuWmDdr4qoSMMdyajyalO
         LmKry3nnmkm4MI3OALEkU3nPoJcdrnEwIVtSPz6qwmr5qfJ1M5HqvyL/DoFI5aU/gKTN
         klXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740159655; x=1740764455;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q2oAkFXciPkZq9YMdViJHNElYAn9PdezEzpFc03PeNI=;
        b=V10Ne2zKDDxxpxy7XExyV1pEKo/IMOxYXJ8smWVo4VB0fm8JcG4cRc58L4e77Ua5zC
         Li74hO1ZfQmh+XmjfERgyCI6CV4NPJsCQkzcIXgjDh7simFAlnTq7Iy5MdpFzpBrH8s+
         OquiuHVT+oeLbYuJ30+Ytw0YFH6vPmWNFsVTyaXaRvMyGqENiVlsEcKOeBpgxnF1WGMi
         GO/5tZpcmt9rvYkPHsxM1FOOus04v+BoqgTneU2+yMhJyOusoegpxdc172phNZCkNsfr
         G5OcnJy7DU72eszW6DGijIYd7IAty1bqp1buUTrDk2sFgiaHhEM1035jV65ilAaAsrNe
         miDA==
X-Forwarded-Encrypted: i=1; AJvYcCWSnQZnoSXwwvmeGQVl78GkxTuXgkV2bb+uAG6+//9NeiM3xkhIn55hjo+PN2gqtQCMH98zubFKKNex@vger.kernel.org
X-Gm-Message-State: AOJu0YyCil7m3ml/mGRhIjHcPzTLzRpUPuWdUAK8K1CXcq4G1WsQLyLP
	GnexQTiwuR8EUTCz4rX0PRswC4wj/tFijsN+xBPhgAUdP2Ccki0v7HA5C2LIig==
X-Gm-Gg: ASbGnctZPspUlPcuP7IdIoBpMWYLnJ6jRqquqowj+AFXmWPkn49oahwtS3QT+/DR1BH
	huScbxyWzSXhfpTOrqWkdyvOkqJlfSwdIU2b6A3HpVa3BCU/YXW//n4qAUxj0nJ9C0TM5QT5njQ
	+Y3i1wWnXBiqbsmVHilu/I/YuWA+cBR2s8Kft8CnvpX76ZRUJ4wa1IduYgIEhkKR2nMmyz2A2gp
	zoAOdkUrJT8YUbRrqfOeZbM6kMktF5OCoU6/XKbeNtnPbge9jnuid9z/FdpYM0gIrh61R+c4350
	5OoIzpMM9yPzJ1+5k4y49X8cccW6QDvLqlc=
X-Google-Smtp-Source: AGHT+IEUM0IWL8eNAN8UJ1dXT8ryrx7MU+nn31plTm9kxpVbUvaF0T1r8uHMvFtjWR63sU0O0ebkqA==
X-Received: by 2002:a17:90b:5201:b0:2fa:1e3e:9be7 with SMTP id 98e67ed59e1d1-2fce76a1eb6mr6181982a91.5.1740159655296;
        Fri, 21 Feb 2025 09:40:55 -0800 (PST)
Received: from thinkpad ([120.60.73.12])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fceae32c24sm1662150a91.0.2025.02.21.09.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 09:40:54 -0800 (PST)
Date: Fri, 21 Feb 2025 23:10:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v3 3/5] PCI/pwrctrl: Skip scanning for the device further
 if pwrctrl device is created
Message-ID: <20250221174050.olbntmyzqew6ygfu@thinkpad>
References: <20250116-pci-pwrctrl-slot-v3-3-827473c8fbf4@linaro.org>
 <20250220233520.GA319453@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250220233520.GA319453@bhelgaas>

On Thu, Feb 20, 2025 at 05:35:20PM -0600, Bjorn Helgaas wrote:
> On Thu, Jan 16, 2025 at 07:39:13PM +0530, Manivannan Sadhasivam via B4 Relay wrote:
> > From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > 
> > The pwrctrl core will rescan the bus once the device is powered on. So
> > there is no need to continue scanning for the device further.
> 
> > -/*
> > - * Create pwrctrl device (if required) for the PCI device to handle the power
> > - * state.
> > - */
> > -static void pci_pwrctrl_create_device(struct pci_bus *bus, int devfn)
> > +static struct platform_device *pci_pwrctrl_create_device(struct pci_bus *bus, int devfn)
> 
> > +	 * Create pwrctrl device (if required) for the PCI device to handle the
> > +	 * power state. If the pwrctrl device is created, then skip scanning
> > +	 * further as the pwrctrl core will rescan the bus after powering on
> > +	 * the device.
> 
> I know you only moved the first sentence, but I think "power state" is
> likely to be confused with the D0, D1, D2, D3hot, D3cold power
> management states.  Maybe we could reword this to talk about power
> control, power sequencing, power supplies, power regulators or
> something?
> 

Sure. It could be changed to "power control." I hope Krzysztof can ammend it in
the branch.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

