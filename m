Return-Path: <devicetree+bounces-111527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFB699F291
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 18:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80140B20DF4
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 16:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFC751B392A;
	Tue, 15 Oct 2024 16:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="E2a6/OG4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D266158DD8
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 16:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729009248; cv=none; b=XCFJYojjNCalfcp1+xF3uqr30rKOEtx5l+qO0N3wyyYBJrlHPQW0nm/KAY692SYp9OODIdCoCNZxlclANnWLSXAQWuYVCYx4s3mGepTLQzc5wf7vA02k7PLdsFZUAirpm/7tiiT4SqFxyZKvlGYq3zYZ28+J4J7tTiY85/OfAJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729009248; c=relaxed/simple;
	bh=GKD35OEDDKtMzVLFMvSyT8zat97kb+O+cKvE4YkLIpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CQDX0b7becFihtfgtv91LifQ1a8dc93ySgjh+yjMMdT48aTe1/HIYWPR2M9F8IJI4oXKv+2YfnFqzvB4V+raDryYMWOsCseId8eWbsF47MY2Ldz+l7H7L8ujzlMstJyiprO+SatyTKcPo0UD+R3LrLR11hNv/cQcHvrqotGwkNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=E2a6/OG4; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6c5ab2de184so35257466d6.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 09:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1729009246; x=1729614046; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DtJ+WCcZlnqJEtBJ5ahUedtheIBoZsN5YCfn7xZAGeE=;
        b=E2a6/OG4G8EWuQprTfXnJ+qwCOIV79DT8iN/++zEzUS/qJDMpHoKAFD3Kynk5+TgMS
         VffntilQkERhJp4SzlF5w+4KCW8G4LndS20G1ka2EI0RNcLQAFq67/5cAG1iz1UC+VXE
         5Gew4NiQYuuwXEPFHybVXIln9yqzWiEcr+9arj8BSGh2VtF5GD8q2nDe0N8D/Q1nDFTX
         rbCPnpSMmR/2lDvbBJKSPZDhH/WBGmQ64KKNtdRjYvpYLY0eeb+q3auXgR8uQfotJrPc
         2GjuBpHUho0OHJrpjjXDINtek2Ldnky7oDUNvasqBCCqeViFhw+cOU57vuDaxOODZRjE
         ewag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729009246; x=1729614046;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DtJ+WCcZlnqJEtBJ5ahUedtheIBoZsN5YCfn7xZAGeE=;
        b=n/foyCFKYioTsNDYcI95YYYoDPfh/uhcpK957oQ7dbZNiNzzaamegaMS3wNB+2O3al
         1l0+k/cio9nEKlNPmfYfPLpP2mMVDS5JsIp4kH4y4ZH+LZV0W0WmrW4ri4Cam/9zD5St
         pjsC2Ku4nRYADlb5e9Bs0BSOR3+tlnFE+7sh/p+Qxl2fDmjtaCVyBC+rmmR9VGGHB9uX
         ZR//v2Jai7pzAN0IYG9lrbtmMstwaOO7b9K5MV+JUT7FaWUjaprQJJ7ozcf9wmIXd4B4
         LcySfujaCdb67oBwiGrNY/hDHrQh0jJIgYvasQXH5r4z2UoKRaGV9OZ62OguaCtHcPqm
         UTYg==
X-Forwarded-Encrypted: i=1; AJvYcCWBsrtUlY6mrIvBMZEaU6LLUQM3Hf2BRR8M9sfQm/T/CTP8aZMqZXAS48xo/yrF3VlzdeUbTQ0sA3Jn@vger.kernel.org
X-Gm-Message-State: AOJu0YzBbER0x2qqZZJJRYc5vnn50SkRYYRYXqez8qC6WfMTda1GG6mw
	i+S02zL2IR3cofmeasWs/MFB90kY4k12GBwRQC7P9BS/Og1Iu0/fjuhZM86x65k=
X-Google-Smtp-Source: AGHT+IEOm3RZ0qr3XQeoZ584E3gMolo8dla+rxJiMl2IgTVjvh9zKfMlP0bSl5xGgTacD1zRpQZ8Zg==
X-Received: by 2002:a05:6214:4345:b0:6cb:ead8:c53b with SMTP id 6a1803df08f44-6cbf009b929mr198694786d6.31.1729009246110;
        Tue, 15 Oct 2024 09:20:46 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.128.5])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cc2291da47sm8321016d6.48.2024.10.15.09.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 09:20:45 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1t0kHt-00Dw7g-4A;
	Tue, 15 Oct 2024 13:20:45 -0300
Date: Tue, 15 Oct 2024 13:20:45 -0300
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
	linux-kernel@vger.kernel.org, linux@rivosinc.com,
	Lu Baolu <baolu.lu@linux.intel.com>, Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v9 7/7] iommu/riscv: Paging domain support
Message-ID: <20241015162045.GO1825128@ziepe.ca>
References: <cover.1728579958.git.tjeznach@rivosinc.com>
 <3d0f71ee9178c9fcb9d62db135776895a91c3d70.1728579958.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3d0f71ee9178c9fcb9d62db135776895a91c3d70.1728579958.git.tjeznach@rivosinc.com>

On Thu, Oct 10, 2024 at 12:48:10PM -0700, Tomasz Jeznach wrote:

> @@ -856,7 +1445,7 @@ static struct iommu_domain riscv_iommu_identity_domain = {
>  
>  static int riscv_iommu_device_domain_type(struct device *dev)
>  {
> -	return IOMMU_DOMAIN_IDENTITY;
> +	return 0;
>  }

Remove the function please instead of returning 0

> +static void riscv_iommu_release_device(struct device *dev)
> +{
> +	struct riscv_iommu_info *info = dev_iommu_priv_get(dev);
> +
> +	synchronize_rcu();
> +	kfree(info);
> +}

Just call kfree_rcu() ? We have a variation that doesn't require the
rcu_head now.

Jason

