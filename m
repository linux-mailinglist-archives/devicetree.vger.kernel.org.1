Return-Path: <devicetree+bounces-246278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5452CBB51D
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 01:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F0803008EB3
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 00:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AFA3F50F;
	Sun, 14 Dec 2025 00:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N+GfDfPZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995732C9D
	for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 00:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765670974; cv=none; b=jvRUSAO/Rdp0bbb/jAjY1EigtD/zeYqMn8EdrPyrOns8rJCb5VbRj5S7RKK9mLI3vnSruzf954nSvAgxHwpHxl3dMZHaFF6LiA1oA+D3uY2O8Q/VjT1PVl6PU7GpoaKhN7LVdMmaJpDvNjxlr/HJpDA7mYcoRWz4dEVMVygpHow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765670974; c=relaxed/simple;
	bh=sgNSVyUVIlQGl+4yq6gFL7+dAkwlztttag9JjuKcAB8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qi7TtDZyxiHqTdhkNR4nqdgOm4wuSSzj5JjYnaQZWs7L7XjAN/vTbLvoU99AG1D8WKtpGdCkXspLHGEaHZpM8hw/Wf9Vzs6hST8ccgeX2SqzuGopzSaxmhlJs28ID5hzmpAEPYeVPKF5PLZ7q8Og5iiUdFOQZ18mmiTJM55478k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N+GfDfPZ; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-598ed017e4cso319639e87.0
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 16:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765670971; x=1766275771; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YLbZpeVWxhUiA9xdv2yvpF5kwmnyurNX54Ve7q/okuU=;
        b=N+GfDfPZ87JYzoR59zM/+8WfSjy6WI1X/m+CBQAkxW4lS8KmXuwjgzu/fYI26l7zuX
         jBbdwEIqsNeqL/WR5gBE8iPXBG1vATlGosqrrorghFnDk0grJo3Apn4UTA/yasAtlhZc
         tZ823kTOA7XjwITOE8/TacFEp+Jnkyu/BSRPR7C64cPc2zTBzHGnj9ZzvWJuJqH2EHY+
         wcHZrbGluVeoIMLrknyj4XhVa+Gj7E3K+RVIhjgWkMgW2VuELUm2iP9P2bCdktgCYeml
         dXX+q9zYbNDJbRdrItlmjlE22mp/z9dPEUEvOyvLvyN+vUGius4u7Fxw9aus2xx92VQz
         yILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765670971; x=1766275771;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YLbZpeVWxhUiA9xdv2yvpF5kwmnyurNX54Ve7q/okuU=;
        b=cmPe/NMZwbtJ/9QGWW2UJE3VALk9WDKHt/NPxsTjrFY466aA7cfbpXCsgg2AqFRcVL
         odh3yVWMvq+WxZ/KDHqu8nz6USfzjPQ0KsuH71Try9RX0auJmhhxG0Db3aFbEaZsUv/G
         w9gNRmpgMJSBStYRRsJj2vwUSOfXUJYmojU7IQJ+VL5HlC1JLUoetYauSUU5IjJsPo27
         nBAXCJpIFwbYrVKYkBzj8a66QpyT2Fj5OPMoy4ROfq5kAI6FnrI8W7lHtqHKSKSUvsAe
         +tZqi5/5A5bDCSGycaBS+PB7lx5xdj2a8BQjHBJPUdsN5cKJ4F3InKYWkraILkqYI+JC
         B7ow==
X-Forwarded-Encrypted: i=1; AJvYcCUtNdYlPgNOHIALdkSrcu9im4rJN0jLj1OFf37KAr1ljO0S9Cs3pxumTc0rDt2BhTYPdLLX5pzdtu81@vger.kernel.org
X-Gm-Message-State: AOJu0YwHIEbN8oXCkDtWFwJ8dU9JSJzXQNRf+FQskZRPunllRPVIYSPN
	k3l9Gq4+mQ4GdF77Siw7DjFSV3mjr1KXwr7R94yGkGnkYZsolvlW5hilDjw6QZr8ZuI=
X-Gm-Gg: AY/fxX7a9QO2O43UianyvN01T/Ofm54o+kwo2OyPF0dlqXGLE3NGJVYAJqtLa0Nepcp
	ll4OtAHFg9xSdkwg38ontXGQBHDhsHD5WPiVE3XEayDicUYTyns0luRM7o1B4jBlgGdNDm/SrQZ
	RP6mwIzXe4s4+faoMHrXxBvcNfPKSmDNJ90e5LnYlsoNR1PjVtSXsAQBAy8H9XQN9eOYeTXOZf6
	K0jhKfPAgtanOCgWpHQ6YJEXubPeBgMUfKLH4CwlsYZlLyML0J2TCiA23vf1pgKTEMSuPamo4+V
	vmeM+7gmqUGhofMCqMHbHTvcTv9D/8zoDTI6vEOJ6HLQyBPECaXo+pTLrv0V/cxIi5uJ1H6OxtO
	BV+FK7dtZ2HCur82f3T2jjqSM+dA8sDEyAb0pgAl1ftH46PmhU6yOgNRU2lk0zyQLWGbidoNFRd
	f3JtGnP8DazSOykNanDuF6JKmAPLXSAkyjU4MoKWyi+xZlhVntcUtoaJZCq5YSmXpIPw==
X-Google-Smtp-Source: AGHT+IGa33buz/rmba0bIG4qV9RX3OHMcGRTnZkr8Mbi7xgjdbVEw2xZ+1nY7hVGxnE3RNPMJLjOOg==
X-Received: by 2002:a05:6512:3d1b:b0:597:d7d6:398d with SMTP id 2adb3069b0e04-598faa01850mr1324255e87.2.1765670970598;
        Sat, 13 Dec 2025 16:09:30 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f3194dbcsm3464122e87.78.2025.12.13.16.09.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Dec 2025 16:09:28 -0800 (PST)
Message-ID: <2cb8c5ce-ea80-4cb6-9bef-f526eb433d96@linaro.org>
Date: Sun, 14 Dec 2025 02:09:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: qcom: sdm845: Introduce camera master clock
 pinctrl
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251213-sdm845-mclk-v1-0-197bc947d4c6@ixit.cz>
 <20251213-sdm845-mclk-v1-1-197bc947d4c6@ixit.cz>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20251213-sdm845-mclk-v1-1-197bc947d4c6@ixit.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/25 14:00, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> There are shared for the whole architecture, so let's define these in
> proper place.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 43 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index bf2f9c04adba7..97bd9513b011b 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -2805,6 +2805,49 @@ tlmm: pinctrl@3400000 {
>   			gpio-ranges = <&tlmm 0 0 151>;
>   			wakeup-parent = <&pdc_intc>;
>   
> +			cam_mclk0_default: cam-mclk0-default-state {
> +				pins = "gpio13";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam_mclk0_sleep: cam-mclk0-sleep-state {
> +				pins = "gpio13";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cam_mclk1_default: cam-mclk1-default-state {
> +				pins = "gpio14";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam_mclk1_sleep: cam-mclk1-sleep-state {
> +				pins = "gpio14";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +			cam_mclk2_default: cam-mclk2-default-state {
> +				pins = "gpio15";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam_mclk2_sleep: cam-mclk2-sleep-state {
> +				pins = "gpio15";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-pull-down;
> +			};
> +
> +

Please remove an excessive blank line.

>   			cci0_default: cci0-default-state {
>   				/* SDA, SCL */
>   				pins = "gpio17", "gpio18";
> 

Please add mclk3 to the list, it's one of the gpio16 pad functions.

After adding that

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

