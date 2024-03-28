Return-Path: <devicetree+bounces-52180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A43888598F
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 14:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B8171C21129
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 13:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C29D83CDD;
	Thu, 21 Mar 2024 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bug6Il+4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2EA83CCB
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 13:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711026443; cv=none; b=LTlPQv4WuDteYE3yDVxRAqF1blFfPU6zvla3GSl/c53uaIgmd2SOX4Py6iqVaMhWFCwwSWJm5wjpUiGzu09hTMAazJ04XxSUsujH+dLn7/AqTDMUPNGBXU9wwyH0wnjWb5YAVm/3fYgKhOTxu785NFiuQdiYSe6xNEnSyoYlSC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711026443; c=relaxed/simple;
	bh=hhGg/kLafZzik18e0yuZRAqudROxSqJBe0bsh89ozC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QjbEJKF2cLPVPWKCch6mUKSd95rof4eHG6QMTxGxuoTjRDqhGzR5FVUYAtHc+CWvftTXXwxhmVQSjmj7dXkSSivVk8U0tjycoGuh4k0EP4fnVHkIz0VCwY49LDU3HqhwaTdv7yU0cmkYbJa2g4apBho5Bv6dXp8sqljTBDtHHAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bug6Il+4; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2cd3aea2621so2166871fa.1
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 06:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711026439; x=1711631239; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PpYFgW1iaJYDPVGkoYpY5izRYfNLATGdserAWA3g6IQ=;
        b=Bug6Il+4NTKk8CBgoR6V1ZD2ONSEvZ1RhZnK3WhKQY4e+OcmbvsdwuB2WXCdpWHPqC
         IOlOXvW25JzJdNpUJiqD2Iz+8WTQbPFKkf8udf0eUchApPiRXjxULipYXRrUsQDttIZw
         6HQRe4Minhwb1gxdHRmO/k8T2I95kMR8tuXMf6TXXa2ZcH2GTW5+nTCU7UxBTbFl593C
         LkwiVCbq9NHRex6CkZhjKGqL0w+OlIGxlrGxW87I1jh+5genTjtRPNm1aijrSroqzyx5
         mlo12Z6gegkbE89orNQjPmcMG/DxJ01Bdq6j+EHmsNpLOh4AvA8d+VM/otjsBb/OJbvd
         wIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711026439; x=1711631239;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PpYFgW1iaJYDPVGkoYpY5izRYfNLATGdserAWA3g6IQ=;
        b=P3dyOzI9eCpUWZZyqn+ibtQkSTQr83nmK9EIaqmP/zfio2YowSr/KnEdZv06Wskqxv
         fyYnXeS9HyfE+gAhEMMmEZyLcfi/maXJQDNlsx17bIvacQRieITdff9hKdXBmgn71ruH
         L3USdWVDjdjGLig7tk1P9eviXi4tsymKpqe68zefeVqQFkfbBThAN15SytzxS8wHn3C7
         xNoeXkIghrTc23w1xFDKfdoGdEuBzdpnU6mS8FwTVhPk4DSQKlrPyurzBRZAbiardib3
         kBbb9bLIn157VvBi/0x1PsN2BlnujZWtBo0BharhZWQssWWqyraf6Te4UP2mOFfKzHru
         KwWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkwvCicKGlVr6T9SXTmY0z2kzs29DRK4keNSTV2tsMQqAtrTjVWgHGT9zzB5qZNJRUbVnYpD/OUEFMPGNSQpp2kD9BppgPqQqSQA==
X-Gm-Message-State: AOJu0YzmJyppYrAG6zbFjNxHVOmvXkqqr47oGkOQMEp9T5VsLCp3aHwv
	dq8unc/idTi3amUX61BZfJRwHdsKdvf/t6yPFe3fmop/1j0iIC5hLpXlQtpGnOk=
X-Google-Smtp-Source: AGHT+IFH1wXhTD3fZziY+q36zFHrcckDRFBZpSoDgdwPnqIT45ZHsh53dPa5YueblHnDMCcACd7V9Q==
X-Received: by 2002:a2e:9191:0:b0:2d6:a8f7:b999 with SMTP id f17-20020a2e9191000000b002d6a8f7b999mr248808ljg.4.1711026438999;
        Thu, 21 Mar 2024 06:07:18 -0700 (PDT)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id g5-20020a2e9cc5000000b002d689c6acddsm682277ljj.97.2024.03.21.06.07.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 06:07:18 -0700 (PDT)
Message-ID: <0a7da687-18fb-437f-b33a-e4a1de20177e@linaro.org>
Date: Thu, 21 Mar 2024 15:07:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 RESEND 6/6] arm64: dts: qcom: sm8650: Add video and
 camera clock controllers
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>
References: <20240321092529.13362-1-quic_jkona@quicinc.com>
 <20240321092529.13362-7-quic_jkona@quicinc.com>
Content-Language: en-US
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240321092529.13362-7-quic_jkona@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Jagadeesh,

On 3/21/24 11:25, Jagadeesh Kona wrote:
> Add device nodes for video and camera clock controllers on Qualcomm
> SM8650 platform.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 32c0a7b9aded..d862aa6be824 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -4,6 +4,8 @@
>    */
>   
>   #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,sm8450-videocc.h>
> +#include <dt-bindings/clock/qcom,sm8650-camcc.h>
>   #include <dt-bindings/clock/qcom,sm8650-dispcc.h>
>   #include <dt-bindings/clock/qcom,sm8650-gcc.h>
>   #include <dt-bindings/clock/qcom,sm8650-gpucc.h>
> @@ -3110,6 +3112,32 @@ opp-202000000 {
>   			};
>   		};
>   
> +		videocc: clock-controller@aaf0000 {
> +			compatible = "qcom,sm8650-videocc";
> +			reg = <0 0x0aaf0000 0 0x10000>;
> +			clocks = <&bi_tcxo_div2>,
> +				 <&gcc GCC_VIDEO_AHB_CLK>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
> +			required-opps = <&rpmhpd_opp_low_svs>;

Please add default status = "disabled";

> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
> +		camcc: clock-controller@ade0000 {
> +			compatible = "qcom,sm8650-camcc";
> +			reg = <0 0x0ade0000 0 0x20000>;
> +			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
> +				 <&bi_tcxo_div2>,
> +				 <&bi_tcxo_ao_div2>,
> +				 <&sleep_clk>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>;
> +			required-opps = <&rpmhpd_opp_low_svs>;

Please add default status = "disabled";

> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>   		mdss: display-subsystem@ae00000 {
>   			compatible = "qcom,sm8650-mdss";
>   			reg = <0 0x0ae00000 0 0x1000>;

After disabling the clock controllers

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

