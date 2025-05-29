Return-Path: <devicetree+bounces-181592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35337AC7F5E
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 15:59:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86E8DA20B27
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15C1E227EB9;
	Thu, 29 May 2025 13:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="cg2PB2Ns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B148227EA3
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 13:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748527161; cv=none; b=YJAOzaeCGz0ftwcG+TfDbwg5QspEae2Oi6A7HR+2xLcLWw3U+Gkdznm5j/jy6aBTvjqPQwvjnegAHDRvO0pP8pQkCHPEU79rEW+DUiBKynTXb0e5G3IZSiU81NrBO/TGpHVgIKu1MME1eFtHhjuTiKJzp/prdN5xMkOY+sOyvNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748527161; c=relaxed/simple;
	bh=7LbxeiQ9CUarb7MM6uFQy9Q+5QfMHyPo1PcpNWESj6g=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cwmPOOtQydqPNT5Ed2H6AbP2rgKt41iHn2O3M51DGHQroqKHuLwwCn7sZbaczrRbHIFSGh37TEMK2uG57QBd+sY1lwx+Uq0zyYZPwdAIQqGJK2vdo4tjG8FT+KVNTGYHbkjm5/WNj0sA4ZjBH5TxC4Qb9y+aqJv09FY+LigW7n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=cg2PB2Ns; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6020ff8d51dso1531862a12.2
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 06:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748527157; x=1749131957; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bd/re0W0O3SfKxkSQq5B/C3J4e51HN+gv/k4x6dlG2s=;
        b=cg2PB2NspTTW82Qn12xK+O8KVnbJs5xRi261SUqSFQDkvz2oP13dKXJAprPXik5gKT
         xsqODPzQ+hRtKPLed0FyKS5UXSBVKXoph1hfNVJgwI259/TW6yJVZy++FprAh+lkr0FH
         zrAoJqW2XDsDaxazpMJVEEuQ45y2WZxeXBe5hYO3IG1oL5+9CoIdDVFvOnc3CW3+Jicg
         ovYKx5wt95SXDO2zD98anfDAnCHMRGevdMe38Xyg7sfFIpGD1AkdkLNmICtX7KLTynjz
         Q+4j4biALOBjSABx5Gf0UCivsGJexFRJQzF60I7i2bY5XeCAoriPrrqT6B6WQNQ+W84+
         nEGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748527157; x=1749131957;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bd/re0W0O3SfKxkSQq5B/C3J4e51HN+gv/k4x6dlG2s=;
        b=RCgGXbEflQ5JII02iZiIPXCa7Q4tYNjgLi2jVcDMHY3hzzClct5BeilNPtTItDJdBK
         ZDwZSDw9Rjy60gcxB54kTcpdpTBWluKDR1OF3WY/HU4eAsyzf/N7JLBHMnWfCUD1IFl+
         Rg/E5bEeTMNBixoWHUvi5tkYdSryt5ofYDwpxn6qy9wtt/p1VYOcINrWMUvE5VmCCsyB
         LS+y0lL7GI/+w+LVJ5OwFjb+suPB2AFBh5tlUY/Xi9tlDvcqkriWZiFIVgTlEWU9bVfN
         /kyy+ZDE2uJlfeOphiQQJSNWOLn1iB7C8ekbeO9dr7ZpyH0isjPMXVNgp2/AlsoIt+U9
         ZxhA==
X-Forwarded-Encrypted: i=1; AJvYcCW38uNm+PqAerqyDIN/Wey86W+Nzdpl4Zx+DuTBTsIoMtGrlG6f8gs5MP6+K4KYFuJfRo7IgzxBjos2@vger.kernel.org
X-Gm-Message-State: AOJu0YzUz1N/IiOwlPDphEO5+qY+Lnzx0OIwI//qib9nNfjViQ2/HBSV
	Qn4g94b3eFxsgUOnlqSzT3BUA/8Jok3cQUkEd3ytc3Q82KTZWsVfDunm1bkNDSBW980=
X-Gm-Gg: ASbGnct5PaLLG5UyllaR3U78FEmHhfjtdJtctsykTV0efsdNfa0P78ZYPhSSKDDhBUg
	sURfGBocTuEJDkqDqYjyi5jM9q9vHMOEqtHctNDToIdKs8rMeftRAWMZFN6AI8TeNQG12sOzV1Q
	SeMPU8iwDYv2bH+63oAKlcpCvjVnUhHIZvxHPoBB7utBqhpyyQILoh/82wevJIsSEkW+uCgg1qa
	uiKNRMgwhU4R6UET9aCEAuWnRdryAXeV5Y4eOCeSNUCR/bt3KqS2jyeZo9kJB7Lw/7rkIMFQLpd
	NOe3adMSLy3Usr2hIV6d8g/8MErqXYQ1rM95CoEG8o8DJo85PCq0ex+ayUadBkfYjoduEgFJ3wS
	rJYfwXVMDEmxOV1/iPImzfA==
X-Google-Smtp-Source: AGHT+IFe10hNzzDGzxOKftk1BYzLU57XNvgcDOZ24VhiK0GAx5icGmaI6U2aVUUNIweLENXOhsxpSA==
X-Received: by 2002:a17:906:4fca:b0:ad8:9878:b898 with SMTP id a640c23a62f3a-adacda56014mr193178466b.9.1748527157319;
        Thu, 29 May 2025 06:59:17 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5dd045e2sm148109966b.90.2025.05.29.06.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 06:59:17 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 29 May 2025 16:00:52 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
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
	kernel-list@raspberrypi.com, Matthias Brugger <mbrugger@suse.com>
Subject: Re: [PATCH v12 0/13] Add support for RaspberryPi RP1 PCI device
 using a DT overlay
Message-ID: <aDholLnKwql-jHm1@apocalypse>
References: <cover.1748526284.git.andrea.porta@suse.com>
 <0580b026-5139-4079-b1a7-464224a7d239@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0580b026-5139-4079-b1a7-464224a7d239@kernel.org>

Hi Krzysztof,

On 15:50 Thu 29 May     , Krzysztof Kozlowski wrote:
> On 29/05/2025 15:50, Andrea della Porta wrote:
> > *** RESENDING PATCHSET AS V12 SINCE LAST ONE HAS CLOBBERED EMAIL Message-Id ***
> > 
> Can you slow down please? It's merge window and you keep sending the
> same big patchset third time today.

Sorry for that, I was sending it so Florian can pick it up for this
merge window, and I had some trouble with formatting. Hopefully
this was the last one.

Regards,
Andrea

> 
> Best regards,
> Krzysztof

