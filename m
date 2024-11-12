Return-Path: <devicetree+bounces-121264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B0C9C5FD4
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 19:03:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 096D2287D2C
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 18:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCB5B2185A0;
	Tue, 12 Nov 2024 18:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PSE7KSem"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E78B218310
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 18:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731434490; cv=none; b=hrz+wj4QWDe8yQPdRS1fEDsIJWzskYZS+C5sb2on/daW1etVqzh1e2kYq5SyafAKHHkdfesSLfg6nG/8E6cWjNbLkkTG7bIzLPhIsUMntEuUkZ3qwk3lUXfxiqxJO1iOebKRa948GYxXFG5T1TsRQe4ASjGau0vetD19+1M4z/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731434490; c=relaxed/simple;
	bh=nOVKKuvXUcR25DPN3l1wOkt2GU1wHgzTIanXM7meNTM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DTt7W1tO6VGLqAE+TEaq8Q3lbTA+lqKRvxtjAI8z+p79V9QQfDwFjONz2+qJDQoZBsy5MgIedgXyzLcFyUqbNT26lHT7IZP1SuQf28Yn6sjl15XAUaEnJ0NFxoQoDbTFkrtlbHQH0czz/XO9wI7KPRuVxp+AL3LUm/TYCpa2Jbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PSE7KSem; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2e2ed2230d8so4785401a91.0
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 10:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731434488; x=1732039288; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lbAitaWBPhoWxH4bj4NOaD1/IoLABk7tVUOSRiI/Nhw=;
        b=PSE7KSemIU1JkTh6CD+6WI+1pP7AeQWo/02O6PMdO28HR2m42z3ImBJM0H5qCFqEUr
         fyUcsrW2plnv0cRchCwL1Ea/FowMBZoHBYe0m9RLtGLaIeYCneJy916ejCl8v1u0u0ZP
         Gs5TpE+zbAoQOZnJEC4lxtLzHl/pmmU6vFvOy9BmC5sWcUMw2ZBvthqd1qxO6y62CkO3
         qc5umQKnjTFhdR9vCQ7M9xbqt0AhePNOyOXAo54yTjkukXpqSjVGzIWgbo4Muap4rTyk
         8p4/AtVR406MTvq7rTR5IoJ6I9S07SjvJHm8sY9cLTR9b2q7feOYnol9kJU0M/nd4ruv
         opjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731434488; x=1732039288;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lbAitaWBPhoWxH4bj4NOaD1/IoLABk7tVUOSRiI/Nhw=;
        b=PfKMPkrV2ZDkHVMQ8YBqaD2+cl+UfYuP7abxeCIiYM+mQ3/5k95ubHQeFRUWUYpowf
         WxiAZAfccTdG3LDCEyPpttAR/3CjKIj0iSBh2XSW0lIMMoBZK3dLex0GUQj6Hl9FM2vc
         XUq71RVNGiKos2Zm6X76QfAYZERTCIdKgzbHbBiEjIuVOB4k494c4XPiZFRh5/HDVZ7o
         lb+rKAoIQIAx8F+S/QiD/OBoA8HxD3aT+0ToAfoO/+Xfoi7oWu2JMBUXcAPVfn9hEjSY
         SmW7CYszvdMcHhOSwHNoKuW/u2jYTF+rBbxcCDjcP04ZYWpINtOdtzfs6DTUEvDItG8k
         aCoQ==
X-Forwarded-Encrypted: i=1; AJvYcCX57PXSsACVufoa2oBxYG+VTXAApPTKml2tV9s6Be/yPaPlyvIDS8z3QKghSnHrzgc0B4NQg7JSZd6N@vger.kernel.org
X-Gm-Message-State: AOJu0YzCwdrYDoFxB6GjS95GnTStAOHfBcWvYhWqirR4iCPwG6mxWm3/
	XeN/zpqB+eTpb37RfqclCWPdbhYULXES2J4uCldiYlqZxrC8I+skq7+X+ypMPA==
X-Google-Smtp-Source: AGHT+IGca3hgSODbdD3FEl5POWQHtDbW0nz1PIxvyp10V1YZFiQ1NdV6ppvh4sdUZbzacBs0F6PQjg==
X-Received: by 2002:a17:90b:4d0f:b0:2e2:e91b:f0d3 with SMTP id 98e67ed59e1d1-2e9b17730f0mr22453864a91.29.1731434486819;
        Tue, 12 Nov 2024 10:01:26 -0800 (PST)
Received: from thinkpad ([117.213.103.244])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e99a4f6cacsm12941914a91.10.2024.11.12.10.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 10:01:26 -0800 (PST)
Date: Tue, 12 Nov 2024 23:31:18 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on
 pre-SYSTEM_SUSPEND PSCI impls
Message-ID: <20241112180118.pcn7sf6r3mswwwxf@thinkpad>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>

On Mon, Oct 28, 2024 at 03:22:56PM +0100, Konrad Dybcio wrote:
> Certain firmwares expose exactly what PSCI_SYSTEM_SUSPEND does through
> CPU_SUSPEND instead. Inform Linux about that.
> Please see the commit messages for a more detailed explanation.
> 

It is still not PSCI_SYSTEM_SUSPEND though...

> This is effectively a more educated follow-up to [1].
> 
> The ultimate goal is to stop making Linux think that certain states
> only concern cores/clusters, and consequently setting
> pm_set_suspend/resume_via_firmware(), so that client drivers (such as
> NVMe, see related discussion over at [2]) can make informed decisions
> about assuming the power state of the device they govern.
> 
> If this series gets green light, I'll push a follow-up one that wires
> up said sleep state on Qualcomm SoCs across the board.
> 

Sorry. I don't think PSCI is the right place for this. Qcom SoCs have a common
firmware across all segments (mostly), so there is no S2R involved and only
S2Idle. If you use PSCI to implement suspend_via_firmware(), then all the SoCs
making use of the PSCI implementation will have the same behavior. I don't think
we would want that.

For instance, if a Qcom SoC is used in an android tablet with the same firmware,
then this would allow the NVMe device to be turned off during system suspend all
the time when user presses the lock button. And this will cause NVMe device to
wear out faster. The said approach will work fine for non-android usecases
though.

I have a couple of ideas in mind that I will post to NVMe list itself.

- Mani

> [1] https://lore.kernel.org/linux-arm-kernel/20231227-topic-psci_fw_sus-v1-0-6910add70bf3@linaro.org/
> [2] https://lore.kernel.org/linux-nvme/20241024-topic-nvmequirk-v1-1-51249999d409@oss.qualcomm.com/
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (3):
>       dt-bindings: arm,psci: Allow S2RAM power_state parameter description
>       firmware/psci: Set pm_set_resume/suspend_via_firmware() for SYSTEM_SUSPEND
>       firmware/psci: Allow specifying an S2RAM state through CPU_SUSPEND
> 
>  Documentation/devicetree/bindings/arm/psci.yaml |  6 ++++
>  drivers/firmware/psci/psci.c                    | 44 ++++++++++++++++++++++---
>  2 files changed, 46 insertions(+), 4 deletions(-)
> ---
> base-commit: a39230ecf6b3057f5897bc4744a790070cfbe7a8
> change-id: 20241028-topic-cpu_suspend_s2ram-28fc095d0aa4
> 
> Best regards,
> -- 
> Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 

-- 
மணிவண்ணன் சதாசிவம்

