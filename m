Return-Path: <devicetree+bounces-118784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B14D9BB886
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 16:05:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9ED3286587
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 856D633997;
	Mon,  4 Nov 2024 15:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wm3oX3AK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4562B9A2
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 15:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730732738; cv=none; b=YJgENSE9u36KkfdqNEuGc3VZ+FmJ08j+sgg0fiAH72bXlehCVzCLFCzsLTxnYyaU0gbl/z2kTC1gJ8wm7UUG5rplwblzZPB7LFIZLSbeqHzrsGk538mqR1BXE1y7UJqNfl8AsHv5NVXpEMyre2JJLyuiK4HcRCqPC7jaC8y/AMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730732738; c=relaxed/simple;
	bh=vwnO7mrvpAHG7NGEK9mdrycdBVkMEz+YCEyQYM188fE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZePGxi0O8yk9qD+RwRGNATqxPywTeRQ9vPmixB8Kl8xruPF5ZecGTq13Qe/Q5YMH2E+pEcOP+2i8F+VaF/HhXkuyrOivvDCWxvuR0IBvRVTWNwnlREnrmZWD9Z4f4lZ67cY+zpG8Y/d592owJZ0kbiP0AnmGQsB0bbPsAlriqys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wm3oX3AK; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20c693b68f5so45999385ad.1
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 07:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730732736; x=1731337536; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ofU3iDgizx6YzKehUMFHWoGtFbTl4IysRdu8b/3youA=;
        b=Wm3oX3AKCnkoCJDzIJVR6fE/XriNzR8eyxqjhEETE3ltjsybeA9cOelQY4IgvdXZKD
         Jt/PRvs9k3YfqrnGCZS3gY7xxR9GgWJYUuZsHhOtcjWEEBTzF9hHcink9NRsCJQEw6bJ
         MCvX2e/BrYTdS8yBg/a1212aAmM+DLXH/vL/RKhEsUlVT4TTYiL/sDK07PZj+Yug0wT6
         TS7Gn3vc6u9rzUZZzW+mBEKrPh25Ozcv4a46iQ0gXfQOZNneDMaBtJ4ShQqqvzekZ8Ob
         YjeurR+SMViRYzzVGO7zSbXxJWA5afr65q0mefzxW3GOxZ1myijOokkcRI2Rw0bnKyHg
         Xkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730732736; x=1731337536;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ofU3iDgizx6YzKehUMFHWoGtFbTl4IysRdu8b/3youA=;
        b=HKkWf1IDLRFsDtd7C+/6Xt/KXtcw7ALLiEvU4qv7S+mgSSGUDn7zysXco7WPdC+yNd
         IGAMAbab/SX5cJHpsdWI3IepFT2JekQsUDNgO6B38Y5o5mvNLQNc1EhTuc3bc/cvFwj3
         BcawiOXuHJGYOhl+3fhJ+kG09NgRubHc+0/gObYHDueiHXdDnW3V8y0h3CM8RD8cmTIL
         6g51cmikXsjW3d6nTEwjV2MiRojLdDKeL0T+GNTAxyFnmtD3bh4UGCrYV547IBWa3vau
         jYVicwgH/DLcwNIhyK6dRTBkncaPPmJ5U0VWekqxZUODCW4jL+aXWH4Q/R85OUOOdBFH
         CGWw==
X-Forwarded-Encrypted: i=1; AJvYcCVgqKjOWvAMddYLKBH0W7R9A8f5dVr5OeCdVZO6CXDDxTY2MfQkRLpk2rPwrhGUxRxxW5iKDL98YlgL@vger.kernel.org
X-Gm-Message-State: AOJu0YyyqKns/xlXPFBWMSZF9MSpmHoEJ90oTT4CSK4Sji6pl/DBWNG2
	GNLHbHaRBse20C5vt1x3s/MEnlHngP68GxDz8+IT/PDqzxCuu4R3CLXe/cA6Yg==
X-Google-Smtp-Source: AGHT+IEl021krn6b1t/Wx5zX8WUa7/rO/gAFqJnTZVCNoxsul5bGUWlMYoB+HQZUJuohLeUfjZctig==
X-Received: by 2002:a17:903:943:b0:205:68a4:b2d8 with SMTP id d9443c01a7336-21103aaa063mr240018155ad.11.1730732736068;
        Mon, 04 Nov 2024 07:05:36 -0800 (PST)
Received: from thinkpad ([2409:40f4:3049:1cc7:217b:63a:40ce:2e01])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ee5da842absm4782828a12.17.2024.11.04.07.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 07:05:35 -0800 (PST)
Date: Mon, 4 Nov 2024 20:35:21 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
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
Subject: Re: [PATCH v3 05/12] PCI: of_property: Assign PCI instead of CPU bus
 address to dynamic bridge nodes
Message-ID: <20241104150521.r4hbsurw4dbzlxpg@thinkpad>
References: <cover.1730123575.git.andrea.porta@suse.com>
 <f6b445b764312fd8ab96745fe4e97fb22f91ae4c.1730123575.git.andrea.porta@suse.com>
 <20241102170908.fa5n6pz5ldxb66zk@thinkpad>
 <ZyiL4RnRC1z907Ly@apocalypse>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZyiL4RnRC1z907Ly@apocalypse>

On Mon, Nov 04, 2024 at 09:54:57AM +0100, Andrea della Porta wrote:
> Hi Manivannan,
> 
> On 22:39 Sat 02 Nov     , Manivannan Sadhasivam wrote:
> > On Mon, Oct 28, 2024 at 03:07:22PM +0100, Andrea della Porta wrote:
> > > When populating "ranges" property for a PCI bridge, of_pci_prop_ranges()
> > > incorrectly use the CPU bus address of the resource. Since this is a PCI-PCI
> > > bridge, the window should instead be in PCI address space. Call
> > > pci_bus_address() on the resource in order to obtain the PCI bus
> > > address.
> > > 
> > 
> > of_pci_prop_ranges() could be called for PCI devices also (not just PCI
> > bridges), right?
> 
> Correct. Please note however that while the PCI-PCI bridge has the parent
> address in CPU space, an endpoint device has it in PCI space: here we're
> focusing on the bridge part. It probably used to work before since in many
> cases the CPU and PCI address are the same, but it breaks down when they
> differ.
> 

When you say 'focusing', you are specifically referring to the bridge part of
this API I believe. But I don't see a check for the bridge in your change, which
is what concerning me. Am I missing something?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

