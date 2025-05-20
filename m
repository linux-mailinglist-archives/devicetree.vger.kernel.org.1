Return-Path: <devicetree+bounces-178846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61415ABD819
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 14:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91339189D5C6
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 12:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA6FD1C69D;
	Tue, 20 May 2025 12:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cvJUbteA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38F21172A
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 12:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747743577; cv=none; b=dJBUUojIbaCY0pHnIK+UGIC0GrB1mrl6IIjWa7vxGi7OEJpTWsLRExiHx26hJnE38nvJ4cmERx4Eeq+EqQtH1LhSu1jElhr46pjS9Ka6ty5ac0x3LcMsm1D1a4l22LidcydIK6hr+CV9Njq3vKdG1fTTEm7Pd5eOy0dXwjMIJjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747743577; c=relaxed/simple;
	bh=yN2oz4RGfjWsr3L/yxfEwmYkVPvraUmd8R28Gu6B0Yc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fcQRe18pHaYKiRdyDpxiMBFOct0ILyOi7rWhUbnDigneCp7t1AQ5SdZ37eAtcP2hsCQMIHetqeYm8fmW4SeNJW90eWZMXDDPTNXgGzC2O7OrUOlvomF82UMqVpgHy1g66xHzisTy11YwzgFC3AgV5eswVphmS7qzE1HuJWstTDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cvJUbteA; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54b0da81302so478223e87.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 05:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747743574; x=1748348374; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LGxzwmCx0aVZaskSD1cvnXeY9ifmH8LA11mbYYh9vMI=;
        b=cvJUbteAf8Xw1WV0DNcfrB6Gq7qu3YaAU2jIeoXNxuwobYZJaM9B92l7zNJOqQ7tGE
         stjLqXPn001yaYEfc53tGjDzdqAGecNhLq19p8afw4UyVsNZWuGFpv2QdL90Q5KFqoj0
         KpXJRO10E0uhPM94iUjgwPzYjGhGHjYHOa9XNYDme7MzhPg+aM/Ek4Za3RBGg6dUeNSl
         yp3S02zp6aioPjUmWbytHsQOtJp/gSgFtFEo3oKcr36DW6woZ3VGCpZ6yk9+yTRDgnxt
         a09+1o9CkJubWKQWFqg8TUOZhOjbBr6RgKCD2SUO4HwMiEma8QiIYfTaxfi6pbImVEnz
         Z6Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747743574; x=1748348374;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LGxzwmCx0aVZaskSD1cvnXeY9ifmH8LA11mbYYh9vMI=;
        b=J57LsHwziGxqmRRSGqIsTSKR/os6zwLlYCsbGDRf62konNHADYjXzQQgOXlTWyeWK8
         M8szXOTIhNZFNbh6n2XnNokId7HD5qoAkWf80JjW50s/yj5xxG5PN9KCMAV2lT/qnSln
         oAUv1NIMLdB+DHwvXpVyG8t0lnEZZd1xTHfDYaJn4KLm7Q1Optm6AwItMcO3h4e2svYx
         LGAyXZhEiodFXiZMSgjB+WNuGDkCDVGAYgPzLi5vPCTxYI/qhvyBZTsKK62uyezZ6tER
         +R3XWvDMYw2HYYA9IfAy8yYZl/QkFoQgEDPCwTl/EtLsQ6RuGTOmyjIVwMJmBVoOldwB
         iNdQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/qj5ADH76ryFcTwUen411aJEk8a8s458m8EV0CGR6YKgSEfoFf5L5H0mem+Y4gcRrLUGTqa03cAnr@vger.kernel.org
X-Gm-Message-State: AOJu0YzCDCc/G4KYgoHfRQTJoju7oF0YGI6vVk8+XdDWp03xyCR/0oc6
	b+f/E5x1gOC/TNW9SMHNIb8iMYtgu+EdAa2FkfhY9WnFOl/+pNhhre2gfgwrqyKsg6U=
X-Gm-Gg: ASbGncvy5M5Bno+YKh/8v4Mb9ZV0UuzA63txw6RNzvf5kj9qL1l9FR6wjs1zTrJ3I38
	AruzzseqvaZLuXnsd8Ch9hTH2GLc0jQJ0NGKi1ljfEQFqOcq9+80mRrVI7k3OQAOW7J7W+6jxT0
	ixuZh83u54ZqJhvdQKj3JaYQY3Su5mZpOVMWR3hxrNoP+LdUgv3vXJMSAnmhp14h40nM4Wjnwar
	19uCg2wcQrblbELkALXMS/TEJvRo+IYn5yXS3uuRzBh/UTNEtCmWufshy/8giPxgvx24TvUlHag
	ob1ynU8vP5nSMDkig2LEg7vPbF+RXPq4y6Mr+4aCs/Y4sXdoQxT6J+osSqqbiVDB8Q876qpqAcC
	ie2wVAgPg/09p2fRNq00KjKxbKe+d7Q==
X-Google-Smtp-Source: AGHT+IFHmFbjhmDs8JEJN8j6pzPYHRP0s5f+jZkbENRKCNk16g6eKwVvixfcndrmuMQxR0FYU+h/Iw==
X-Received: by 2002:a05:6512:2909:b0:550:ed9e:1b32 with SMTP id 2adb3069b0e04-550ed9e1fbfmr1194001e87.1.1747743573823;
        Tue, 20 May 2025 05:19:33 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f2fcb3sm2327121e87.86.2025.05.20.05.19.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 05:19:33 -0700 (PDT)
Message-ID: <748f96f7-d690-4823-845f-67642db97a06@linaro.org>
Date: Tue, 20 May 2025 15:19:25 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs615: Enable camss for
 qcs615-adp-air
Content-Language: ru-RU
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, bryan.odonoghue@linaro.org, todor.too@gmail.com,
 rfoss@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20250520-qcs615-adp-air-camss-v1-0-ac25ca137d34@quicinc.com>
 <20250520-qcs615-adp-air-camss-v1-2-ac25ca137d34@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250520-qcs615-adp-air-camss-v1-2-ac25ca137d34@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Wenmeng,

On 5/20/25 11:56, Wenmeng Liu wrote:
> This change enables camera driver for QCS615 ADP AIR board.

what is the rationale of enabling CAMSS on the board without giving any
description of any sensors connected to the SoC?

> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index 2b5aa3c66867676bda59ff82b902b6e4974126f8..be8b829ec508d7de7a4cd6be6d1d4e83b09734bb 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -211,6 +211,13 @@ vreg_l17a: ldo17 {
>   	};
>   };
>   
> +&camss {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +
> +	status = "ok";
> +};
> +

--
Best wishes,
Vladimir

