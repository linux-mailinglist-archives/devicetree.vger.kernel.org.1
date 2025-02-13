Return-Path: <devicetree+bounces-146402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6164A34C90
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 18:57:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BE98188A936
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DA923A9BD;
	Thu, 13 Feb 2025 17:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="DCdtDMF5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EB223A9B4
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 17:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739469472; cv=none; b=LfPouPLd0IkSKDBg8LoeEFHOaqq6fzo0l8yIhO9Weeau6yCcWc0WKQX60tscKbCLnprFOWZDLozPlkiYL1YfS3S760knVbmBnYzZeAjqjNtRbi6wSOrwL28YAfbLBccnRUKAjU6R4yN790xV+YF+uX28uy4ImJZTPqUIiPTDDYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739469472; c=relaxed/simple;
	bh=uxe/sPCuvuszkG09tatgP/sxrgyFyklm5riZrTlzQJA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mqMMXh8+VRrktRGrDnGIxw7PMj8A4IKoiVGxXdc5+jZDJthgc6UCHuw3FnkJ+e+3z0Xml/KYPK4fe80owWNvTstLlPJOMlIrgWcR7pRFCcMvpk0h419NG9cvFi86XFzo6/NBZaSJU9eJB2PZ1KsxIPlA3jFAtrsGOg8PSaEU9U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=DCdtDMF5; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso190954866b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 09:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1739469469; x=1740074269; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uxe/sPCuvuszkG09tatgP/sxrgyFyklm5riZrTlzQJA=;
        b=DCdtDMF5xCu6D99J8ipr2xNNMloOw+nxwbV7J0RxdRxacuH4MLAcWkzqtpIHvJYCsM
         KGY4uK5XpYAuDtgVd4Ss3RTctRp88G8zCecrUOV27ugzkMoH7212U2Rs+kcEbKuKRNsC
         +jX9HQbSahUZr3i8BcpOM4+R0eJzFvitJafrZFsHdXPaXbYmguyaG/uPo64CMcfSYKAs
         7klaC8saAfUGmAB3+4njsEQkayE/iCvnAOWqyl/7R3VHT4+UWu8hUK0tJo/izRYCY52A
         rVD6D6AGDYBB5GYW+BeM0dZ2MHE3K/nTA9ZOG0U/bHhHZalhV6dmmVuojwom3Xybtn/4
         Wdxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739469469; x=1740074269;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uxe/sPCuvuszkG09tatgP/sxrgyFyklm5riZrTlzQJA=;
        b=hsVDCEMftnCbH3qsDhDFu1dUMlQ0yHRnlzMtSawW4Kh4qs02c80hKU1Yv6WJWzwMRx
         qeZVP8Ps5XFNlurnizlizAocYr9YM0K+h+4rd8YhL9G95BE67DE6hQzYwN6BX2T2wP9K
         tJ+N+Svc0PZoDDuoX/WMqeMSLTSlYerQpGU7cUeWiUFGYzxRs34Xe/bV7Ya32H2mlMkV
         QYM0Bf1e1YbJtC+zWqRY/J7k8YRy6eQBSjNRhqooCTcyG1liJIbdptPovIiNL+WRKWpC
         pX9pgf0X16T7GVkMFP47Wa7PaP2f+5gOtBOd4GwfXvd2apH6pwPfStCX4yZk6HyF5Mw2
         B1BQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2xj+H9yfN2ieo2ot3f6icN8IRUVLZjqdL4E7s5fVl+dGwhtXi91DA2K4FZ0gvgO8dyHaUe469zkHt@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5QSaYHHrpXEPEo5V8HWk+MVpbY3VcyZVEf5h5FtcfV3hBGPfy
	/TgugktcjyKDJqWfOpoX4qRr/clE/TwXwWhqPqAcx+NC7R3hhTO1jVnzsZafMq89J1TLNV2uTeC
	0gPmYfk0EYkJc4Ng+a4QmSoup1UquzzhrLm/B+A==
X-Gm-Gg: ASbGncvTIjXSP1ocFtx8UILfQMU9WHJCUEOJIndqcfTn4YpQOqRq3G64jUyfmPEGfsS
	Vfqab0+4GZjHDYf4mDOOcwjUsQOGcJIeIu0OnWhlk4MWtHqlVi6SJzG+lBNgmdFfghXCTBAFX4J
	n1UstJWGlhVCf6wpDM3N/CkAqEsE0r
X-Google-Smtp-Source: AGHT+IEK78m51sGJDd3X7obouAmtice1DYZhDC7vdVZTdA3vPC4baSC0McAYMZqXZ2JdRz2CuZ0fh5G5y4aENoDxPdM=
X-Received: by 2002:a17:907:971a:b0:ab9:63bf:8105 with SMTP id
 a640c23a62f3a-ab963bf8270mr490444566b.1.1739469468776; Thu, 13 Feb 2025
 09:57:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAMEGJJ3=W8_R0xBvm8r+Q7iExZx8xPBHEWWGAT9ngpGWDSKCaQ@mail.gmail.com>
 <20250213171435.1c2ce376@bootlin.com> <a3c5103c-829a-4301-ba53-6ef9bd1e74e7@lunn.ch>
 <CAMEGJJ3-JXhin_Ht76EqUNAwLiNisa9PrCrdUzCgj=msGZfb5A@mail.gmail.com> <821d4c74-09b0-4c1b-b8ef-f8c08d0f6b5b@lunn.ch>
In-Reply-To: <821d4c74-09b0-4c1b-b8ef-f8c08d0f6b5b@lunn.ch>
From: Phil Elwell <phil@raspberrypi.com>
Date: Thu, 13 Feb 2025 17:57:37 +0000
X-Gm-Features: AWEUYZnQGb_LTFgRMGvR2NkevZWJdZdjShSWV1aYMFwhkUzlH95FjIU8_Kkz2O0
Message-ID: <CAMEGJJ0QbzCScfTRA_pw_8A=iMYMAAFs69zFNLwcOxF5Syugpw@mail.gmail.com>
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

On Thu, 13 Feb 2025 at 17:45, Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > Or do you mean a custom board, which has a CPU, RP1 and the button and
> > > fan are directly on this custom board? You then want a board DTS which
> > > includes all these pieces?
> >
> > That depends on whether you count the Raspberry Pi 5 as a custom board.
>
> So you mean the Pi 5 board would itself make use of the resources the
> RP1 device has? They are not simply connected to headers for plugin
> boards, but used by the main board? Hence you want to describe them in
> the board .DTS file.

That's correct. But even for plug-in devices, those which are on
non-discoverable buses need overlays to declare them, which causes a
problem when the overlay application happens before the kernel is
started.

Phil

