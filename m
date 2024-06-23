Return-Path: <devicetree+bounces-79034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E548A913E7C
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 23:23:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 894E71F21585
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 21:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C84DB185084;
	Sun, 23 Jun 2024 21:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zOpgVvrV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0464A5A10B
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 21:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719177827; cv=none; b=bLshN4Ty2j8lyNoqzr81pdpxrI3i3nGcjC4UT7jza1gSr+YpkP6l56Sf5XJBo3WK/GoVA5f86LO4KDeNahHVWi+UgtGZII94ClDnWuDLMY36AK6uaoCuV3s/Gfbt3ekCf8V7GAhj8R5RNB9Fij6YSVBiCkpZnb1YDAJlS++Zra0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719177827; c=relaxed/simple;
	bh=gOEoPA/SWeSkLXp92OjEE03U6ATjSbAL2GVCr38i/b0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kv03Mf3lPueIkvB96Q52wdPLvNoe5TfXMPNSZ6sCFIpryNCXRkSM1fFT0YIUK7FhGoWHNFjzlP8MsDaH6D1AVAbpb7vR7Sv+Xuo/46lREjk6d0UnfFWGQ+Fm3+1VSaNkWr6XLBKss7UWLrEEmRlE1/CyjvKYHPE7k5zrr0UXTCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zOpgVvrV; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52caebc6137so3579710e87.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 14:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719177824; x=1719782624; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jVqPPOYq/l25Fj/g6B1LeAJoOYkFmgg6jrPDZkmyB8I=;
        b=zOpgVvrVGVz0lgmEXA2UXDi+Yy0n0N3y9dY8+PI3mjEWcgxeHqRUfQyn0f0P71LiWq
         rXPa4fEiygDRMyQjJZ+kRVjFzdNaxOkCf+rmxFM/x84Wtm11IFIUtN+7uNa0IPvsruuY
         9xdIJOkdYp3uylYdh3eGsAVW1UflMEhyD4SFIsBfZhyhqY5AMjUwAhdW1iUVF+OTcvVV
         JUKp4C3N3OY39RxBYP4vtQ25N9CMFVuwp8xXfVZPDPw+HwHIzAXMobQAZeCRY7aNvaUR
         NeTBD/HUGDbp5v3ANEOOVpATOg8NC158rDsU/Q7V3yT3+cn1HxDHwEhL7KgKaSGzjS8P
         X8jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719177824; x=1719782624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jVqPPOYq/l25Fj/g6B1LeAJoOYkFmgg6jrPDZkmyB8I=;
        b=Qgq5YuM0NBVRuDsyGmM3V1k2/st9w5MJgj2+rEK9MDMpDqzRBnq4zw3NaNxkpZMYDK
         rxwVfVIW33NMeLzoK3xdD62J/HLIMaKHLeAE6ZBdnmb+En6W9EAMzDqMt8KjD/SOzvrW
         zxrkR6wbgi6pJf3T5kUkuIroNJtirjr2msUvzy4GlLEXIx1h+q9e7e3ChBTOfFYllyaQ
         YLtp0bBUfiTg57bIyFjsnwB3PFNDXKziPaNE0jGyCL3q52xj78M9zkyrqBWl6And0SBg
         8ndBmg6Qt75tN9yoc6QqtkrHWymgL+uFELD+GIBJUfU0m5v2SyHrXgZfSulQDSkD9Nsr
         epZg==
X-Forwarded-Encrypted: i=1; AJvYcCX5vwUNIXitemfTtB3dilHdTDh8xIhbdbdmBgb2P+8DTYKhdCvp8ApVr3MvICGcqvPt0QOYPJ+OkE7rpXOIwqxDyFIVXcyOXzIDGA==
X-Gm-Message-State: AOJu0Yx7/c4lUuw8/Iy4omg5o26FEv2Wy3TZkXi8sfwuAcSTV2ai6hB7
	6/zRuaXhS6HU4VirgZfO65/TNnArhN3XLkfbaixafJmivmLX221RWV7giPjNfOs=
X-Google-Smtp-Source: AGHT+IFhS87TfxpvmZ1+wkQPSgcCq7a9bj2sbGnuntdnh8f2/UxXXs198UOXsp3whu7KPM/2ddEfLw==
X-Received: by 2002:a05:6512:31d2:b0:52c:e3bd:c708 with SMTP id 2adb3069b0e04-52ce3bdc757mr1719307e87.10.1719177824001;
        Sun, 23 Jun 2024 14:23:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cdec145f9sm494773e87.182.2024.06.23.14.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 14:23:43 -0700 (PDT)
Date: Mon, 24 Jun 2024 00:23:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: freedreno <freedreno@lists.freedesktop.org>, 
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/3] arm64: dts: qcom: x1e80100: Add gpu support
Message-ID: <ionw2k6rz5eokroilrluq2nvh7uap4oans62z66o7fydray7l5@a52bkrf2plkb>
References: <20240623110753.141400-1-quic_akhilpo@quicinc.com>
 <20240623110753.141400-4-quic_akhilpo@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240623110753.141400-4-quic_akhilpo@quicinc.com>

On Sun, Jun 23, 2024 at 04:36:30PM GMT, Akhil P Oommen wrote:
> Add the necessary dt nodes for gpu support in X1E80100.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
> 
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 195 +++++++++++++++++++++++++
>  1 file changed, 195 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 5f90a0b3c016..3e887286bab4 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -6,6 +6,7 @@
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +#include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
>  #include <dt-bindings/clock/qcom,x1e80100-tcsr.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
>  #include <dt-bindings/interconnect/qcom,icc.h>


> +		gmu: gmu@3d6a000 {
> +			compatible = "qcom,adreno-gmu-x185.1", "qcom,adreno-gmu";
> +			reg = <0x0 0x03d50000 0x0 0x10000>,
> +			      <0x0 0x03d6a000 0x0 0x35000>,
> +			      <0x0 0x0b280000 0x0 0x10000>;
> +			reg-names =  "rscc", "gmu", "gmu_pdc";

Ther @address should match the first resource defined for a device.

> +
-- 
With best wishes
Dmitry

