Return-Path: <devicetree+bounces-53119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1E088AFEF
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 20:28:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF23B1C3AC42
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98DD018E1A;
	Mon, 25 Mar 2024 19:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="emXmWCwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D67182DF
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 19:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711394912; cv=none; b=GVGaXbEvP/bNehvzKfS4nHG6Wwjku0gU843ZjRCOiH2j49I6gDFCgfI3ayZqkdTm26DTTQ5EoNbl6abvK1ZrboDw5M62CSuGBe6RWQlRoO4uaN+OyX/RQ1AUi4OuvGEqn/YK+ONUIbBzgLFCggT9I88BwHu8T8fa8tTwgHWhg6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711394912; c=relaxed/simple;
	bh=WOJk58NPEY6bQLLk7OiLW4QRojm9zxRs+zBbUeMIXR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A+6L5Zt2bWkUH/6zA5XlHjvV3MCfl/YdTehCt2KT3GilEmykbXKZDAlgerwXcfqPsWQ7HPm+v0Ypfj9oljbu1b39DW+/RY6gPlsC0Oi3CsCu5tBiWMTGQGaLxUfRgas987b10aW0onqNLqeUOtccJThSwmAEvi6WiIt4q10C8MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=emXmWCwe; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-513d717269fso5891711e87.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 12:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711394909; x=1711999709; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=psNNraVhnUbKK/OWfMA34x1jBaoh5fPNfZE/HUzeZy0=;
        b=emXmWCweAtpWxAQ7p+rdPkcPm57kUkcCJJvA8OzCVi4DGcBqNdOUoN+zFhTKdfj4zd
         ku9mQduX8HX9korCQkM/ZjdpEAlFhmVJG/hebMrP9+o2gSpiUnoc900ZSKQ94v43AqCe
         Ijdlyl+TUYQRI7OH2VKuAHCBQIVGprXhyuBAuwWldlAkpm/pA/LEFyqGfC9qEviGV7Gu
         Bc0mfTFc9I3OA20Z8ApkzkE3d5xn02tHxPsRoGcr+DvwZ5J2BHxtNseXXtj8tcp+61Tq
         O8kKGdC3S9Ar123de7ezZ0HJW4stiO9nm1rSUNxdCCaqfDxPRbTdyQmGoyw/QF752HSp
         /CTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711394909; x=1711999709;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=psNNraVhnUbKK/OWfMA34x1jBaoh5fPNfZE/HUzeZy0=;
        b=CJd7a3xS0U1VwtPmRFiuYL5gx5YqDp+3qRmTqAi0EgVJe81Gnaso4SyU+oqZUwTZoX
         T34whNgzyoRqC2e0MLg6ktwXlHcBJzp2+w5DdqqsQS1BbOZkfXfnAFr2GZTscC4+zkti
         uoJ88DEHVbAV3EYiZnTlE+mxkeuMdX5Uv9mC0Qgwnpr4O8Yr1LOBp5qwAIxt2hnorLzX
         zL2aVAmotpN6HJqCPbaS4k6R1sU9p8rJLMwP4RK4rA5WH2oxJNRXbMo1iFgpuqd+CA0o
         71B28kbX8Pk8GCwa/S0Z4ShmxEG0K3j9gd+RA015VkuHJrh+I0fBJ1L/Z8BGvzeIhADz
         HwOw==
X-Forwarded-Encrypted: i=1; AJvYcCXMTqkSoRNzlmhExb6m5dXRjnnCpKJHIq4hrOCFbxm9oAt5NwdxRdCfzTADfvgadKOtbrFiMunIe/H/x5E6wqJ0ATpJuaY38qEU5Q==
X-Gm-Message-State: AOJu0YxaBjaa2kydWz9+17ztQg0ZoXFc83gXfzh1EpWiWi3Vinol4ZfY
	5OhqtxTh2efUnTGNDBnhNLy7InLX1m0vFqKVOC4jmdN16X/gaBR4pnkF27/WC4s=
X-Google-Smtp-Source: AGHT+IFL03OQyIlU7b+ivfrie5Fn+sc3e00t3ywVFqbwhh16A4d4z3XemtLOat76e5ApBjMspYSJiw==
X-Received: by 2002:a19:6452:0:b0:513:c963:895e with SMTP id b18-20020a196452000000b00513c963895emr5096428lfj.42.1711394908908;
        Mon, 25 Mar 2024 12:28:28 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id t4-20020a1709066bc400b00a46f95f5849sm3353343ejs.106.2024.03.25.12.28.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 12:28:28 -0700 (PDT)
Message-ID: <ffa93b4a-608a-4cf5-b111-0d1f8520afdd@linaro.org>
Date: Mon, 25 Mar 2024 20:28:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: qcom: Add support for Motorola Moto G
 (2013)
To: Stanislav Jakubek <stano.jakubek@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, phone-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <f5d4d71cd59f25b80889ef88fa044aa3a4268d46.1711288736.git.stano.jakubek@gmail.com>
 <b35ad5ff8a13f9df415b6e6700b3b5d3f13bfce8.1711288736.git.stano.jakubek@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <b35ad5ff8a13f9df415b6e6700b3b5d3f13bfce8.1711288736.git.stano.jakubek@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24.03.2024 3:04 PM, Stanislav Jakubek wrote:
> Add a device tree for the Motorola Moto G (2013) smartphone based
> on the Qualcomm MSM8226 SoC.
> 
> Initially supported features:
>   - Buttons (Volume Down/Up, Power)
>   - eMMC
>   - Hall Effect Sensor
>   - SimpleFB display
>   - TMP108 temperature sensor
>   - Vibrator
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---

[...]

> +		hob-ram@f500000 {
> +			reg = <0x0f500000 0x40000>,
> +			      <0x0f540000 0x2000>;
> +			no-map;
> +		};

Any reason it's in two parts? Should it be one contiguous region, or
two separate nodes?

lgtm otherwise

