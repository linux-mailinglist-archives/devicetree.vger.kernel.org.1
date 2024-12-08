Return-Path: <devicetree+bounces-128293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 009669E851D
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 13:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EF862815CC
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 12:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B82851482F3;
	Sun,  8 Dec 2024 12:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SnoM76V2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E4945BEC
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 12:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733662747; cv=none; b=a1XnmzN2JO6XpsyW+/LReWM11ZECP2YzGe7tItQUZTRlcrDma0sDAra6qKMXFiR2SF4AL5wMjbMj5MJ7qkXx4L8ij3QExSQMoW+V26UCjNocZXvsn8aPpnRBv24YjvRmAgB66OMl6/nb8fYiTlbQHRMsvco+a+YxXhBhG1fblTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733662747; c=relaxed/simple;
	bh=qfboI2JEzglBgUiX6GwJaX8ACsXX93fcly9pP3dAhjM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ppILa6wJxHdDHdIkUKGfLSNa/PdZhlWIKL22LBb/zgMfPmR6/DrW10viiRFqUA+xvP9NpkajWHKMM/pLLqDiYUF1Avx4O/4QiGGuKZcun7oQM57eD8iuhEakOo2rltioC8gX5Xo+zBTkByhCDV1ksiU9XfLEnv6xx2WY8AqZv4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SnoM76V2; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2ee51f8c47dso2581153a91.1
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 04:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733662745; x=1734267545; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PkDi47df4w40KWTcb5cXC5QjvFJDjRmn08x5U23uXOc=;
        b=SnoM76V297rGqFd1H//F+GV9PlMDBcPdA+4+h3CgiOgdhR7TlFYEH3oBv/DsAkAWOr
         wD08WGlJ+9cT7wjXQqNZD8xyNZrljWagavHtjQEqL2a5bpwmEqJ10WuBqfIQ2RBHaYDI
         dgw3/lHCDWXNZv5n8rboU8ULYjTpd5kqLiwUlZIMxsghRd54ADd9bxTg/0o2KyhzVTvQ
         BfMdwRMsK9zqGp1mFrGQfXbNch29asL8Xlx/FXUvOsdqe6OLH7vQgpI9A+QdtLxpZtu3
         fHX4A5vRrNtxmTsSCSTahFHKgi0an27npXfe6qdOJ7cvELxrR+3TKQv2WTVu+YQ/TM19
         Qqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733662745; x=1734267545;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PkDi47df4w40KWTcb5cXC5QjvFJDjRmn08x5U23uXOc=;
        b=ucU0ravzR3zb3gsOjxEBcatuUKIdkhk2pzeElLcpXmIKDSp8AuDItGGFC+P30fk77s
         yP4yDobBq0t2HTn6vJfiWA53DNgAzKgCIYc6svxtWR+Si9VUYH3SHKEHVKNJLlLIDa8A
         FcA3SWh2T3C7Edbh/ug2MCgKiZSNfCmszuEWT406QiEj0Z22zKbNEiHIGIrueeSeI38A
         CGi0Q2O2o8YpgvVoz0HOy01OlRdPCdimuSf8bIWIRhXsnZEw+ugWoICNah42bYx0bhvh
         A4vFwZUtmowNA6jJOlku/RIFXVG2hnonWxpFNbnGLb+MV95VmPlg42vXT8CrbFsghZFq
         2j3g==
X-Forwarded-Encrypted: i=1; AJvYcCVf3B2dNhgC1hLN6Dq+cK4UjFoXtrwRtAeVkWRejsLhjmsBjlYH2kFAYJZCSf3FTVmiYe2xalDbKEok@vger.kernel.org
X-Gm-Message-State: AOJu0YzuDKLGnEY4b7vWHJNNKQqng+BDEd8n7bQjKOXBAzUSxJA9Ifj6
	qFnIqQwxU60gAGVl2daRcMcPFFgatlV1bHMTIJv5kx0NAyqH3camMLN5+2V3oQ==
X-Gm-Gg: ASbGncsqn04fd8vQJ/n1bgb6LdSkZmrUqdkDcEPG1y0GidP3GjlgY1qrmoN4Y9Q0ACX
	tT/OagxOhX1ntpf+SKxtijYpUu3r2mX4g0tG7E4hledxlLpNjFJ7S/zQsvl8coFK2NauSNOb4FQ
	ydzooRN0q/ZCYRY8RGOXCXiilCya2F0O7LqFoqsS57xRbAqX+egNnjnzn1dSPeh2WL4NFfKE+zh
	ZVGShvi/liCWtGbUttJvkIVhC/QcOVXh3g7nMofTqJzxR0RNJIj1KO+jO8=
X-Google-Smtp-Source: AGHT+IHnhUVK9JHD0Nbg157D2tYLCZPvpbGaZMt6ugQdpbPZ+L62KfObJPkXd8gqt06CrhFVbhdPKA==
X-Received: by 2002:a17:90b:2548:b0:2ef:19d0:2261 with SMTP id 98e67ed59e1d1-2ef69f0b061mr15208744a91.16.1733662745572;
        Sun, 08 Dec 2024 04:59:05 -0800 (PST)
Received: from thinkpad ([36.255.19.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ef4600d14fsm6228921a91.45.2024.12.08.04.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 04:59:04 -0800 (PST)
Date: Sun, 8 Dec 2024 18:28:58 +0530
From: "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>
To: "Havalige, Thippeswamy" <thippeswamy.havalige@amd.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jingoohan1@gmail.com" <jingoohan1@gmail.com>,
	"Simek, Michal" <michal.simek@amd.com>,
	"Gogada, Bharat Kumar" <bharat.kumar.gogada@amd.com>
Subject: Re: [PATCH 2/2] PCI: amd-mdb: Add AMD MDB Root Port driver
Message-ID: <20241208125858.u2f3tk63bxmww3l6@thinkpad>
References: <20241127115804.2046576-3-thippeswamy.havalige@amd.com>
 <20241129202202.GA2771092@bhelgaas>
 <SN7PR12MB72011B385AD20A70DB8B56338B352@SN7PR12MB7201.namprd12.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SN7PR12MB72011B385AD20A70DB8B56338B352@SN7PR12MB7201.namprd12.prod.outlook.com>

On Mon, Dec 02, 2024 at 08:21:36AM +0000, Havalige, Thippeswamy wrote:

[...]

> > > +	d = irq_domain_get_irq_data(pcie->mdb_domain, irq);
> > > +	if (intr_cause[d->hwirq].str)
> > > +		dev_warn(dev, "%s\n", intr_cause[d->hwirq].str);
> > > +	else
> > > +		dev_warn(dev, "Unknown IRQ %ld\n", d->hwirq);
> > > +
> > > +	return IRQ_HANDLED;
> > 
> > I see that some of these messages are "Correctable/Non-Fatal/Fatal error
> > message"; I assume this Root Port doesn't have an AER Capability, and this
> > interrupt is the "System Error" controlled by the Root Control Error Enable bits in the
> > PCIe Capability?  (See PCIe r6.0, sec 6.2.6)
> > 
> > Is there any way to hook this into the AER handling so we can do something about
> > it, since the devices *below* the Root Port may support AER and may have useful
> > information logged?
> > 
> > Since this is DWC-based, I suppose these are general questions that apply to all
> > the similar drivers.
> 
> 
> Thanks for review, We have this in our plan to hook platform specific error interrupts 
> to AER in future will add this support.
> 

So on your platform, AER (also PME) interrupts are reported over SPI interrupt
only and not through MSI/MSI-X? Most of the DWC controllers have this weird
behavior of reporting AER/PME only through SPI, but that should be legacy
controllers. Newer ones does support MSI.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

