Return-Path: <devicetree+bounces-168141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 28170A91964
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F3CCE7A8F1B
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 10:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78852229B15;
	Thu, 17 Apr 2025 10:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="eQPWM1LV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73974222581
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 10:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744885926; cv=none; b=JQJJ00rrlnlac8Ln7ERyw0cuXsWweZZPL97APDSv1Stzw+cNcSklnOXyuV/0epTwBBiRP/+aj+NLWXanzrSoOV27lH6kLBxOiCmbeYbOixXST61TDGlwphZpSVcMstNDW+4KYJmsDFcBa7d1w33TS4ABzHCsymeJDhECokm586I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744885926; c=relaxed/simple;
	bh=fEIfKJCBECnECwfB4LdSmyQH2scRAHFyA49UsvEKbfg=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CL9DC0m0xes+IWjX8FcTYTRDABJSJN0AlxIeL3w5VvJFtZDMTb9fgMsv6sFwIjVsDmJviYsiu5uYsGkVpuBaazm1kR26PX6s/a5qHE005s3Jv0RxRArZPVnQ3tiRGhy5w+GpG/Ckz+Qr8hBoiNh8QDrSBcQVKl3vfvrXDmfyVp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=eQPWM1LV; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so4536545e9.2
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 03:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744885923; x=1745490723; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tkf5fQhiQh/YIIyCMZKHz3rsbVF+Y8xcwtqk69ZSgPg=;
        b=eQPWM1LVon6NKdin+4cDYHYf7hoYWHpOMR6JPhEf0HCdswwY4m9tRJ09vRHAG7XiMD
         c3iOyBsLWZwAH0Jq//RROW6UdhVXhlukwnaAhvTQedNKyMk1xUUfK5pTj6YYxr7/Qel7
         5c9gAVISp9P9JExZ7eVHKvs8ETHKvIGpM6k+BobDNpz3YgvE9LGYWcpmzk7o4N9sdmqB
         CU6kOTlsOfndhJTu7CV+GiEmxsPSI8UXTIFNrKDWN5O3djnEJbgFNBu3pWIaRUon7KAl
         IWO9hAUO8XTucPJm0/yHCnbhKWU6aEMpuj/bdm2nV+ePAVTpg+AdbZDF7y8Dn+ic6djp
         RynA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744885923; x=1745490723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tkf5fQhiQh/YIIyCMZKHz3rsbVF+Y8xcwtqk69ZSgPg=;
        b=HyTpufJei1IWUnjcaeNueG5/gDZrMvFo7qp3nMYCEFWNO3aedBOxk9d993SS+QGkk5
         d9dF+L+wjqwAhPoTJdP/bvD7Kpuk+29HfTMOE2gWZ8UEx6jlCRSpxGCvtlZMcvJimXD7
         ELOLQaQnGBfjrYcXqeYq9tuXymcj4aKY7pgQg3sgLt+8yIkPmAfc/VFcmNAV8ZtJprdt
         muBFzvOQnQNeUZGsuSlqGWFCJjk80u594Lw0Pipqm30G3knXsuBlU4CIsdlLKG5s73NM
         MSG/7Enj79ESxE4xTzvsccIoingEFXhifJ7voNlN8ipNRVGTEb64EkuO8IUa3XZismBm
         j8zQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/lsJTgXH13yfPUw1CMPNSNKdXbn9XuruSJ0JuQ2SqCuPLiellfaWpVn1F4e4AxvpGJMWb+9i3jTFD@vger.kernel.org
X-Gm-Message-State: AOJu0YxK4zXwmkMXzqpmHZA0devjqLtak50MIPOoxxiy4S7eNYoUyPYh
	JUpJhHay7VHvPCGvGeDQiDQGABkMCHYZNh+bvkbuN3dDgAMaybcL+5EbOYjaG7A=
X-Gm-Gg: ASbGncs9x6GLRqBd/PwkvJ/A47xMUeeXgMQTNKLrJOTQXPqbV1jX3dvxkZCqE6NW5OB
	5XM7llxgMvS9rSEp7KEE6XbOhl2txgYaCeZCjfBICtzSAEyB0O2yoiIxYjxJ07IPwMyhJXJP1kJ
	eBDBLiRhmHbrj6lgTwkj6z9aEjguTv8G6j9eTzi48xoltStp4WEgicvRKU0dcva81M3uWVQmfzD
	CUiu9zVVmZlRqLwfPn0uzFpL/fpzDnTmmaYihNdZUT8LaS5ftcMtib8jRLevCTX0dB1MHeWe7d3
	OiV/7v9NDIvOqe+lmvxi+fphTlZj8tcM2i5t+EvfFNfrE5ar8Hfa9hS01p0vJDzNnbS8YOY=
X-Google-Smtp-Source: AGHT+IE6usGaresLBjX0+vm/8v6ChKOAsLs9MaVE8DopJjuApE+hTsGgNSyU080dBby5dOeKbC+ieA==
X-Received: by 2002:a05:600c:3b07:b0:43c:fceb:91f with SMTP id 5b1f17b1804b1-4405d61cfd3mr48465285e9.11.1744885922759;
        Thu, 17 Apr 2025 03:32:02 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4405b4c8188sm49137285e9.5.2025.04.17.03.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 03:32:02 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 17 Apr 2025 12:33:25 +0200
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
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
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com
Subject: Re: [PATCH v8 07/13] arm64: dts: rp1: Add support for RaspberryPi's
 RP1 device
Message-ID: <aADY9Ye5ok14m3F2@apocalypse>
References: <99269f7762ec0124315e0e8977d9ca4f469f89ce.1742418429.git.andrea.porta@suse.com>
 <20250416192905.GA78240@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416192905.GA78240@bhelgaas>

Hi Bjorn,

On 14:29 Wed 16 Apr     , Bjorn Helgaas wrote:
> On Wed, Mar 19, 2025 at 10:52:28PM +0100, Andrea della Porta wrote:
> > RaspberryPi RP1 is a multi function PCI endpoint device that
> > exposes several subperipherals via PCI BAR.
> > Add a dtb overlay that will be compiled into a binary blob
> > and linked in the RP1 driver.
> > This overlay offers just minimal support to represent the
> > RP1 device itself, the sub-peripherals will be added by
> > future patches.
> 
> Would be nice to have a blank line between paragraphs.

Ack.

Thanks,
Andrea

