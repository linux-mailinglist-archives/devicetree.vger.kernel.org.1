Return-Path: <devicetree+bounces-124627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB45B9D9682
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 12:50:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75689167A43
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 11:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 910D21D45FC;
	Tue, 26 Nov 2024 11:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fgty/1G3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85301D2F42
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 11:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732621808; cv=none; b=bB3oxLGw6BMmz8xjOzlweBuziLrZJlpSRuBgGEfvjS60TunnAijfI8KwT0sgJyr3URbYZu7NJ4j5nqpAIUgPOifGGktjBsHAC46uJHws1Q1B/NeEKNd7ZOxtrasGOqbvC4RFYsrVcu9if7kPxX9RhduUBUIZ9qmq5TpkcrosK8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732621808; c=relaxed/simple;
	bh=GYAzIZYJriJDarwMYPy3fKsBjVIGPFVq3v3Ist4Cv34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D5QT9Dz67WcAenZiXgl1bhHyQYDC87rO6hc7Sjj0BCGA1GOPG7WcPx4zKm1ApR41aabcj9mS4Zg5HSHW7ACc8Mr/ReOrB1ma+LYIRr2hvxrlQ4rilbU4AziTN35SdoE1uX8dAZ82peopeoJBneB0DtIHoqs5+zjyF42SxjbWwMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fgty/1G3; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53d9ff92ee9so6285712e87.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 03:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732621804; x=1733226604; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fqYIWnr/9c6FYDv/gsnp+xSAjuU0BBzGVs1Fhk5SJV0=;
        b=fgty/1G3+JduMg/z5XrvcG6pDVwmtIDfGUNOGd8Kjf3RZ6zbC0wu8VkV0Gjy/tcQJt
         ZxF1am5GU4QFXHKHXQ4YMs+iu9fqe6z7e0TWM3n/OEUPDb+ClLdT5TtjZDR8bXeorkne
         lLw1QxRAenMTEkBptsWaZgdkET+iwbVLwd4wZEQ1TnL9ihaosJSXE8sLcRfegmKPoWAL
         iCVN3II+CBlm5tUy0vpwIneOtFBF96UAHuSmDyEkbDABCfr4Ldx0gd1Vlqz1LkcTCFwZ
         LRDILU2bGJN7Es1R2ePeyxsL+1qP52HSP+VLrznRCsBTjGeeMkRdUmEaxlkd92Sv2wIU
         IQDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732621804; x=1733226604;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fqYIWnr/9c6FYDv/gsnp+xSAjuU0BBzGVs1Fhk5SJV0=;
        b=R8/zf3QhUwcZPPa+EOtsb6bGG/lsU/gI1XJwuaFiL+36IH576KjDEdGs9wUQY3sdQk
         vFJp3SzLithuiG7MCEmW9lZdRnoHxzaYuHbAwpSIE9CkpI6hbWTP1hpEu1GQ0B3tjmTm
         Ia4kEMcAIhY/wgU3XtwEtBUkwHbXAUSFXxo4RfaA59W/iOyBTxtj3/sDQRP1uPfj3zrq
         85j7HC5a/Fhbg8k3q9D3FX4N3ItJmul5+oDfoxmJl/nCgAJmH2WqnZaQX1e54wCp4A0B
         K2RIkGRass5ryPaaQC94BxBog09UYgHqAMoJXDxzoWw0s9KzfqmtuXH6r+woVnE/6cZm
         IO9g==
X-Forwarded-Encrypted: i=1; AJvYcCXME0QNQ+PpNbPxX6ewCbIhV1sVgqQ1hdREL6AHf1NzR+lIhukt1J4FGq8VqOv4R8E5AsRufQvEabeE@vger.kernel.org
X-Gm-Message-State: AOJu0YzdQyCJ83AJhpVNdfFls9YLwp1T2fqqDUz3zF2sJycQCNyJEAhF
	9YC+7NoqjG6wv8gZ/WqAHmsEiW1jUF09pkh+hkuY2f8FB66BcE8Mdzr346BmQdU=
X-Gm-Gg: ASbGncuN+Ptn/uU/ZbMDr7UyekTc8taTNsGebGnHks9HmYkGporvbBvx23EpKIy53NB
	5rj7r2kjfY3PICpvjX4wyTzH5z4tDWk7ryufcoj835J3/B96APABFZQPjiKhKhHyJ435LzNGlsu
	O7FjTWY/tntlk9DtJemayV6VeabdLxWX5MWmBajg4YOSRaXSC4NZlKc0hLJjq+2eiLNv+bvh+pd
	Ghg/8Lvzx5xN2g86P+3kHTREczetrjO+wovQZZhcVUVfovBq7KUG9ZDWfWdfbqZMntXTFPXxbQa
	tyzm6J8JB1q0XOvQs3DF15rEynQycQ==
X-Google-Smtp-Source: AGHT+IEwf7KXQVYfNFV+slWuA7VhV7yv3ijg8DCFUFvdFn5VXpHwrc27agE1AMv36gPa8ClDyuq3tQ==
X-Received: by 2002:a05:6512:3e1f:b0:53d:d45d:a1f3 with SMTP id 2adb3069b0e04-53dd45da218mr7996168e87.22.1732621803839;
        Tue, 26 Nov 2024 03:50:03 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd5d22347sm1807939e87.28.2024.11.26.03.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 03:50:02 -0800 (PST)
Date: Tue, 26 Nov 2024 13:50:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, 
	kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcs8300: Adds SPMI support
Message-ID: <wtnsepmoulfhm5ydbu7udtsrexaogaiqjyt737g6a2bhf4drnv@jwmktibj2swd>
References: <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-0-28af84cb86f8@quicinc.com>
 <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-1-28af84cb86f8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126-adds-spmi-pmic-peripherals-for-qcs8300-v1-1-28af84cb86f8@quicinc.com>

On Tue, Nov 26, 2024 at 05:35:05PM +0800, Tingguo Cheng wrote:
> Add the SPMI bus arbiter node for QCS8300 SoC which connected
> with PMICs on QCS8300 boards.

Could you please comment, what is the version of the SPMI controller /
arbiter?

> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 2c35f96c3f289d5e2e57e0e30ef5e17cd1286188..03bf72d6ec5c9ec92f6f53df9253c8c5953e13c4 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -939,6 +939,28 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
>  			#clock-cells = <0>;
>  		};
>  
> +		spmi_bus: spmi@c440000 {
> +			compatible = "qcom,spmi-pmic-arb";
> +			reg = <0x0 0x0c440000 0x0 0x1100>,
> +			      <0x0 0x0c600000 0x0 0x2000000>,
> +			      <0x0 0x0e600000 0x0 0x100000>,
> +			      <0x0 0x0e700000 0x0 0xa0000>,
> +			      <0x0 0x0c40a000 0x0 0x26000>;
> +			reg-names = "core",
> +				    "chnls",
> +				    "obsrvr",
> +				    "intr",
> +				    "cnfg";
> +			qcom,channel = <0>;
> +			qcom,ee = <0>;
> +			interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "periph_irq";
> +			interrupt-controller;
> +			#interrupt-cells = <4>;
> +			#address-cells = <2>;
> +			#size-cells = <0>;
> +		};
> +
>  		tlmm: pinctrl@f100000 {
>  			compatible = "qcom,qcs8300-tlmm";
>  			reg = <0x0 0x0f100000 0x0 0x300000>;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

