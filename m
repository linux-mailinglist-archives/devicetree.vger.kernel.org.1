Return-Path: <devicetree+bounces-181536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D13AC7DB8
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 14:30:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47D224E7D95
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 12:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DCD922370D;
	Thu, 29 May 2025 12:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="V7sr5hko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B1E1B21BF
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 12:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748521843; cv=none; b=oYS8fOi2yW4ZRFSU/ApJvsbyrXSJ1NnUPlryXFa0xQREcub4fjDfvZc6gcOtQEZf80Os6Tc5nmYBT7DavWItmxurtgT/+rlt6cjanzDA2jaHa0g3iKdL0apQhu8VihjX/dCK+C5xSNz5NCTbes/lHN1ogHnn1YI/HD9NS+/VhMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748521843; c=relaxed/simple;
	bh=Yve1y1r49ecQDnwvQsVX/ck6yFvbc6vKX1qjrxYEKpI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qtSegItn0ew+Jx/OX8XXVuvYCi0KDGbzLeU1GcsItHVR9xdqlgShXNb84uu5ieH6yCZPDulHoL6L1rdzG42yzXCrFHpjukqCXhrrldaFJbErQLSBw7K7PZ+6CeNdynnqExzqZnykzVTLNMH8bZX7a+KYMymhDwphmEXNwRHsG4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=V7sr5hko; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ad89ee255easo143484966b.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 05:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748521840; x=1749126640; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=suszitiSJbZS8iWXXXVjI9GrivMQ+RVo/o+nLw7sB/M=;
        b=V7sr5hkoBzvHJosQbML2fvSaGT8F1aWaY5uwjPFVi73sxMDGwi0WvH3AByv2TZOb8k
         /2yWOtPohAsyoflr0uMYnffj2u7p4ujuqVxt36PQcLKh+retBoJPLEnqS8KvcGfoYk9b
         g2FhbWcDjepAbrUJrzGlQGo0cl1D6Lu2Yxe4jFcbCZydWb8m1EsyMnBk9Yho/9PzQHQp
         8OzMvtatqE95YuoDfyXM/kXDB+2Xg4TnMLPK77oEuTK5MIiRID9z0bi/tUnNy96Ygxao
         olB+OvBVgypYJhHXYpU5w1KOtF0UEeoqWVa+t262MPDyujWyR6QhU6vsqqZ/bUPDwT/g
         /n8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748521840; x=1749126640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=suszitiSJbZS8iWXXXVjI9GrivMQ+RVo/o+nLw7sB/M=;
        b=A5VfJHHDmR/5u/C71H7tYJZJCTdMetsEzyDQ4D+4eRSpKOknnwyEynWPhx21YGayxJ
         O9wsGH8985QIVIH4Ootsw9aT0bpSPSKbJQVdEQy4OZn/bPSyWNKng07njMfbc+AWhZ/6
         B4Oqjh/ooxAxgU8ck1DPGIe+9QhWnTNlWY8W4//FjA76bi0ln9E9E2qbslj8x5pbNKn+
         lGxlFd2VEDNSC8VU4mOLnszt9JQvAgWxdu38ZDEuJfJOy+hY4hN30qSZHSSs5PG1lCxw
         FtkSxBIrR2Ct/OLRPJTBtnk9KpZ/PXjUsD4xLCK620V+AH5AEefBdA2tl7LhRL71+Ywu
         PRoA==
X-Forwarded-Encrypted: i=1; AJvYcCWaUlmx5Su9OTh33bA2+bdRymgi4v+RL4XtXiR6tKvqUSyztA+SPYjbsCZpaWLxD0kVe/YZ8O3eNiBr@vger.kernel.org
X-Gm-Message-State: AOJu0YzBtK0EK/MAyn4Kf7xEylL0x2sZq6qeasmBHukWb48HnIbbJtwO
	YvSSj5wcmEUiEWEeQhQUr5OIbODDXGik8YfM69zjOXgJcdtaf9RKQP71QaW5qtB5mv0=
X-Gm-Gg: ASbGnctcX/e8nVhGALvUGKQQPvBdREp15u+Soqm40awZJa66jQbUzPeUWbRxq71T2zG
	HuexuVBAloWTwJu3keXw7a3z17892ZUMNcxOTUQ5Rsg0NJcnkUAFfNGPcvRuJLkmY1rHVkx04n7
	2a0PTlNmvu/I4UAOrq+JC5un0QDdnMJegjBrg/OwL7rZ1yguil8RNu2UB8MkrG+fPweBg5KC7HR
	wycDHdRpXYqjQpuNKFn75QvkVjoe2joFXkrqdQOQvO5JMkrUyERUY1iWWhieqqPqyR/i8ZxCRW7
	MgBH6a+QD1Z9RoI3NlqxdMmvqVoFK4zbFuYTvcOj4HaIq2iCJ5AMy34x1NscTG61WtuiCmH9kJP
	q8JcYd6WBx7H0b3Wvd4RzDw==
X-Google-Smtp-Source: AGHT+IGh83QJllCl4ga2r5TeFVA+yFVEjbebpA/nYkqIF9yNbUhm17ow5NrnSrfH88Ym8gPqVxFW9Q==
X-Received: by 2002:a17:907:1c21:b0:ad8:adf5:f7f2 with SMTP id a640c23a62f3a-ad8adf5f9camr383908066b.31.1748521839767;
        Thu, 29 May 2025 05:30:39 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d850d88sm134258766b.77.2025.05.29.05.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 05:30:39 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 29 May 2025 14:32:14 +0200
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Subject: Re: [PATCH v10 0/13] Add support for RaspberryPi RP1 PCI device
 using a DT overlay
Message-ID: <aDhTzqMLM5wR09y2@apocalypse>
References: <cover.1748516814.git.andrea.porta@suse.com>
 <2025052908-goldmine-ramp-b865@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2025052908-goldmine-ramp-b865@gregkh>

> On Thu, May 29, 2025 at 01:23:35PM +0200, Andrea della Porta wrote:
> > *** RESENDING PATCHSET SINCE LAST ONE HAS CLOBBERED SEQUENCE NUMBER ***
> 
> Then it needs to be a new version, not the same one please.

Sending V11 in a moment.

Thanks,
Andrea

> 
> thanks,
> 
> greg k-h

