Return-Path: <devicetree+bounces-115496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1FD9AFC87
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 10:28:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB7ECB24FBB
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 08:28:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 245A61D1E75;
	Fri, 25 Oct 2024 08:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="MVrd6H/2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84241D131D
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 08:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729844930; cv=none; b=taBNa8vX9IAIAhFrsnZh0XI4UMEVwxUXNd6n36LAEo9JhmfKR/gKJm698GDnjdRsRb8r+kBjP6yd7Q+QXT1Sbpwvg2Xtdm8s78neVujIZaAEdue2gbVVIZnU5tsDrYmvaGghkE7bktxQjpm3P9+v80/TaRG2DKeOtQuY9ixy1zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729844930; c=relaxed/simple;
	bh=jc+y/m1J5iDLVGvo7GE1rUcCJ9JarTubgikr5ubFVBU=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=By9XSl5QhvAczr6M7XY9+bS5AkB7prbuxjx2A3b+VqWUyfzUQ0NySSRhbvlsMBcvWWOdyhZk3xEuG7Po3tNviwxV40ISIqYZNZdXRnN7uFoCL/S1umCw51Sshp/jzx81QrWZ0rswZhBSSLbGr8wezeswdMX/cN4iXc8gm8/vZWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=MVrd6H/2; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a9a0cee600aso225169366b.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 01:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1729844926; x=1730449726; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GKQtKEQ691WB5aL1CY9xzFRryNO/YNcfGDP3okJsWkk=;
        b=MVrd6H/2/vvwaAm9jZwHrv28+0/70CDDnOI3/SpFsy7l6BsTae8knAuq3Aohm0OOjQ
         vng/RZGsX8VFvWWE1SDPfkxh72rbksDgB9WpibfFFk9/9M1UAFbPQqywBuq3LUe0UV4B
         bx/Wp2aUFll0h0VDGkf3v5O0JXkviNBrwGhnqpvWzJQYlaHgPd3Q5ELF50WXZjDQNJND
         ZdPXD5EiQ8EFeTCKoe+LmoD7eS6WoxZzbsVaUg4d3VdPQAdi5xLTNR0lr559JNzMd5Gi
         RdO7UAnLa3Ewr8JmgT3AjNh5UBGLuCqajsHYfp5PYO96Bqen4wuaSOnfyL5ik/9ykxkb
         TA1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729844926; x=1730449726;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GKQtKEQ691WB5aL1CY9xzFRryNO/YNcfGDP3okJsWkk=;
        b=MxH//peOJIMx/O+kPLF8PzeyW6wQfS4aV3OQceaKusrAH+sBL3dLGx20zvxlq1BL0h
         rhudZQKwW7r8moCTFOsbpBVP49pGA7b/FOD1lJiE2RNr1BIbqks1/zI5UrFZTxYcnJYW
         sFIu+q7ei86W1ESvowmnMoUGkRfg0LgxGgWWdD40N7LIj2d8pREooVGts5fmTo+dgDcp
         PTerIjZCyaFjeqHwvKg1VSKxlUM1A2CaZHUHEcwxLNsCyLi1j+NXys4XMFaU+HDG/O3u
         f3SwfMJ5GtCg5DyhxXbDw6f843Oqj0hLY5y1jsYxg14dnO54O6SiEwuLfmR8nTlOktb6
         p2vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZP9KSG5jpdSFTvMwiG7plwPnUroNXO9hz9qI9uG/GGWi69A/GsKS6UO+a830DQe2MrH2GLGe/Cc2w@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4S75tcrHbamstWFwPXH9z7eyfqwhmOwpWinGFy7uoTbsfoard
	xUloJyIpf9qr/ahEe+ELUDXyYs2LVtbHR8yJsitKHpBBhAfLoS/ipuzaO43nN9A=
X-Google-Smtp-Source: AGHT+IEKAsvpP2dybXSJ7Ofjl3bCLXFPuuy1eHgZQTXd9CLcGnC5HYUafi69GsS8vo706m6wGKRfWw==
X-Received: by 2002:a17:907:9406:b0:a99:e850:deb3 with SMTP id a640c23a62f3a-a9abf890eaamr841444666b.18.1729844925999;
        Fri, 25 Oct 2024 01:28:45 -0700 (PDT)
Received: from localhost (host-79-35-211-193.retail.telecomitalia.it. [79.35.211.193])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cbb62c803asm391336a12.56.2024.10.25.01.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 01:28:45 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 25 Oct 2024 10:29:07 +0200
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2 11/14] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <ZxtW0z7-JaK3dWdQ@apocalypse>
References: <cover.1728300189.git.andrea.porta@suse.com>
 <c5b072393d2dc157d34f6dbeff6261d142d4de69.1728300190.git.andrea.porta@suse.com>
 <CAPY8ntC0B0RdNmvGMaDcp-p9gZOcWBbeC6BjbcihrijRXjRVkA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPY8ntC0B0RdNmvGMaDcp-p9gZOcWBbeC6BjbcihrijRXjRVkA@mail.gmail.com>

Hi Dave,

On 16:21 Thu 24 Oct     , Dave Stevenson wrote:
> Hi Andrea
> 
> On Mon, 7 Oct 2024 at 14:07, Andrea della Porta <andrea.porta@suse.com> wrote:
> >

...

> > +static const struct pci_device_id dev_id_table[] = {
> > +       { PCI_DEVICE(PCI_VENDOR_ID_RPI, PCI_DEVICE_ID_RPI_RP1_C0), },
> > +       { 0, }
> > +};
> 
> You need a
> 
> MODULE_DEVICE_TABLE(pci, dev_id_table);
> 
> here in order to load the module for the cases where it isn't
> built-in. Otherwise you have to manually modprobe the module.

Sure, thanks for the heads up!

Regards,
Andrea

> 
> Cheers.
>   Dave

...

