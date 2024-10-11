Return-Path: <devicetree+bounces-110397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC6699A537
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCE811F251AE
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 13:37:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422DB804;
	Fri, 11 Oct 2024 13:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NIqsoIKv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84650216A3B
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 13:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728653822; cv=none; b=X22wXQ3Wy9qFOlhGsthKgRRqm47g8hhcckUR3fNIhmGXedIPKICDDTK7uUQaPLDzB1KKQu9xgcq2duRD4C0PsekaCjVhGlrexNmREHL6XRyceiTB0qUb14NN41aFfb5j+Lin+Y3dtlz+NbLd2E3pbv9nMiL8QG8X8KOFEIIUi6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728653822; c=relaxed/simple;
	bh=SAhP6ZeDNEgR1+A/kJ8320h3rWrwnh7Se7+LoNaV7jM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ufkAxHHduHL8MYz6PJT3Cfj+2BEfBeGX5+xKDXuWLAoMj1w8gE1g8ynCUchYhQXtDwHIoISPqTPG3I4HsdZyLQLPXBaAlvJPn5MYjsS/J8u9E9N0f/xDUygVUevtoxn98fEIY8DG6KRDq+lh3LU/iyU8ZeuAEwXxs6/kadl6kT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NIqsoIKv; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539d6935b93so1287395e87.2
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 06:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728653818; x=1729258618; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LLXvMXXy+onUMhQ6b0XOwwTzakrzaQZRd+ecTFnJkKU=;
        b=NIqsoIKvGCOiBxo4kTXCl82SIZkw+wuf10CVrZKHd0xPjQF0vzj0uCDPHsPxrXi0ZC
         jNMIbXt+pexLbk/3+7r398dDmFfKy/DuoilR2dfTaVNI7jfAKbU09uTOrT8Ba8U76y/6
         A437J+sgDnAp/QlXhkdSN8UradIivahY7Da++nacnILZ9JRZnrroR76187QlaisAhA04
         cELrfuOcdsn4XD+0T46NjpDGK9Bz362OVQekKgZyX83l7lamBR/PBQclrPeT3JD22Y2X
         8kr3XY75PXwCDnk20uoVKskLAiggKXbLtRdmmfCY5WCNXPMUduWcKrwW/CdpeAOKKmZu
         vKHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728653818; x=1729258618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LLXvMXXy+onUMhQ6b0XOwwTzakrzaQZRd+ecTFnJkKU=;
        b=iKQoDjssesyNuz5YuDEqvXpdhu8qeUuXu9uAEOjDSCuISW6UipT6ahj+4p1tU4kjQl
         uch1+NL7WQUm6O+ivK3qwFPnGW219gxUQHiC4umUz/b6fNXmydfIuCwXXGmueRV7SG/z
         AHluFkX2oV1ussEc5No9Dc/70eWgbEu4GNQD8tSrIY2CGGw+a1GFw8GveVytabLYYjPx
         AjdABN9ZaMqTh+UWhIz7mSrK6K7ynd2I8IvfUnRodVMM0qL37mogIxpnKYg/OfSOBbss
         TTRYwMMC0ypivKa62hVebXafQ0ij2fOSgmfAGuPCFMIKkU2YZK8HIBojHAsdCKqChHKN
         mEFw==
X-Forwarded-Encrypted: i=1; AJvYcCX0xQl4VzjDjDzmXv4ip1+gHi1LI559DNaEXjZWaKImozI5Pduv/BUzbcCx6yoyMeW54/GX7+bMrSaE@vger.kernel.org
X-Gm-Message-State: AOJu0YzD6aNZBliS09YTjtNMIxxXivpcjBo/O9EGObs3seh+Uvc56UTB
	aQjUis1jN4Q+vmvjxWa4cNcSEcr3gi+rtnC0Io6F70m645Iwyc2uywGeYvf95kY=
X-Google-Smtp-Source: AGHT+IGntTefT/PAzN87k4mxkHYGpta3nc0hWK276rYQ9gJXg9bf9uIR3RGfaMXE2WNaM7hpJi69bw==
X-Received: by 2002:a05:6512:39ce:b0:534:5453:ecc8 with SMTP id 2adb3069b0e04-539da5abc3cmr1478285e87.52.1728653817689;
        Fri, 11 Oct 2024 06:36:57 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb90527dsm605226e87.248.2024.10.11.06.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 06:36:57 -0700 (PDT)
Date: Fri, 11 Oct 2024 16:36:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 6/8] PCI: qcom: Fix the ops for SC8280X family SoC
Message-ID: <wfwswubquat7a7rprv2oqqzywiiosvmvhefty4tlfe63rlgzl4@6ckw7xrttqnt>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-7-quic_qianyu@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-7-quic_qianyu@quicinc.com>

On Fri, Oct 11, 2024 at 03:41:40AM -0700, Qiang Yu wrote:
> On SC8280X family SoC, PCIe controllers are connected to SMMUv3, hence
> they don't need the config_sid() callback in ops_1_9_0 struct. Fix it by
> introducing a new ops struct, namely ops_1_21_0, so that BDF2SID mapping
> won't be configured during init.
> 
> Fixes: d1997c987814 ("PCI: qcom: Disable ASPM L0s for sc8280xp, sa8540p and sa8295p")
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

