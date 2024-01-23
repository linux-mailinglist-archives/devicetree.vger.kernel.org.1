Return-Path: <devicetree+bounces-34357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F14E8397CD
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3F8B28CCD0
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF7581ACC;
	Tue, 23 Jan 2024 18:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="awzTV2HH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF507FBC5
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706034982; cv=none; b=Dl4UDKLdE5lgURrvKagDJzDtDBAuKMlfSbJ9u05WHxLeqaXVy+yPazhmc1Pq9PvXt3KAnmUGbhXaWCdHLDeoMilDWGfFNZKMYteH9aYwB+uPOKIsLIH8jhQ16aH0R5kIgq78Jq1kw5R9a0bVTqQ4R68KixpihnCjEKND2yEySH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706034982; c=relaxed/simple;
	bh=xwt5Xogl8JtlwbYXKPVXo86vDQncHNvaSs6NLcMQisU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ik9lDAqJNTlr4nW2DHR18uqoNlGYIa4IeMwKD+uc52yfWtfFefhyiCDHVP54Ko4+6BJotFUb3rr8EqOw3oFqe9SvTX9BX5PfBf0/ufhbDpiXFolZ8V+HIKwR4NX22QYpUIWEbT86paLW7vNi9my2WQaiDU6Fz1u5H1ZXS8EyWAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=awzTV2HH; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2cf19f65271so7679421fa.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706034979; x=1706639779; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BVZLZtkl7yd9ae6XR3zK2S6+xyNEMxP7NtEJZQlRyZU=;
        b=awzTV2HHpX9T+m8yG0xON1GproWh3Y+l3G8ypC/Fu8iYHNSAQxaRJwhHS8dAcMYjYQ
         ElWPjPKhTo3Q0+0yUoID0DVilHmW2p5GvF4sp6AU+HUWEZh9+2NWYxzHVze2jONZV0y9
         jOCBxzsbkvhGHjJ/ruVYgswUn6gmJtSMly4ZksUmYmQICxAhsXFHYhiary1AIh0JS5f4
         RmRcY+pPL9vxe2UZMe5++2d1ySmS6U+9AyBro/r9ruYIus5LEnmmzOvJtccYXb4EWXi3
         9FHRONXJ0gO08pQ//XZ71wD2PaOw1Dlb5s4gv/OpVDP5VSIjj+mPLfCIlSz+v6tO5s4F
         XXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706034979; x=1706639779;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BVZLZtkl7yd9ae6XR3zK2S6+xyNEMxP7NtEJZQlRyZU=;
        b=S5x7VLLDWFuBtP3fPiwhsFrktWhKYZtl3R+ywG9BfnaIhN4x+bsIh8tuBM/mbQIWff
         1CBUTJduKG/o9haJNfmhi0w67im9i3quC+uqp40/5yqmF0dCpyRioBiJTg6JMwzG7/qW
         yFGjYisw2DZMP6Qs9GH7rZmyqaRp6zRgvGgtGnJIOPn8nUNCbllDIvBFoPEBJWMDod8F
         3VAyXfb7r3dv/VpoJzPwQOl3OxG9ikqqq3glfKz2EehHjkurGQhZ8cXZpOpfqI1IbIbc
         pdAYwKVVwROMTGjGMq0847G69OH8trOgVtrSXu0YMCu05b4F0cq3bBTI6PGHsmGhViNf
         sfCg==
X-Gm-Message-State: AOJu0YyJCKK8AmrdpJfnk93Gjk4jUwQ3lVfCIXSASolz4sVCNo9DUQgb
	/et5W6fTDBTI94U+FicCmLx6uOVn6wQqALg6g+8Mp2xGls5fPbX2wwwptCQsWzY=
X-Google-Smtp-Source: AGHT+IHFzd/olpcWwMVF/7zyV0CRAoqiFaFG6R/4TKSFRjpLVB7fn1VsZdgjkbe1ZCJtzScJn7dziw==
X-Received: by 2002:a19:6455:0:b0:50e:51fa:1d3b with SMTP id b21-20020a196455000000b0050e51fa1d3bmr2923681lfj.93.1706034979076;
        Tue, 23 Jan 2024 10:36:19 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id c26-20020a19761a000000b0051009ef42a7sm199123lff.287.2024.01.23.10.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 10:36:18 -0800 (PST)
Message-ID: <07cef0ec-dc18-4cee-a6df-8c7f16600c50@linaro.org>
Date: Tue, 23 Jan 2024 19:36:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/11] arm64: dts: qcom: x1e80100: Add display nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
 <20240123-x1e80100-dts-missing-nodes-v4-8-072dc2f5c153@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-8-072dc2f5c153@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/23/24 12:01, Abel Vesa wrote:
> Add the required nodes to support display on X1E80100.
> 
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> Co-developed-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 518 +++++++++++++++++++++++++++++++++
>   1 file changed, 518 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index e8d2ea2b26ed..247ff7a9e405 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -4,6 +4,7 @@
>    */
>   
>   #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-tcsr.h>
>   #include <dt-bindings/dma/qcom-gpi.h>
> @@ -3298,6 +3299,523 @@ usb_1_ss1_role_switch: endpoint {
>   			};
>   		};
>   
> +		mdss: display-subsystem@ae00000 {
> +			compatible = "qcom,x1e80100-mdss";
> +			reg = <0 0x0ae00000 0 0x1000>;
> +			reg-names = "mdss";
> +
> +			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +				 <&gcc GCC_DISP_AHB_CLK>,
> +				 <&gcc GCC_DISP_HF_AXI_CLK>,
> +				 <&dispcc DISP_CC_MDSS_MDP_CLK>;
> +
> +			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
> +
> +			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
> +					 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
> +					<&mc_virt MASTER_LLCC QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "mdp0-mem",
> +					     "mdp1-mem";

You likely also want to add the cpu-cfg path

[...]

> +
> +		dispcc: clock-controller@af00000 {
> +			compatible = "qcom,x1e80100-dispcc";
> +			reg = <0 0x0af00000 0 0x20000>;
> +			clocks = <&bi_tcxo_div2>,
> +				 <&bi_tcxo_ao_div2>,
> +				 <&gcc GCC_DISP_AHB_CLK>,

This clock is not actually registered with the CCF.. Which means it's
also never cleanly shut down.. Please fix the clock driver and check
which others got omitted as well.

> +				 <&sleep_clk>,
> +				 <0>, /* dsi0 */
> +				 <0>,
> +				 <0>, /* dsi1 */
> +				 <0>,
> +				 <&usb_1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp0 */
> +				 <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
> +				 <&usb_1_ss1_qmpphy QMP_USB43DP_DP_LINK_CLK>, /* dp1 */
> +				 <&usb_1_ss1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
> +				 <&mdss_dp2_phy 0>, /* dp2 */
> +				 <&mdss_dp2_phy 1>,
> +				 <&mdss_dp3_phy 0>, /* dp3 */
> +				 <&mdss_dp3_phy 1>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>;

Likely:

required-opps = <&rpmhpd_opp_low_svs>;

so that the PLLs have a chance to spin up

Konrad

