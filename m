Return-Path: <devicetree+bounces-130475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A45F9F004E
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 00:41:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A56318859C0
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 23:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6DFA1DED6F;
	Thu, 12 Dec 2024 23:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="jN5nq/1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334EC1547F5
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734046879; cv=none; b=vBHV/UmSlyQDgongKWE9nsuLNhVzuJ4KFf6C/v94tHhNW/Z2mrMhqwaUKyQq5X9/M/r32zQqgJYAaVdfnQcd75TNpCTDL+VIcON5uqeQmT6N0Fh/fNWd77RWDgrg2ZMjs90I4c8Ji8/xAM1L6tXgLlBkRKe8SVh0NYpFN/ydzcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734046879; c=relaxed/simple;
	bh=uo69gfTytQ6yIr9T72Tc6iDBIQ20HuW9Y/3W8/4tbP4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RsTaEiPIsUpCm7E9P0pleBAKn8EznBC0oPbxdLin8ggq1amieaJAV5zq/7F2J1tJs61KiDSw/dSx6//hpoUU/2h248ENJYtnxg87gLi7S7ljq7QM0m80XoF2aKe4gMX4r/C7Pcje+Fv51di84rP73mgBjImGP/hnU3JJ33Zx4v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie; spf=none smtp.mailfrom=nexus-software.ie; dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b=jN5nq/1K; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexus-software.ie
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nexus-software.ie
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa6c0dbce1fso148888666b.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1734046874; x=1734651674; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UQsjfPrdG6gSl8+g1IXqtV4/ePn8YOONjGA/mW2bvj4=;
        b=jN5nq/1Kf/pVDwwhXVLGrKzhJY7+e+mqEVS8bAaz+XNoO35pFbv+yWsWyK47+XXFvy
         QgYWnEjD9IKVmkxgL1uu/zsoMDCMMkXUf7H6c5O3QhNE+q2f7Gy6gAt6d5JucYjcdHtx
         is/QKeLE4f010uUfMb+10cZr/MSYqW7FA17YkJlTreDdP4PwwOxftdNBKTBBsUoC3MZT
         b1yB/LfUrKC1ly2Lt17ftvfVuNkwzR76esfGZrl5u+ttd8TKBpOqextN2Pfshw52Qh4C
         nuDO7zsdSVFSCW7zYU+dPGaTBAxeYik0KJeM7dOppE4LGVU0o6XfnTHqh/KiqyJEAsKM
         Blww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734046874; x=1734651674;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UQsjfPrdG6gSl8+g1IXqtV4/ePn8YOONjGA/mW2bvj4=;
        b=P7L4bEbgjjnU1pAByzO4+GagxQOa83IETZhykgM9OTpBamP0AQwdcpXSzUWjQOYx01
         /pqMKcbI3sGCJ+XkFyX084m88SNujSUdWsmnd8IqVuqYONgfyTfPIvUIoXebNnOdv3Lf
         hVE0b+Ffk0ZbAeKBO1wt7jdEt4/6PPB+Q1d5CpxtGrOyWnPJJ5UScpzGCs8Lzixgho4j
         g+mK1T1NK1IHM/OQHriqHl7uZIOrWCnOu4NQWYYq9nkjnGXFvEX8SH35NR5CdO39hEnk
         chOw3zEvPa1omVqLGcjqx9wlSx8fEsFE2jJ1YWbqwAprJ5GQ42AlF0y9stgmzC3tY6lx
         1jVg==
X-Forwarded-Encrypted: i=1; AJvYcCUh+b2P2T6/reE/YWcAvpI4d5XGGpwp0N8hZPeuD1KoOgrifd+sVc4R+4eulTRA+SvJR2sgsfQisNIl@vger.kernel.org
X-Gm-Message-State: AOJu0YxRG46zO6ItF9XrTXbyOz8eMmsCDcwheoUvT5griXmDcwwDZKzE
	npwX6Xajv3eqjGGzhrLoWvNvtk9oZI5QqOwUYc1NXn7rJlni5y7mJXoFIhLSWhc=
X-Gm-Gg: ASbGncumfCHpRADE/fnifrWCjhmwe9jSxcnIvzzg+hzF1FDeOWnIPcL4gscHFUtVu2b
	03sFhj4XTrjBwXJaUhaRtloAX3hY0KrmzBlRTnFoa/2msqkP35ROzqpWFoWpQ6KPduncxZT/b7S
	0czTLJwGAV4LgnfZzMX6m0G9hnvHsuxY6TMctZyTJFwWpFqaroVRxmeuGQoDmYya2INYwegIpJl
	Q0B3y4WN3zbYLkHFXC0cwnye6MzZrKkFxHX3ZcwDOaJ3/nAx1c8XJQ60WLyqIJnJ6jP/c6E
X-Google-Smtp-Source: AGHT+IG8jiuHMisDvvkyy3UgwKCCnkfWoSmnksn7Ht0vzvdz1jlagwGbDGs3xQpUujDNZUE23UYBMQ==
X-Received: by 2002:a05:6402:4499:b0:5d4:55e:f99e with SMTP id 4fb4d7f45d1cf-5d63c3405bfmr827334a12.18.1734046874368;
        Thu, 12 Dec 2024 15:41:14 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6964b7c64sm551544066b.95.2024.12.12.15.41.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 15:41:12 -0800 (PST)
Message-ID: <80df2adf-fc32-4f9d-b3e4-5cff16a179f7@nexus-software.ie>
Date: Thu, 12 Dec 2024 23:41:11 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Fix up remoteproc register
 space sizes
To: Konrad Dybcio <konradybcio@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241212-topic-8280_rproc_reg-v1-1-bd1c696e91b0@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20241212-topic-8280_rproc_reg-v1-1-bd1c696e91b0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/2024 22:19, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Make sure the remoteproc reg ranges reflect the entire register space
> they refer to.
> 
> Since they're unused by the driver, there's no functional change.
> 
> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index ef06d1ac084d3205a149feff880f457822dca2b4..c97d1eeaf890f7ac2814297bff299c0bdd0ddd04 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -2743,7 +2743,7 @@ usb_2_qmpphy1: phy@88f1000 {
>   
>   		remoteproc_adsp: remoteproc@3000000 {
>   			compatible = "qcom,sc8280xp-adsp-pas";
> -			reg = <0 0x03000000 0 0x100>;
> +			reg = <0 0x03000000 0 0x10000>;
>   
>   			interrupts-extended = <&intc GIC_SPI 162 IRQ_TYPE_EDGE_RISING>,
>   					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
> @@ -5254,7 +5254,7 @@ cpufreq_hw: cpufreq@18591000 {
>   
>   		remoteproc_nsp0: remoteproc@1b300000 {
>   			compatible = "qcom,sc8280xp-nsp0-pas";
> -			reg = <0 0x1b300000 0 0x100>;
> +			reg = <0 0x1b300000 0 0x10000>;
>   
>   			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
>   					      <&smp2p_nsp0_in 0 IRQ_TYPE_EDGE_RISING>,
> @@ -5385,7 +5385,7 @@ compute-cb@14 {
>   
>   		remoteproc_nsp1: remoteproc@21300000 {
>   			compatible = "qcom,sc8280xp-nsp1-pas";
> -			reg = <0 0x21300000 0 0x100>;
> +			reg = <0 0x21300000 0 0x10000>;
>   
>   			interrupts-extended = <&intc GIC_SPI 887 IRQ_TYPE_EDGE_RISING>,
>   					      <&smp2p_nsp1_in 0 IRQ_TYPE_EDGE_RISING>,
> 
> ---
> base-commit: 3e42dc9229c5950e84b1ed705f94ed75ed208228
> change-id: 20241212-topic-8280_rproc_reg-15c636427963
> 
> Best regards,

These ranges check out.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

