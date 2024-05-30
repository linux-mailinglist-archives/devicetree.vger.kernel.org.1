Return-Path: <devicetree+bounces-70770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6C08D46EC
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 10:20:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0C291C21E4C
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 08:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D951B14AD25;
	Thu, 30 May 2024 08:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="X4MGssAO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4775C14387F
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 08:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717057222; cv=none; b=Atjyr4O+B9AlCCmXcCutyCDb1CIsHoW6+2fso8h0Oyp+qt1WEjcTKAWo1un6lEoghsRh6O0wK7VWzHLI3yiy5dX8O02i5h6dqZXgvTDNIM4stEkIth/56rmV/b0EjxZYFrIQRH8/7GgRk3WqwnqoqtNun6qRJTgbTOoqqNowD70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717057222; c=relaxed/simple;
	bh=9hQvbxkraGoQByyfnB/SKIQRAxtxMniFpbudb4R8J+8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WJbsK4Oi7Wv71mKLx3rgERROoSPTD5IC5ZCYjG/9KTXELZISNjlbO49bAYcRukb4H7bdpIWVR/UNYjMnimI0tBsy7jddNdEJSS7rSuE2C/cJ/QCdxoY1kho+yiF1gul2+KnpynKzCf6cbguCIEQJFY6EEU0MJpG3bkYtO6lQIww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=X4MGssAO; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-421124a0b37so3465585e9.1
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 01:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1717057219; x=1717662019; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xAFqwlnprskdijXg0+qVMxiHshvm9v4VwBvMivw4hqg=;
        b=X4MGssAOpP+ReUDeAySTOFHDO/FubL+QJxHVcC+a5OJ58ZwzkJT342ezkeV7bDetn8
         SVKOa2Is89YHjf8phSxz5TL66YMcs4GmIV2U7LzYpFptW+BZJX5eI36LX9nSCBuA4ofQ
         pRVlIr2VXuD9g7Pr2TWAcPxCZQ4RW7hMysILLojJ4SBHhKgasjYgjVwEsiaEq/1nEYrw
         vCy55gf0GJlHYukEXivVpxZ3Y84qni1uyOiSiK5M6bK+81FkBIPlS/ts+ljn/3N7TMa0
         +2JfLy3MuuetTFjE2Vb6sF49E4WdJ4yqEe7oj5228Pw2x57UHZpMCjEQRYTwYUq/4XGw
         vWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717057219; x=1717662019;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xAFqwlnprskdijXg0+qVMxiHshvm9v4VwBvMivw4hqg=;
        b=eZ3FvE9Au4jQh09IgxCMBpyi6x8hTBbdiazgM8FnEQK4kGmJp9my//feTrQoo9e+r1
         62/r5yVbSFRBrLT1RskACpExm6weOXINVMj3ePLJN6dquwkxISDxEaN3i1IH5RXoU62k
         TQ3KZ3J8ghNSNB9uWM3mDvdQZR9hJNVL6jvGr28e+yfhEk+XCnHrXL+pga8qgYcpF9O6
         +uR2ulmWXuq9D38r1YRVPGTZlro81ItX50SkQUDRcvLqwgzKgVouCyujG+x5prIBVgKq
         9a9bdAl2jaFMC9BeG1qkaHpegMg2bZgPQVbutNJ8dJLwRFD1KYe0mC4MNjcQkdmzwy47
         nNWA==
X-Forwarded-Encrypted: i=1; AJvYcCXk3J9FY5+r9Duo4woPQohJJv55s8L/0cZ8H3BoSr8H37waVeMpIYylUQUkGfnCxPH0rIlPSak11apoyXbPvd4lqqF//4xNv1Hpqg==
X-Gm-Message-State: AOJu0YztIkqa1kEpHuG7NA/6cHRH8I9zAaq1FxcnWL8mFlwOz9eqOqiJ
	ybME1hBTofzHZZpEP7ADOhRDm5UjJTBNH2D0D+qL9Hzy+Q8n0T+lp4O48ZfseZY=
X-Google-Smtp-Source: AGHT+IG1keazYzeuDlTEJWYo0DNz5z0le/1L4QF2tlIZz4H3UjAuU4J130ihkcGjOo2htfDSVAmo6A==
X-Received: by 2002:a05:600c:45d4:b0:421:2241:5be3 with SMTP id 5b1f17b1804b1-4212780a865mr16402325e9.5.1717057219466;
        Thu, 30 May 2024 01:20:19 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4212708a6fbsm17283305e9.44.2024.05.30.01.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 01:20:19 -0700 (PDT)
Date: Thu, 30 May 2024 10:20:18 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Tomasz Jeznach <tjeznach@rivosinc.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Anup Patel <apatel@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Nick Kossifidis <mick@ics.forth.gr>, Sebastien Boeuf <seb@rivosinc.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, iommu@lists.linux.dev, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux@rivosinc.com, 
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v6 2/7] iommu/riscv: Add RISC-V IOMMU platform device
 driver
Message-ID: <20240530-af20943d2b372faa7b11ed41@orel>
References: <cover.1716578450.git.tjeznach@rivosinc.com>
 <7dcd9a154625704cbf9adc4b4ac07ca0b9753b31.1716578450.git.tjeznach@rivosinc.com>
 <20240529-08fd52a8e703418142bdfa84@orel>
 <CAH2o1u7DmywajQWRnQEW2Zjw95EzruM3_Mb5Z-K4zJChh8pGLQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH2o1u7DmywajQWRnQEW2Zjw95EzruM3_Mb5Z-K4zJChh8pGLQ@mail.gmail.com>

On Wed, May 29, 2024 at 10:59:58AM GMT, Tomasz Jeznach wrote:
> On Wed, May 29, 2024 at 8:15 AM Andrew Jones <ajones@ventanamicro.com> wrote:
> >
> > Hi Tomasz,
> >
> > I reviewed iommu-bits.h to the spec. Most naming matches exactly, which
> > is nice, but I've pointed out a few which don't.
> >
> > Thanks,
> > drew
> >
> 
> Thanks for looking into this a bit boring file.

No problem. I also meant to point out that I checked all bits/offsets as
well. They all looked good to me.

...
> > > +enum riscv_iommu_fq_ttypes {
> > > +     RISCV_IOMMU_FQ_TTYPE_NONE = 0,
> > > +     RISCV_IOMMU_FQ_TTYPE_UADDR_INST_FETCH = 1,
> > > +     RISCV_IOMMU_FQ_TTYPE_UADDR_RD = 2,
> > > +     RISCV_IOMMU_FQ_TTYPE_UADDR_WR = 3,
> > > +     RISCV_IOMMU_FQ_TTYPE_TADDR_INST_FETCH = 5,
> > > +     RISCV_IOMMU_FQ_TTYPE_TADDR_RD = 6,
> > > +     RISCV_IOMMU_FQ_TTYPE_TADDR_WR = 7,
> > > +     RISCV_IOMMU_FQ_TTYPE_PCIE_ATS_REQ = 8,
> > > +     RISCV_IOMMU_FW_TTYPE_PCIE_MSG_REQ = 9,
> > > +};
> >
> > RISCV_IOMMU_FW_TTYP_* for all above
> >
> 
> I guess RISCV_IOMMU_FQ_TTYP_* to match _FQ_ acronym.

Oh yeah. I guess my eyes had glazed over at this point because I didn't
notice the 'FW' vs. 'FQ'. So, yeah, we want RISCV_IOMMU_FQ_TTYP_* for all
above, including RISCV_IOMMU_FQ_TTYP_PCIE_MSG_REQ.

Thanks,
drew

