Return-Path: <devicetree+bounces-55944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E748971B9
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:55:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABF5DB2B679
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 13:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121DE1494D8;
	Wed,  3 Apr 2024 13:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RFrmcSr+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8662E1494A2
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 13:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712152482; cv=none; b=Vqy0SjAcRBJVfWoM1KJLH0THjrDmr5pFAzMmCI9m5WzTXnIG3rfPIvvCYohILJOcwpMHva+13apceoXz32gdfFfuyRucoWFEf75/rK1vfLLSIplKdX+rwvHMGGP7j8dgHE3TDIYt7ERu6XVwDX4DH60Nk4ye9dCys12XDT2VIwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712152482; c=relaxed/simple;
	bh=2Vvj3IV+oCKuI5HJcUWsnah5mTc7DyAl5PLfqClSBy8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fbJiHBxhRJL2AvNJ2l/NQQygOP3hbchHqUxtzXL9GgJyQ3CC/VCSbnIVtw1wHbEZRqkobdbeCdkWR7BI3yuj7n4qBVa3q4JZezX/Hnu9zQr+siZMdPDnuen22lHOk/zGS5klZcQ24phtD7AUCfg11/fn+GeC0uUxFc70TsirkbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RFrmcSr+; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6eae2b57ff2so5196211b3a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 06:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712152480; x=1712757280; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BT3SVbiFXiDa5GkZGp0Vcjd+rOVegIfu/u0rdzybgMY=;
        b=RFrmcSr+v4+P2CtgMtj/kv1AIgrrCRmcf1HuijEO9XejZFHvqA82Dh99foP2Su5Tcz
         whOZkakHxABrq1NSQnVdtj22c5ScNMI+GLWlFnG8EhHN01N1jbHE6DnRd5YVzUdGQ1BE
         oYGAZsV4S2zRMQnUkw0fJkWtRTBUPQgolXQP3WNIRFYVPKq6MeKaL0n0a9gcZL21L9ai
         0DyWFecCo4Z10+7P6qncR46A/gcVFvkcrfvLmc0gR1l5+88bKCMMXlWvfKJca0/X1jAB
         BuJDpVFeqSwx5eJ9o2P2HOLcqW/ZsIdnByrXSVHkupzqxtrrMpIn17LfLBbJxqF00a8c
         H2zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712152480; x=1712757280;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BT3SVbiFXiDa5GkZGp0Vcjd+rOVegIfu/u0rdzybgMY=;
        b=Crvjt6jQc9yMLBt6locPQf6vXEGj46zgKUrR4ywcjf/+vEiuI0LY1r6Guck1V4voTv
         bL5EG/Ys8iX3udDbmloMNR/nGorEK06W0ZqMTzq99VhnowHpiQBEd/bmnkEHMKJQ3HhA
         Y8DWAQyETqAV7DBZOUAEm+kDL/0/oJInjZX69Bot6T75fmX0Pi6pi13bZUWFIdrMP9/h
         UI/bpUyn4+kOum8iKDEhXig+Epyl2pI5iZRZEeCUT+gox7Vumh8vp8jHkTmwaIdHG4n7
         pBbJBSkSYyNMEi+oN0RO0bJKH67D+krMcyXxqKzZpwa/3H7HzvNWOKZN+F31MxqnarI1
         aGNA==
X-Forwarded-Encrypted: i=1; AJvYcCU5eSenD79EX8jJxBr2vCTJFAdtnxRNS9k/A6DuZkAAWvumpw7QchWqspiYKohX5/UdRa8GdleTNVzhgZwZEVQ/kwQ3YO9dRq5M0w==
X-Gm-Message-State: AOJu0Yw+VqBq0BDgoivtM5j1azjWkVU33fCHzq/Wy1MftXeTipIBEKmN
	fYeT8IGV6tcPGbw9Yk4DoQ2adq+OYZVGRnCFnIP3FJlD63NfF7A7Nu070GSSPg==
X-Google-Smtp-Source: AGHT+IFdPMsL6gzwJKmcOgi/W57VtFm/bny0BK6vW8aPFa/4EX4u6/4HpM7yKc9A/olChrmi8iNVGw==
X-Received: by 2002:a05:6a21:6704:b0:1a7:2db0:baa6 with SMTP id wh4-20020a056a21670400b001a72db0baa6mr1400907pzb.30.1712152479542;
        Wed, 03 Apr 2024 06:54:39 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id a25-20020aa780d9000000b006e6b3c4e70bsm12141952pfn.171.2024.04.03.06.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 06:54:39 -0700 (PDT)
Date: Wed, 3 Apr 2024 19:24:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	cros-qcom-dts-watchers@chromium.org, davidwronek@gmail.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7180: Fix UFS PHY clocks
Message-ID: <20240403135433.GP25309@thinkpad>
References: <20240401182240.55282-1-danila@jiaxyga.com>
 <20240401182240.55282-3-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240401182240.55282-3-danila@jiaxyga.com>

On Mon, Apr 01, 2024 at 09:22:40PM +0300, Danila Tikhonov wrote:
> QMP PHY used in SC7180 requires 3 clocks:
> 
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC
> 
> While at it, let's move 'clocks' property before 'clock-names' to match
> the style used commonly.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 2b481e20ae38..5c9ec8047f00 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1585,9 +1585,12 @@ ufs_mem_phy: phy@1d87000 {
>  			compatible = "qcom,sc7180-qmp-ufs-phy",
>  				     "qcom,sm7150-qmp-ufs-phy";
>  			reg = <0 0x01d87000 0 0x1000>;
> -			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
> -				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
> -			clock-names = "ref", "ref_aux";
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
> +			clock-names = "ref",
> +				      "ref_aux",
> +				      "qref";
>  			power-domains = <&gcc UFS_PHY_GDSC>;
>  			resets = <&ufs_mem_hc 0>;
>  			reset-names = "ufsphy";
> -- 
> 2.44.0
> 

-- 
மணிவண்ணன் சதாசிவம்

