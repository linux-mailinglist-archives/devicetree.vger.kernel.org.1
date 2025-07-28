Return-Path: <devicetree+bounces-200206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C94B13BE4
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 15:48:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91E33189319E
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 13:49:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB3D21A0BD0;
	Mon, 28 Jul 2025 13:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FBpsdSPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C6A266EFA
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 13:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753710521; cv=none; b=qUhIrJ1FzrRveleHN7e1qZk4t2XjSgzhcEzkKZrx23xAq1YNfVuYF+U0s5IuQHtKN3dHgYeyUGCAPkd8u74Ue5RhsnI+PXaVVSTfW6oPSIZ1WtJWn4OrAfuR6xowji8hERwqrUynGBRcasPdTOhTWJAtI8iHh5fLD1HkqorM9FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753710521; c=relaxed/simple;
	bh=7xYiPiwMPmCKG3Rb8ODYtqdcgFby8L44/hiz+sqse64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bBSTy8UEGS1lB7sWCfc/4TGT/BVFlTVTxMn+r8p4/YgD8WqC+cQ+ZdNYMFYsnAH1PzauL4sqkYDHUuyH75cGMXUoeOYAFk3IhNNRSFHsZYFowLol5KO1z+8PgssEFGbcEiuQU1Go7vgYN14+fIfXLJXues1VLrZXjm/C+JuTKz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FBpsdSPC; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4561607166aso31108135e9.2
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 06:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753710518; x=1754315318; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GySiiFaaabiZQ4Il8d89HhZwj5V40q8muWzbkZdlYfk=;
        b=FBpsdSPChJxvCI0Q9iJdpiZQRbt1FGfCORhgABTx4FdGViq5ydA1VsG0HZWRxbOzVB
         MDVR5O2STGFzMFHa5urCAb42dbl2qJ4IAeoK89XVFkKNOFoNPb+BPSGyCKzttDC/SVoY
         sD2+FdFLFR5fhXPl8xywviBGdXI2QYc/FLfypsQl91l5m2ieEzjIqe3TPGCDA1MvIGbN
         dYFvRX0IR/vKbfuhw1WbEX4t82Jo4WepVAiXEPFkwcrwtBjAsFrHVkYsiGRue7tWuDzG
         JS/4dZo3O4saAoWTyZ0Ocwlp5UXeb//nJ2hi271raIF6oiKvRQJ7vBTrtrnWgOXJdP1W
         3KhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753710518; x=1754315318;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GySiiFaaabiZQ4Il8d89HhZwj5V40q8muWzbkZdlYfk=;
        b=kPLnrQJG0VlNGFQERSS+EM8JTWQxlTR2vrLseU/uA123KBXxrEpnS13NmlCEwDXlWn
         NcBt/ULHyoMM4WLZOlLpiU+5CJDvz+6TJO/95s7C0p8WyIbpqhRgL8Exp2gGX5o7Nx3M
         DJ7WCdSYgU6zzYAtZ4y40hS2NWG3uqO8xKadAOra8+MOKWOrSYh6V/Na83wV1/MuHzEQ
         4NDBtuiB8dGuV2DNqVQoDJJxNjSHgHsnZushuuO0v/N9TEn7W5g8IfgNeP+FzRx9vp2w
         OHqOUSJWGkaj14F5tt45jA1TV4tYjPPGwiVL77EOuo8mtNknLMu7jYskGicTwr/MPapw
         RzSA==
X-Forwarded-Encrypted: i=1; AJvYcCWCJHCcRX5qnTX8EgjxYUmZWOIbsucdkrzMfs95GYIYAmBXN4HM+HOq2K5xKiEFRly+oz/UtHqMIJl6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm5HcctXqDxKS8tWWrdFY2Vl7eZ8UFH80gybVcVy22xjoJ0sGh
	ie0ueQ4tw1592sE2Fk72eYFLLuDqUUNR186+qEa9N/AcOPXVDjJ6W2xjpiOY97yjiSc=
X-Gm-Gg: ASbGnctiway6ZkBP25U4IgjfnsG00BSpBJQQEiKpOfnZRRV//teV5XptXl8PwCy6x3g
	dzaeBFQWRiVuc9f0NLyjlGubDILT+h9Jewd91k2JCc9WiDXnwEk81N9BSPjMy0PuZlwUwCixfK2
	Ze4IceBO8w7t1velJcCZiSNH2g4SzeMfJa4Kg0oaAz/UIZrotz7MCaza6uQ5RDJV7ghCXgSAWos
	RQeoOAMyHQ4gnfLm0dEQ87EgpaUXov3i+UsQxdA+RIKFP29z3hWkf07QFnVacDWqxGUgnkWVVzU
	ylvM06BR0fucqD90pNAKxNrl9uDzgGnrzK2jf9wRVnzfEPPLSrs+k2Y1aAAmOxNQfpDtB61XIMI
	7ZmYRALtO33mdaPQA2a16hGXT+8/wTDP3DOtQQsy4VG6Z+5ZOhRpjMRp7b3Gy+ME=
X-Google-Smtp-Source: AGHT+IFc0a/dVlHIMLVOyP9kKSGycnWL7vZKmINSvzq5X/lptb5FMCqb9vFSczBjeGl5NDbg5XFrqQ==
X-Received: by 2002:a05:600c:4f14:b0:453:5c30:a1fd with SMTP id 5b1f17b1804b1-4587a6ab65cmr76381245e9.8.1753710518174;
        Mon, 28 Jul 2025 06:48:38 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4587ac66ed6sm100843815e9.28.2025.07.28.06.48.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 06:48:37 -0700 (PDT)
Message-ID: <ef93c737-1a85-4b8b-bd70-5dcebe0a1f18@linaro.org>
Date: Mon, 28 Jul 2025 14:48:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/9] arm64: dts: qcom: sa8775p: Add support for camss
To: Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250703171938.3606998-1-quic_vikramsa@quicinc.com>
 <20250703171938.3606998-5-quic_vikramsa@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250703171938.3606998-5-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/07/2025 18:19, Vikram Sharma wrote:
> Add changes to support the camera subsystem on the SA8775P.
> 
> Co-developed-by: Suresh Vankadara<quic_svankada@quicinc.com>
> Signed-off-by: Suresh Vankadara<quic_svankada@quicinc.com>
> Signed-off-by: Vikram Sharma<quic_vikramsa@quicinc.com>
> Reviewed-by: Konrad Dybcio<konrad.dybcio@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi | 185 ++++++++++++++++++++++++++
>   1 file changed, 185 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index fed34717460f..38ac33b082c8 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -12,6 +12,7 @@
>   #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
>   #include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
>   #include <dt-bindings/clock/qcom,sa8775p-videocc.h>
> +#include <dt-bindings/clock/qcom,sa8775p-camcc.h>
>   #include <dt-bindings/dma/qcom-gpi.h>
>   #include <dt-bindings/interconnect/qcom,osm-l3.h>
>   #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
> @@ -4345,6 +4346,190 @@ videocc: clock-controller@abf0000 {
>   			#power-domain-cells = <1>;
>   		};
>   
> +		camss: isp@ac7a000 {
> +			compatible = "qcom,sa8775p-camss";
> +
> +			reg = <0x0 0xac7a000 0x0 0x0f00>,
> +			      <0x0 0xac7c000 0x0 0x0f00>,
> +			      <0x0 0xac84000 0x0 0x0f00>,
> +			      <0x0 0xac88000 0x0 0x0f00>,
> +			      <0x0 0xac8c000 0x0 0x0f00>,
> +			      <0x0 0xac90000 0x0 0x0f00>,
> +			      <0x0 0xac94000 0x0 0x0f00>,
> +			      <0x0 0xac78000 0x0 0x1000>,
> +			      <0x0 0xac9c000 0x0 0x2000>,
> +			      <0x0 0xac9e000 0x0 0x2000>,
> +			      <0x0 0xaca0000 0x0 0x2000>,
> +			      <0x0 0xaca2000 0x0 0x2000>,
> +			      <0x0 0xacac000 0x0 0x0400>,
> +			      <0x0 0xacad000 0x0 0x0400>,
> +			      <0x0 0xacae000 0x0 0x0400>,
> +			      <0x0 0xac4d000 0x0 0xd000>,
> +			      <0x0 0xac5a000 0x0 0xd000>,
> +			      <0x0 0xac85000 0x0 0x0d00>,
> +			      <0x0 0xac89000 0x0 0x0d00>,
> +			      <0x0 0xac8d000 0x0 0x0d00>,
> +			      <0x0 0xac91000 0x0 0x0d00>,
> +			      <0x0 0xac95000 0x0 0x0d00>;
> +			reg-names = "csid0",
> +				    "csid1",
> +				    "csid_lite0",
> +				    "csid_lite1",
> +				    "csid_lite2",
> +				    "csid_lite3",
> +				    "csid_lite4",
> +				    "csid_wrapper",


You can add my RB here with csid_wrapper as the first register bank.

The reason for this is CSID wrapper contains a mux for the CSID register 
banks and so its the "boss" so to speak.

Please update and then add my.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

