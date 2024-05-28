Return-Path: <devicetree+bounces-69854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFCD8D1BC8
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:56:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A124282426
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC7F16D9D8;
	Tue, 28 May 2024 12:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rfpQDhSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C053016D4F4
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716900995; cv=none; b=tq0cl3xdjTcRU8MD/zp2yGYN0pIQtCf/e7+iChR6nEtjZ/tHaWj4PfyAl1UMfLsZSMeFGicrj8ffMBbWsOQwBKEv1AZ2VsTr4FsERyXO2zC68QS4psRclXtvK+V3GyDG6eS09BBJoYb5x77KJlmV2TNBulZLK14KAJ0aYbq3Xyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716900995; c=relaxed/simple;
	bh=c6bKxcXWNYjOOH0xRtK0KGI6gOon/19zEjgMhAayAqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UF5ozCOXnKujTtaAyA8QVUkUE9kQUeBVxVqpAS9R3NXaFU64GooYv85zN79Q4cA+8/UmrCnpJoPOelBgvx2SavraB1rq0LF1XT+b1WZAEJl90d6ON+//Ouy7dQEePf9OkLgP2QbmYyfhdaEhN7U4j9f0sxVYNqwvyruJhYRDZTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rfpQDhSw; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52389c1308dso1014504e87.3
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 05:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716900992; x=1717505792; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UBJydv2oVIxF33glNXhfsH0j7NMZZydOoyfGkqd3Bng=;
        b=rfpQDhSwEJGotNqLcxKrMS0y+28gjfTNNNHNkRA+UutyICUhBLYdckTobq8zgztGBf
         qtqKcyHM+v2Jh4umHeIotadX3d9/ZONqddlBisRiwRSaSpOb/7xVnKeaGAE8RaKYVVL7
         3HamyEo5WoOrbHTW8+4VtBob8j5GHwODjasLpuVS54zQ0Hw5cxBSoC9twYJIlJsYZGjw
         x8e9NzWE6EZBOfvVxxrl8F7pfjy3ebvN7vvCBzmHA2VGW7hhrOnb7nDQHtaVJd5ilX8d
         B4xkzwhLvV6EUWyoRvC9T1CFHvEf/VltbpviDc5xtDnME2Cfhgyu6y7NvEfdVqEP8dGE
         7Udg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716900992; x=1717505792;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UBJydv2oVIxF33glNXhfsH0j7NMZZydOoyfGkqd3Bng=;
        b=IIDFk/qN3UaIOqVSAYolndMZkpdrfznDnlTOWaGYMg0dq6Nn5r9uEsXWWVTU/vgbBw
         vVqWX7m8I9/1s+hCn7Wh5AlI/ztwO1sz2ov5eV7F0nQXkwDFqJ/xPS3GoqRwmbc44IwV
         19Mr79o0avhN7i93CdxvvmRgmwZ4vAg8mxtnulu0LkaI/9u+LFw1SFHK45U1RE02tnpj
         m1UVVsOesR7CJ8XFj4TtZ1/jckpKYiy/OUduSyF+olOZbuuRIUiN1Blz1bsGM5gGQ62Y
         q9pP2eGhRhhUCMW1mO9TPCQd+8kdiETy2WfQ1NaTpvw2Sjo+0x+PYtEFyd9nWiy8yah+
         tZvA==
X-Forwarded-Encrypted: i=1; AJvYcCXUocM3iBnsCdnmNNPDVCdPoTh1+VI5o3WOHm28r6zoy/Vf/s7BgVfBiL+49oFGeas7N6a5R+U29iPfN9Ok1bonQvXZVvUpz1QWOA==
X-Gm-Message-State: AOJu0Yy3LH67enRgsjDKuNIfn1bQAUOBveKRFa4q031o9aBV0EBnP4V0
	fpsdrvurtc0SNYKP9hAlAbWzOUcH4rQ2lAg8G3HQ6GVQTy7M0rXAPILjFum/quk=
X-Google-Smtp-Source: AGHT+IG0zOMeIXAZKtGkaGkYMDbA0TJClGnE+TMJJZXkxFvHDGGTT9Qi+laKp696WC+OBF1yN6ki/g==
X-Received: by 2002:a05:6512:b9c:b0:51a:cafd:3872 with SMTP id 2adb3069b0e04-529644ec0cfmr9508409e87.3.1716900992046;
        Tue, 28 May 2024 05:56:32 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b885sm996984e87.127.2024.05.28.05.56.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:56:31 -0700 (PDT)
Message-ID: <39e8aa68-a68f-48d8-9845-0d273004e21b@linaro.org>
Date: Tue, 28 May 2024 14:56:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/10] arm64: dts: qcom: sc8180x-lenovo-flex-5g: Enable
 USB multiport controller
To: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
 Bjorn Andersson <quic_bjorande@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
 <20240525-sc8180x-usb-mp-v1-10-60a904392438@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-10-60a904392438@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/25/24 20:04, Bjorn Andersson wrote:
> From: Bjorn Andersson <quic_bjorande@quicinc.com>
> 
> The Lenovo Flex 5G has a camera attached to the multiport USB
> controller, enable the controller and the four phys to enable this.

Any chance you could leave a comment above each pair of PHYs that would
say e.g.

/* Left rear port */
&usb_mp0_hsphy {

...


?

[...]

> +&usb_mp0_hsphy {
> +	status = "okay";
> +	vdda-pll-supply = <&vreg_l5e_0p88>;
> +	vdda18-supply = <&vreg_l12a_1p8>;
> +	vdda33-supply = <&vreg_l16e_3p0>;

status last


> +};
> +
> +&usb_mp0_qmpphy {
> +	vdda-phy-supply = <&vreg_l3c_1p2>;
> +	vdda-pll-supply = <&vreg_l5e_0p88>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp1_hsphy {
> +	status = "okay";
> +	vdda-pll-supply = <&vreg_l5e_0p88>;
> +	vdda18-supply = <&vreg_l12a_1p8>;
> +	vdda33-supply = <&vreg_l16e_3p0>;

ditto


Konrad

