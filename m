Return-Path: <devicetree+bounces-252168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 18263CFBFA0
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:34:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3647D30B7366
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:29:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8293244667;
	Wed,  7 Jan 2026 04:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cn6yA1Fp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4326B23ABA7
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767760140; cv=none; b=WQTGGZFGJ7aqTwz32Ghc0EYNJMWS5Y4qWovcnwc2ipR9jc8HmsYJPA59P2oFwDZAM2onSS459xZak2fwD7+Np47PYXCFmSQC3eGpSmqXIkmyy/ixi+eRCJ9ocWuUhgfwUhfG2tIHdJQA9EIbNSX8lacOuOoNeyo3r/fnfRj0VO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767760140; c=relaxed/simple;
	bh=haiB8Tt+8pZM04gZvK2wNWt/dPyIDOm+drx3AQALCHg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BZZEiBbUbmakEmXBKPTXs5HrKOi2jxoX7Ssj5iDLBDN4GAu+GF+sGCAu+1bOYm17SzZwWk88VyMhc8KHfiWYdl5waMzt7IjDg3pCzz5rO7TniUFRLe5rshPkWu9ipvqdaJpm3nneXmC/Mma1zbYRLYCbu15DCoPbPlVcuwuEhzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cn6yA1Fp; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59b72c87109so2077e87.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767760136; x=1768364936; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jvcoTCO8VwPdehmxlS2rnFhrCL/5WSs/bRyMtF/vO1w=;
        b=cn6yA1FpWam7e5OM4uK9jnnosDnNZJ8FZokv+Cyfp1+skVKgMpy+8j2XTj0A3h+OrW
         /X5pYeQcC4uIwCgN1kSVBkc2OTjLqsX73g3MYGe7OOH0Q8+iqlfJgSIl24vYmuOB8kVM
         VoyNxHC0pHAec2kZe1TMwS4XjRjyXGw25dIGqPJfpaSRzaaVrHPgCrRU+Qe9YGg/im9f
         CkmVgz1MkMh2L/H/fcMZQazdZrdGaB8U/0EWZTNl6Gkvm6dG4w0d565B1L3/GBQzmi5G
         DJEj+D3mPljwqJE/pR3NCJywS7/9AG+qE0N6NcVET75MscbHBGbJY+ir8JelrmC2LbVn
         YBJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767760136; x=1768364936;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jvcoTCO8VwPdehmxlS2rnFhrCL/5WSs/bRyMtF/vO1w=;
        b=lXcS+9SXZ+RRsATbR5EByd94feEZ6F8MdEGy9tvcN/6bpqxuDV67JfQSXflB3/JKcf
         jy0EaTD+eImCgtzpmkmu+OzVAvwclqyiOmM0K88eSRfFTDuOkwEkspUxeeC0wKfm1eLx
         wZ6WxwPmSihY4SZa2BwKo6WAEYgv7oSx3Nrdjm3zDcTU8RVApO7p7Zou8B/fnYLp0c+U
         xZIy4wa6nTKP5M1O/3B+LIlqM3v/q0ztbUxqZojwfNYuQHmwI0dCJ1Ae9Rr57yc+O593
         bSLmErO0mq+qIGH0iMBxvyrYxO6kAcN30PAHFx186ZCu7Ah1SNxceaQh/hJV69IsRVn/
         KSBw==
X-Forwarded-Encrypted: i=1; AJvYcCWvdXfhXiH94XdZrXAq2AKYCVXKEipeYhzEzmmdMIr1n2FfHO8j49EECse0Ih2pm+QRXBXMWosDDUqr@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ//QNEG0baJ96OFTAoowKW9Kxzl1AXi/p8peKSj75phHxPaV/
	Ps6Ag4Lig7CUOKp3Co/pwHGJPBuDZoWfQSdjw9JGwOegHZZNHDft2EPhSi5kxi3a/Mw=
X-Gm-Gg: AY/fxX5hmzFMv7RLsaofRrO4hlgOlsEYBXdb1rECAi5LnwCBeBzl/W76h/2etAKoYpI
	JM7OjDXLLx6Gcnlnxhti6YtRupG8+l/YBjaSGflPzTm0KCgLh5dJ5vYO/ngmo9uv5J6m1MJm56v
	vy71pMCym5JYYGkXbymBBCoIeesA90PYWbW0+2VMVbjCofApgsSurRddJlOzPNvF0G5P5d7c2xN
	kdWlK2ZrUiY8FVlFgrxzk6Z6kvdRh2ZQ/XnegBqn8yHsc5BUhEcHcWgMGbdY8J/RhfzjYciVbnp
	DO9FTyvjCBC7FaA608/SpNoXSjmEX1NAYzW7C0ORD13C6YHbIYzl8kfJm+AnyucngJJHEQZW98m
	V8szgoiBvxjfGLYQJkfsNLQwk84j4kHuYaKYKyjcxnRCeloE6gQid9UER2bP+xDA2T8/JYHWR5z
	WBu5gYuoO1YS4ELHW9lbB3Ef9tIurrMpWgl+PnFUQrC+5VdylFiEjGI/mPjCwNIFXCFQ==
X-Google-Smtp-Source: AGHT+IF9hWgMq5ozizyKkYLFKj41duoqsihD4rtshBdk9J75mRrvbI9bzZFNP1DazvK48vDl2rVU5g==
X-Received: by 2002:a05:6512:3b25:b0:59b:7291:9cd8 with SMTP id 2adb3069b0e04-59b72919e55mr25847e87.7.1767760136292;
        Tue, 06 Jan 2026 20:28:56 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6f3caba8sm271002e87.8.2026.01.06.20.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 20:28:55 -0800 (PST)
Message-ID: <b0b629d5-33de-41c1-90d5-b64cc29e5511@linaro.org>
Date: Wed, 7 Jan 2026 06:28:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: talos: Add camera MCLK pinctrl
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20260106-sm6150_evk-v2-0-bb112cb83d74@oss.qualcomm.com>
 <20260106-sm6150_evk-v2-3-bb112cb83d74@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260106-sm6150_evk-v2-3-bb112cb83d74@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/6/26 11:39, Wenmeng Liu wrote:
> Define pinctrl definitions to enable camera master clocks on Talos.
> 
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/talos.dtsi | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> index 461a39968d928260828993ff3549aa15fd1870df..880fa10a2db993a82d31faf868195944128237c9 100644
> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> @@ -1549,6 +1549,34 @@ tlmm: pinctrl@3100000 {
>   			#interrupt-cells = <2>;
>   			wakeup-parent = <&pdc>;
>   
> +			cam0_default: cam0-default-state {
> +				pins = "gpio28";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam1_default: cam1-default-state {
> +				pins = "gpio29";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam2_default: cam2-default-state {
> +				pins = "gpio30";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
> +			cam3_default: cam3-default-state {
> +				pins = "gpio31";
> +				function = "cam_mclk";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
>   			cci_default: cci0-default-state {
>   				cci_i2c0_default: cci-i2c0-default-pins {
>   					/* SDA, SCL */
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

