Return-Path: <devicetree+bounces-146366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D0FA34A74
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:45:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD5E2189440C
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:40:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A556E22156F;
	Thu, 13 Feb 2025 16:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="LLZWOp/k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7881632DD
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739464259; cv=none; b=NChwlCxO2DUstWOL1eZ7cEjZamEr12WSajGqg3BNc+VXbhZR+jjiXqHi9uQ1JMyhdaTrCNiy+rzy8kqqC80DQ5qiRcfpJq4/GCXSheevwX9QCTEnRXDMhLHpK0FSJdSZDg2bHoMGCXKExtCW6k36sq0ZA+evnKIrJ+Y1yLgOyes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739464259; c=relaxed/simple;
	bh=o/51IyMp1iadw96C4sTg3+7DcvmfdS8ffzuD5PVOLzM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dDF08W0QKjSm7xSRuwYGMkbTRwWS08zn+oudR7CpQdC1pA7HER+nU6YyqZ7DvOIkza3HjOOxQVk4R2vOnKJKisvHuSKsM4C7Dj7URfo9D7ye5fMY7R6KyGIuZ3AM45lNYxaDMl3ZGbftvoplJa/G946aPX97jKfX8Sskng86f9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=LLZWOp/k; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ab7f838b92eso195145766b.2
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1739464256; x=1740069056; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o/51IyMp1iadw96C4sTg3+7DcvmfdS8ffzuD5PVOLzM=;
        b=LLZWOp/k9O0iQdBoTYYkLC2opbafdJaOulLUXwXvahvC4NpRFlO4efhb49LikbQS44
         DyjLuvXMZ8RTJM/9sZDT+pKaymsgQ1NUS3RtRqKGlGMtH4Hc6WqSE2Kag30lyYT6BPnK
         2sdSgd+OaiF7rdiVqT8w0fvfeRCdP49MCQ02lQGeJdAx+7DtLUC/kDhjhdWVq+fJEYhn
         qIApuq3jdCGeo1vOf3owgNVqYWcKNbig9H+iZzdH3C4RkJNnEdpghw7klAyVQbmcZkgl
         yxevGvbxlbGA5G/Sm1mlvDvVmUe7JM1XfahWbQgkdJK/O5B+mHWqdJknptRkOH3fJeGY
         5GXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739464256; x=1740069056;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/51IyMp1iadw96C4sTg3+7DcvmfdS8ffzuD5PVOLzM=;
        b=gjx+1hz3sxaVW8c9pvxFp8WyQoLYIYeDeff6eN2rQfkPiwRznu/grkfMkDQtQpw3va
         0YWUWxIIL9//jeacXJ5vmHSSMbYNkDbCCOgIWoUrN5mQvTG5EdZfrqaU2fwqhoIuJuIJ
         TicSKk15tTfeCd0H+9iukJvmBu1Yr6Uf1a+lIFizhrzTBkZsbRezKorMICUpwhuEVupQ
         EnZ3Kn3GBIMx6pdxapPRYODpp18I7m7K4Nb6e1msnbqrWsHbCtvkX8THPMtbTc5mEqgB
         dl/SvtJsNyoYsdClbhDEPJTYr10+h2HZC3I3Zw4DD32u9PrGBLQhiLTRr1xKG7AgzLSF
         nohg==
X-Forwarded-Encrypted: i=1; AJvYcCX3ozpcdYeW42UoGcF3Tc7kPadvLCmIYi4fFPj9ls7n2csOmCarsEr9RrxUqL+xfXJl4pO56aJBuOAP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7YaqlOyMSVb8SmSNiRrcixph3A62ExhE87V/lSClPWK+sNIoG
	PUta2P+oAbtHolrPIXvYodwFVDohFKdCbKXDxLmu7Fgivoghm/3jIvqmGaR9v0Jvyzo9xSp2izv
	b1aLM3qSRIRWmcxVsinomeAQoKJxP2uLZiQrnGw==
X-Gm-Gg: ASbGncvDdqvqVHVGb3zaPbA17X42SI+2LzRUWnKLlGOvZKqvQKN1jA1ACXCsuiPJP21
	UpCY3bRdKvYH0Vw5LPruWq7d4G4N0fu6JouFXiDR1qb/9eoP7Fupfqzi49O56u6nzHDW9t9PbQd
	AKfRErPOnn/dFNA4g4kl8HWE14c8WW
X-Google-Smtp-Source: AGHT+IH5GCCG2j+0durJuW8Oa03Wrl0Cv4HeP5h1Abx+8pHhFwZ922emqHD5DAYivn9wYSdjWCmVxGwnF2qbKv7sLSM=
X-Received: by 2002:a17:907:1909:b0:ab3:76fb:7523 with SMTP id
 a640c23a62f3a-aba501bce21mr457456966b.53.1739464255721; Thu, 13 Feb 2025
 08:30:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAMEGJJ3=W8_R0xBvm8r+Q7iExZx8xPBHEWWGAT9ngpGWDSKCaQ@mail.gmail.com>
 <20250213171435.1c2ce376@bootlin.com> <a3c5103c-829a-4301-ba53-6ef9bd1e74e7@lunn.ch>
In-Reply-To: <a3c5103c-829a-4301-ba53-6ef9bd1e74e7@lunn.ch>
From: Phil Elwell <phil@raspberrypi.com>
Date: Thu, 13 Feb 2025 16:30:44 +0000
X-Gm-Features: AWEUYZnIbvhJ2Gv987WOr8gH33pSGmprAqtfnZVU0XicGf3dfKPk3tqt9y_XRUs
Message-ID: <CAMEGJJ3-JXhin_Ht76EqUNAwLiNisa9PrCrdUzCgj=msGZfb5A@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] Add support for RaspberryPi RP1 PCI device using
 a DT overlay
To: Andrew Lunn <andrew@lunn.ch>
Cc: Herve Codina <herve.codina@bootlin.com>, Andrea della Porta <andrea.porta@suse.com>, 
	Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>, bhelgaas@google.com, brgl@bgdev.pl, 
	Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, derek.kiernan@amd.com, 
	devicetree@vger.kernel.org, dragan.cvetic@amd.com, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, krzk+dt@kernel.org, kw@linux.com, 
	Linus Walleij <linus.walleij@linaro.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>, lpieralisi@kernel.org, 
	luca.ceresoli@bootlin.com, manivannan.sadhasivam@linaro.org, 
	masahiroy@kernel.org, Michael Turquette <mturquette@baylibre.com>, 
	Rob Herring <robh@kernel.org>, saravanak@google.com, Stephen Boyd <sboyd@kernel.org>, 
	thomas.petazzoni@bootlin.com, Stefan Wahren <wahrenst@gmx.net>, 
	Will Deacon <will@kernel.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,

On Thu, 13 Feb 2025 at 16:27, Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, Feb 13, 2025 at 05:14:35PM +0100, Herve Codina wrote:
> > Hi Phil,
> >
> > On Thu, 13 Feb 2025 15:18:45 +0000
> > Phil Elwell <phil@raspberrypi.com> wrote:
> >
> > > Hi Andrea,
> > >
> > > The problem with this approach (loading an overlay from the RP1 PCIe
> > > driver), and it's one that I have raised with you offline, is that
> > > (unless anyone can prove otherwise) it becomes impossible to create a
> > > Pi 5 DTS file which makes use of the RP1's resources. How do you
> > > declare something as simple as a button wired to an RP1 GPIO, or fan
> > > connected to a PWM output?
>
> Where is this button or fan? On a pluggable board? Isn't that what
> overlays are for, and they are stackable. So when you probe the
> pluggable board via its eeprom etc, you find the overlay and load it?

In the Raspberry Pi ecosystem it would be the firmware that applies
the overlay, and it can't do that if the resources the overlay refers
to are not yet present in the dtb.

> Or do you mean a custom board, which has a CPU, RP1 and the button and
> fan are directly on this custom board? You then want a board DTS which
> includes all these pieces?

That depends on whether you count the Raspberry Pi 5 as a custom board.

Phil

