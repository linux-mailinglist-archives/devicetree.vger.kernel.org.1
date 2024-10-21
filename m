Return-Path: <devicetree+bounces-113678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0D99A6948
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A6411C20456
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 130811F706A;
	Mon, 21 Oct 2024 12:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="PF7qz/av"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191C91F6681
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729515414; cv=none; b=otOlpRZLUOb8BpoO5Sj9p34VQ4IQ+zukth96Q2PIzqpGKR12wkzkN4qSarBj8NOgToSDZjOt/V76M94VlYHMW1HoTWxr5NpQnWXqI/Ct8qqppp5NOG5zlFZSgBL52aaChYMu7lUyocqja4kj4JKbW6M49+zRyulQOhloxgxU7lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729515414; c=relaxed/simple;
	bh=iF5kSi2+h7yYoqW72il1fTTVPVpJA+9T3CejaiQWTmI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tRcZpaGNUcaRjmcpDOjwWfRJjKN4yUGfzpgTUXGOck4KZFQ1ZX297NGNncmsT9gYdpTCMwxzRp9Rf8DG921jJaW31X9xRv6xK9IPNdp/vQ4RwEUYrL2GrF1A4unXxfRTEQkSDt+vkNhegFo76MDmbrHLaDaJcLlu05DvNn4biVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=PF7qz/av; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-50d5795c0f8so1174722e0c.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1729515412; x=1730120212; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iF5kSi2+h7yYoqW72il1fTTVPVpJA+9T3CejaiQWTmI=;
        b=PF7qz/avHVUh5mwtIC0o2a6n1Lf1NGoZvIOQ8MGyQxAMziHevHEuiww4Bgs5ZQsB7Y
         DsjORwJ8p58v0cAyJIk2t6M0iyMLSLFLMuVx3ZGb0ILPY//apddMRNfQdrCG6aSZUO7Z
         3cOHd9COB3kJ6tzEiED+sJgbazepcZnF59wPUQ8H7vvMi29obwnKe37Ls7latRssuM+B
         4EaCXVi2VduFIZ+hpDtuDU4frfz4g4SP9WeaQm2YN04cD3mjrAc2e+GzsW7brRgTxJzJ
         Q/qyJkrx7oRt+2TvH5ACO2spQgUPW+vr1WB0UwW0Vf29R3cBaPffrbXNqMkbYfZ8Y4Ds
         lE0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729515412; x=1730120212;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iF5kSi2+h7yYoqW72il1fTTVPVpJA+9T3CejaiQWTmI=;
        b=AZ4mUHb8D61Lk+QGvRY7nb+TAcbkp+KoLtJnbw9yCthUivJ+kAgtKZq43wr86xWTMh
         rrmm3OG/VgeuXIxaD1/OXx6Bb/7yYYvL1kKMqUr34NcxX+H+aB0zMDMaDr9lefXAKOWK
         Ml9pztvwZYVA7rimdz8Yz+dejZILkNHe1iXW5g/+f7SQjImnrlm+XBiVI/dMS+P8RXrj
         3o0zM3KcgCK+5QdiUvw2K6266lBFRCUaimzhHjwcWSeA84NbX9Fc+jVu1RiFD074sLGt
         S0gB4XFqMyPxb83H6V0ieFVW0IglOUAJgc7bB7bZUyP9D9+AC+RCBxHATrhR81/WlH9r
         CpWw==
X-Forwarded-Encrypted: i=1; AJvYcCV5hnB447i/eNRFTdpV/DgODUoqSUlIfydZr1ViHEOJfANaqSiOFjaMpgwW8oUDdIrT5iNosFiRnZUu@vger.kernel.org
X-Gm-Message-State: AOJu0YzoL3//Vrk8wZP9dhLzLykLpjTr1Y7k2mAi8Wk0laWeX+d0TpCQ
	FAFzRsr6TNLmUXEf9vuQ2MxwwJxbs0PbZNfoHpn5FQe6JHK7AjEmSUCLAaOIoMMMWqIlyVD4IYp
	kIxAYNYukdQvh2dJas4ME8abUaVhwywugjLdM3y0PW6LrG8zLCys=
X-Google-Smtp-Source: AGHT+IFEq5ENcXQdOuBxqKLqxxVONLn/0UE6KpwIFKd/1HrI7jrMRxE3oii80pR3eyKJmbtlfIzoD+cwV3PlryjrWTE=
X-Received: by 2002:a05:6102:5089:b0:4a5:6f41:211e with SMTP id
 ada2fe7eead31-4a5d6bd361amr9160919137.24.1729515411915; Mon, 21 Oct 2024
 05:56:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241014130710.413-1-svarbanov@suse.de> <20241014130710.413-10-svarbanov@suse.de>
 <60de2ae5-af4b-4c31-bc63-9f62b08be2fc@broadcom.com> <bed7b0ea-494b-429e-8130-12d12eb11bf0@suse.de>
In-Reply-To: <bed7b0ea-494b-429e-8130-12d12eb11bf0@suse.de>
From: Jonathan Bell <jonathan@raspberrypi.com>
Date: Mon, 21 Oct 2024 13:56:41 +0100
Message-ID: <CADQZjwdO6ifEMBwh15EVPsxm4XtSYGRs==hVCZ0HmcUbADh6hw@mail.gmail.com>
Subject: Re: [PATCH v3 09/11] PCI: brcmstb: Adjust PHY PLL setup to use a
 54MHz input refclk
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jim Quinlan <jim2101024@gmail.com>, Nicolas Saenz Julienne <nsaenz@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, kw@linux.com, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrea della Porta <andrea.porta@suse.com>, 
	Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Oct 2024 at 15:42, Stanimir Varbanov <svarbanov@suse.de> wrote:
>
> Hi Florian,
>
> On 10/14/24 20:07, Florian Fainelli wrote:
> > On 10/14/24 06:07, Stanimir Varbanov wrote:
> >> Use canned MDIO writes from Broadcom that switch the ref_clk output
> >> pair to run from the internal fractional PLL, and set the internal
> >> PLL to expect a 54MHz input reference clock.
> >>
> >> Without this RPi5 PCIe cannot enumerate endpoint devices on
> >> extension connector.
> >
> > You could say that the default reference clock for the PLL is 100MHz,
> > except for some devices, where it is 54MHz, like 2712d0. AFAIR, 2712c1
> > might have been 100MHz as well, so whether we need to support that
> > revision of the chip or not might be TBD.
>
> I'm confused now, according to [1] :
>
> BCM2712C1 - 4GB and 8GB RPi5 models
> BCM2712D0 - 2GB RPi5 models
>
> My device is 4GB RPi5 model so I would expect it is BCM2712C1, thus
> according to your comment the PLL PHY adjustment is not needed. But I
> see that the PCIex1 RC cannot enumerate devices on ext PCI connector
> because of link training failure. Implementing PLL adjustment fixes the
> failure.
>
>
> ~Stan
>
> [1]
> https://www.raspberrypi.com/documentation/computers/processors.html#bcm2712

The MDIO writes for 2712C1 are required because platform firmware
arranges for the reference input clock to be 54MHz.
2712D0 can't generate a 100MHz reference input, it's 54MHz only. The
MDIO register defaults are also changed to suit, but there's no harm
in applying the writes anyway.
Both steppings need to behave identically for compliance and interop reasons.
RP1 is very tolerant of out-of-spec reference clocks, which is why
only the expansion connector appears to be affected.

Regards
Jonathan

