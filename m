Return-Path: <devicetree+bounces-140065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A19A180CE
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 16:10:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B11E161E5B
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 15:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43A3D1F4282;
	Tue, 21 Jan 2025 15:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="B+8/C1+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282DF1F427A
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 15:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737472235; cv=none; b=O3gT3kM4+k9gZ+m/kWTsaubDvVHvB1k67L2pk0QjKMvBI9kiUS0kmGiqSFflcoXGy9JdKQB79ERGMjTNolCAVrgkcQXBCesL2bAouCqXBJ2kbunjZl/vHexMUdtRS9ECUznsKzyy9D4FXf88mt2i0ugfu7cqlz3dXiJbvRkAjLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737472235; c=relaxed/simple;
	bh=pRJRz+OpfQpH9KXpwAWeimcyoeUpzCupthx6mDReiKU=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RTA1EefV2Tk4pxGtMFZt/ruL81t0eRyPCeDmatt6miDsJzRoM+z3g2QTYjUn4S5seYHVeva8Hmbh+KpuPBr7bmkj45PrDT2258PcHD3tUbke4uA7gcPxaLRiew5O6dtiz4dJAZNQUei/v0KxmU/DFhrYUgHkwZIPhRR5bLfKfEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=B+8/C1+X; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aab925654d9so1014976866b.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 07:10:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1737472231; x=1738077031; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1BIk0mJ4ghFJN5TubUO6JYFTlPsrPupFq1LBuxjGGzk=;
        b=B+8/C1+XCplkniHMXqE1NF+0AQr8EEyY8u+sdWAqWRWg2Cr/qekJBOu19uL6Gpd8MT
         6/FI1/eTkSAzWXN91/enHuZYhnxgxKq9Sq7g2TMe8+nhmdU6BpHUhkkRk5x0/+n8t41e
         QooBgI1gp8D4ts1KEsp4rmabKYIWgMpJIVmavlXHQ8S31nn3zrjFzfcWg7xC/2XKotzU
         uKvBEN+PP7dmgiCzXDkPruaZ95jThtIokHiasJ7KvYFCEHseaAoxp7HfnLZK+JmNpvQf
         hZPSDWI/96kxWkyGjEODokR+e5VMpMKfE+IJeq4mfFdJC9WBqun+FQlkcNKP8K1isjsG
         GCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737472231; x=1738077031;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1BIk0mJ4ghFJN5TubUO6JYFTlPsrPupFq1LBuxjGGzk=;
        b=pmq2WQZ7MjdtoS50kIAFP1uNtmZPs67zcaxwPQQAj2jCOYYlo3YYzvM1/5x3EYz8ps
         yn8qMcMTSxPyaYifxrUrB6BQGo0/lNsbDZDaJHwA7xti44x6W3eOxOQseBNL//InO5as
         sk23ylrElZBfXSk07jVKwjW8aAiVA5jxJWiaRSj8BuzD3H6FGi25789a/NDQOLlx/67W
         p3SokEg3CXmB/fvdq0DQkG9neL341steqVSv+VAS7a7HNQ4LBvtwL/uRN9YKHMdNt0jN
         QUsTiWFAKtj3tCuCaM3yIGpHYekxu6YAL51Ylc0oAiZm/24YmBU7OOWdMOU5Hric5JI1
         k69A==
X-Forwarded-Encrypted: i=1; AJvYcCWJVxKclN3w2eW4I2kBMPbpadJGAvZyy1gcxBl88yK+16m4XFCcG9tMF5jmJGRhiGvhtep0VBUgYNrD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/2Pfm+JG/Dndde2fNCANrWDk6QBDMe7GRSrE1xixSAVFpl/z8
	xZzlYMpOlnHXLEMPFRMdpqWRN4/kbg5D+6eHFcr8c2M9ghGAMUch1gwCqweI94Q=
X-Gm-Gg: ASbGncuMPDjvXq+fTZ1Y3CrRY3FMhKSc27fJQYOGh0TLh6F7QWQAXjkWAoZXvfVrZvo
	S/5OYmcdbURpQuGlfI98TdraE2fnbozJ/9yrbLK330O09LpsnJeYJjEQo79y4KMklQ5oAIcIj5q
	Dw0d9pJPJ6IzZBrTS6uIzfrtE+7T+ZrtY6muYFtX1c5xDEL0FWEdNKGHz6UUCslEFVDvrebNef1
	FHBCcq1GOxGY4E9GsyqIWkX8yDGnu8Ugyr8l3WqWNZXnQ+nPOfemUgHkwjW412CRCSHmw7KxT2+
	vAQrDnHAdF23DBhX4rr4cmQOZLk13nC/QeIizUb2
X-Google-Smtp-Source: AGHT+IH9FVvcKrRKMRhk26BWOCPbtQyPFCLPBzPFOkLbN63Gck9obXb7zAzQ71TAqafJQA1N8DPwwg==
X-Received: by 2002:a17:907:94cc:b0:aa6:85a4:31f8 with SMTP id a640c23a62f3a-ab38b32ad1fmr1524098166b.33.1737472229912;
        Tue, 21 Jan 2025 07:10:29 -0800 (PST)
Received: from localhost (host-87-14-236-197.retail.telecomitalia.it. [87.14.236.197])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f8d3a0sm759146666b.158.2025.01.21.07.10.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jan 2025 07:10:29 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 21 Jan 2025 16:11:22 +0100
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v6 08/10] misc: rp1: RaspberryPi RP1 misc driver
Message-ID: <Z4-5GvpJfqkad-6A@apocalypse>
References: <cover.1736776658.git.andrea.porta@suse.com>
 <550590a5a0b80dd8a0c655921ec0aa41a67c8148.1736776658.git.andrea.porta@suse.com>
 <2025011722-motocross-finally-e664@gregkh>
 <Z49eOdVvwknOoD3E@apocalypse>
 <2025012143-rippling-rehydrate-581b@gregkh>
 <Z4-oORWO4BgOqibB@apocalypse>
 <2025012157-bonsai-caddie-19b2@gregkh>
 <Z4-xcjov0HLivfVX@apocalypse>
 <6f16b0ea-ebb7-4692-bfc0-79052f079bc1@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f16b0ea-ebb7-4692-bfc0-79052f079bc1@lunn.ch>

Hi Andrew,

On 15:53 Tue 21 Jan     , Andrew Lunn wrote:
> > > Well where are those externs defined at?  Shouldn't there be a .h file
> > > for them somewhere in the tree if they really are global?
> > 
> > Those symbols are deined in drivers/misc/rp1/rp1-pci.dtbo.S (added by
> > this patchset) and created by cmd_wrap_S_dtb in scripts/Makefile.lib.
> 
> Could cmd_wrap_S_dtb be extended to actually produce a header?

It will produce a header nonetheless, one which is needed by just one .c
file violating Greg's rule about having a header only if referenced by more
than one source and the symbol is truly global, IMHO.

Thanks,
Andrea

> 
> But that might confuse static analysers?
> 
> 	Andrew

