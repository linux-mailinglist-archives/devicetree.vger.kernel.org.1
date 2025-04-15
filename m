Return-Path: <devicetree+bounces-167427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F431A8A311
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 17:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F41553AC9FC
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2AD5298CBE;
	Tue, 15 Apr 2025 15:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="KGVOhW4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C7429B784
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 15:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744731607; cv=none; b=PWd8wergK8Zn1TvzfJZVa9IrVQfz1y5fN1nZIvrx643Iof+CVuuvaHRSlBIrSW5UW1pIUhr4HeaDC1F2uLollrNTswpBRa4BDnOeOJub33aPOWVBR8sr5A5o4JtMg68CcewOTVsPcFOhWwYSYYygohymFq00yloJR2BIVL/j4AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744731607; c=relaxed/simple;
	bh=VSA6hdeaoADvOUXacUyO/p5DGOSeT1IneqbdsN7HL3c=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b6xgbKrdPdajDD/TXoVq+T//g5U+bFTArihl6LjHJ059OV/iILColpcr3Fp6KHDxBqeBvgGKrL5X/vkuZ9MCOA3Avyie6/hTxGErxE+NGMKtBtfKdGZpxq0x5W2Fs0VoQoAZ48w5stAHVq9ybbvdERWYVelNKIr+IsoesWfrKCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=KGVOhW4g; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-ac29af3382dso920015266b.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 08:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744731604; x=1745336404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pHLj/Q/sOaFpLIs3FEe17J8/SRfhLs+hrL+m95dT2SQ=;
        b=KGVOhW4gy7ht+DxhjLj2UeKGe6fbRozU+4RxOQmbbGgMF+50b5PPXJ0vF0Jxuz93BQ
         gHXOspWXV4BUMbtsDFQ7RWn/aYkqcU1112GatH1RXLa0sjOAlaJhYNf6m1QsaO8HLNR/
         WmiSziEQZeEDn6Ky9uXnBj7P+aQhymtD34Q55zjzBDEeSNyf8DRTQcxkdaAUE/cw6tR9
         fQja2UNhAY46CvqbdErOIkXv0y/t3vc1KFfTQHPyTHO5Kbzxn+SXKw3gyhNKklTdMqBB
         1sekWRJahzkzx5hURe2Y+6O9To00StBgskmAv2iFID6tBpuu0YGo4PT3wDby5AAD9i0g
         ZAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744731604; x=1745336404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pHLj/Q/sOaFpLIs3FEe17J8/SRfhLs+hrL+m95dT2SQ=;
        b=GndVNuy3eT+y/9e1qe6b2Modin6vXQSGcosEJ/88AOnMZoSWu4RIDn7R8hVVjr/PLy
         VtOH/iRU8qKFVUOiMBg6FIB7rdFCxtWgXLZ8R9pzrOCkVaXeYtJalJ+2yWKCxHxL/4wY
         UUqLN/46ay7I9x1lcxELnejcltvO7GRfSPAn+kC3ATxsmLepWuGm5Cgoga7Z3dsJ5DNx
         wC0i1sEeKxREKxdf/4YUU7DgE5So3Pip0oa4qrMkmB9V4wZOjx8X98mGy9vguAtRaYWz
         1Pjff3439sQNq9QprunPC9LOB1kX35XbP/FR+xc8sg67GAlffapuuKfNoCbTKo4a2Rhf
         aMsA==
X-Forwarded-Encrypted: i=1; AJvYcCVLWSRM5u3goPkAaWH9iej6FqmkVbOQZscjBata4oMatS7rOsFNwqrdyL2oMc6ybszI8QLx4Lf03snm@vger.kernel.org
X-Gm-Message-State: AOJu0YxuNt2pqx4kJ+6lgPhNoH7CfCmaNJPqt64/M3B6fu1RrX63lbiQ
	R2Kc0I3yYJZEWlnGrQFGiFDx8CAR4nXaBM6RUgsZSV/xd8UTrI7AF06ERVzz5EQ=
X-Gm-Gg: ASbGnctwfxwI2jtaqxOR1fkXgMsIq3K4GY/thWKg6GJIm/yWeZY7Zv09B0XwiU4vSxi
	oY9cUB7QXfrJ7ku2jAbnM1Bw1lumuICeOYR1AwPsme0MsiuXsQdn7DF8dZq/7N2GpktKQnJeah2
	32Af+HFzus5BJAMHP5uUed6GLUrO3qxVk7fJBdcCWBg99aHqjeG3PgDMPABRaJaesggCOiXqeBh
	AtWKaJibTnYyB8CjGexuyozYXzZmNhzZ1Z5/wfBhFuD6qQ9/sKqzzOA2yxtUO+tUdGA0ucii10B
	Rz6rucsw0fpsG+d1fQ36SF3csv0L0KeBG0R/TBOYn5WAh8th5tW5kIE2Ycg8hZBJC5n3f00Miq0
	F9pCtCQ==
X-Google-Smtp-Source: AGHT+IH7EkpxnEGrVDPA/wXcjxUS3uvn0zUd7xAOXnljoK+P5iXt632rg6oTgD9CrBhQ3HtW1Xsnmg==
X-Received: by 2002:a17:907:3f11:b0:ac2:7a6d:c927 with SMTP id a640c23a62f3a-acad36c7212mr1222248466b.50.1744731603735;
        Tue, 15 Apr 2025 08:40:03 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1be8fcdsm1099687566b.46.2025.04.15.08.40.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 08:40:03 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 15 Apr 2025 17:41:26 +0200
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Herve Codina <herve.codina@bootlin.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com
Subject: Re: [PATCH v8 08/13] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <Z_5-Jjbu6XoHGmxN@apocalypse>
References: <cover.1742418429.git.andrea.porta@suse.com>
 <3fbc487bc0e4b855ffbee8ed62cfb6bf3b0592e8.1742418429.git.andrea.porta@suse.com>
 <2025041557-masculine-abrasive-c372@gregkh>
 <20250415165505.0c05bc61@bootlin.com>
 <2025041531-dubiously-duchess-276a@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2025041531-dubiously-duchess-276a@gregkh>

Hi Greg,

On 17:14 Tue 15 Apr     , Greg Kroah-Hartman wrote:
> On Tue, Apr 15, 2025 at 04:55:05PM +0200, Herve Codina wrote:
> > Hi Greg,
> > 
> > On Tue, 15 Apr 2025 16:06:43 +0200
> > Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> > 
> > > On Wed, Mar 19, 2025 at 10:52:29PM +0100, Andrea della Porta wrote:
> > > > The RaspberryPi RP1 is a PCI multi function device containing
> > > > peripherals ranging from Ethernet to USB controller, I2C, SPI
> > > > and others.  
> > > 
> > > So shouldn't this be using the auxbus code?  That's designed to "split
> > > up" PCI devices such that you can share them this way.
> > > 
> > > Or did that get rejected somewhere previously?
> > > 
> > 
> > It doesn't use auxbus probably for the exact same reason that the
> > one given for the LAN966x PCI device driver [0] and [1].
> > 
> > Avoid all boiler plate needed with auxbus whereas drivers already exist
> > as platform drivers. Internal devices are handled by those platform drivers.
> > Those devi just need to be described as platform devices and device-tree is
> > fully relevant for that description.
> > 
> > [0] https://lore.kernel.org/all/CAL_Jsq+1r3SSaXupdNAcXO-4rcV-_3_hwh0XJaBsB9fuX5nBCQ@mail.gmail.com/
> > [1] https://lore.kernel.org/all/Y9kuxrL3XaCG+blk@kroah.com/
> 
> I really hate creating platform devices below a PCI device, so I'll keep
> complaining about this every time people try to do it.

I agree with you, but as Herve has already pointed out this would mean incurring
in significant work to adapt drivers for all the peripherals (there are quite a
few), while with this approach they would be left untouched.

Many thanks,
Andrea

> 
> thanks,
> 
> greg k-h

