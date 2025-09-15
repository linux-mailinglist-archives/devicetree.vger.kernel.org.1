Return-Path: <devicetree+bounces-217386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7826BB57783
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:03:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 399C018918BB
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:03:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0464A2FDC37;
	Mon, 15 Sep 2025 11:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jahlDWKC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4730148A
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934086; cv=none; b=XU0WknIbhwchDIZCbM/4u4VODzWE3waNLKKS+SSVOEifzGBzt2rlOtKF0xpxDqgI5H/JH3YaU1r74w5bFG0kHYOgnAArQT1AYSXC8iKa5xHQvnGWDM9QHITQDTHX8XcDMmzJxVEa6Kgi/PNYq/LKwF5MIZ8VzADXFUhjIwVxqgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934086; c=relaxed/simple;
	bh=+xw+xFdVsHtu1zD1rilwuvSTdD7/B9mEEYjrzi4uMe4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BFv8S91ZlXlHIHIQt0PKqzO0bkB8qQx7eMo5CiG9VdbGzFVJtYqJrkekSsmMo65yowwG5XyAHthCyV4SpiIcBxonGZmrGJ0r9Vvjl0ZX3evRsCq/3e33LvUiNoID0Hjty3RZnpirOWx4SWgFaFVyDjBfFLMw6ElxK7KA9wpu4RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jahlDWKC; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45f2f10502fso3563675e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757934083; x=1758538883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V8oIXqr3dPAcqClDjfphWnzGOsz2ovd6WwhHnU/sb4k=;
        b=jahlDWKC0UK/QQ2qwQCtYzJ9rX1UjOoVgcO8b4UQuENLjfDRJjFqZoDYFJ7NqDmX9/
         MBC6So+XLT7+PhyJlwnM+8xMMxXs+jRQit1LtI4nlPhdpp+NsusBYfDcxcj5C106qa00
         LBPF3h+T81XJWFjTuPX3lnDDObOgV66MzftqOWlffFxApiHknvfFdAiC5E8jITB277ry
         gImWi/AYjggLFLYALSd9UFQxFcNxqj0t+sxCdfxSAST3TSy0aAJJm5SQ2wIikCAhcbE9
         OuwKFqfbWmlaZBCv1JpqDZpNKwfR5bomt3xru1/PG6MnZpCEMoagkXqHeWaP1Ip5yI/7
         bhBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934083; x=1758538883;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V8oIXqr3dPAcqClDjfphWnzGOsz2ovd6WwhHnU/sb4k=;
        b=LeoV1tE+KTG/qQ7quLcH+xuTEQowPv7vG/0MoUsPY068Mkv0iQPX2IQtAQjm4Kt19Y
         YvKbYucJRH9PEhjIPpTWZfpmF+vVhjLicaoBBFkJMf0910Q/dxOOq5IaS86+oA1lPwPu
         /v1XHA6QGoxNu09WxMIoOJ7wLO5DI37BqrQKmu7A3JvXqnoX110iIraUnDrQnzx16DTM
         UY3g5SBuZzc7a/zvszvy32B5JA5M0vR0OjslVgvxX6DjZig+kL0B0n/KgjuS0Bzgg256
         VRx7xevakFiAcAk8+meA5o5oSDFFGyjUKn/BrzdHsPerLwSD+s3DNNpfaAl8xPZ1vl72
         4QKg==
X-Forwarded-Encrypted: i=1; AJvYcCU0+rK89F2nGFObK2j6tUwdzz+khLCYmq6liysM1J0a/zNw2r7MU4Aw8LfMcb7km6tuarGT7Fj4oHku@vger.kernel.org
X-Gm-Message-State: AOJu0YzSIosE0cPrUi2EHY2UKOBuLFNOa5SGstpCMX3oH6j3DZTxp/ML
	pPnOaI0Li6rk9wDfuTaWkUYZFLq3a1VmbL9c3o8mHupe7zXX//GSlo/fDcOpczl7etw=
X-Gm-Gg: ASbGncuLvyizKBIOiw7bq2Bixls0QSVyrnDuE97xbMIYfbldDcyV+KdrfQnaGM42G0Z
	vgMHGgUKnzlvoA9J3E/FC1hshe1oXOmkIiAF4YxJM7pV4LOklCH3p8B6nzGoDE1fmXg6WdAPYxj
	XObhsj4jubL26Q5MZ60jhyitB0oJyFkssMJZNB2PsW6XLLgS2+JOopWfJEAd/Dux7+XSao0a0Nb
	JVIqw/TxCFsmWGQcdZvqMXNMnWoKvSWu0xTBUNM0cJjZKWQCRmEz9EHYCSQXPlML+/ccvpNQPS9
	/sNOKa7xzsDWSvkstJO/8ahPmIX/31J3CNCEw0qEvCCDHKjgLe0JMJ72rhfkaOAcMvLRazDH6J9
	Tq+KIV2P5VuwXAsoQVoHlBTzoLQLUIN/b6yr6jP/vcYNs/GpUHq0dYtg/y+tMGnNhgGP6LJ9Ufd
	AtSWOLt9YAHzcHJaPhxUn0GldpFq8V/KZ5bBt9hJxZ
X-Google-Smtp-Source: AGHT+IGhUiTErRJMkwIOQHIOBTtyreq7jo0zoyWEEW8wbkAfUFUJ2Pg3JyaoFNKl+Dg3YdUplJLZzg==
X-Received: by 2002:a05:600c:1547:b0:459:db69:56bd with SMTP id 5b1f17b1804b1-45f2710c252mr59087885e9.20.1757934082527;
        Mon, 15 Sep 2025 04:01:22 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607878c9sm17402678f8f.26.2025.09.15.04.01.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 04:01:21 -0700 (PDT)
Message-ID: <5cb6b6dc-e5b6-4677-93b1-daefbba56d5c@linaro.org>
Date: Mon, 15 Sep 2025 12:01:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] arm64: dts: qcom: x1e80100-crd: Enable IRIS video
 codec
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Klimov <alexey.klimov@linaro.org>,
 Anthony Ruhier <aruhier@mailbox.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
 <20250915-x1e-iris-dt-v2-4-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-4-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> IRIS firmware for x1e80100-crd is already upstream in linux-firmware in the
> default path, so enable IRIS for the CRD to accelerate video decoding.
> 
> It looks like the X1P CRD might need a different IRIS firmware (possibly
> even changes in the Linux kernel driver), so keep it local to the X1E CRD
> for now.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index 976b8e44b5763b2d6c0f4786bf5809fee29dcecc..dfc378e1a056a8af27ef4b646f7589e7198dbaf8 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> @@ -16,3 +16,7 @@ / {
>   &gpu_zap_shader {
>   	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
>   };
> +
> +&iris {
> +	status = "okay";
> +};
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

