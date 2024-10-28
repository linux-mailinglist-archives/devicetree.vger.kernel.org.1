Return-Path: <devicetree+bounces-116476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B3D9B3044
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:29:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 782B21C2189D
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1721DA0E3;
	Mon, 28 Oct 2024 12:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hT902mQE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F441DA2E5
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 12:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730118545; cv=none; b=erMblWhS9nBlrVPNnD0Hp4mXC9py+9VNgZJTZsh/61JIfc03M0ymIzLE66MzymZQqZnlxFW5p+9wE15oDEMmp7s9fE7VhEXLAyOjPLMOcI2ie23BGlVPG5yokT04BLE+PUeOQqsjBmPpK4mh+sECtJ+oTMbQ+WeZ2UhnhKmnOYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730118545; c=relaxed/simple;
	bh=jdiD+4YvVxe5A9U3JRwM1NrERMckSmmLcbMZEQoZewc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c0un7u32WAJP/bA3Bn+pp6hj++zaXdCluMC0RGZwOZ9eFFfkCzWvMyXcIRXctLIMrW7wiZ8GcrOQgXjGg0eQoqBVkFf/79DpuYXlIokILGjY4mz7XI1AvGFG3xUXjekPwWmIZSQIGRyDgJ7x98uNkkiOzuD6axZrIEily4a5CSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hT902mQE; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539e59dadebso4974638e87.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 05:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730118542; x=1730723342; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GcQJoiIk7CelcpwsD+uDY3x3UE1zm1ocbD5DK7VzGYA=;
        b=hT902mQEeiSj32kaPBdi4Ut5TeBe7BjnWvKT1S0ti8VD1g8mDFP1bS1/rtFzVgL9H8
         TH3hgU7wU1JTX5c4+1uN/CEY5mON267vwPw+OjQXwUZw2mAOD4pk6UMm338HpsnTCQy8
         r1PoQLmVwqJqO3ST9W7cZ5nnvvdAsBze/DCY/zeSxbv4t6fSL6bTo/AblONcsIEwrsfr
         IlZoa6Ql/gxzSPlgHXePrbqOknaij6GWMCZwhe3HZ3rOiruz7hi67OE4JZPOmoXtwkLM
         g0Sm4gJ5gxAezLp0r2KK7iUNThZPCY/PAaRHAOKKGuGBCMQYyazQZsAaNyYotbYuyHbM
         HBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730118542; x=1730723342;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GcQJoiIk7CelcpwsD+uDY3x3UE1zm1ocbD5DK7VzGYA=;
        b=I5jZA9BJdp6Umty4kdt3k79bbcWCcrjRVzv2oxuRMb40MejOEk2k0ZBl/xp6SHpisd
         4m6ZbyEHkzjT0tDdilXrQy98nvq+jZ99KI3z5EoT8J04kTPbfkFunGjuyLaEyV5f81nm
         zTghQXZmv9nJTcZmTiDbi7eNeQdSiS4dmkhTEuC7NMegHQdRnSZSLRGO5XiW/KOjbXqn
         JPsmoNyfaG7tFouth8aFSoKz4vNAtbUaKtAnFgVaJ+x7wvTrwhWT6T3/WSxoo62iFvXk
         3U7ByzaSW08mGIPVpq1/evgqpnV2FUKfgN+cRdE3h9MxTasPs2DTJs13og2MLYWspwUy
         NHFg==
X-Forwarded-Encrypted: i=1; AJvYcCXSLazM03UftedV7K8aAhnsZcDs2Q9OVwl8Y4v1YHchE3i47V5yg101SmjzaNU4JpUdtaUEVK24A/SN@vger.kernel.org
X-Gm-Message-State: AOJu0YwAnIZm/6kW0HL/+ojbeMyrggD9+0ESQOb2x+PmxCpK3+aZU37M
	c0y/09tIXV7fGZOXfLjRIf9IaMoC+YeeoC455pw9BBwF/xP0d7n5P/rUad9JF+4=
X-Google-Smtp-Source: AGHT+IFCxlmmj4PXNk8Ayq4JeRi/aB3fgQDvRaLLC2w/HfBqAL/CnTtv0LpWLs9ji3TRpHir9A4QqQ==
X-Received: by 2002:a05:6512:1304:b0:53b:1f77:e95e with SMTP id 2adb3069b0e04-53b34c5f595mr2981345e87.44.1730118541574;
        Mon, 28 Oct 2024 05:29:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1dcbbdsm1067212e87.236.2024.10.28.05.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 05:29:01 -0700 (PDT)
Date: Mon, 28 Oct 2024 14:28:59 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
Subject: Re: [PATCH v1] arm64: dts: qcom: qcs615: Add QUPv3 configuration
Message-ID: <my3im4zjjozoze4s5vkwlraailrd6njbof75acn7lqt5oxzgor@eu6aq2754uqf>
References: <20241011103346.22925-1-quic_vdadhani@quicinc.com>
 <15238992-4ede-4b85-9947-391baaa4c8a9@oss.qualcomm.com>
 <332f7a0a-d9df-49bd-81d5-cc04c50183b9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <332f7a0a-d9df-49bd-81d5-cc04c50183b9@quicinc.com>

On Mon, Oct 28, 2024 at 04:49:43PM +0530, Viken Dadhaniya wrote:
> 
> 
> On 10/26/2024 1:10 AM, Konrad Dybcio wrote:
> > On 11.10.2024 12:33 PM, Viken Dadhaniya wrote:
> > > Add DT support for QUPv3 Serial Engines.
> > > 
> > > Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> > > Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> > > Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> > > ---
> > 
> > [...]
> > 
> > > @@ -392,6 +427,24 @@
> > >   			#size-cells = <1>;
> > >   		};
> > > +		gpi_dma0: qcom,gpi-dma@800000  {
> > > +			compatible = "qcom,sdm845-gpi-dma";
> > 
> > You must define a new compatible for qcs615, sdm845 is used as a fallback
> > (so that we don't have to add new driver entries). You will however need
> > to submit a separate dt-bindings change.
> 
> We have added sdm845 in compatible due to below comment in driver file
> 
> File: https://github.com/torvalds/linux/blob/81983758430957d9a5cb3333fe324fd70cf63e7e/drivers/dma/qcom/gpi.c#L2284
> 
>   /*
>    * Do not grow the list for compatible devices. Instead use
>    * qcom,sdm845-gpi-dma (for ee_offset = 0x0) or qcom,sm6350-gpi-dma
>    * (for ee_offset = 0x10000).
>    */
> 
> Do we still require new compatible for qcs615 ?

You are not living in the void space. `git grep qcom,sdm845-gpi-dma`
immediately shows what is being expected. Please don't ignore existing
work.

> 
> > 

-- 
With best wishes
Dmitry

