Return-Path: <devicetree+bounces-193252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8F9AFA133
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 20:38:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0836F4A21AA
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 18:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03A99215F6B;
	Sat,  5 Jul 2025 18:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="M796u3Wh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FCD1AC88A
	for <devicetree@vger.kernel.org>; Sat,  5 Jul 2025 18:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751740710; cv=none; b=H8aH8KQ0XRHXaJpIhGx3tMibv9142oWoUAsCNrE5TnuB2b8k//Y5pxwFiGIecNWR4B19eQTjB4ZD33EjQR2OJSvBVjPgZdq9yo/832Kwtt2+c5v7eGdvlzf2CvtmIvyvjZHPozG8dgwrDsibjNhIHOcA91BxVwb0BbvwWn6wT1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751740710; c=relaxed/simple;
	bh=WIHdEgEb4h7ncGmlqKNUeHDxe1TLcrT5/vC0Zduw6NY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NMXLi4yNIh7ZGrPTpxgwQUGbnMsgF5FY2LLZfDcEAKfohNWkTJ3elpCI9HKbu2BeThB4NtpyiaivMjPfBtthqnxohwfLjOBP9YbsO539XHi4V9KT/0wOH42sEYIBmaooQp3arsHfgvsMjiAqfO+v3KefEQMKufEPdpEIPmfHbUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=M796u3Wh; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7d0976776dcso223891585a.2
        for <devicetree@vger.kernel.org>; Sat, 05 Jul 2025 11:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1751740708; x=1752345508; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WIHdEgEb4h7ncGmlqKNUeHDxe1TLcrT5/vC0Zduw6NY=;
        b=M796u3WhOQlJnRyUi6KCA5mOBngSG7pYexme1NipRRKwhjCRZmRmaL4qW23/MADF04
         EVMgpz8MSxd3mnCAkEUimm7nyDAAy/AfA+23koKmLFV0k+NeoR6++sQB0vN5ybXyYBIx
         EnHBp7EwdcbMHoWEKN8S7YN5xL59XSA2mG27EuL1TmgjaLpfEkHkwx8sVFutTsL2Mqq+
         JYzOzmoIPmpHnfTgNznnCQdiBpiGNk9s8gq7K10PAYP++hCN9ORjzrFlDHmNnkpAYoMN
         kRJ5LyjwAjhARa6dWFNS2FFcGhgsuljQp+LGPcDYu+VbIhc4hK/IBj/Q4s1nzu4Y7waT
         Qqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751740708; x=1752345508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WIHdEgEb4h7ncGmlqKNUeHDxe1TLcrT5/vC0Zduw6NY=;
        b=AWZvYRsK8sf6B4h/qRwI2YQbFOFoCXwXL0c4pg3UxZrf0g707DjRLFCoCYrjoSYQux
         FaysMVXY3XLLGraCrlDgo2F8J+Bw+BSJUje3LLESEQn43o6za4TTgc7AVYBkW3cfQCRD
         kNhf+8dgw2wC6/Ckvj3c4/LZZl3G0W/CqOz1yyfsnyg6WZWhoj2C1krWxtaiAT4mzAwl
         dXfDHpYl5mZtCpjJyz4TOvRysadl4xH0rGsWF1Z6E0O7OZswvfAADjFm5xsqPBPP21cZ
         P+ZKlyNm329L+pGcUSwAdVzCjaGp8QwJ2dbboRWRpNhZNvoQ1GXXgbtHDqfVWv2FYWSF
         CzHg==
X-Forwarded-Encrypted: i=1; AJvYcCXmO7gHJBQMUV6Jq5cgfoZQAcNsg9QSsZ3pGtjlTVel2tgMSL1GaPBjC7J7vjjJYrd68AkZ0ZH+B+W/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxk00H/N9sw7jbPPdjEiU3E4Zx++Fvn71GL6E2s7sQ6SMrSWqJ
	zVfnT5FomJP47kM/5tZMbMmngsikCMRwAYJ8ZNoNSjTfeX1i3G1aPcJlyNLumvmaCX4=
X-Gm-Gg: ASbGncupPGpYd84N/BW+wLRpC9RFUFfSpi+1o1/SEIMY48avm73JC5IuEK7N29823LS
	xareakjzl8p7IbubgjOTowLEv1sYDd21K7xM/P3hY1i4cVc/1S8NDrWl16jMtxuiF2CKvcdX1kN
	eCW1rxkGdSqPE9UWwU5Pn3/EOg/O9U5qAbPCycT/lzBgbSN9Z2fEsf1nsi59N/wl7qJluDnceT5
	3i8bhOxSARQqtQ42jXLAvbLyDK2tX7wt4kIFEk+CbqCh1fC1MMziDu8Onci9waGhnKiCyyir5+o
	NbLmuCiz9pWIqFdiI+pXQQhYJ0CP/nt3SfRx6sA9WSs1Qyez40xCLxJLaadJ7P1jukvypsRiQfu
	Dx6Nl58qetaVaWmT5YvzbclhMvoFjRy5H+voGeAy4A9Vq/XpZ
X-Google-Smtp-Source: AGHT+IHGynn880Btao0rr5ATgmcaLhy8fafgWIOLP+yaNkVftZqqbIrm82pa3BfiHgQu8aK3kR04IA==
X-Received: by 2002:a05:620a:40c9:b0:7d3:f0a3:d8cc with SMTP id af79cd13be357-7d5df169b32mr814175485a.45.1751740708064;
        Sat, 05 Jul 2025 11:38:28 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d5dbe7baedsm345886685a.57.2025.07.05.11.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jul 2025 11:38:27 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uY7mM-000000068pv-2jB7;
	Sat, 05 Jul 2025 15:38:26 -0300
Date: Sat, 5 Jul 2025 15:38:26 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250705183826.GN904431@ziepe.ca>
References: <20250623153931.158765-1-benjamin.gaignard@collabora.com>
 <20250623153931.158765-4-benjamin.gaignard@collabora.com>
 <20250704175425.GM904431@ziepe.ca>
 <62cead85-2d50-45f1-8020-7aea77f6833b@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62cead85-2d50-45f1-8020-7aea77f6833b@collabora.com>

On Sat, Jul 05, 2025 at 12:04:05PM +0200, Benjamin Gaignard wrote:

> I would like to avoid that but maybe a static spinlock can solve that problem ?

I think you can't really (technically) store an iommu pointer in a
domain and not prevent it from being used by other iommus.

Can't the spinlock be in the domain?

Jason

