Return-Path: <devicetree+bounces-11716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F1F7D664C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:10:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43CA01C20A14
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A634208CA;
	Wed, 25 Oct 2023 09:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gNpGjZ5M"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEBB71C2AF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:10:29 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79A5129
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:10:24 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c503dbe50dso83549841fa.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698225023; x=1698829823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9WKxzWYTIPEx72gLwqiuI8euT7QCbNEIlRKEwqUgI6Q=;
        b=gNpGjZ5MxUke0lxvfYdaA/16YsOOn75zYudfkdJL7T5HPcSH9KTRCjtxzJnjJxYeXB
         4zFGc8vvmzsy1fEjdtFaQk5nz2+fs/rveTGyJokBzeP6aqrWBnE9U9z4rSojKd4m5LI1
         aAc7tkExOQaZDoZVQYPtRUEJCwBGsYCz3X9lJHvxIOLkrRux/6urblgh7ordq+0oMcMb
         yDiBo/0wyGerqbqvh6GP2qrVUKM+nc1EN8N7wuVVyZV+p9QsaqY3cRHflFt1kZ9xZQNZ
         j6GIrwUMJ7vLf7LxM+8N9UZowu4oXWa5aOsc0dyNp89lxT0zQqG2E7lsmR9nQpxSE3vc
         m6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698225023; x=1698829823;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9WKxzWYTIPEx72gLwqiuI8euT7QCbNEIlRKEwqUgI6Q=;
        b=oknq8XPyN+KuRQRagXqkVmVq7F/mmBR+RoKsNw8MW8i6UhRKtAR2NGgDUYsYUTY7iB
         mV79YOYJJmxd7fCS4wCksx2hSc8Jaf3OZCxBv7l2HPrQQnh4QEPgP5NzZDf21hyIPXwm
         FBNnoZS0Jko5hIemzq9PfRe2m4B5cPaV7J/Q1OUxPEPwC6O61T/R3z/d9KK9sKyj1+45
         ljaSkHu5aOf58ikD0XjFwSHdSt/yQ4+xgcRJav+KOV/C37eovpxuU96ftV2eoPdHc/An
         1fQXGqvp/DScBqNHrNRc6PcE4K+wrl6ddPsIA5k+4/COV8k6V+PEmSk9VYzRiGScFsLB
         niAA==
X-Gm-Message-State: AOJu0YxpnrkVVyaqbbulb1sQrOZ65sXOuLV8xt330g7DRj3XkMARD2DL
	yU53eWwJeDvPDo5+laqBgHA1SA==
X-Google-Smtp-Source: AGHT+IE9+723ygXj7zuVPqEp3ynEibr5Ni7XXz2Au0L291BnhJCM/pjwh0RCN+qumAYXwzEy8ZMRjg==
X-Received: by 2002:a2e:7815:0:b0:2c0:300a:82f1 with SMTP id t21-20020a2e7815000000b002c0300a82f1mr10658057ljc.14.1698225022885;
        Wed, 25 Oct 2023 02:10:22 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d24-20020a2e3318000000b002bce87faca9sm2354356ljc.57.2023.10.25.02.10.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 02:10:22 -0700 (PDT)
Message-ID: <247f2ec2-c400-4d85-ac6b-2fd058989857@linaro.org>
Date: Wed, 25 Oct 2023 11:10:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 6/8] arm64: dts: qcom: sm8650: add interconnect
 dependent device nodes
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-6-a821712af62f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-6-a821712af62f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:47, Neil Armstrong wrote:
> Add Hardware nodes that depends on an interconnect property to
> be valid.
> 
> The includes:
> - all QUP i2s/spi nodes
> - PCIe
> - UFS
> - SDHCI
> - Display
> - HWMON
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
QCOM_ICC_TAG_ALWAYS would be nice.. (see sa8775p)

[...]

> +			/* Forbid SDR104/SDR50 - broken hw! */
> +			sdhci-caps-mask = <0x3 0>;
Have they *still* not fixed that?

[...]

There's a whole lot to digest here, but I don't see anything
obviously wrong..

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

