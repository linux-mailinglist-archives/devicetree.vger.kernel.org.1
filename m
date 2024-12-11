Return-Path: <devicetree+bounces-129603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CA09EC4BA
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A5B6188A236
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD3A1C3314;
	Wed, 11 Dec 2024 06:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dHJhCKvM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADE21C1F22
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 06:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733898414; cv=none; b=JbyHGVYweXwSghMPVJrIwVIc9rdRbVF5Fa4/+k9EVavtspHH/ArITRZRD32PXQPxan+lT/APGQ3PZmo0ZNp0nuDoJbiYC+uWgPm8dykMV/p4q/xVYcM2RWXzP66xhF0Ctg3Yq6r+/Pvzy/pnrP1qo8+ylhNyvv6QJ5F8t8k8CS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733898414; c=relaxed/simple;
	bh=05PHLQJWbD7M/t63+dY39KfUKzzoM1vGvU6jkxiAC44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bVQ5QhwGWV0k7crCNe8+ug+apnB3og4VZTDhjrLZFH3/MwQf1YPHAe9gYXfbDKIk30+MupRa5oxfrI67xBcq/FoNdkZGswzdqVRVL4w1rDBhiGTLmHPQVaOsWRTwBaEkjToIo1ONO4nqLo/O9UleQD7mBGrVsbGISrsJcRoSAlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dHJhCKvM; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-728e78c4d7bso303125b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 22:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733898412; x=1734503212; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g5uPtyeRCfhjHuSQG2EKYCWUSTJ57FDJopWrsPxMoIA=;
        b=dHJhCKvMSL0zPSiwgoxaEEgDUpO2q+mB+KgrotAGbshjdv/WvsHamW3WqkiKGztf18
         xOIwuxXp6goKZKcYieZBRxGocQ4IW+4F+BD7uRsS7p30VWcFI2lw2qF3OMl+yGi8WLgX
         e7i4/dC/BuSPY4PiWXH4WZyivCpNGa+nLOZLwlypXlJjJuGtgRzb8j6z5Ed4goCoD6lE
         eHOtCBpEIg0VjwdlgZXau47GVZjO/W7WHy6TfB1y1gGbeDKVNa+KPVK4g0BdGrRyRze1
         i342AFcVm5pDZhaqOojqTYCsrm+9VK66yl++7RiyjmkQHZn3IRxO/qUw0nvxhg2/SSY0
         QpLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733898412; x=1734503212;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g5uPtyeRCfhjHuSQG2EKYCWUSTJ57FDJopWrsPxMoIA=;
        b=ZJTW3gnQE9Etu0Wa9OspUWls0OIR5CkKoXPUyoQ95+KrMM1e8pcgvXTBKZuP3E63kS
         nQsesJyiwpOM78AA7CUwAaCFnhkqGhZtj+q4N1vpdPaXiHspXX2eD88T7QhdkH8oafGA
         nR3AEh9tDK8iPF6P+nFB0w9R9QzfhmjUg5wy5puQA8EBkk7WBdB0zQvvbBpQfkF+kQkU
         G6nuU8kvgSzxYS+T0jkYKgZP67UQJvvMndNx2DDXqo2dKCunch0efY/UhfJL86ULWu6X
         VdSc+iE7jPXFIwQKVSLcAN6BViy96eGgbyxMpY87REUXYAd6wUNhs4SMoEjjFjLN+oDa
         2Csw==
X-Forwarded-Encrypted: i=1; AJvYcCUHdhxXaZJ0Eo2WJwqif+sUWfQEbOIFWMnfntdSnRI9g89/tzuqE5d9vTiJecyzQWL/7TONBcazWP6M@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv+6P68qGoN8deScyAycGyciIfv59ylAJ4WCKek7RDdJMBG4qq
	lvh8h3AjrDVu+f9l/p2FyfHPjReAs8W88lytgsWBwd9/WfnS2Xq7BQW33C6pGQ==
X-Gm-Gg: ASbGncutYVaDBm3ShIyV3Jvg24j5js343IpLxOHsOSNn0co0TLtBpeDqBeziDkOW4rV
	kUhejzMOTaR/gLx0wNfeB1OVmXs1X2egjlXOWIIgpruvAVNd/WNsLoImdBBW8bIijjpHBX/OTDi
	1U9uefs+vtXOga/1RPnXZKFtWY9VLas2gQ8DaMS67iqYzuZHFFI/89xQfJD/pq/8Mlr+Ee6Nmke
	EdxFlqkhCnBbG8HhXgRUUr38KcrLwqTyen3gW10V0cVjoUVKsmqjrl0Mvs7zro=
X-Google-Smtp-Source: AGHT+IHcHIWCw3Wv6NHmzmx6YmsGHvWhwwPQ0jWBK0ivIaEUDWwhrrMbjDmLqm+k/dugJWGGhd1D3g==
X-Received: by 2002:a05:6a00:3996:b0:725:f3fa:8c6e with SMTP id d2e1a72fcca58-728edb8ea7dmr2564604b3a.7.1733898411754;
        Tue, 10 Dec 2024 22:26:51 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725d732ad17sm6806896b3a.45.2024.12.10.22.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 22:26:51 -0800 (PST)
Date: Wed, 11 Dec 2024 11:56:45 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs615: add pcie phy max current
 property
Message-ID: <20241211062645.3eut7ibjqymm6ayt@thinkpad>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-4-quic_ziyuzhan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241204105249.3544114-4-quic_ziyuzhan@quicinc.com>

On Wed, Dec 04, 2024 at 06:52:49PM +0800, Ziyue Zhang wrote:
> Add vdda-pll-max-microamp for vdda-pll-supply. The value of this property
> is from the power grid guide. It is the maximum current the regulator can
> provide. The property will be parsed by PCIe PHY driver to set the current
> load.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index 18f131ae9e07..6d93ef0d886b 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -215,6 +215,7 @@ &pcie {
>  &pcie_phy {
>  	vdda-phy-supply = <&vreg_l5a>;
>  	vdda-pll-supply = <&vreg_l12a>;
> +	vdda-pll-max-microamp = <165000>;
>  

Min uV of this regulator is 1800000:
https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/tree/arch/arm64/boot/dts/qcom/qcs615-ride.dts?h=for-next#n151

How can you set 165000?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

