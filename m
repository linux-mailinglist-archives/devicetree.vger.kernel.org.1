Return-Path: <devicetree+bounces-11710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB0B7D660A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15B65B20E6B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BAA81F92C;
	Wed, 25 Oct 2023 09:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OimNZ9aV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6CF1C2AF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:01:18 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD2DC199
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:01:17 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507b9408c61so7400815e87.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224476; x=1698829276; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AvgTazU05wmbAVu8s1pewYEdDleLktThS4lYuVG5GWA=;
        b=OimNZ9aVm7DVVVDFF1tukWaSQxopYsClRM3K7b8f4qan4CyOH0cREhf2KVe4Un2ES5
         WcRw35fckOwoIiTqkjg5MjM+FaMpCF0+Y/+S/NutqQYLnwS8Rt6Kmh9M/Zk6DrCutn9Z
         ysqOdiMrKIMQNXSIy/U1VxTCb5uub82OyhOAJTd75VYP3pMDjCW4EUdn0++rFk5w9UFU
         xe1JODdIaIzKzLRtIfvgwbeiaw/jKpvgpdqrBPDoBuBTslvq7upC2ahNpvoETObWTUzj
         +gDl2MuV455IKhbCQUpcXIO6okKn7Z+jv296wY/939HO5A+8Xnyq8TNh1EzlDSQHFRaM
         zDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224476; x=1698829276;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AvgTazU05wmbAVu8s1pewYEdDleLktThS4lYuVG5GWA=;
        b=UdY9foZt9hAyvo7Ur/OA/hjugA83dts5CB/W1jslqMZk9MD9GA27uxKmiliPXZnjb+
         C8BonMjQoPwHbCnWYlhvw4xpYRX6zaOQFX/ECDuWWUzAGdBSs8cWwERUi7mGE/4eBPtn
         h+yM1pWb2zpbczQNUQO4vEwfiswIZIpdRR1zOCBXzFgSiIr7EZbNMEaKH+nUA3a/A59b
         guwhG1a9iznJBhFffdkJxgWRh5HQpK0hBNm9OsR6dC227MkrYk+7MR0r16R36klBcQ0a
         eubGhEZYN6P2Ctz9kDRIj8SspUUv7xVKGUoUM87vBeXfb3ekfxgfxNxDefwvhHliF66s
         jATQ==
X-Gm-Message-State: AOJu0YzJC+ax+vA9gKkjTMNqpi8wE3FnDUA7WrA5zZGWSBDPv9pJw3zl
	kE8TapHwmuTv/sH6E55VevxfJg==
X-Google-Smtp-Source: AGHT+IEcHR1W3xSeqiVG6hd48eONiv2HigJ9anogPs5wH/X2HmMIp0FVAqWjrSocCI2xbJRSQd2SBQ==
X-Received: by 2002:a19:9115:0:b0:503:1722:bf3a with SMTP id t21-20020a199115000000b005031722bf3amr10690089lfd.1.1698224475861;
        Wed, 25 Oct 2023 02:01:15 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k10-20020ac257ca000000b005079ab8ab19sm2458305lfo.150.2023.10.25.02.01.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 02:01:15 -0700 (PDT)
Message-ID: <691f1781-906c-411f-90f6-e1cc71062253@linaro.org>
Date: Wed, 25 Oct 2023 11:01:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/8] arm64: dts: qcom: add initial SM8650 dtsi
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-2-a821712af62f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-2-a821712af62f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:47, Neil Armstrong wrote:
> Add initial DTSI for the Qualcomm SM8650 platform,
> only contains nodes which doesn't depend on interconnect.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---[...]

> +			CLUSTER_SLEEP_1: cluster-sleep-1 {
> +				compatible = "domain-idle-state";
> +				arm,psci-suspend-param = <0x4100c344>;
I think this parameter signals the AOSS to attempt system
suspend and CLUSTER_SLEEP is a shallower, separate state.

[...]
> +			qcom,tcs-config = <ACTIVE_TCS    3>, <SLEEP_TCS     2>,
> +					  <WAKE_TCS      2>, <CONTROL_TCS   0>;
Is <CONTROL_TCS 0> the correct value?

I think it looks good otherwise

Konrad

