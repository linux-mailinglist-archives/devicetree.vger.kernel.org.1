Return-Path: <devicetree+bounces-35761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3A983EAAE
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 04:48:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B39E1F24CC6
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62BF41173D;
	Sat, 27 Jan 2024 03:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U6b5sBLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97FB311715
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706327303; cv=none; b=Eb1KJ5QTmOdOvqxDsQn9o8NVbBvM/ulaw1q35hPsh2iu+ASKePEgO7TPCFX/gbM+TLx1XTY18ns3Llh8+5bvbwuUYBKZBcJVzTjk5GqPVSHJ8DppEWtuzGjpX5baIhIp+keu0s/5/84nTL4CE5oG3hwQ3YQYGI6lIcCAlOk5mdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706327303; c=relaxed/simple;
	bh=I52GhTCmPvPY6McnPJul8fpNcyDEtefKHQkoHzciHE0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iEupAeWI1Zc5NKGdlgpXL7tREwPyu1HJpuiFofPKlAa17SCe/FAfrFVQicn6MTsgpUEzXBvWzrRd4fIMitLQHyuZWXxBYA1ThOTXyUt80Xkkj+wCjW1Fc89Lo+so8Ybg3UwaSEYVlQfnThDqxZSF9MQnnGKB329M7Iv1h8jWUPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U6b5sBLL; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a277339dcf4so90749366b.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 19:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706327300; x=1706932100; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WGOiz2BIpCS5BRwhbbDOvMFdiaSjuzcJzAunOII+sqk=;
        b=U6b5sBLLXVghd+SiFHocPoMCZYFf932/wfu8ooZAKZSaT3jQhLO4Wj+w8PXT0TbGoX
         66jQ0ojZeaEMNRLCeMP26CR4fard+99NqBPQVzGnkaVquN6OCXJlANMWXDsWRtt4Jiw4
         XuQoWzLbfGgoOYbjec6canc8jXaJ3FtfilPOoswoCj+CbZwEUIt0OFz6clhskwtcbPq9
         LDa28z9M3Jkwvm66RZ0UsARPj4eHSlIrH1UfqD9slpBMq6/MEEuEGEdFESRGw/QCXfK4
         45BtFV6+n+JzoNNAhAyk7/ynZaB3Q+9olxxVEMYj5YzPCCy7AvndvP/Qn5BfJ21Wc1on
         HlKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706327300; x=1706932100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WGOiz2BIpCS5BRwhbbDOvMFdiaSjuzcJzAunOII+sqk=;
        b=ZJuw5YnNKnQ3BdArjR/fEyhRo5weQKUUM60nQFQaJAkvg2OlZw0zr1Vw1BhVqbXroq
         fWZ3nHNcUwGRU9GK7pMVrQM1SMrt3tCBdJ674EKZpjXw9+BI3o/acM4+acaaj7zqNqiN
         Crmw9y1bUl/eWYrfiXuwBNQKFMMdqQJLVznjVQpqB1DqjJC7Wz1pDBaautq7j+5GJyAn
         7OwNnXE9bv8uzH83GNuzbVA4m2AXXeQ7We27ET6asOQFCuQmSukxvEuDr1oOu+bEb8W4
         3jeSfhhjGIGvgdxeud9JJH3o+A3FplG9IY8jUmORM8Vxe02mmqgb3870GZ571u7YQFfv
         655Q==
X-Gm-Message-State: AOJu0Ywo3U6/mc4KGpnO17RGayMkUnlS9vF+WM8DbBdFgtr6aAr231eB
	Fgr/vfvci34t1XEdkyErmfZ8dmPf264RfFQHxLDKdxM+X4kQYib4E2KmEOCDLGQ=
X-Google-Smtp-Source: AGHT+IE279fNC4zsCFfWk/XuSa41cI+pdfY+0IsRQyFSl8lYOWU/VQRkp6AdeuHR5k20q+w8ySp7kA==
X-Received: by 2002:a17:906:46d8:b0:a31:953:5869 with SMTP id k24-20020a17090646d800b00a3109535869mr450482ejs.53.1706327299691;
        Fri, 26 Jan 2024 19:48:19 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id zo11-20020a170906ff4b00b00a316ecc4badsm1300651ejb.56.2024.01.26.19.48.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 19:48:19 -0800 (PST)
Message-ID: <e8245820-8e71-4336-b050-cd9e0f072af1@linaro.org>
Date: Sat, 27 Jan 2024 03:48:17 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: exynos: gs101: fix usi8 default mode
Content-Language: en-US
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 peter.griffin@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com,
 willmcvicker@google.com, semen.protsenko@linaro.org,
 alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com,
 cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20240127003607.501086-1-andre.draszik@linaro.org>
 <20240127003607.501086-3-andre.draszik@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240127003607.501086-3-andre.draszik@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 1/27/24 00:35, André Draszik wrote:
> While commit 6d44d1a1fb62 ("arm64: dts: exynos: gs101: define USI8 with
> I2C configuration") states that the USI8 CONFIG is 0 at reset, the boot
> loader has configured it by the time Linux runs and it has a different
> value at this stage.
> 

ah, I didn't think about this, nor checked it.

> Since we want board DTS files to explicitly select the mode, we should
> set it to none here so as to ensure things don't work by accident and
> to make it clear that board DTS actually need to set the mode based on
> the configuration.
> 
> Fixes: 6d44d1a1fb62 ("arm64: dts: exynos: gs101: define USI8 with I2C configuration")
> Signed-off-by: André Draszik <andre.draszik@linaro.org>

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

> ---
>  arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> index aaac04df5e65..bc251e565be6 100644
> --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> @@ -384,6 +384,7 @@ usi8: usi@109700c0 {
>  				 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_7>;
>  			clock-names = "pclk", "ipclk";
>  			samsung,sysreg = <&sysreg_peric0 0x101c>;
> +			samsung,mode = <USI_V2_NONE>;
>  			status = "disabled";
>  
>  			hsi2c_8: i2c@10970000 {

