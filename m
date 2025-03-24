Return-Path: <devicetree+bounces-160031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F05DA6D58A
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 08:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C0A63B10CE
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 07:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7531825D1EA;
	Mon, 24 Mar 2025 07:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KooJ803R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF05425D1E1
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 07:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742803006; cv=none; b=uXG7SEBBcgQfqXjV0mtjZohVnR+M11xC4O2JpoWxmSl6La0bx3iSn3L5EHiEp2JfByqOiyL6OpEoWAZ3f7g0lPajJWP+x8IYIhl8Kg/IbztA3bcMIheOkHYFlIf6tYfUvcywJICASANkDGnJvDhHj1FENpwgVBxwoUqTCOagOz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742803006; c=relaxed/simple;
	bh=MowFvwuwEIYlkePI0O2pj7UdeA7plRLewpqYbz31Td8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FzFaDowVokGUGP8g+71eS2omnKWEPqkxY5vAjZBU8UeNW3E10rZbwJqb7FZ1tiIt8vYB9j/Am4XkZWRFcvJoqCsKoetCz8F/0Pmn9r1cAAUqaFKizvYABkHZcYfYWjLrWS7OflF1uh7CROVJErMRgXg79SqpZwk+E5aU9nUikoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KooJ803R; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-224019ad9edso99475845ad.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 00:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742803004; x=1743407804; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ucovPPIZbMhnnUBesgcZ12lDzz3S1j4cMh54lyRVHno=;
        b=KooJ803RG/3M0wFgxb2v/diJZ3ipeiZ5hwXz0XrbY6uzHJwn/8ipJ05sDpHBKZoWy1
         JeieJvThLYnfkV+L4kO3mSl7NKVMey7GIA/uH8ipJ9mj6SkO1G/iH+fBGdGPLwZePwhg
         NszorGBUvubYvEJgUwRZKj0mTNFeq3wrHCL/S36J57OnI1ScpC+yZzzpqIszBWB6oHlV
         aADahZe/baRfX0wEnidNFC5JTQpGsrvrKJHmPqVvEbI10WCSmU5MNMMHBGAElSorDOe/
         F1m7BAs3u6ytvTY5krjsYWZ1civgClU+FhothVzGXCWJ5W0B3FpTVpYlRsfIVPczxRpk
         mtnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742803004; x=1743407804;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ucovPPIZbMhnnUBesgcZ12lDzz3S1j4cMh54lyRVHno=;
        b=kTYYINiAp5X82nshmxqnYBgzciWnFxptSRnTN8jx193mzMHK+lraVp0BVFDMY4qKGV
         2ZltXqqwoPKwge1DwsZl/Rk6EPkFK0z7+T61+MO/7ORVyyEAyurj0xiG0IGqSdr91Gn1
         SyUqSMY1R7V08mjH9dVtuo690I8cmHqMOklubfTCGZCPI1NKrrpjoSHYvuweyF8fEOzA
         1hos+43lrNzYbWJn/U6XhK+wD6l4pS9hw79jT7/XzXbEz33zxcMmY+SMOKkqz0ksuXPL
         dPy96cUtmamBwmwgfi6gRs9MUiT5f2uAyTpejBgvaktkvM/gRUbKDNno22byTwWP+au6
         sLLw==
X-Forwarded-Encrypted: i=1; AJvYcCVQtElvD/3vlU6QptinH+pJXVp0lwLAbak05tb5nF/a3rOBEdpq3hwm4JW+J8uFQfjGt0Wd41/cACMc@vger.kernel.org
X-Gm-Message-State: AOJu0YzVAprRFSnKfDYs7OU1NI2QDNUp7S2VAIleAZ5vP2bkRgfSOrjE
	Jpi6J+FU+ivJyPjSI4DqVrRq3foby1C1c/deuVPW+DcfgPuHbf5OTE9RCvztAQ==
X-Gm-Gg: ASbGncsZyscffiIvhy+ZSEbLWsxVaR3peYZHQFheqsSV3UPk41lQm54ad1R7eVq7/UE
	4y4003ICq0eHi4yuLytYlJHuN5DeujwU61hjxlf32d/GHmUsddYekc5OeuBZprQ4BIo2D/bneAo
	HdAa8hvU5t3gqqsPs37FUsmsMZwWb0f4rQlQ1UWByVqCmku9DHiL/wRN3At2DlCTxnMfpsNXdog
	UvfLt8nl0DZohqYwwi98Eqe6iS6fgUsBDqho4H2fmePB6ycoTQeOqBIs0SZWqk+eJmZHn7dqPrz
	29/H4qauI5XGaAwmqIVcddnVzQ3WwUKBGSNa05fwc2sykfIohCGJQtGN8tSL6GN9tlw=
X-Google-Smtp-Source: AGHT+IEgOcZILiKswo2zmluq8e4AdwrjHS4ZAEDQVeVb9xSziePjjxKkYCCAw6aWXllXLfOHqJMcCQ==
X-Received: by 2002:a05:6a21:168e:b0:1f5:709d:e0cb with SMTP id adf61e73a8af0-1fe43437231mr20411659637.39.1742803003855;
        Mon, 24 Mar 2025 00:56:43 -0700 (PDT)
Received: from thinkpad ([220.158.156.91])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7390611c950sm7425477b3a.104.2025.03.24.00.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 00:56:43 -0700 (PDT)
Date: Mon, 24 Mar 2025 13:26:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	20250317100029.881286-2-quic_varada@quicinc.com, Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <a4n3w62bg6x2iux4z7enu3po56hr5pcavjfmvtzdcwv2w4ptrr@ssvfdrltfg5y>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>

On Fri, Mar 21, 2025 at 04:14:43PM +0400, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add phy and controller nodes for a 2-lane Gen2 and

Controller is Gen 3 capable but you are limiting it to Gen 2.

> a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> one global interrupt.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>

One comment below. With that addressed,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 234 +++++++++++++++++++++++++++++++++-
>  1 file changed, 232 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 8914f2ef0bc4..d08034b57e80 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -147,6 +147,40 @@ usbphy0: phy@5b000 {
>  			status = "disabled";
>  		};
>  
> +		pcie1_phy: phy@7e000{
> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> +			reg = <0x0007e000 0x800>;
> +
> +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> +
> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> +
> +			#clock-cells = <0>;
> +			#phy-cells = <0>;
> +
> +			num-lanes = <1>;
> +
> +			status = "disabled";
> +		};
> +
> +		pcie0_phy: phy@86000{
> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> +			reg = <0x00086000 0x800>;
> +
> +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> +
> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> +
> +			#clock-cells = <0>;
> +			#phy-cells = <0>;
> +
> +			num-lanes = <2>;
> +
> +			status = "disabled";
> +		};
> +
>  		tlmm: pinctrl@1000000 {
>  			compatible = "qcom,ipq5018-tlmm";
>  			reg = <0x01000000 0x300000>;
> @@ -170,8 +204,8 @@ gcc: clock-controller@1800000 {
>  			reg = <0x01800000 0x80000>;
>  			clocks = <&xo_board_clk>,
>  				 <&sleep_clk>,
> -				 <0>,
> -				 <0>,
> +				 <&pcie0_phy>,
> +				 <&pcie1_phy>,
>  				 <0>,
>  				 <0>,
>  				 <0>,
> @@ -387,6 +421,202 @@ frame@b128000 {
>  				status = "disabled";
>  			};
>  		};
> +
> +		pcie1: pcie@80000000 {
> +			compatible = "qcom,pcie-ipq5018";
> +			reg = <0x80000000 0xf1d>,
> +			      <0x80000f20 0xa8>,
> +			      <0x80001000 0x1000>,
> +			      <0x00078000 0x3000>,
> +			      <0x80100000 0x1000>,
> +			      <0x0007b000 0x1000>;
> +			reg-names = "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "parf",
> +				    "config",
> +				    "mhi";
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +			max-link-speed = <2>;

This still needs some justification. If Qcom folks didn't reply, atleast move
this to board dts with a comment saying that the link is not coming up with
Gen3.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

