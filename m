Return-Path: <devicetree+bounces-56944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FE089B28E
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 16:45:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BE211F220D3
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 14:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69A5F39FDA;
	Sun,  7 Apr 2024 14:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="I0nHgsty"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DE5D39AE7
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 14:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712501122; cv=none; b=pZG7RISx2yi+gBEtskK6jC0bJtFvO2TF1ybTYFiEV1f7aB8VHh5eQqBponkvChZF0nUVPkZvXgpUgqyc8mg+WGmkobgg99YImlc2zmHCIOU+CqAV1MREIW8dhrWjCT2/wGV1Am6IJUz9gE5subdT316ZYp/qVG4f/8JeChxdLgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712501122; c=relaxed/simple;
	bh=zAVEBXOS1UCmuWPFa3NvXWxQVJDx8fG5WOkx1TFLm5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c9QRpb6U+niYnPNv7MNE4MvUKlQxM6K7OPpB608Wt8wpo7gqQw6xKorWP/uq6WpGeo1SilDPe3aeATRvMwoTy6nrWGY+sJ/vz6BYGyY1OpwnJdFdqUsV+SzN+2kP3yf3KmTm29sGDuBNG7zQoO8QiayrWsHwGSQVMG/Wzlw67D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=I0nHgsty; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6ecf3f001c5so2950785b3a.1
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 07:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712501119; x=1713105919; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qhyVRxqK5AqjHscgxtd5ktasU/myfa3FBDWSuBFIWmI=;
        b=I0nHgsty8zrw/z6vkcr6HRsHysvYIiMRaA8HOGS5mnKgy5+CZEtyknzpCiUaNHMv0Q
         O1+BeAiMDhgRPz81M2TzxgmktpWTXlo7bSLCu/du8C+FuvfQ5puaiQ5vj7TqCJWTi+vg
         mbjEHSEWXyrXRPdsQ+ocDkSC4nGEl2XoNehfGvdUzhV4BC6BOSlmHh37wsj2/OSi1Mr3
         CCaVbI57Kjs7sAO6k0nidmcShU/5VxfXQm/pJlw6JcfF2VNthpisIhSHmfn2b8EyoRiV
         qOoFutGoApto5Br5Q43m1PYg5ptl4/QHRCvbhxCZpZXvfWUE9fPSn+MfGbrdn19IA0Ts
         DyrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712501119; x=1713105919;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qhyVRxqK5AqjHscgxtd5ktasU/myfa3FBDWSuBFIWmI=;
        b=q8dBMAj0cgkRFIt3/RjzfT3lyd5MRv2oOXYdey7LNyGs6kRMjCz9s4QrMPChoqbrbW
         N+pArw01/plKCMcYQzxULFuN+XSUaJIk3vw0B9x90dPFLxLq0KVCHgSFP6bIfurCVfeW
         zq5p1GPLsKWQ+ZdYXHivqFSerYhYSzaeEo2M9NiqItR4EY4/1qPVGdCdFJDy9y2m+YwF
         fQbO/JxGCTsW2orO06/K6+VjY6361V7jOMLHC5NZ2lvFckfFZwJc7ZXgqiElUDhmjwtj
         8kEm+1qvq88SLOH+W/Akj5WZiHXpzNOduhNsxcf8pom+tLYJDXxh0f+XdF3arbp3ew0V
         yXxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOVKbGIjUmSZnm1OvvzIq3Ftmg1duba7RR1xKZdLrKxxncBg2jlt2KL6Juf5o25q9E6F7b80G9MYr39yZH2UjpWZrOaZTX7jqSeg==
X-Gm-Message-State: AOJu0YzutWZvZ+36wX/FXWOoSk6dAzu5h44U+n5J3rbISFfwHdFdT1j8
	S9+c9ImBqjnS0WdhSdSQqzGyBOZOEg+e7CeBCsxqHw5axLQo4COfhpUzZkPGeA==
X-Google-Smtp-Source: AGHT+IGtrEwjMPAr4IjRSduTFx845THlBva6yxJTug3j99tv2qZB7XyKDyBNddpCjrxb+6DN4zwn4w==
X-Received: by 2002:a05:6a00:1884:b0:6ec:fdcd:18eb with SMTP id x4-20020a056a00188400b006ecfdcd18ebmr8270455pfh.21.1712501118786;
        Sun, 07 Apr 2024 07:45:18 -0700 (PDT)
Received: from thinkpad ([120.56.192.184])
        by smtp.gmail.com with ESMTPSA id g14-20020aa7874e000000b006e69a142458sm4684046pfo.213.2024.04.07.07.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 07:45:18 -0700 (PDT)
Date: Sun, 7 Apr 2024 20:15:10 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, johan+linaro@kernel.org,
	bmasney@redhat.com, djakov@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	vireshk@kernel.org, quic_vbadigan@quicinc.com,
	quic_skananth@quicinc.com, quic_nitegupt@quicinc.com,
	quic_parass@quicinc.com, krzysztof.kozlowski@linaro.org
Subject: Re: [PATCH v9 4/6] arm64: dts: qcom: sm8450: Add opp table support
 to PCIe
Message-ID: <20240407144510.GD2679@thinkpad>
References: <20240407-opp_support-v9-0-496184dc45d7@quicinc.com>
 <20240407-opp_support-v9-4-496184dc45d7@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240407-opp_support-v9-4-496184dc45d7@quicinc.com>

On Sun, Apr 07, 2024 at 10:07:37AM +0530, Krishna chaitanya chundru wrote:
> PCIe needs to choose the appropriate performance state of RPMH power
> domain and interconnect bandwidth based up on the PCIe gen speed.
> 
> Add the OPP table support to specify RPMH performance states and
> interconnect peak bandwidth.
> 

Same comment as the bindings patch.

> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 77 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 615296e13c43..881e5339cfff 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -1855,7 +1855,35 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pcie0_default_state>;
>  
> +			operating-points-v2 = <&pcie0_opp_table>;
> +
>  			status = "disabled";
> +
> +			pcie0_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1x1 */

s/GEN 1x1/Gen 1 x1

Same for all comments

- Mani

> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 2x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};
> +
> +				/* GEN 3x1 */
> +				opp-8000000 {
> +					opp-hz = /bits/ 64 <8000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <984500 1>;
> +				};
> +			};
> +
>  		};
>  
>  		pcie0_phy: phy@1c06000 {
> @@ -1982,7 +2010,56 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pcie1_default_state>;
>  
> +			operating-points-v2 = <&pcie1_opp_table>;
> +
>  			status = "disabled";
> +
> +			pcie1_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1x1 */
> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 1x2 GEN 2x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};
> +
> +				/* GEN 2x2 */
> +				opp-10000000 {
> +					opp-hz = /bits/ 64 <10000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <1000000 1>;
> +				};
> +
> +				/* GEN 3x1 */
> +				opp-8000000 {
> +					opp-hz = /bits/ 64 <8000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <984500 1>;
> +				};
> +
> +				/* GEN 3x2 GEN 4x1 */
> +				opp-16000000 {
> +					opp-hz = /bits/ 64 <16000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <1969000 1>;
> +				};
> +
> +				/* GEN 4x2 */
> +				opp-32000000 {
> +					opp-hz = /bits/ 64 <32000000>;
> +					required-opps = <&rpmhpd_opp_nom>;
> +					opp-peak-kBps = <3938000 1>;
> +				};
> +			};
> +
>  		};
>  
>  		pcie1_phy: phy@1c0e000 {
> 
> -- 
> 2.42.0
> 

-- 
மணிவண்ணன் சதாசிவம்

