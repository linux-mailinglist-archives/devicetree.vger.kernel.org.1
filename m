Return-Path: <devicetree+bounces-12274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D56B87D8A33
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:23:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10E3B1C20E7F
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A793D3A6;
	Thu, 26 Oct 2023 21:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JgJgEZo8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173A04426
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 21:23:50 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D1DCB8
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:23:49 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-508126afc88so2101021e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698355427; x=1698960227; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WaS1F6gxvektWaH+1uXMzK+p2rqyW26a4HQpLvHPqcE=;
        b=JgJgEZo8z0xWPSUgdtQjadp4VGUhjXVVGvrwk55CUM/IM5LXcVAQ01hBzPFMLyU9sS
         Nj1pVuWDj506FC6GhCbU2ZYZy78D6mZ9HPVe3BYN/sS7L7An0uL/qMX63Ao0QKe7Un4d
         nJnJF+PUgcsLyi5aOz1MJAUW/o+g5SCTkbx0feGDsQQkxwWZ5ibVqkABBTx4krCCrvRB
         JNHk/OXPH/yE0kMdrAc9ykkvqLdRCO2yCUXphBahgx6MCSlYWlT5/QiN4w02ylBlZNxh
         9T8KnfqGtzbBgvhIxlumu+xOCtkMYc3rEYglqvjoumtuDfeJzHH/gvUcYoudsIjKeUht
         zh6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698355427; x=1698960227;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WaS1F6gxvektWaH+1uXMzK+p2rqyW26a4HQpLvHPqcE=;
        b=E3WCHpabVQDf27DSiTB48oFoSDFJyRQ4m2rYgXdp9U4Y9Q+gbDOC/3vjxr8VDRBbo2
         ZmpP/iTYea4E1B9+bIo1zVRvlgGjmBy5rw70HHaa6uavqQEp4zT4Vn45PTQnxnrELljP
         aeQ0Pby5gcU09OY3DC92rq8ruH68VVt/tKeKiurz/zUp5Xj0DFGWpeZ06bWIScuC6neJ
         ExJ/FxGAOmSvN0jhvIGBHUO7zNL1VGpgvB5rtoOwDApJaX/fsvFhls3wBmUOLLRYUuFL
         41mOAP83TVCEX3akzq5EuIcCzjWF55YmIjT9+CABhSbPVa62b6oybAAH3InfApr4F0Uk
         oHsw==
X-Gm-Message-State: AOJu0YyQdhqEujVLP2oKSXdQMxlpsCUdeUUaWskcBu/BhFzYGhj3/4Mq
	gUIZ7zrUmzTdjF6AGt+7PTDn0g==
X-Google-Smtp-Source: AGHT+IG4rn72MceQOMecssoAqNoze+tcPRSKZ88w+fIaYfqgCbPe9Go1xkti6JH9We47TwImsVs2Nw==
X-Received: by 2002:ac2:4553:0:b0:502:f2a4:152f with SMTP id j19-20020ac24553000000b00502f2a4152fmr399943lfm.10.1698355427481;
        Thu, 26 Oct 2023 14:23:47 -0700 (PDT)
Received: from [172.30.204.146] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u15-20020ac248af000000b004fdd6b72bfdsm5498lfg.117.2023.10.26.14.23.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 14:23:47 -0700 (PDT)
Message-ID: <d2c46459-0686-41ba-bf27-a62fcd00d489@linaro.org>
Date: Thu, 26 Oct 2023 23:23:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/4] ARM: dts: qcom: ipq8064: Add CPU OPP table
To: Christian Marangi <ansuelsmth@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Sricharan Ramabadhran <quic_srichara@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20231019105011.7289-1-ansuelsmth@gmail.com>
 <20231019105011.7289-5-ansuelsmth@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231019105011.7289-5-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/19/23 12:50, Christian Marangi wrote:
> Add CPU OPP table for IPQ8062, IPQ8064 and IPQ8065 SoC.
> Use opp-supported-hw binding to correctly enable and disable the
> frequency as IPQ8062 supports up to 1.0Ghz, IPQ8064 supports up to
> 1.4GHz with 1.2GHz as an additional frequency and IPQ8065 supports
> 1.7GHZ but doesn't have 1.2GHZ frequency and has to be disabled.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
I didn't actually check the values against downstream, maybe we
can prettyplease ask Dmitry as he's done that before with msm8960-class
SoCs..

[...]

> +	opp_table_cpu: opp-table-cpu {
> +		compatible = "operating-points-v2-krait-cpu";
> +		nvmem-cells = <&speedbin_efuse>;
Shouldn't this be opp-shared?

Konrad

