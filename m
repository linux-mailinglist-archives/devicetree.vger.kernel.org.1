Return-Path: <devicetree+bounces-4897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA97B429F
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:22:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0FA3E282E2A
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F891805A;
	Sat, 30 Sep 2023 17:22:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757E1FC5
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:22:45 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 305D9DD
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:22:43 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50573e85ee0so1193931e87.3
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696094561; x=1696699361; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JWtx9dHqmbOflZi0fnqEVpNoq1UTPPJzLzExwXGV3SI=;
        b=IknSE4NhxLd8C0Gi9Fu65zdNIo3A5eb/G8M5qFxaUpcZN+knVIjanOK3H7NJH26L5x
         DYbt/4BSv8gka0/8XyzBuZ/GoPHLNgaqlrp/o1F0gEs1qazFbtgSCByiqfCBdgvrYxgW
         F/5TPGxYyRh5EX+DanwIo45Vp1cV2uEGoaUJl9QxaiZqYamYs/8uQg7hLvdouott4jHV
         kRHLsFfgrRtrUiN/w51R5sltChvXJsFGZyMpfJLTYW8eTVr4Lfkj8+BQ93l1eeHXs9YR
         vZN2GgYdoCgYePnPMan3+EnIs7zWLgO7dKk4RMKzh5gInW8D7eU/l9yqWN9RltHZLVxW
         Ee/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696094561; x=1696699361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JWtx9dHqmbOflZi0fnqEVpNoq1UTPPJzLzExwXGV3SI=;
        b=LrLigPsmTccf3kq7yUzUViRnthUJTHPgOMWvI0fGottxHvXx7pUp01NxmWbk+c0CqS
         TCIiikseDaCYby9sQlc2KHeKINPV/mdKOAeG/Ugok1NtMiAIZQa5l1s+dZpQTYpXj9w1
         muxCk4fGbMZWZ8BzmMsH7e+/1SG8J9FeWch6C+iyhlFWc0a2zT0mW5sRVXzYl3OV3X9C
         hc7cD1CQlgkW2IHWLHYyEJUUB+Bxdtxwc/mL7eLiEa0xMX2Uk+36lrUAI/VoEU1LooFU
         nEm719KchPXDuIsZkXrw0BinT1dwQvGqejF18Wl/lk8KBzNKio/DvX9k8WUwA6NfnnJd
         Al0A==
X-Gm-Message-State: AOJu0YyZX8lDdDjheDoHY4GxYilpeV47xdTXxTqD60r0X6k+jUpfRCzd
	/QnebbJN8S4IfED3suicQ+8f/g==
X-Google-Smtp-Source: AGHT+IFmPULHC/lTZvEAMtHRivlmdkecp21az20I0qHWTzyMMavZ5xJfz8FMnJKA5soibKeUp+nyEg==
X-Received: by 2002:a05:6512:3a8c:b0:502:cc8d:f20a with SMTP id q12-20020a0565123a8c00b00502cc8df20amr7139739lfu.27.1696094561376;
        Sat, 30 Sep 2023 10:22:41 -0700 (PDT)
Received: from [192.168.246.189] (85-76-98-178-nat.elisa-mobile.fi. [85.76.98.178])
        by smtp.gmail.com with ESMTPSA id z8-20020ac25de8000000b00500ba43a43asm3994414lfq.86.2023.09.30.10.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 10:22:40 -0700 (PDT)
Message-ID: <5bf11343-6ab4-43a8-b12d-f2b072ce388a@linaro.org>
Date: Sat, 30 Sep 2023 20:22:36 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] arm64: dts: qcom: ipq5332: Add USB Super-Speed PHY
 node
Content-Language: en-GB
To: Praveenkumar I <quic_ipkumar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 arnd@arndb.de, neil.armstrong@linaro.org, nfraprado@collabora.com,
 u-kumar1@ti.com, peng.fan@nxp.com, quic_wcheng@quicinc.com,
 quic_varada@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_kathirav@quicinc.com, quic_nsekar@quicinc.com,
 quic_srichara@quicinc.com
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
 <20230929084209.3033093-4-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230929084209.3033093-4-quic_ipkumar@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 29/09/2023 11:42, Praveenkumar I wrote:
> Add USB Super-Speed UNIPHY node and populate the phandle on
> gcc node for the parent clock map.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/ipq5332.dtsi | 25 ++++++++++++++++++++++++-
>   1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index d3fef2f80a81..b08ffd8c094e 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -158,6 +158,29 @@ usbphy0: phy@7b000 {
>   			status = "disabled";
>   		};
>   
> +		usbphy1: phy@4b0000 {

Are there other USB PHYs on this platform?

> +			compatible = "qcom,ipq5332-usb-uniphy";
> +			reg = <0x4b0000 0x800>;
> +
> +			clocks = <&gcc GCC_PCIE3X1_PHY_AHB_CLK>,
> +				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
> +				 <&gcc GCC_USB0_PIPE_CLK>;
> +			clock-names = "ahb",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			resets =  <&gcc GCC_USB0_PHY_BCR>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb0_pipe_clk_src";

I'm not sure, what is the best approach her. For QMP USB and PCIe PHYs 
we had to use fixed names historically. On the other hand for QMP DP 
clocks we are fine with the generated names. I'd prefer the latter case.

> +
> +			qcom,phy-usb-mux-sel = <&tcsr 0x10540>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>   		qfprom: efuse@a4000 {
>   			compatible = "qcom,ipq5332-qfprom", "qcom,qfprom";
>   			reg = <0x000a4000 0x721>;
> @@ -200,7 +223,7 @@ gcc: clock-controller@1800000 {
>   				 <&sleep_clk>,
>   				 <0>,
>   				 <0>,
> -				 <0>;
> +				 <&usbphy1>;
>   		};
>   
>   		tcsr_mutex: hwlock@1905000 {

-- 
With best wishes
Dmitry


