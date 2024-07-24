Return-Path: <devicetree+bounces-87709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6057A93AAF3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 04:13:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98726B2352B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 02:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6972BF4FB;
	Wed, 24 Jul 2024 02:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n5y6AsFx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3F11804F
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 02:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721787188; cv=none; b=Crb6uO/UQJbyeGXYW+j7ie2OFIv/feFe16mPiYIEqiRpBgzeJh6Hi4wuOMGNPRf3JoJEmwEkBpccsrGjr1l93RKEj3G+SNvwuRLtwM6kmBHvrxzC6/X+LQgOi5spmY0PVOUDzH8sFFEuEf3H+reKrywMeNY+/2K9cKr/+TYXmoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721787188; c=relaxed/simple;
	bh=zxRx6PS/BB5neEVqroTn3GBIguriVgxJTg1YuD2hYqA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z7FbFfrt2n8sKXuXw58t2+IpzdkTHIcKKj016OwoGD2qZ7JC9A3VEN50q9SCxk3GY7TDmzl/hjpGMtRiRD6pbuECi2JLGarzDZ1eunIgQvOHNiLOCBOQvIZjH+1PiR3L+4SVi5xPs3p4W6YRQIRDX3S3X+REimGchvmOEs0dhGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n5y6AsFx; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52f01b8738dso2966727e87.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 19:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721787184; x=1722391984; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h54jAPwrOx54tpaQLg9+LwjbtZwsdB+FHhiP8Skn4II=;
        b=n5y6AsFxK2tTOlcCGBI7fZDDrKjL7gzf24y/a+YBD2RvytwBPve9Xk/mDVkR7TnPev
         1aT3omzfwlMtM/Of84MOVafiLXlcXzaFdhjJZEhGFt5PlXdbL+2d9hHy9+ncBRaTW4IL
         l0qGhakTD2n4Kx0wk/iDbpStenIqiFZY7xut07QSDKFQIncJL7IBbT7Dc7lXMgGHvrPA
         35vaEZ3OZ/NkCnBs+JKn7z+WhfUkzhgM/YnAXXE6nqq4rY69zyQJqEH553sErQ/liXjd
         b7pFb71Q4JnzyS14MXrXa1OSqel2cHLLDUv5a1lZR482zLjhJFsGdJyAejnAIioj0J0E
         CTsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721787184; x=1722391984;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h54jAPwrOx54tpaQLg9+LwjbtZwsdB+FHhiP8Skn4II=;
        b=T9UamHfH9GzvW9vxECiIWYekjpczWvSVC8gF80aWusq7wQtzaq3oCXsttliXjEksLF
         iVih8NM5/vHqEr//XjPGzXOqS1Xd8LE7FWcv476XlfkM1IOVlru004CNvFBHWqfRq2lo
         Pt94/0VD+cpLsLToNh+KO/VkEt4FxR1MnuHyCnfKa6upC4tdY/3Xf0n2mguU+hMEFdft
         K7WpzxzjQeI9jx4eQfSGiL+TBlWBeQQI0I30Ets26NOfXddFN8n6yVxZIZiaOEA8sh2K
         LLCWbt6aWcUgCN7WLLlFGjSkABcnXX1Q5TjnR5vml7hLuIiRBXHZCnc6MKeqlvqrCfb3
         NuwA==
X-Forwarded-Encrypted: i=1; AJvYcCWaiWYzhDi1IBJu0wQputTHqzOV4hzMT0kirBpARA9RueLiFDee3YBn4FKmPOHau2DTwJiX0RGY0J/dDi8yoyngolHxfOTXV5qMug==
X-Gm-Message-State: AOJu0YwxBkhrXnD7B9nhhyyj6C3IlTwLez0MlY2khh31HFE4QhGweC7C
	S0dXCQ/1jmPoOA4crYQV3DGiBQNU2Ib1sg8NiFM24mZq3zlc5/VU2gCbZXLTfNM=
X-Google-Smtp-Source: AGHT+IGe2gdDtP0jYuva3hSreTxdFinLmhIMcyMOvFMx/S7foul0J6nvmcN6d9USXnjaYe/LViYKnw==
X-Received: by 2002:a05:6512:3403:b0:52c:e180:4eac with SMTP id 2adb3069b0e04-52fcefea667mr362218e87.9.1721787184385;
        Tue, 23 Jul 2024 19:13:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fc51c5af9sm483686e87.148.2024.07.23.19.13.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 19:13:03 -0700 (PDT)
Date: Wed, 24 Jul 2024 05:13:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Mayank Rana <quic_mrana@quicinc.com>
Cc: will@kernel.org, lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, 
	bhelgaas@google.com, jingoohan1@gmail.com, manivannan.sadhasivam@linaro.org, 
	cassel@kernel.org, yoshihiro.shimoda.uh@renesas.com, s-vadapalli@ti.com, 
	u.kleine-koenig@pengutronix.de, dlemoal@kernel.org, amishin@t-argos.ru, thierry.reding@gmail.com, 
	jonathanh@nvidia.com, Frank.Li@nxp.com, ilpo.jarvinen@linux.intel.com, 
	vidyas@nvidia.com, marek.vasut+renesas@gmail.com, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, quic_ramkri@quicinc.com, quic_nkela@quicinc.com, 
	quic_shazhuss@quicinc.com, quic_msarkar@quicinc.com, quic_nitegupt@quicinc.com
Subject: Re: [PATCH V2 0/7] Add power domain and MSI functionality with PCIe
 host generic ECAM driver
Message-ID: <rzf5jaxs2g4usnqzgvisiols2zlizcqr3pg4b63kxkoaekkjdf@rleudqbiur5m>
References: <1721067215-5832-1-git-send-email-quic_mrana@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1721067215-5832-1-git-send-email-quic_mrana@quicinc.com>

On Mon, Jul 15, 2024 at 11:13:28AM GMT, Mayank Rana wrote:
> Based on previously received feedback, this patch series adds functionalities
> with existing PCIe host generic ECAM driver (pci-host-generic.c) to get PCIe
> host root complex functionality on Qualcomm SA8775P auto platform.
> 
> Previously sent RFC patchset to have separate Qualcomm PCIe ECAM platform driver:
> https://lore.kernel.org/all/d10199df-5fb3-407b-b404-a0a4d067341f@quicinc.com/T/                                                                                                      
> 
> 1. Interface to allow requesting firmware to manage system resources and performing
> PCIe Link up (devicetree binding in terms of power domain and runtime PM APIs is used in driver)
> 2. Performing D3 cold with system suspend and D0 with system resume (usage of GenPD
> framework based power domain controls these operations)
> 3. SA8775P is using Synopsys Designware PCIe controller which supports MSI controller.
> This MSI functionality is used with PCIe host generic driver after splitting existing MSI
> functionality from pcie-designware-host.c file into pcie-designware-msi.c file.

Please excuse me my ignorance if this is described somewhere. Why are
you using DWC-specific MSI handling instead of using GIC ITS?

> Below architecture is used on Qualcomm SA8775P auto platform to get ECAM compliant PCIe
> controller based functionality. Here firmware VM based PCIe driver takes care of resource
> management and performing PCIe link related handling (D0 and D3cold). Linux VM based PCIe
> host generic driver uses power domain to request firmware VM to perform these operations
> using SCMI interface.

-- 
With best wishes
Dmitry

