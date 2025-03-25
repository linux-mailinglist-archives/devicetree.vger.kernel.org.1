Return-Path: <devicetree+bounces-160533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE3FA7020E
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0F6907AB73A
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 13:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C049625B67C;
	Tue, 25 Mar 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IC4Mmj89"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B832566EA
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 13:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742908973; cv=none; b=qkvkMgDlw/UhGxQX/iHcnzT8DRhgzBJES2koj4LVlGjSjtdzbWe9/F0RCYXc4T7T7+8ckP/Nbx3sC+ROASiyqirSUU9ym3m4iMSTNYRnzeuRhDqJQMoJDvhPvj/4id3QhJPOcydImfibE/EPb/EVC5JHkIfDCQZdL34QuI85CzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742908973; c=relaxed/simple;
	bh=7QuLXuwPU1pYcM+fDNimsvk8TLkug4Ij6zG11JZYuNA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c4qPc4xbClawSEXs+asz2H5JUH0Ae6rIx7+vGp1HrQIxWM0W5uaHhI0K/nSVQflYmJBLlcGmq6u5Lu2dgUWObcqfUH+0II4K3RsgZHl1BpF10Xjvv/yzOmS/hn1+EK3F1bBsMu5CliEyoYyEE40mj2hegd//MZmWQ80QfKvCdho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IC4Mmj89; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-390f5f48eafso3102563f8f.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 06:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742908970; x=1743513770; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LlGiVNk8Yt0jmLDGPVZqC17dJyZ1FtuKp/XxOfDeIWc=;
        b=IC4Mmj89tk/5/c2aQ67Zaj0DogDfc5O1jD33f2nk2ctjsAGvWmKuLo+Xl3SjlZJYdi
         ul37ypv5FBla/69XdbCeBtMbSD4te8leQ1Ci8UkF/A9iQxA+MhiDFh7dgj17OEupGqoq
         mfOHQtvOP1H85nZ15KIflZdNmshaAq0Hf/PB9JHQaBLeGBsbGJhV3TCU51EfGTkTg9Gc
         QAz+phnR/vhAKGblZxvv6C7SFVXBdPPlayaksoHsxoLsouJq8zu0onNJ312CxNQb38xt
         CUmJwe6XkA1lQa52Ca9awafDxTys01pCLE4nuoylLjKOWD/ng60TiOwWucAyAOBYA/iH
         aC/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742908970; x=1743513770;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LlGiVNk8Yt0jmLDGPVZqC17dJyZ1FtuKp/XxOfDeIWc=;
        b=OTS3VoxT7ATHlVWUvHtMxdcLW7NRA0n1G1MwlchY+cuzFGUm1+YyP8fGdDmbl4dtV5
         9hOM/K7Yme25rSrpD6TwdoRbtYw1T/pQyH/W7WJY9PIH29KjuTFzkLDy4q1GpdnmVGrf
         YxBKEA/zTwEyU0UTSh8Lk8UMEBHzCKXKE+XZ9vaHJ/zcijCxfcKnWVbNcZflCuq9aJ8l
         j5FQdk1drB7Wpicy7cgVUFRs3W6+MDA1v5c5kJeKpOuaJF/5X32/dJ0g/lchOOVkYO52
         6T6LLVPCD+8kxz8Y0LgohlTZeC0ircSBIViZCUCFdW0hHjiC0YzIsWnHKI/coYaI3f7X
         x9YQ==
X-Forwarded-Encrypted: i=1; AJvYcCW10tdjxB2RswdAgTmusxbxfVEiA5r4j32dKmWLchm9fCHnU2qP48dUl30B8KDRt/SR7qZIvlMRuZKn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe13ov5hPW74sio4GIf2xhNnQfFKT16OPqXzR04MUQ7JvJCJvQ
	WKhG8ZkME7yg0MYczynvnH/jJd0EonN+yWqLnPuR2w8OVJznm9qCIxP5YS0E1E3/9pcz7HDzCpV
	A
X-Gm-Gg: ASbGncsNSrvOO8m4VB6pQiJrbKwYsoHyTJ8zu3rPck+409RCap2lSDR4dMYDebWuXoG
	JfVbD+cNxtVLndLsrfpQNMkUC/Ia3JVlCxf6Xn44AJw98yFrSIHAjQNAD0XiVr2Wm8kJzG97/wY
	9kMCoBOSrdwoeAsCKyou8CEs4HI/JyQjqFQ25CXU/t4WXHqD+ImFlSa0J64SSpVaBCSePXPqOH7
	JOwGKMQMm21FU3JcZ4SdXFWPepheVMPA6/PJUNbcudSi/L9zdSg2NFvZ7iQ0cGhDpdavhVLA82J
	UStJbC1RZFOJOo4hiImI7SRN72yQUiHpKMSlogmGoCkM/tOSTNPKTDVp
X-Google-Smtp-Source: AGHT+IF5ByOpPrTa4U4GRV56ywaOSjVp6h6VrRCWNkmgB0f1xyrCpfKj9/gzFmkeDgA9BwrCjSe/wA==
X-Received: by 2002:a05:6000:1ac8:b0:390:f6aa:4e80 with SMTP id ffacd0b85a97d-3997f937b82mr16939893f8f.53.1742908969958;
        Tue, 25 Mar 2025 06:22:49 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:1f3c:c5ac:d437:69b5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9efd61sm13902105f8f.91.2025.03.25.06.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 06:22:49 -0700 (PDT)
Date: Tue, 25 Mar 2025 14:22:45 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e001de-devkit: Add Wi-Fi and
 Bluetooth pwrseq
Message-ID: <Z-KuG0aOwEnxuhp9@linaro.org>
References: <20250324-x1e001de-devkit-dts-pwrseq-v1-1-530f69b39a16@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324-x1e001de-devkit-dts-pwrseq-v1-1-530f69b39a16@linaro.org>

On Mon, Mar 24, 2025 at 04:24:01PM +0200, Abel Vesa wrote:
> The Qualcomm X Elite Devkit comes with a WCN7850 combo chip which provides
> Wi-fi and Bluetooth, similar to the CRD and QCP.
> 
> Describe the nodes for the Wi-Fi, Bluetooth, the related regulators and
> the PMU.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 144 +++++++++++++++++++++++++++
>  1 file changed, 144 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> index 74911861a3bf2606add8cf4aaa3816542e837513..8f288a138c4cb6e21725fdf726eb2a2489bfbc38 100644
> --- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> @@ -17,6 +17,7 @@ / {
>  
>  	aliases {
>  		serial0 = &uart21;
> +		serial1 = &uart14;
>  	};
>  
>  	wcd938x: audio-codec {
> @@ -392,6 +393,42 @@ vph_pwr: regulator-vph-pwr {
>  		regulator-boot-on;
>  	};
>  
> +	vreg_wcn_0p95: regulator-wcn-0p95 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_WCN_0P95";
> +		regulator-min-microvolt = <950000>;
> +		regulator-max-microvolt = <950000>;
> +
> +		vin-supply = <&vreg_wcn_3p3>;
> +	};
> +
> +	vreg_wcn_1p9: regulator-wcn-1p9 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_WCN_1P9";
> +		regulator-min-microvolt = <1900000>;
> +		regulator-max-microvolt = <1900000>;
> +
> +		vin-supply = <&vreg_wcn_3p3>;
> +	};

Hm, on CRD and T14s there is a TODO comment above these two, which is
also why I haven't posted these upstream yet:

We still haven't come to a conclusion unfortunately how to model the M.2
WiFi/BT cards. QCP doesn't have M.2, which is why it is upstream
already. These two regulators don't actually exist on the devkit itself,
they are (probably) part of the M.2 card.

The devkit only provides the 3.3V and 1.8V supply to the M.2 card.

We should really find some way forward for this, but just omitting any
mention of this is not the best way. :-)

Thanks,
Stephan

