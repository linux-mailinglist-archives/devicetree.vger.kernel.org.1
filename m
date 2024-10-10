Return-Path: <devicetree+bounces-109931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B349799886D
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 15:54:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3880C287C8F
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 13:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396F21C9ED0;
	Thu, 10 Oct 2024 13:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ce4nYN2E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBC61C9ECE
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 13:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728568466; cv=none; b=p9LYy8givc8/NskgUw5/6jFgpawubVGcu921VAQs1p3KYXTJrzPA2H+iIA/P1WYuxAfLgHKHCPw0udaumdUf/qOJAQvjZZFNN7ixscmDGrfRYUGh1kiEPrTiRHKftSsutkx8zm01bVGnubhXkuyKvDsGcNwRosUKFhrlNiNkIcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728568466; c=relaxed/simple;
	bh=/MdJOYWSFWYjBmuIvZwF0RaW/1K9KTkshG8s96mlx+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PqtoGBOjXby6rRNSrVfGhu5hkON1gNyFWglRSzYsPP3Z/naW54sYW9sQJMN1TaQQSM+cMTIXNuNhifo8a3kRblBuhwGu52uFJDKEZQV0eLR1AwlTqrb1pI9xRxN3EpDLMwKIqvuj3lawHYmZqWSK6U3UjednEkg1IlIWUyVQs6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ce4nYN2E; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5398d171fa2so1226583e87.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 06:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728568462; x=1729173262; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qb9do28lJl8LSAbvRHjfrwyeq3FZfjo+Pf8ixrbq3FY=;
        b=Ce4nYN2EKddNroMmU2PJMQOO7CwwTpKDnyYKRlRkKXgxzmEiwGUo9OLSVFASTHpW4c
         OPtMLBPUF5p/Gx07ypZ23OnBGUhVPRr+Muc5kJ68Qp60w5G3tJ43QqVBvAWGbS22T1OF
         pPoj9KSSyxdwfX1048V7b0npOns7CDT/TxTsabu5UlogsqVgmh/NUby1VHAxJI/q7ExW
         NDJRHxl+sJQM02iMyhB5Gx3IXy893XwKpJn6uPepf9xvLCvo/2SUmMthj2/3Xl2LBIfz
         br3is214NMwK4yK7r6XEj84To1R8zcwpsH9OJGCq05HA70JsB8eDseF4tMEGxBLWInBe
         j2ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728568462; x=1729173262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qb9do28lJl8LSAbvRHjfrwyeq3FZfjo+Pf8ixrbq3FY=;
        b=CozAaolW+QvMu72EEq43CvxiQKVGmz3TcjrtzFBTnuCGZoYl27HYtRXCIy4wVdxk9k
         vcRpN8hzg8xUy7Zt8Z09rufmJv3tl9/9VPHa+eTp2gCJzL1pK0IlliXpk6+N41W7sF75
         Yf9G4uqZEtoYNVKhzoLG2t7V8u3fNj5kWkSurlrWHbC1SsF/MI1ydKRuUsU3J9iumXo6
         3nhaordxJ95iY4YVtLFwBhKTf5ue1Qb1KhtYrKTR0cvQ4K4e3UZ4a5NhG5vtlOjUOQsM
         3/hAVRyRjKrf77Kif38tqm0kqVxKQpixslqHjMJzKWdpssaToW6rPMC3HMYWXTK4wftn
         xNAg==
X-Forwarded-Encrypted: i=1; AJvYcCXMGPLQiHyFjNU8Ph6+AAzov8i4C0nlt2dQmanTuXS7PUOTKiogEeGWGGhJYp3b/clSX4JeYCewTm6X@vger.kernel.org
X-Gm-Message-State: AOJu0YxyWfKz7CeUg+yoq8wlrDV4bMX3JlBevykc/9j7N9teAqJlwwAj
	yNx6Z3Q5bsnMPWst+bmeVOZY2Cn2fwN50/uilxUli6X9wg55AH0qkbu9pO0fQc8=
X-Google-Smtp-Source: AGHT+IETmVHkFlLTgoETu0Xv+7MfN8SyNcGln0i9cCU+nmxqBIFSBYMKVVj3KwdQ5T6DQl1hWggOFQ==
X-Received: by 2002:a05:6512:3d8d:b0:538:9ef8:881a with SMTP id 2adb3069b0e04-539c488e739mr4488887e87.12.1728568462477;
        Thu, 10 Oct 2024 06:54:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539cb6c86f9sm264641e87.86.2024.10.10.06.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 06:54:21 -0700 (PDT)
Date: Thu, 10 Oct 2024 16:54:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100: enable GICv3 ITS for PCIe
Message-ID: <xwscnif4mqzykjinjtbr7jqsksy2buzindyttkk754jmumktm3@p5xxnmia7fxe>
References: <20241009161715.14994-1-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241009161715.14994-1-johan+linaro@kernel.org>

On Wed, Oct 09, 2024 at 06:17:15PM GMT, Johan Hovold wrote:
> The DWC PCIe controller can be used with its internal MSI controller or
> with an external one such as the GICv3 Interrupt Translation Service
> (ITS).
> 
> Add the msi-map properties needed to use the GIC ITS. This will also
> make Linux switch to the ITS implementation, which allows for assigning
> affinity to individual MSIs. This specifically allows NVMe and Wi-Fi
> interrupts to be processed on all cores (and not just on CPU0).
> 
> Note that using the GIC ITS on x1e80100 will cause Advanced Error
> Reporting (AER) interrupts to be received on errors unlike when using
> the internal MSI controller. Consequently, notifications about
> (correctable) errors may now be logged for errors that previously went
> unnoticed.
> 
> Also note that PCIe5 (and PCIe3) can currently only be used with the
> internal MSI controller due to a platform (firmware) limitation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
> 
> The PCIe Gen4 stability fixes [1] are now in 6.12-rc1 so that we can enable
> the GIC ITS without being flooded with link error notifications [2].

Cc: <stable+noautosel@kernel.org> # Depends on driver stability fixes
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> Johan
> 
> [1] https://lore.kernel.org/lkml/20240911-pci-qcom-gen4-stability-v7-0-743f5c1fd027@linaro.org/
> [2] https://lore.kernel.org/lkml/ZpDnSL8as7km9_0b@hovoldconsulting.com/
> 
> Changes in v2
>  - amend commit message with comment about PCIe3 and PCIe5 only
>    supporting the internal MSI controller
> 
> 

-- 
With best wishes
Dmitry

