Return-Path: <devicetree+bounces-103690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EB94A97BC52
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 14:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A379B1F2405F
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 12:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 557161898E9;
	Wed, 18 Sep 2024 12:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EgKi8xsB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D8A3176FA7
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 12:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726663030; cv=none; b=FbS/N+18tJbhvl9fmFvxgJ8uOROGRVE0k7T+TU6W08exhOxqoxRKC85SsKown/c07raE3zjPXKeN2hl81BrycDiQAachT7ZrNJ2mLkIP8dbsRtpkt/dL0viu6A0P/lP6EuQSPq9JoSIdeH2cqDuB5gWHycoannhvKHhVo1svtys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726663030; c=relaxed/simple;
	bh=zuikOUiCStkWfIyp50XAs1iEDDnX3j8rAK4EbG29k/8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MZLPSPeWcwnFqZ8w5pPeLNtJwAszsd80Np0Jc7EJyYYjnhnneuY8IB2Gl053grqCr8H7D/pYiepuRkTF6tkYBx67Bd9xp56YlSRwDBiSN/02e00NGy4GITW/6j12ZQaRBBtzkCe3KKlV+D2vATVRqyvWqtCFdM/rbAsmWnNh51Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EgKi8xsB; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f75c205e4aso74231921fa.0
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 05:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726663026; x=1727267826; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mM4xuZfDECsmdWvFjhmgD+BpJEKhoUr3CHqYNfTZlfs=;
        b=EgKi8xsB+U1M6sjlH+SVrMav4HI53SfTpyTr5LCgYDOgIFU+DW+iPaz474fMFoRhwr
         aZvjr/cAtLWPs1qGfYw4kGqKwNA5w2hRjkX4/ckLcAv0GlJSDvvtcAyxt1UnH2xo7fyh
         9I9lkMut7dOaXSV1mV+XX6zs8EwbXyAV5jms3a0jReXTh/ZC2k7JIPqcctB7+k1VkPMR
         xDKFpG2PrGF5SXTxmhsVVqOETVt1jvFMPSKyig6GV8v40IZNwVwmWgLTO/H0ZdNEJqjw
         l0XIw/0cKJZcyM2I0GFcu6hXAcZy/cfaKnXAU6Wx4URtb5/APqQBaZPrt5RMqk2Y+fXG
         2y4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726663026; x=1727267826;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mM4xuZfDECsmdWvFjhmgD+BpJEKhoUr3CHqYNfTZlfs=;
        b=L/i7XNrL2zViAEdYKw5VPHCGmZy56IKQDthsQkXO8GYVx95D1oCE6gFIBN6b/EwbDH
         SBQOybSAbLUY7KOuAKA5LrsCcDJ9GgX5gEbvMlALLaKYxNkSuCsd1X8jlc6ThRJPz1wG
         oFOf4RmZzRu7OwlwIrLWPmPZHSOLHdCZ810ov0CefFuMPgI/mAdyGhfeA4dXN+ku1l9Z
         Fk8ER2M2eX241h5Jxohe2AfuRF4p7xEB3bYhTDwkfzLDIKxbP8vR6QZi71ssDS/XCapl
         wz+TQLcHkFDdZBeCWEcbXowWkyisRnI2Qzv54W5x/6ofHt6sUXNlRYd++XZCdTm5IHBJ
         Ufnw==
X-Forwarded-Encrypted: i=1; AJvYcCUR9oK/amaQOB7zUJu0+KvDciW8+Clm5GO2B07TK35gvmb2nuwF9OeMPf1cJ5VIunGYg1+l2aQbi6eu@vger.kernel.org
X-Gm-Message-State: AOJu0YwqFemPT38ZVYkciaeG7ErrrMkTk9W1ooAZEafbAjJAOoj58XSX
	5CT36GEkojxApIs5Yk3DLq/zcAjovlwnqzRUK3yRx6l/k92ElgO0kyhyVwnzb2c=
X-Google-Smtp-Source: AGHT+IEB5Ofi2pPkK2q4Q+ADWhOk5w+/qe893H2cKWvOMMT5LUeKzbEOlLYgbjUh+PcuNJFQrfsNgA==
X-Received: by 2002:a05:651c:1544:b0:2f7:4c9d:7a83 with SMTP id 38308e7fff4ca-2f787f432a5mr118305621fa.40.1726663025313;
        Wed, 18 Sep 2024 05:37:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f79d2e1e80sm13499561fa.6.2024.09.18.05.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2024 05:37:04 -0700 (PDT)
Date: Wed, 18 Sep 2024 15:37:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_cang@quicinc.com, quic_nguyenb@quicinc.com, quic_bhaskarv@quicinc.com, 
	quic_mapa@quicinc.com, quic_narepall@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com
Subject: Re: [PATCH V2] arm64: dts: qcom: qcs6490-rb3gen2: Add SD Card node
Message-ID: <w74j2huiyk52dqtusatctygfdu2xq24kpirc3w4iyhwmpaxlpp@nt644j4gpnhv>
References: <20240918102921.23334-1-quic_sachgupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240918102921.23334-1-quic_sachgupt@quicinc.com>

On Wed, Sep 18, 2024 at 03:59:21PM GMT, Sachin Gupta wrote:
> Add SD Card node for Qualcomm qcs6490-rb3gen2 Board.
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
> 
> Changes from v1:
>  - Addressed Dmitry's comment.

Please don't use such wording. It doesn't tell, which comments were
fixed. If you want to give the reviewer a sign of appreciation, just
mention the name in the line which describes your actual change.

>  - moved pinctrl-related nodes below the PINCTRL comment.
>  - moved sd-cd node in PINCRTL_related TLMM.
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 33 ++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 0d45662b8028..c9f4c6812b71 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -716,6 +716,18 @@
>  	status = "okay";
>  };
>  
> +&sdhc_2 {
> +	status = "okay";

Status should be the last one. Excuse me, I probably missed that
earlier. The rest LGTM.

> +
> +	pinctrl-0 = <&sdc2_clk>, <&sdc2_cmd>, <&sdc2_data>, <&sd_cd>;
> +	pinctrl-1 = <&sdc2_clk_sleep>, <&sdc2_cmd_sleep>, <&sdc2_data_sleep>, <&sd_cd>;
> +
> +	vmmc-supply = <&vreg_l9c_2p96>;
> +	vqmmc-supply = <&vreg_l6c_2p96>;
> +
> +	cd-gpios = <&tlmm 91 GPIO_ACTIVE_LOW>;
> +};
> +

-- 
With best wishes
Dmitry

