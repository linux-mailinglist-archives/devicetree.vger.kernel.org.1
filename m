Return-Path: <devicetree+bounces-193133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDEFAF96FD
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 17:38:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 132F43B8D8F
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 15:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D04288C8E;
	Fri,  4 Jul 2025 15:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N2iLyecg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5F41C3C18
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 15:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751643460; cv=none; b=L3ARScsM/Ys7sDLV+YiXhMWZZ/e8jYrg3nqZITyMGNW254pVXU8QTCR/gIBQ6A/1m3VD8hPt6ZLMDvFQdD6upJPX6kYU0xKBVyc4RUzN8yA4Ha/by1znOU4N7kYTiWInCyd/P7rukRvc9qVFOuam0Z5V3aaRvsjTjkbfssbZE4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751643460; c=relaxed/simple;
	bh=nMUwUQvpw8YaloECKT7I6pAgLXmQeXqRvqFH/BN0VR0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eEYZ5+PPSMufGP0qQOGfCPO/McajoBZ2rzl0/Nui9KX/4MDjsHpQuiKne02eCEHO4qg5Yh4NRtgb3ucYXsFezxcqoyx6pFCoUVFGYOYbxA629c0KnAvMMotAQha61zo/G1v/Fg1LTwbevr7GKVIGbvopkaEM3RUOx0tnlclkZ4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N2iLyecg; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3ab112dea41so556868f8f.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751643457; x=1752248257; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k4vHSbtWGZygYaRzsrpR/TDlNvjSrpMlfZbiVgpj+GA=;
        b=N2iLyecgzhJET466YfbKN+tbe28nj5TdEMz0iYFCAJYsrFUc+xw5lKK812NkcVMgEv
         ppAM0IaCrZ8XAkZgY2zpe36EdVzWQ4gKZvzhaI/J8JOZLMD21Dn7u9SqmtBKn7/vZYFd
         eymYDwwxbyFcNsmAYagnr2SoVAUT6cfc6ZNy/8P9pX1WrwSPrV2WF/Y9LTDJsD9lW4UC
         xxtcHuEPGqhKIRwknGMrFpTUdjYadUDhz6QZU1r6/5IshlsQRWr/DS0diK0SgL5JSN6Q
         vtwAob6M5RMrwjtZUrgcAzLoPKlX1kB8F/rO+iiSyBTZ7jL93cNgr1uHSrOl7jHAW5aj
         IDYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751643457; x=1752248257;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k4vHSbtWGZygYaRzsrpR/TDlNvjSrpMlfZbiVgpj+GA=;
        b=lchFjjqCrelSJxe4c3AUvTw2ie/zf2HWDS+xnSyb2meXeMLra0Q0rwkvVk8VU+8jrO
         kcNVpOUA54OKLezdd0iA48g0MwtHD5IYlsPzAKEDQemry4oqRndG7dwRU3e6hKCiXx7D
         n+8W98nMdh9+KgPyRNZvJSGyQ+VDXviF0zQpBfTY9Ogn2ws2MGHENH3BK/2pRCPumhFJ
         Pz6vhd/7maV46fJXt92Xp+2JM5S63S5l3fVcvXbybB7z4pe3hU2HCZAtAwGe0IF7btWE
         XMpDIydDH/+NB2Ce7PEcPDCr5prR2yL6QCV6N3f2PI6YXqdVJZtnRBqnkRbvWRzgaxE2
         1czw==
X-Forwarded-Encrypted: i=1; AJvYcCUoyScdYrqJwEVcuceD1dKX61JEUvXm2+TISv3D9eHrnfk1gJRUr+RAqpEdDg0lJ6sd01KPkNNozu50@vger.kernel.org
X-Gm-Message-State: AOJu0YxVuZIwOtExqaBjE8Kpk/zahjeuW7BsSD4nh/O575utc38RzCwI
	4l7mEUpvvtH+qxl78lTZW4qaeLCE94i8Fee3DmDO5eF6oQKJwFCVUJu0qDYp9bjsVlo=
X-Gm-Gg: ASbGncszxYDIp1vLC+8BHnMEjKTo9xpyWbMqHEVM028phFTbHf1sFp8ZHRUaaWy+AXY
	aO26JsG/kUdHmoFgymcwYU3OgkWg4/w2QgrjJKQoVW5G5QXRLe1BUkcf+/jznkvPPq/bkBZnVz2
	AJN+8EFfdxBFwNS0L/Xb1O1YX86UmhkMIV5sRaqQx0KcnDEyXdtj9ocd1gMb8+vYJWmOdFsfgef
	36dLUsiGABRZ83yryKDmN7RK++eB8/hWaKcuSNxm8EMxipDpBKFy+7ZONfSEkRpPDBi7rbtcEVJ
	cwI7fQe+Y/gdlKEzSZ6i4+f0LFzC+w1C09HDgA/NxaGv0y8oGJO0bHoJ+/v8mmgvSPzAjzFEcX5
	YgT8BONHEPz1YsQiYLuiY1RKLuj8V
X-Google-Smtp-Source: AGHT+IFhUkHnFrfbIeRzLcPeKFu2lnHSq4lMxRS57J9vUC96pAccxTa3B3IG8HOVaY9CGSpbxOA07w==
X-Received: by 2002:a05:6000:4387:b0:3a4:cfbf:51a0 with SMTP id ffacd0b85a97d-3b4964f1f76mr2566213f8f.21.1751643457080;
        Fri, 04 Jul 2025 08:37:37 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a997b1ecsm58921595e9.11.2025.07.04.08.37.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 08:37:36 -0700 (PDT)
Message-ID: <c0e03c16-ab33-442a-b73d-1b231b6d141b@linaro.org>
Date: Fri, 4 Jul 2025 16:37:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: x1e80100: Add videocc
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Johan Hovold <johan@kernel.org>, Stefan Schmidt <stefan.schmidt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
 <20250701-x1e-videocc-v1-6-785d393be502@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250701-x1e-videocc-v1-6-785d393be502@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2025 18:28, Stephan Gerhold wrote:
> Add the video clock controller for X1E80100, similar to sm8550.dtsi. It
> provides the needed clocks/power domains for the iris video codec.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index a9a7bb676c6f8ac48a2e443d28efdc8c9b5e52c0..890eaaa40184a18bff54f2d750968112a2546d19 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -5,6 +5,7 @@
>   
>   #include <dt-bindings/clock/qcom,rpmh.h>
>   #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
> +#include <dt-bindings/clock/qcom,sm8450-videocc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>   #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
> @@ -5171,6 +5172,20 @@ usb_1_ss1_dwc3_ss: endpoint {
>   			};
>   		};
>   
> +		videocc: clock-controller@aaf0000 {
> +			compatible = "qcom,x1e80100-videocc";
> +			reg = <0 0x0aaf0000 0 0x10000>;
> +			clocks = <&bi_tcxo_div2>,
> +				 <&gcc GCC_QMIP_VIDEO_VCODEC_AHB_CLK>;
> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
> +					<&rpmhpd RPMHPD_MXC>;
> +			required-opps = <&rpmhpd_opp_low_svs>,
> +					<&rpmhpd_opp_low_svs>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>   		mdss: display-subsystem@ae00000 {
>   			compatible = "qcom,x1e80100-mdss";
>   			reg = <0 0x0ae00000 0 0x1000>;
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

