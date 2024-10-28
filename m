Return-Path: <devicetree+bounces-116345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B2B9B2A14
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:20:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B66922819B0
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA79C19048A;
	Mon, 28 Oct 2024 08:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qEPgb0/U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DB915EFA1
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730103643; cv=none; b=d9s8J/rKuEKHrDRBSqxDLpeFRAiwKMdGoKu1lrmyKa+PoMlaeIje/1dQ4/ExELSUM/X2YaCHugc1lVmqNW+GOcZsLka8p4cZJi+oR6N6Z71ZctmcbXxwUiiSu4PBbAvtftvnJS9OsvwY9XmuSnvpIfrccAvjTB1e/gmYApW2U3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730103643; c=relaxed/simple;
	bh=tOMiuhKVTYcvEnkDPjWbPBmmkwD/J+6dAq4mQfzV3jg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bfBcEL1igP++0mC2OaHNcjMQBHl+KKa96mbm7SDh8wa+/C7UNqVVysfW9IoJqs31hwxG4e96qEhjHXQHfoHHHchKT40M6Jy5kbvQQaD5+M0eTnHX0SmKlRKi29pFo5fQbDPGMQ3e8ZkTFf0230N89QEeBEYje9aXU0FdRjqFs1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qEPgb0/U; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539f4d8ef84so4491339e87.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 01:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730103640; x=1730708440; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zeaFUwQLblpRe6Q7TwqKE9X0ALprQCKiHpkgFF/1LK4=;
        b=qEPgb0/U+Ip0tVRhDIcLE0SjYgzO5iDZQ4i5AbI1GjJ1afj1PB1QTXLRRmKkfaPX7Z
         3s96RFfykmfW51ZlvcvFOvBw9osYGsoqXX+wl+cIgus/JpRlQJAncF31i47XcIm0af4c
         u3DS+33D4ZDDYMPQvoNaMvHv14DGTPg3xrKSHc+d3L0zLPw0lEQzi01qf1y6tV3jrQf6
         EYtKs5PZV+FSHaoHgteF4Tie2VrFfQu6ymoWwylQT8fCrC0d1sdFjr1fnAxFEMCEcoZu
         wfBv04mkxkq+YV57xzDmG5MlujlngT7Gzo6l9JMlulqpOrOSxYtsN87BHeQvnoTlAT0T
         SZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730103640; x=1730708440;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zeaFUwQLblpRe6Q7TwqKE9X0ALprQCKiHpkgFF/1LK4=;
        b=pKSFjXYsi96Z9L6TbWrozma3532k5jL4ra4mCDXLQPGZWLzaX4jMw5B3xM8PVFC62G
         ECrpCI2ZOs84pdIcSXF9I1CK7lS9OlnK24Z1YxiKtAHRhA71uzG02hFUFZ70ptvzuqVq
         wn88RgKyb6Mf1Vxc+aUbiA3YXLZ+hJHIsVDFUzb1+J0rormEP2GFx+5/JNVVJXLVxNTr
         6K9m1goCqdPlRjynsRxBaq0CbxGAGwNvznGuulJoQB6bJM5+CCgj2R3/LERskCTvw6zg
         QDQuzOimkbiHq5nNXm2FDA4SNgkjXTKLCINFbBQ4P6swYKKp5R7nhrLYj7Bs7eGlcLoY
         y3QQ==
X-Forwarded-Encrypted: i=1; AJvYcCVApTT8VotGhEnNfctlUWHHTkSRzpwb8Mx5b6uAZE4v4HCciFnce5ztBZNNzIfj4pVGJfGiTypdwH2J@vger.kernel.org
X-Gm-Message-State: AOJu0YyGYqKq9vdCq/mlDrzeiegoX+/SYSPF2BVSMG7BjHxfeqvpqBDY
	9QggxA8moAp4egVH0p7ZbKXM+EwO+dnOgQqtqCIWqwDqSfXwTqmipsSCdxOAuzs=
X-Google-Smtp-Source: AGHT+IE8lp3CMHBeC5z148PCsSzActfPT7C1OwA8muJ7pHDAInvHmS7lVj5v3VjEe6Fqp67sBJt2QA==
X-Received: by 2002:a05:6512:3c95:b0:539:f8c7:4211 with SMTP id 2adb3069b0e04-53b348e53aemr2468184e87.26.1730103639902;
        Mon, 28 Oct 2024 01:20:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1249ccsm992298e87.95.2024.10.28.01.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 01:20:38 -0700 (PDT)
Date: Mon, 28 Oct 2024 10:20:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sar2130p: add support for SAR2130P
Message-ID: <l7znaxhsjfffntj7bjwnf774im2ubgp45mff36cgxyqyffycf7@43j5km4p23tx>
References: <20241027-sar2130p-dt-v1-0-739d36d31c33@linaro.org>
 <20241027-sar2130p-dt-v1-1-739d36d31c33@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241027-sar2130p-dt-v1-1-739d36d31c33@linaro.org>

On Sun, Oct 27, 2024 at 03:24:03AM +0200, Dmitry Baryshkov wrote:
> Add DT file for the Qualcomm SAR2130P platform.
> 
> Co-developed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sar2130p.dtsi | 3091 ++++++++++++++++++++++++++++++++
>  1 file changed, 3091 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
> new file mode 100644
> index 0000000000000000000000000000000000000000..a8edbb9e6591265644476623aec36be9147ed7a0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
> +
> +			uart7: uart@a84000 {

And this should be serial@, will be fixed in the next iteration.

> +				compatible = "qcom,geni-uart";
> +				reg = <0x0 0x00a84000 0x0 0x4000>;
> +				clock-names = "se";
> +				clocks = <&gcc GCC_QUPV3_WRAP1_S1_CLK>;
> +				pinctrl-0 = <&qup_uart7_default>;
> +				pinctrl-names = "default";
> +				interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
> +				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
> +						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
> +						<&system_noc MASTER_A2NOC_SNOC QCOM_ICC_TAG_ALWAYS
> +						 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>;
> +				interconnect-names = "qup-core", "qup-config";
> +				status = "disabled";
> +			};
> +

-- 
With best wishes
Dmitry

