Return-Path: <devicetree+bounces-81566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E000491CC39
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 13:07:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6BD72B21DF2
	for <lists+devicetree@lfdr.de>; Sat, 29 Jun 2024 11:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6932248CCD;
	Sat, 29 Jun 2024 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lFxBooZz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5EB63BBCB
	for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 11:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719659253; cv=none; b=fOuOng4IHZVQEFlzph0oxg7kYasn0CzsuZIFveJZ1rRElR8SEn67OmPi7NYX/bv9OzMjFRNvP4zYOlKskQzij2YPeDLbTROmq70BOXtzjecEUO30tyN+p3FojIIY/ns7Sr89tWPc8+lk2cBQRTenIWwzV6Nv+oOvPcd0e3KfcBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719659253; c=relaxed/simple;
	bh=A27AZyvz2A7Q9roo7P9DdKR5Zk9tltXk4k5EOFMW2PE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K5hzd6HECMV4hzOeTADBUjcMmYEi7NgKlt0YPZ06L5Slc2InfoGNvp83NW+8DaUi2+KVeC747qtIY2e29r/Q1G22LlnCiL7QAV6TKMdBSlZt6vthXrp8WnGNeOiYhwqMygiufcOPjgf4EwJ6MFHhl+CZDSRobU1YWHTgdzcayM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lFxBooZz; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-424ad289912so10643315e9.2
        for <devicetree@vger.kernel.org>; Sat, 29 Jun 2024 04:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719659250; x=1720264050; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oeVOD5CA0cinTFO1deV1ecLyqh6tETXTXZTto3YUbA0=;
        b=lFxBooZzp7TuRROQ2m3yEzXTLbffcnO3Yilqph9wnTL5E5b+ytlSdn/H63eAoyzpIq
         6t48CUSaArjELxX3fnsHymiyNuJDKnozisXuU7HoyL6es14C49jC70s4LJgJC/l95Nsd
         vEy+BmJwIw107Aym36MrVO2NFJ3Eynw621ehigotsjTIZQ9kKYUeWCSZbw7Jeh/cxHaK
         9lH0Osntyhr1tZWrEjsefdQAy+JuldO1Wc8ySECIUIJGbsDmc2m2UJzPJUfWoUpSbkS4
         cVBDG6aZMVZHm/QQKoaKzZbaDB8yIR4AjYEkEcHeqs9LyKicoQGg/ClNXts4PaSz8arR
         Zgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719659250; x=1720264050;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oeVOD5CA0cinTFO1deV1ecLyqh6tETXTXZTto3YUbA0=;
        b=HSU+Gno2U4ZY9H75FOQaaM4lOiUWUc4rmkEbph5NoUjd3AtHz6UGGRBpYNVsnliyFN
         vkcTGO27F8mNW4jRbuqTW7QmbM0AqJB5a8fI/tjUaICItsTosMvbiLjbrwVfBOkkt34T
         4oEGhZrPf/NzaMzzI4Bj+PembtCuIGf5sIL/+DkxSyek4XQvgZQgENeZ6Th/pCYdiJGN
         ZOz4Jk33vklNPcw3+io5ytsz74xsKq+9z33dnRTepbh8JKlDx/FfESRqmFLtc5+9kThY
         Uji283qwplDkiZhr3eiqCAhno6VutLZvNB0OLeDlDvjJRgQl/E4YOQmJZEp/nPd70zLN
         Kv2g==
X-Forwarded-Encrypted: i=1; AJvYcCWqZACIULdbAYF/zClLNC7sQB8GmaiSC7U6he3PaG6yNPi+ZfXzM0pjUZAph9bVjk2W/MZwdWQtE+nLIUjpPP4Py1HJYqMJN7/DYg==
X-Gm-Message-State: AOJu0YzqgFPm/AtggY13FGzyH83FBqGkwC6VQUyD5Z7qXn6b2r1bCrHa
	HKVnaKrdvwIn+rhA1xWfpSZJ6kPid1+p3iVf/255PymXzWcT28Wtg4dBz93uAd0=
X-Google-Smtp-Source: AGHT+IFp0LPwn95vvUy4qg44MiPqjUSQeFK9TzL595b4Lm8//Szl2OQ26nmO4n4sJUTNlSJn3a1JJg==
X-Received: by 2002:a5d:4eca:0:b0:367:1e6:4ab1 with SMTP id ffacd0b85a97d-367756bb503mr390586f8f.33.1719659249815;
        Sat, 29 Jun 2024 04:07:29 -0700 (PDT)
Received: from [192.168.0.38] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0cd71esm4641757f8f.21.2024.06.29.04.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jun 2024 04:07:29 -0700 (PDT)
Message-ID: <620d1bb9-99a4-43b2-8750-8f0f3e490bb7@linaro.org>
Date: Sat, 29 Jun 2024 12:07:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: sc7280: Add IMX577 camera sensor
To: Vikram Sharma <quic_vikramsa@quicinc.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kapatrala Syed <akapatra@quicinc.com>,
 Hariram Purushothaman <hariramp@quicinc.com>,
 cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, Hariram Purushothaman
 <quic_hariramp@quicinc.com>, Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
References: <20240629-camss_first_post_linux_next-v1-0-bc798edabc3a@quicinc.com>
 <20240629-camss_first_post_linux_next-v1-3-bc798edabc3a@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240629-camss_first_post_linux_next-v1-3-bc798edabc3a@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/06/2024 19:32, Vikram Sharma wrote:
> Add support for IMX577 camera sensor for SC7280 SoC.
> 
> Signed-off-by: Hariram Purushothaman <quic_hariramp@quicinc.com>
> Signed-off-by: Trishansh Bhardwaj <quic_tbhardwa@quicinc.com>
> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 33 +++++++++++++++++++++++++++++++++
>   1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 9ac251fec262..1c99ee09a11a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -5167,6 +5167,39 @@ cci3_sleep: cci3-sleep-state {
>   				bias-pull-down;
>   			};
>   
> +			cam2_default: cam2-default {
> +				rst {
> +					pins = "gpio78"; /*cam3*/

I don't think the /* cam3 */ adds much here TBH.

> +					function = "gpio";
> +					drive-strength = <2>;
> +					bias-disable;
> +				};
> +
> +				mclk {
> +					pins = "gpio67"; /*cam3*/
> +					function = "cam_mclk";
> +					drive-strength = <2>; /*RB5 was 16 and i changed to 2 here*/

You can drop that comment too, actually more saliently, what are you 
changing from 16 to 2 since its being mentioned ?

---
bod

