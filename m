Return-Path: <devicetree+bounces-71841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A19A38D831B
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 15:00:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EAC01F22DF9
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 13:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F29A12D214;
	Mon,  3 Jun 2024 12:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JeLo/M+t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58D212D1FD
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 12:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717419563; cv=none; b=jo5rdJqAU0GFZG43/QBqiwCc8g2hyTsmGQFnduCkwsU7kW/4ZOna4nujn8P1iTqg3snJ6sdYZ3A2CnxIZV4UVe2O8xS02zLpyWxEHLaE8sz+psA+5//m8QB7aes2Qn+T1ETnJZ6TFuslLmXt4NvhtSDSTeil/QRoYqDn/ONy730=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717419563; c=relaxed/simple;
	bh=FyBQj0hG8ss9ZEv8V0JnRplnqLFC/O3chXUnsMv0bk8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kRUQdqGTFXmSVKSd8Dp9snIs23nSGD9NqFZwA9naUuAswWuIE5mGF115xH4fJrsO71g1SWovBLTXsNvWZMw7J1B4in5kVXJABUQCKZ03jx+ZnZq9s7D1MYUMmOxjYjRYASbk/Avwjh9uE6oyT401bTURANGnycYn55GyhE15/5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JeLo/M+t; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a63359aaacaso565907666b.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 05:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1717419560; x=1718024360; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IcEqjvHDHPrKWRNXO1NAMZemLV5LQ0B+lnFn7VKosBA=;
        b=JeLo/M+twDSGb/+JKEc1ziAuPex3mhlraQxyeFJDnRlEYnOe9dFET2OjkDM/OuEYjq
         cAxAtMI/ubK5Q+nt6wgCHg1qV9t/ucAeURl1PCk3SLSlC3ZeODP/o6FSd15Tfnx6WvIC
         lHOnw7DgNoSt2TniBXE16XR3m/B2n7f6Op5plUm/7WN9ITfODxKpPc9IlqhQUHBgTFUh
         Oo8LOAReVvhlw8lAZv5bHZ9JcFv/mgfanQd5MjrdJX3XG/did6lsU1UJgE7J1mu9v/ND
         TTv9a0M47y99aiqTqwBI54VN10SrVk4bq9v3T3gwzfxXOoDs4beGC0Aa1zsYVF+XpiQy
         j3QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717419560; x=1718024360;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IcEqjvHDHPrKWRNXO1NAMZemLV5LQ0B+lnFn7VKosBA=;
        b=UtysZrOhOi20r1EE/MnilzAb2s5JSAxPnMdKPAWEE4Wy/NVu1WXdTRRKHfh7KgkGiz
         xVQYKm9J75dm6KCMJrqZmAqYnhYdW1htL8JDKv/I+QbRsE1nAxkziwucbSH8W+XrjvNS
         u38g+L5/01/VC++cnlqvAuBhV1LDe8Q+itDf9iyHHYpJ+chNvmFeRnPf7sA+eHI4wQ64
         zaAtOFU+8rCTZJdVfoK9TtVLLQG6gRpexfBOdbqERcMT14UBbsB2StSr+Vz88sRaohqT
         eRiHpMyqxX+2Gyjc9Uxt7R4n8MNqcAI5VNFLOkdwkibCe2k//kPnTLhHTjBp8hDnB1uc
         R5ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8izm0tq2A+sUKi0JxuEEE9/TlckbsnNGv+3Y1O0iN8TD1Hf3OYW9bkwnZ2w4gCc/Jb76bWGFkEVXyK+s1thzTI6MEHKdhQAMPNg==
X-Gm-Message-State: AOJu0YwdPS7MW40zWC/UK1VYt37Hw8VyEdx0jTsne0f9gtHBYCFsyfoG
	hZ7TAYjOA0ThGSoIfiZFF2uRld2sAmTiiZoDHzL7L1SXhKJ3ohoxfjFaNq/q69q3MS+qDZSlkGd
	eRH4=
X-Google-Smtp-Source: AGHT+IHqmXxSxhfsZ5QLcPFpeXSzCRtTW99BPDOeKz6AZRkFkj434iSsteZACpuRGmGnksN+E2iRiA==
X-Received: by 2002:a17:906:d7ac:b0:a68:bae4:d66f with SMTP id a640c23a62f3a-a68bae4e717mr359112966b.30.1717419560024;
        Mon, 03 Jun 2024 05:59:20 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68b66c0c87sm347330266b.73.2024.06.03.05.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 05:59:19 -0700 (PDT)
Date: Mon, 3 Jun 2024 14:59:18 +0200
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
Message-ID: <20240603-d622cdac0016f1f854bf2b4c@orel>
References: <cover.1716578450.git.tjeznach@rivosinc.com>
 <7dcd9a154625704cbf9adc4b4ac07ca0b9753b31.1716578450.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7dcd9a154625704cbf9adc4b4ac07ca0b9753b31.1716578450.git.tjeznach@rivosinc.com>

On Fri, May 24, 2024 at 12:34:42PM GMT, Tomasz Jeznach wrote:
...
> +static struct platform_driver riscv_iommu_platform_driver = {
> +	.probe = riscv_iommu_platform_probe,
> +	.remove_new = riscv_iommu_platform_remove,

Hi Tomasz,

I think we should also support .shutdown (just turn the IOMMU off?),
otherwise the IOMMU driver reports EBUSY and fails to initialize when
rebooting.

Same comment for the PCI driver.

Thanks,
drew

