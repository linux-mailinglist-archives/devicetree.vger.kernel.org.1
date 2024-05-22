Return-Path: <devicetree+bounces-68310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA718CBCA2
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 10:07:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B1461C20D51
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 08:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31AAF7E56B;
	Wed, 22 May 2024 08:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="gx4EmXa2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974C8770FB
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 08:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716365239; cv=none; b=L2wW1/jq+jZn9uzyJNcwJNDjpvwrs1ZtaKoFdUFf0aELnndFHDMjh4cxZNpp3V9q+RpbImPDZ9aczqzE1TguU0CmLB57MiyTrJZgHvUOJUSTjA/CmoXmTr3pWoSeUA1peI6SF3FkT4OIkt+CIjnVLtJDpqNIFkuUMIZWy1byW2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716365239; c=relaxed/simple;
	bh=VrTo7xQk3wunpQg4mIDCXYkOoCzhSbxT4fGAOU8jY1w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VGCqln9HW3XEwmHfZxVlGMTJUA2pUf+uVnC9Hq7zCTXhJEk5wqaivlDol7ucwkIpnmBt4nKjMUYGc6wvJ8gP1pALtuWfajr/f5yFI1DVo7fgLMToXeiwtk2KLJw1L+om/AHRTO8SfEyqubJaOWOlEmv0K5Izmgo/RB06LDCtL8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=gx4EmXa2; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-56e48d0a632so13217163a12.2
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 01:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1716365236; x=1716970036; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EjJc7AAlreo5EdXOmmG11eZiUCAvljdqIc2K+uOGIsQ=;
        b=gx4EmXa2x77TN3MEWjbD1qbv5nOlStBOykoJnoTY4fK5W3l6/lH+rgTZVUzSCC3KhH
         I9eo19liGA7MZFDpLEmzD+aKp3VgsnWvE+e/h1gnA/rTCSRHf1VJDvCpry2qbh3rc0+n
         3MJdnjLgVTJUTp7PaAqxUvEmnJbaE0lnS/XiSUnA8R5V3C5cxN2p97kN/6heg3Xrz16o
         YRyZlfRvZwDabg7DO7Sbg9+aCl2MnShhHKgKWWDmMzSpBlpDhWKp++BwMlqUa4bQ/Qrq
         pkM+G1At+Ig1G8EnFJ/Ux+Iz7j2/oslc0O83bOVLCSvYJnI1Aardre7l/GVPV9U3Z9lu
         Hnew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716365236; x=1716970036;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EjJc7AAlreo5EdXOmmG11eZiUCAvljdqIc2K+uOGIsQ=;
        b=d1HvkRkuRRlFHkbTBleH/cUsGbL+mgSJTrStRrmEnEhMhhXd8P4xy5O4e8ccCyzI+a
         UPKjA9caSI5tkHsBHd410b6YGbB1Ib71dYklxqYqrotYUvhni49uxhktK0GMxPU/MpRo
         2wrhl0K1vkjWJXEW1xP8yGmF2iGrBGwj1x+wKgoP0S22QrPJ/q8B52WYIIh1JcgslBe3
         C4n+S+IOmYLw3oVctfrwlWD8gmWcLecyZOCs/eO6A/SiX5a5IZakMvKrYnSROmjT54Fi
         f76y4MQqDJp+sZL4l0/OaGHzZ5dWKPnSkeinCWu1eti+ic9kk5lhrfuPxlgh6eI8RkIv
         cIlA==
X-Forwarded-Encrypted: i=1; AJvYcCU0kiZz6A3shuQpGV7wPKSZ1efbLmrZf4vpzBAwRwE0dNUVu5JjyFAUsLVCiEmQQwv7Qb5WdJPmWfBhBe80aVZmH38UbcpmcU8AFQ==
X-Gm-Message-State: AOJu0YyPJe6++U08YhWjb+WzOhZLxt1mJpwhsEIagWmqnuQ2bCUVXm2X
	nMpcMq3EcRzZZ6IaZ3WGrvboqsBn4mRLnT4zxnw+NTeADvNlPOHZhnAJYL4l/zA=
X-Google-Smtp-Source: AGHT+IFxkk46rQN7LJxAzq5cGNXR84hroJkBlxdzGPSkPpe2syhCs/1Mf1/sjeCOL+ArtyBeWNzrvw==
X-Received: by 2002:a50:ab4b:0:b0:574:ecc4:6b54 with SMTP id 4fb4d7f45d1cf-578329c7ca3mr1206147a12.9.1716365235959;
        Wed, 22 May 2024 01:07:15 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733c323887sm18071800a12.89.2024.05.22.01.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 01:07:15 -0700 (PDT)
Date: Wed, 22 May 2024 10:07:14 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Tomasz Jeznach <tjeznach@rivosinc.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Anup Patel <apatel@ventanamicro.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Albert Ou <aou@eecs.berkeley.edu>, linux@rivosinc.com, linux-kernel@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Sebastien Boeuf <seb@rivosinc.com>, iommu@lists.linux.dev, 
	Palmer Dabbelt <palmer@dabbelt.com>, Nick Kossifidis <mick@ics.forth.gr>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-riscv@lists.infradead.org, 
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v5 7/7] iommu/riscv: Paging domain support
Message-ID: <20240522-b25680db03b547123f1cd59a@orel>
References: <cover.1715708679.git.tjeznach@rivosinc.com>
 <1ddb50a47c86d384157a979a7475b45f807ba81e.1715708679.git.tjeznach@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1ddb50a47c86d384157a979a7475b45f807ba81e.1715708679.git.tjeznach@rivosinc.com>

On Tue, May 14, 2024 at 11:16:19AM GMT, Tomasz Jeznach wrote:
...
> +static int riscv_iommu_bond_link(struct riscv_iommu_domain *domain,
> +				 struct device *dev)
> +{
> +	struct riscv_iommu_device *iommu = dev_to_iommu(dev);
> +	struct riscv_iommu_bond *bond;
> +	struct list_head *bonds;
> +
> +	bond = kzalloc(sizeof(*bond), GFP_KERNEL);
> +	if (!bond)
> +		return -ENOMEM;
> +	bond->dev = dev;
> +
> +	/*
> +	 * List of devices attached to the domain is arranged based on
> +	 * managed IOMMU device.
> +	 */
> +
> +	spin_lock(&domain->lock);
> +	list_for_each_rcu(bonds, &domain->bonds)
> +		if (dev_to_iommu(list_entry(bonds, struct riscv_iommu_bond, list)->dev) == iommu)
> +			break;

We should wrap this list_for_each_rcu() in rcu_read_lock() and
rcu_read_unlock().

Thanks,
drew

> +	list_add_rcu(&bond->list, bonds);
> +	spin_unlock(&domain->lock);
> +
> +	/* Synchronize with riscv_iommu_iotlb_inval() sequence. See comment below. */
> +	smp_mb();
> +
> +	return 0;
> +}

