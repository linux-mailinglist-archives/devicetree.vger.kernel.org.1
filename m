Return-Path: <devicetree+bounces-147879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7B1A39B2D
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03A4E1893F80
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DFF23FC58;
	Tue, 18 Feb 2025 11:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="fLzPseWo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC9323ED6A
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739878919; cv=none; b=LPGUZiuSPY5cDzj49/ajlZ318zLV85hjgCjQ82qbmAGcj9VyZMLcpujCiLBXJrfSE/ufRvkPzvBhqf51aOaQu/w+yqTqTOlC2+PZA34QIaQn+TZo+9tkCRt2p8mO8aZnlN8VJodGpB8ixG7yQP/aTBLNypjtRVQcoQKKCcr8kUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739878919; c=relaxed/simple;
	bh=qetabGxYbS2Xn9VVfPXOuzSTSZeCSKTs2TYqNLNDv8U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UKFnpBPD6CAd2PYQ03W2wlF4ZgCfB+rgf0m2f03G8hLqqeZU7xX9TrupTkpISTf1WxUaeijNLAb9WEJTudn1qZDDJz2c1n0QebU1+tmuBYqUgt11u8/4BqPgUImC8Yujkh+CD8aMND+Qf56drzbM1pAZEIaQUstf54c3IMS4dN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=fLzPseWo; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e0452f859cso3843050a12.2
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 03:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1739878915; x=1740483715; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8aKmlMmkGK0UfyeuqhRhT99w4TL2OYZoP6ekSWwvJ0Q=;
        b=fLzPseWoH2hHIdsJvFm5EYZJ5fe2BQ2oyyryYNXQlkSZHNxxgBhMrCzgkN0n3FGmc/
         TCYlHYeRKhydcmYvbb1WAHRpODulIpLojkkwbiw6IWSzqUqUr1J/TXZihfmpMCei/8KG
         3dnuVsojDWrJYJ24vI/5sI9u7vyI9aSPSpQih0ULu7y1cWWide6ZG73jl012J4VQwMdW
         PMNzuG2XGRHLAASQFJSNmN/kyLkmKndyhhJlzr7DKJ4XCpNgg+XGdS3nFBPx//EpVcvm
         rF7cerWXZjrZyvnaBWIoA+De5bTAaZWTuW8CABQytJ5zrrvJP77+XmNk8u52doe+YeZW
         lhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739878915; x=1740483715;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8aKmlMmkGK0UfyeuqhRhT99w4TL2OYZoP6ekSWwvJ0Q=;
        b=InleCgHVzbeH76Qb6wMflwa0ePbkbVstIVzldmeffxhZ5/WptgRFbFM2zhNP5HNzAn
         b+3ZwkJFAlBEf2D8y4J/Mk79W/q/VQDFkMJHl0kCy67pf7hrkEb5+up8mlgiloggt/YA
         nN/DUIvqFI2NPlMutDrB7fMn2CUJ2+vsmnq4X74vtn2mgNBDTPlxho5O9B9+lPiFXHjG
         7BQ511R7i+0RAmPYBVx+Coc/GOX1MEYJ0q5SoEdFdqpWjacyYCHJ5Mi6Mq1VN8Xkt8kZ
         YnCWY6d5+6VIHUdCgDZ7w+0zkcRc2Jq49HD3oJfqzoKTDwa/xAAhz75TiLQnc3Sdo2vP
         E3Yw==
X-Forwarded-Encrypted: i=1; AJvYcCV9P9hNU/tRWQtcb1Hb/IC5wuGsyx4t8D4E3BdkFZOLeTgxeyGWMBZrAI1XkiDUHi6ksmUvSOsN69bB@vger.kernel.org
X-Gm-Message-State: AOJu0YzKyTCxCz5NimKl3HZ8uTxdq4S+HBDI9Ds+1ET2G5EaRkL75PWy
	xssNpQxbncrx0R2WTNd4P7jkVbYkUZpWqW6UDb+LmJGx7dpH7D+/gxt3WSzJFBzXCE3EuuUtj6o
	tMa67RBaJcvLk91/fsUFzUQ6ho4ekt0LcglTf3g==
X-Gm-Gg: ASbGncukFN7gdF5EII2JtFv3AjTlD/GiPyEFJcr2h/L4/bqdeuxCPAoO9cdjfi9s3mq
	fVKea9aJUD8KLkJgZBNWh79RvzLTYqBHDzXgB9Hhpn2q2JL+FO0sGq3boKQFN579wRSNs7b11
X-Google-Smtp-Source: AGHT+IEPNee71mSksjXSeSsWHrS2KAR9wIT4sz1ud5v06geo9drLnl7hEt7tvSIgJJ+4DJzXS69UPDMhP8dla+sJ57w=
X-Received: by 2002:a17:907:c1f:b0:ab7:86af:9e19 with SMTP id
 a640c23a62f3a-abb70db8274mr1197625166b.43.1739878915362; Tue, 18 Feb 2025
 03:41:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAMEGJJ3=W8_R0xBvm8r+Q7iExZx8xPBHEWWGAT9ngpGWDSKCaQ@mail.gmail.com>
 <20250213171435.1c2ce376@bootlin.com> <a3c5103c-829a-4301-ba53-6ef9bd1e74e7@lunn.ch>
 <CAMEGJJ3-JXhin_Ht76EqUNAwLiNisa9PrCrdUzCgj=msGZfb5A@mail.gmail.com>
 <821d4c74-09b0-4c1b-b8ef-f8c08d0f6b5b@lunn.ch> <CAMEGJJ0QbzCScfTRA_pw_8A=iMYMAAFs69zFNLwcOxF5Syugpw@mail.gmail.com>
 <20250213195304.3a2df02c@bootlin.com> <CAMEGJJ0kGCj=tjM6KswbG_+ZFkzMwPY+06BXCU0qSnbBKz0=ug@mail.gmail.com>
 <20250213220639.373da07b@bootlin.com> <CAMEGJJ2_HVKfsE3P22baadbzxSDAX=yTr=m76YuXa5A2cJsJig@mail.gmail.com>
 <20250217165306.3f055b94@bootlin.com> <CAMEGJJ13476pKJb441o5X0Y+rbfromj5-3V-j2KZiOt326OL4A@mail.gmail.com>
 <20250217185559.2e56bd75@bootlin.com>
In-Reply-To: <20250217185559.2e56bd75@bootlin.com>
From: Phil Elwell <phil@raspberrypi.com>
Date: Tue, 18 Feb 2025 11:41:43 +0000
X-Gm-Features: AWEUYZmepFe2lsLe25Me9NjAHmXEX0-yOAHWU0twEqpljxZQoXOSSXs2uoT9kzs
Message-ID: <CAMEGJJ2m+Qjk4L5xFJZk+X7XSiop_63BH9gsrykLwz3+VMAQfA@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] Add support for RaspberryPi RP1 PCI device using
 a DT overlay
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Andrea della Porta <andrea.porta@suse.com>, Arnd Bergmann <arnd@arndb.de>, 
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

On Mon, 17 Feb 2025 at 17:56, Herve Codina <herve.codina@bootlin.com> wrote:
>
> On Mon, 17 Feb 2025 17:03:34 +0000
> Phil Elwell <phil@raspberrypi.com> wrote:
>

<snip>

> > The job of the nexus node would be to translate a generic request for
> > a numbered resource to a specific request for an RP1 resource with
> > arbitrary properties. The arbitrary properties could be GPIO offsets,
> > which are board specific, while the node supplying the resource is
> > provided by the overlay. This means that an entry in the table,
> > described by a single property, could have contributions from the base
> > DT and the overlay, which is not possible since overlays overwrite
> > whole properties.
>
> Hum, I am a bit lost.
> Some DT example (base and overlay) could help me to understand.

I could, but I think it is becoming a distraction.

<snip>

> > I think I can see how that could be made to work for GPIOs. It looks
> > as though the GPIO subsystem is the only one making use of
> > of_parse_phandle_with_args_map. Interrupts seem to have an open-coded
> > equivalent, and iommus. What about I2C and PWM?
>
> Support for PWM has been recently accepted.
>   https://lore.kernel.org/all/ufl4kwrjyp4zid4muvghefevqc6hk3zyvxnsu72fxd4f46fzg6@hufkci2dzjid/
>
> For i2c, nexus node is not suitable.
>
> Nexus node works well when resources are indexed (gpio line in a gpio chip
> for instance). For bus controller there is no index.
> I mean we never refer a i2c bus controller using <&i2c-ctrl 12>.
>
> For i2c, I proposed i2c bus extension:
>   https://lore.kernel.org/all/20250205173918.600037-1-herve.codina@bootlin.com/

I don't see in principle why an address-cells of 0 should cause a
problem - it's a degenerate case, but it's still conceptually valid.

However, we seem to be having to invent a lot of new infrastructure -
some of it already supported by the kernel, some of it not - because
we have made the mistake of using a discoverable bus for a
point-to-point link on a PCB. I don't see how this is fundamentally
different to the USB-attached Ethernet controller on e.g. the Pi 3B.
Despite the fact that the Ethernet interface is discoverable, it has a
Device Tree declaration (see
arch/arm/boot/dts/broadcom/bcm283x-rpi-smsc9514.dtsi) in order that
the firmware can supply a MAC address. Yes, the RP1 DT declaration is
significantly larger, but size shouldn't matter for what seems to be
objections based on tenets.

Phil

