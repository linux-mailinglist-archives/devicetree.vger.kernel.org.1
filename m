Return-Path: <devicetree+bounces-131249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FC59F29D3
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 07:05:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B193188142F
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 06:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7DBD19342B;
	Mon, 16 Dec 2024 06:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K+07gorJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AEF322E
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 06:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734329137; cv=none; b=t4s8hQqqG/8fS3TSni9bzuZIl5tXiraiEWOeGoPF8dvkWLtQcdFsJDTBaS1l/pSTilvjo/b8Mh54ecdhz4RqaIdna0uOAC7Fcpt7Y4iYcgAZtme4wv3LWNhJNqbcm9g+Ar8P75+/neHEfW/sbjyQP2k7Y+lNRhA9JLlgCTUqcFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734329137; c=relaxed/simple;
	bh=0oxnWjjTJmQZ5WXrDVl3sUQnCL6wKEhOCT9Px58TBIk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NJ/E7xh5TG/YSKJrV5H2Ekjcydf+YKZgw3AGBXK57KZCV2LQdwFcC9lHUME10oMjehOdxzYcMUhkFakNbcn69loMhqWDUeBoPeNi+T5068OOj+k2tJQotBTmbf/L6oFJv6MkNSPKMcSdkEspcvm2UTrxtnfX1Idc5Cvsgobh29w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K+07gorJ; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2163dc5155fso30839305ad.0
        for <devicetree@vger.kernel.org>; Sun, 15 Dec 2024 22:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734329135; x=1734933935; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CDtToB1uPwC4PcwoC3FtKaZg1gP2euazdW0XojEpOzo=;
        b=K+07gorJ6KRpcMU5v3kfjNDKr4Ur8UNkYIe2IOPpoMCTDsm9NFS/rWu5rR3+maF62o
         Peok/hKovrVPWPeqIja4jUYumeEPUlj6Rl90Ty3+APcjeBuxIJM5GlUl6zuBplRfJWyO
         pH650OHxMF+kFxVBJxSWS/DBkrZerEJ+yj87vrniwKJN7MzzBKEZW8fuymxScNJNaRwl
         v0NiGo4O8HsJA23XFq7hnXjrUjyl7Zh7k03dBkhEWPA1nz/W9lDW/NFpbKxHsZZULhce
         n2on9mFaKC1LiIS3I6INVn9DMcV8EyMsr1Vdv/HoBuyfdgQ/TV9/Jksq/kMzg/fnKgm7
         3bJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734329135; x=1734933935;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CDtToB1uPwC4PcwoC3FtKaZg1gP2euazdW0XojEpOzo=;
        b=A0gNLAeGfiV7SFvp1LUQjt6OcmlLImsoGitI+wpU5grd7pkEP9zaJ8Dnh40Dp/LHRs
         PZSBgRSCK7GTefmZzeLcFOErQXo6AamOqt4i5H8JZAr+TDKcPgMUttTJrZfFz0A5ku/5
         Gz4BLwQXs42xVqAnNsW9gZGEutV9bfjWpK3jPX2bTy5toQXvEk5SOruPEGL43YOMcHlc
         J4uud+LrIzco09O+sPv2uEWb3Gx+d0dDYJz6Eug2WrBSyKf/sh3yl4tOymKucfCTuqtO
         ZcVjDWsbcbgXu9TLhFkWq8EKiv+SsifEpq4a2hqQbmTaLeri1n8o76RyM1WUIKiJgBC9
         7MkA==
X-Forwarded-Encrypted: i=1; AJvYcCVutV72f/oVXfQj3TYDIeWaCY6v8iP/WVzqbbKc44Q6kn3VUaEIILAnNkWyoRIaXh2twd64ZtPLTcLJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyT5cFnddNtSPn7DQSNAXEAevzkViO1ylAtf2cI93pabK8qkkH8
	qnk+l0pqDjmaEpLRrYpgMZ8PP5jJHhwwFEDV3WL6fFk8cU9UuGrEhlijZrgTnw==
X-Gm-Gg: ASbGncsGlvTQauLIBpbZ/nmHe0FuqTa/SZMarJGAJcuZ025d+cnL+kIGJGWK7aaP3VQ
	mTZ85DQDtr0SnkSTMvPc4Oq/AyLhy0yRrj1sWsfWTzbQRlJM8RHP2hL6mDFW8sFGddzIOEhgxjD
	L3omzJnmQ5wBgTuHu34FyQJ+PWbnKMo4mCoVEMH3oL0rJtkniIxMd9qlKxqMvOUjASK+kQeLAHj
	yIh4YfCi3eoHxD78dkF4NKcNSOlC5jfPPOCxOl4d8qDl/zDL1tNhxUR26kbu0cJ+xc=
X-Google-Smtp-Source: AGHT+IEhH2izMGHWoXgAHYtfFoQE1IpdsZiJPq/F6hXFB+rjYb1tbCyHV6DgMbQe+W6rYlwKdP0A0g==
X-Received: by 2002:a17:903:22c1:b0:215:6cb2:7877 with SMTP id d9443c01a7336-218929814dcmr172477885ad.4.1734329135658;
        Sun, 15 Dec 2024 22:05:35 -0800 (PST)
Received: from thinkpad ([120.60.56.176])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1db63a6sm35073355ad.37.2024.12.15.22.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Dec 2024 22:05:35 -0800 (PST)
Date: Mon, 16 Dec 2024 11:35:24 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
Message-ID: <20241216060524.bc5fiwdyaxz4git7@thinkpad>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <20241216054953.kj43om6fbjksbjcy@thinkpad>
 <45CC5230-1DFD-4F7E-A0E6-F4FAC5586038@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45CC5230-1DFD-4F7E-A0E6-F4FAC5586038@kernel.org>

On Mon, Dec 16, 2024 at 07:00:16AM +0100, Niklas Cassel wrote:
> 
> 
> On 16 December 2024 06:49:53 CET, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
> >On Thu, Oct 17, 2024 at 10:58:35AM +0900, Damien Le Moal wrote:
> >> This patch series fix the PCI address mapping handling of the Rockchip
> >> PCI endpoint driver, refactor some of its code, improves link training
> >> and adds handling of the PERST# signal.
> >> 
> >> This series is organized as follows:
> >>  - Patch 1 fixes the rockchip ATU programming
> >>  - Patch 2, 3 and 4 introduce small code improvments
> >>  - Patch 5 implements the .align_addr() operation to make the RK3399
> >>    endpoint controller driver fully functional with the new
> >>    pci_epc_mem_map() function
> >>  - Patch 6 uses the new align_addr operation function to fix the ATU
> >>    programming for MSI IRQ data mapping
> >>  - Patch 7, 8, 9 and 10 refactor the driver code to make it more
> >>    readable
> >>  - Patch 11 introduces the .stop() endpoint controller operation to
> >>    correctly disable the endpopint controller after use
> >>  - Patch 12 improves link training
> >>  - Patch 13 implements handling of the #PERST signal
> >>  - Patch 14 adds a DT overlay file to enable EP mode and define the
> >>    PERST# GPIO (reset-gpios) property.
> >> 
> >
> >Damien, please wait for my review before spinning the next revision. Sorry for
> >the delay.
> 
> Mani,
> 
> This series has already been merged, and is in Torvalds tree.
> 

Doh! I was referring to the NVMe EPF series. Let me reply there (and also get
coffee).

- Mani

> Except for patch 14/14 which is a device tree overlay, so it should go via the rockchip tree.
> 
> 
> Kind regards,
> Niklas

-- 
மணிவண்ணன் சதாசிவம்

