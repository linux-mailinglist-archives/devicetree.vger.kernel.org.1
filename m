Return-Path: <devicetree+bounces-186420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD48ADBBF7
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 23:32:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E66221892658
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 21:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5CDD217F36;
	Mon, 16 Jun 2025 21:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="h30leDPJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196872CA6
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 21:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750109572; cv=none; b=ntgjvdp+1pxK4THBTc0tdisSC1gbmFwGuZcwX363qmKihAquqYjvJwvOm3cAU87aOrj0sFlLvDbBliJxUC0f96ymuTD0+xdD3JrsfSeL7T2aYVjj0QXaoNTNsARitk0wWV/e9dak6Blyi8FKYbyVGuSNoN+BUQvVXouJXXUYJtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750109572; c=relaxed/simple;
	bh=1daXkcpedeVMkdfibmjOiKjSGHv5H5jAWkH3U7rNLWY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HqNS3GhQhE2J/4nSsfSe3FjDBUBIE88v6svpnBaIlfEadoPN5S8SRnwJ04KVVL623XTDcxKMfyLp5bpNAF42D0l8M4Lp2H0VrLXd0fYyJLYxfxqt+Ag3yPDq1bEEo99CFjjTxDCyotIomZ+dae4uBl210qH89WS0vYYhMG4Dj8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=h30leDPJ; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-235e389599fso67575ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 14:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1750109569; x=1750714369; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=diaMMomGVSeMyl9b0SDQ+0jS5CqmoXFRYMyDr82RfPg=;
        b=h30leDPJKwfat85XPkRXpJLknslyBZB1MxEVPBFu5/677ECoPMwlaFA4qkv6FXoHje
         nAVhrPCuhlvL4Md56oo3xGPjbf4RA7mQC3khlai7WBQB6jYOQIF7rrsWV8qDnH0AYe1l
         TCd/qQfUKUYlcGEePQ+T+YwjkBExpcLR4sERQsRm+FQn5Xnh8d/dNpdk/hsZfUdotQeL
         9V9uVmecMSqFC6jnVflqsVDxC6Zfri4WSNDMQeEBhGo3sktbV+uOXWqrzNjT8Z3bMVjL
         vf+O0O3wf1eyCtQYHrf7gd2C11wbXhWknuhaO3eUsmtyYu7Ml+v4bM9W/oq6cqqSQ7G/
         1RVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750109569; x=1750714369;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=diaMMomGVSeMyl9b0SDQ+0jS5CqmoXFRYMyDr82RfPg=;
        b=MMqqEU6UB54oEpqw68mzpf78RJnSFokdXFJZGUVdijLUbrBAwuZK2KDrL40M83Jltp
         BOJx1dMPx4dm3FSYSvfTYTjUCWS5hJ/njDN1DyVT1fMN2u/Lfy0WPJ6HxBDcDnGc2wH5
         mFH7xs7egdH6kWCNWrLWfE8mK5AIs1+ksptQ4H+sBjpugTHPTlmDG61LWMdzuaA4uHXF
         ABeeBfPBAOfPOQXxpi8pjAj6Q3fC5Hv7f66DOpRx28i8+Grx+AeCtucH/ryX3FUYJ0gC
         kSHJmvx4iM9FjyMg/hUT3T6/42IP1Aa28Dp0Xu/EmwM3ejqJUe49esm2bc6udFP2h04Q
         ZKJw==
X-Forwarded-Encrypted: i=1; AJvYcCU7KbUlrKIivnlJg44lSfJfQERkQjvhEgG9kiYQhQRoYsoJUXfuZYZ0UpGVlqOPyaCRzYg9e7j7JQlw@vger.kernel.org
X-Gm-Message-State: AOJu0YxC1GEeCYAHcN01GYmux7vcvWMdWM8KB2Kxf00ni3k2qeBSshLX
	tZbd3S6nT1zS0uy69xlBWRl+XUjazxvgS1nusrvLHGxUAGak+eSJV8Tizh85HiczwQ==
X-Gm-Gg: ASbGncszxgzEd2u2qxwTN4IwV5R/0KwrLnJECJMrhGxrNChRnU/z+yhH5UJ8ovNgT8g
	UCb2g2s3ROat8PtrPEpyN2Fdi+2+f6gW62AXiurX4k693/QVDx88w9u73IA0L8UZ+Qs1lPARbeM
	KEKgsq70cNda3ujf5TFVfZ+nugtdfZrn4Wa11ObhhRbfOWC/a2pf4s4+KeL3qJmyTJgKZ+sru4Q
	BqalE4wwWzu+laXszfLTQkPfyqG0rM8x9zUiMr+a1MpCRbfcsrFCuil3NAeLFH+4PZO3Env1Rkr
	goEQHUGrfBJ5mr3wUtTWcDI1wEznfPKP8Ai+MxM/nx8ab1dOFi0h6ScC4FGCKYX7VyyTbPRLYpi
	N3MyM0wRkAoGetjF2uPCr
X-Google-Smtp-Source: AGHT+IFWcQvoP+9fcVVp+c/nzrucrkTOoV642VxsR9D43oNtEPpmRjh6B8M7BM1aG3k8myNk+wmbkw==
X-Received: by 2002:a17:902:e74f:b0:21f:631c:7fc9 with SMTP id d9443c01a7336-2366c4f491bmr6716645ad.0.1750109569076;
        Mon, 16 Jun 2025 14:32:49 -0700 (PDT)
Received: from google.com (232.98.126.34.bc.googleusercontent.com. [34.126.98.232])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b31886377a6sm5271665a12.71.2025.06.16.14.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 14:32:48 -0700 (PDT)
Date: Mon, 16 Jun 2025 21:32:40 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Xueqi Zhang <xueqi.zhang@mediatek.com>
Cc: Yong Wu <yong.wu@mediatek.com>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Project_Global_Chrome_Upstream_Group@mediatek.com,
	Ning li <ning.li@mediatek.com>, linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, iommu@lists.linux.dev
Subject: Re: [RFC PATCH 5/8] iommu/arm-smmu-v3: Add IRQ handle for smmu impl
Message-ID: <aFCNeOP7oRv7NRjQ@google.com>
References: <20250616025628.25454-1-xueqi.zhang@mediatek.com>
 <20250616025628.25454-6-xueqi.zhang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250616025628.25454-6-xueqi.zhang@mediatek.com>

On Mon, Jun 16, 2025 at 10:56:11AM +0800, Xueqi Zhang wrote:
> Add IRQ handle for smmu impl
> 
> Signed-off-by: Xueqi Zhang <xueqi.zhang@mediatek.com>
> ---
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c | 9 ++++++++-
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h | 8 ++++++++
>  2 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> index d36124a6bb54..154417b380fa 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> @@ -1954,7 +1954,8 @@ static irqreturn_t arm_smmu_evtq_thread(int irq, void *dev)
>  			arm_smmu_decode_event(smmu, evt, &event);
>  			if (arm_smmu_handle_event(smmu, evt, &event))
>  				arm_smmu_dump_event(smmu, evt, &event, &rs);
> -
> +			if (smmu->impl && smmu->impl->smmu_evt_handler)
> +				smmu->impl->smmu_evt_handler(irq, smmu, evt, &rs);
>  			put_device(event.dev);
>  			cond_resched();
>  		}
> @@ -2091,7 +2092,13 @@ static irqreturn_t arm_smmu_combined_irq_thread(int irq, void *dev)
>  
>  static irqreturn_t arm_smmu_combined_irq_handler(int irq, void *dev)
>  {
> +	struct arm_smmu_device *smmu = dev;
> +
>  	arm_smmu_gerror_handler(irq, dev);
> +
> +	if (smmu->impl && smmu->impl->combined_irq_handle)
> +		smmu->impl->combined_irq_handle(irq, smmu);
> +
>  	return IRQ_WAKE_THREAD;
>  }
>  
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> index 99eeb6143c49..f45c4bf84bc1 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> @@ -792,6 +792,7 @@ struct arm_smmu_device {
>  
>  	struct rb_root			streams;
>  	struct mutex			streams_mutex;
> +	const struct arm_smmu_v3_impl	*impl;
>  };
>  
>  struct arm_smmu_stream {
> @@ -998,6 +999,13 @@ int arm_smmu_cmdq_issue_cmdlist(struct arm_smmu_device *smmu,
>  				struct arm_smmu_cmdq *cmdq, u64 *cmds, int n,
>  				bool sync);
>  
> +/* Implementation details */
> +struct arm_smmu_v3_impl {
> +	int (*combined_irq_handle)(int irq, struct arm_smmu_device *smmu_dev);
> +	int (*smmu_evt_handler)(int irq, struct arm_smmu_device *smmu_dev,
> +				u64 *evt, struct ratelimit_state *rs);
> +};

Let's add these to the exisiting struct arm_smmu_impl_ops and invoke
them like:

	if (smmu->impl && smmu->impl_ops->combined_irq_handle)
		smmu->impl_ops->combined_irq_handle(irq, smmu);

Or maybe we could merge the existing impl_dev and impl_ops into a single
structure.

> +
>  struct arm_smmu_device *arm_smmu_v3_impl_init(struct arm_smmu_device *smmu);
>  #if IS_ENABLED(CONFIG_ARM_SMMU_V3_MEDIATEK)
>  struct arm_smmu_device *arm_smmu_v3_impl_mtk_init(struct arm_smmu_device *smmu);
> -- 
> 2.46.0
> 
> 

