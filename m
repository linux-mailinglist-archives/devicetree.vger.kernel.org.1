Return-Path: <devicetree+bounces-116024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 796BF9B1A60
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 20:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA9B0B216F7
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 18:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60BB1D5AD4;
	Sat, 26 Oct 2024 18:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L9cvFgHf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E9D1D47AC
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729966716; cv=none; b=Xd3jyGKveZEFBog+paChLheoauS3LeZKgCmUOXIO9NVbqbabJM136/cuTX0Nydj0TygmCxQT2H0u0fchQpQFId9DA6oU/NdSDQv/DwRc1qAOrvGCkA1PjszQX7gZsLWMp9F9bOocZq0l+Iq3P4vvV9f1dDp2O9QLfDNTGvNhaJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729966716; c=relaxed/simple;
	bh=mLUZ286GPbKzQ1G8TxZd2G/6DT+8CQKrGlwx0R4zdyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Py2KSl9ZCnNT10S7NkbsiU/Gl9UalaTD9y5r3hkAgYL/8nqMuduFYk99Jv22RMjVWeE/o+pcPcUKotZ7KA7XeFLCgynxykt6MvBluluTtE2+cPFjjQVFJQBLvh4j+RHNoVFpTOwQ2VkylT4R30LUGFLdAc3SvJEtqqljYNtp0cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L9cvFgHf; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53b34ed38easo591208e87.0
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 11:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729966713; x=1730571513; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lr+0jRvi1NT0IJOuOscYHQQgaFgqgoi2S8/w67o5wxU=;
        b=L9cvFgHfI6ipBzSAdinQHFlfnZr2NeHxHFBsk9Tmq+WzxHVZir4aklhHyiwaIMTK94
         qWZRUtqyHuWEGS3l0buUbs4cwvyY/a5Ov6IkHz44kB/vwG4FRmd8tyCMXegCJtdMVT7v
         +5wnygnxsgR1t1ouDA+ul/uQ9jdvuvxtO/JZdWSlFMKmu+rrzmhVqdoUJlkAKWATyQg8
         /F5vbtICQ08U/fwDU0LLDaZIDosD+e+pWzS3iXdG/sykUnBTmhJD5AOWZsBxos2IaRQ5
         7QQDiPJj6kXC/hsb0UWBjb5ZnBelfKCVeIeCoAfrbDIwOTQPKIhSnNNDVgVd97Sr/D9z
         cwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729966713; x=1730571513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lr+0jRvi1NT0IJOuOscYHQQgaFgqgoi2S8/w67o5wxU=;
        b=qOO0kgYixlgYgj4iJpDQ6t1byOqhS2QDe2Iqx75e0ZroNRHo+qV52sBW1dCSBblYYK
         UEJ9KQMf77CNVVZ7bqac8A3x12nTEAEGN42+kOysyTTG/eTay0baL9Q707n2QJ2O5/t0
         ooIE3sKamxoymumIZxkWQYmrrIDWANooc9jtWvEzGae8JWK3qhBJ0wkJTDcekM4FV52H
         KLxR+FD6FbXXY7JJFK0XxT+Ygznmxo+g5S8QQ27K9WqgYSaO3pJ6f6SWMBCLNxOPrH/n
         PvG0UFTddyHKj/R+ohd4Juzd/0jEgmjOz4cxnAU86eeEUgxaGGONdnkLeFj/anG07Hwk
         UhwA==
X-Forwarded-Encrypted: i=1; AJvYcCXh4BNc0moUjLDhcoF6sjYqSz3aM3TldqKM92rXZiUXAW83U4oKDE1k83ZOBjI2N1LI2hoi1pRliTjj@vger.kernel.org
X-Gm-Message-State: AOJu0YwEKnb6GE76Q9SPBNNEncHXEkUWhpDT84ZyfcttgbwohAlSHnE+
	PCr4LpSWLt/uRjJZEtAqeakwD28b54Hx7jdzw/vsfhcqmFDs0MldxYx2pLwBLNk=
X-Google-Smtp-Source: AGHT+IHV18CqxOkaMvlzQe0OOHQoINVJqyxJyEeaJmdcBaU//KGhWUqaFp4ObZCcBr8YBYAq+CXG0g==
X-Received: by 2002:a05:6512:3b06:b0:539:f607:1d2b with SMTP id 2adb3069b0e04-53b348b7c7bmr1048338e87.7.1729966712681;
        Sat, 26 Oct 2024 11:18:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e124610sm567623e87.84.2024.10.26.11.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 11:18:31 -0700 (PDT)
Date: Sat, 26 Oct 2024 21:18:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Qingqing Zhou <quic_qqzhou@quicinc.com>, andersson@kernel.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	robimarko@gmail.com, will@kernel.org, robin.murphy@arm.com, joro@8bytes.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	iommu@lists.linux.dev
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: qcs615: add the APPS SMMU node
Message-ID: <nhthg2rlfatc2pyhsuoulvo5447cxg7buv4aq3r7r5amsmjjoq@pgfyvvegfron>
References: <20241025030732.29743-1-quic_qqzhou@quicinc.com>
 <20241025030732.29743-5-quic_qqzhou@quicinc.com>
 <8a60b729-b312-4afc-835b-a18060ad3f03@oss.qualcomm.com>
 <zsphor7rpbwx4km6uxpepky2h7atbgjn2435puygmpssfc36mc@wkquqxud2yij>
 <8c9804f2-ef4d-412b-97ea-f521dfd35ec2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c9804f2-ef4d-412b-97ea-f521dfd35ec2@oss.qualcomm.com>

On Fri, Oct 25, 2024 at 06:45:01PM +0200, Konrad Dybcio wrote:
> On 25.10.2024 1:06 PM, Dmitry Baryshkov wrote:
> > On Fri, Oct 25, 2024 at 10:54:24AM +0200, Konrad Dybcio wrote:
> >> On 25.10.2024 5:07 AM, Qingqing Zhou wrote:
> >>> Add the APPS SMMU node for QCS615 platform. Add the dma-ranges
> >>> to limit DMA address range to 36bit width to align with system
> >>> architecture.
> >>>
> >>> Signed-off-by: Qingqing Zhou <quic_qqzhou@quicinc.com>
> >>> ---
> >>
> >> You probably also want to mark it `dma-coherent` (see e.g.
> >> x1e80100.dtsi)
> > 
> > Is it? I don't think SM6150 had dma-coherent SMMU, at least it wasn't
> > marked as such.
> 
> I don't think I have any documentation on this, so.. one way to find out!

I don't have qcs615 at hand, so a purely theoretical question. But how
should it break if we mark it as dma-coherent, while it is not?

-- 
With best wishes
Dmitry

