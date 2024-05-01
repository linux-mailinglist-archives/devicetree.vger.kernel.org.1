Return-Path: <devicetree+bounces-64284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4D78B8C62
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4E4D1C20DD3
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 14:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAD6412F58D;
	Wed,  1 May 2024 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="HOoF+NRT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9C312EBC6
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575454; cv=none; b=QRS/QQccdQTijbVqLdgBIxe9PcwOpHHgO1DzFfGNWICld/NwO9+HzEAVFSHd4h/PSwIUi292XNADq6eUCPfFQjy1Z1i7Oofcj++JgbEt/vdZkFKuWneSaUcP81k1uyvRd1Bi95zzU+MfKQRXONXiWA5K06cls/Bjq795r0VBuY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575454; c=relaxed/simple;
	bh=ap3BJox/MGVOgxqCNy7fpIJSXCiWokvcBZnrVfJZjT4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QQbKgoCO3c/paFaXzYST4MUptTGXk50O5oIIcknvqOhR5MCI8LzKx42hMaZZWzm/p1QesqVfqWA06X9S1Z1anMLT5J6seeAnvZ1m/AZqoQelaAA2MRj0Be6iCF1uKc1LE2SJDRU68T2EXZs62JViZRA9up/QbBVjMas2+AT0cjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=HOoF+NRT; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-790f91b834cso275434485a.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 07:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1714575452; x=1715180252; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yMDuFgQIFZusBttFcIEeiK3dO+QLC27z5ORAgCsbWKI=;
        b=HOoF+NRTkf8cPp1HPVTa/V5KOkmGUnuM8FNW+ZEucrvVRizDSeLFkKBZROoOzxNCF4
         n33yNkaSdydbS1b3/8IYdH/HOZzrNzzYNBQF14eHvT8TgvYvx7gtvoNZ0igxXiTxuk6P
         adM+7ijguEhkjQgivQDLPws4moV+nPvGjU5W6G79rvXeNZ08wiGGrlIJ4lqYgk0A9EMs
         Ndhe2/AwLgYUx1EBqarKnj+us1MVaPheOS9nFMyaQHic+xBM7JndmP1uihelnJ4mbdR3
         PHCXb/afHLM/4PucqpXlf/pUzyFsn2foa936bOrw+0k6zfsVZBu9rXjfgDQMsgak9ksv
         VPAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714575452; x=1715180252;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yMDuFgQIFZusBttFcIEeiK3dO+QLC27z5ORAgCsbWKI=;
        b=Qv4vPThDV0MveA02ic8YfwgpjLSjYF9esKy+JPOUCADFB0w/B3hAl2Cz40PokCJiF1
         GgKD0y5CeFIxj9tKWuNWVbR6KqxNCzxosjeU2DzviNyu4VgccccBnEionLKSH71+eGHg
         Zf2kqLaS6RWMbDnt5ijV6z+Ii+8amCPErMJUpUUgDdaZoBOW0D36ZGudBTI9ioqL6qxR
         /gbPG7g6V8VR0htzKG2YGOBF5q1D1z3spVDF00aWCtkUNqiAWDTRfI2qd37DvmPyZsIi
         8hk0VsBMdFsAdTYSuADLf9lP46M2gnCavDXuz+SRFk/fBM7MYB315o+4gCPB84sWycjI
         dTug==
X-Forwarded-Encrypted: i=1; AJvYcCXGN9DPqZwUZSTec9+iiNtrQjKVPT7pkDsUj25kgX1hpa0XOyjM0BFq76Ow3XNZgAddPHxI6a7XSl+Py59nPowtlk2HJaEP1umOEw==
X-Gm-Message-State: AOJu0Yy8MPSvs57HUeC7wNXSUVywxXxm+JKOeBQ8FQR5RCINm03h0noq
	D0MEcmpUCNJEkvHmDUZjrYJeiwKwWo69JAlEvDjkvNb3js/crh/AI3OIo0zExqo=
X-Google-Smtp-Source: AGHT+IHmOIDK/Mldt2hAVSSoxj1UCLR3AUkPhDiQrlj4ZsACrgmp5YSJE5CUYE4eJ91yhllDRNrddw==
X-Received: by 2002:a05:6214:2486:b0:6a0:cb42:993d with SMTP id gi6-20020a056214248600b006a0cb42993dmr3978427qvb.23.1714575452398;
        Wed, 01 May 2024 07:57:32 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id g18-20020ad45152000000b006a0af6e25c2sm5039912qvq.94.2024.05.01.07.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 07:57:31 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1s2BOl-00DcLt-Fb;
	Wed, 01 May 2024 11:57:31 -0300
Date: Wed, 1 May 2024 11:57:31 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Tomasz Jeznach <tjeznach@rivosinc.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Anup Patel <apatel@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Nick Kossifidis <mick@ics.forth.gr>,
	Sebastien Boeuf <seb@rivosinc.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux@rivosinc.com
Subject: Re: [PATCH v3 5/7] iommu/riscv: Device directory management.
Message-ID: <20240501145731.GE1723318@ziepe.ca>
References: <cover.1714494653.git.tjeznach@rivosinc.com>
 <ce3b82a20db0b776685269674ce9b7a926d5680d.1714494653.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ce3b82a20db0b776685269674ce9b7a926d5680d.1714494653.git.tjeznach@rivosinc.com>

On Tue, Apr 30, 2024 at 01:01:55PM -0700, Tomasz Jeznach wrote:
> Introduce device context allocation and device directory tree
> management including capabilities discovery sequence, as described
> in Chapter 2.1 of the RISC-V IOMMU Architecture Specification.
> 
> Device directory mode will be auto detected using DDTP WARL property,
> using highest mode supported by the driver and hardware. If none
> supported can be configured, driver will fall back to global pass-through.
> 
> First level DDTP page can be located in I/O (detected using DDTP WARL)
> and system memory.
> 
> Only simple identity and release (blocking) protection domains are
> supported by this implementation.

Why rename the concept? We call it a BLOCKING domain, just use that
name please.

> +static int riscv_iommu_attach_release_domain(struct iommu_domain *iommu_domain,
> +					     struct device *dev)
> +{
> +	struct riscv_iommu_device *iommu = dev_to_iommu(dev);
> +
> +	if (iommu->ddt_mode > RISCV_IOMMU_DDTP_MODE_BARE)
> +		riscv_iommu_iodir_update(iommu, dev, RISCV_IOMMU_FSC_BARE, 0);
> +
> +	return 0;
> +}
> +
> +static struct iommu_domain riscv_iommu_release_domain = {
> +	.type = IOMMU_DOMAIN_BLOCKED,
> +	.ops = &(const struct iommu_domain_ops) {
> +		.attach_dev = riscv_iommu_attach_release_domain,
> +	}
> +};

'riscv_iommu_release_domain' doesn't make sense..

Jason

