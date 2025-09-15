Return-Path: <devicetree+bounces-217385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21245B5777F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:02:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E79843BF012
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9CF32FC001;
	Mon, 15 Sep 2025 11:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hbtgKJUa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8A82FE05E
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934059; cv=none; b=m3acaZ7ABdkVb2kLUG/spm3zLdckv3NhZQLjy+IYz7/mLM+3sZwS/EFoz8kYhWtDgNAr/YHSNLT3CNOxpoRroZcvWDqnH9y89KNB3KMiwKnfE6CT0qMiICPl51q9YhjuOlc4DovESx19XW5CvjGUZP3i+gmTomb66vU3hP0Psuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934059; c=relaxed/simple;
	bh=Oa5cWbDm7uUKMCDYHkC/Iu8pqcZkNUOYxbEMQLIRbsU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KTbPfW/zE2qWR2WKS0HbAbzS/Kzwi/YllU+bQofcLmiYkoO0u8Hw/IzOEiROA3mAM2iayOmJc49fvwW8hCAgdtP9ZeyWasSryjMOZPYps3hpMTMSKZgxk64eARXvJ/b7xGfIIWITtjQd7+WEzVIsCtZkvW3nV3XpHE20BlbYHto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hbtgKJUa; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3dad6252eacso1637583f8f.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757934056; x=1758538856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T63X1LQwQk/2hAt8FKtd7anGWLgK9h7B68o/CL4jZ6U=;
        b=hbtgKJUa9vPLZykYf7Vy5SIj0uogdEUHkP9dSCAGJiGGqUXmGGIleSUr5xvijPWcDL
         JrKLEt4q5Z6LHtMojVA8C8JfsfGFflWVwE+f4qtPau8Z0pr3lXrpnMF9VHdIXe+W+yBM
         k6rCS8KEsCJSSsUKGJiLZLlUb8WXfust5jTbSLPuUVWusZMzNpHuQz9A1rrAw4XFcV57
         9elDRxcE+KH4VdxwMywHZ75avK+1L2etboYiGprznIOfrjuAYtRPWoV9ZuckSexh2gWB
         FNEMy1HSrVVt0lefMVLZOWvYk8Q1jnRUzIyChjPAag1pmwD2Q5GR+r6rkZZ2DkD1mTtO
         i16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934056; x=1758538856;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T63X1LQwQk/2hAt8FKtd7anGWLgK9h7B68o/CL4jZ6U=;
        b=wpJTDeozoCAmKN6LClwhSsHCjto7V11r7GAznA+bpaiGF7GZQkNPgnR3Q0vqCAt240
         HSwQPfiWu78Wn++RJreThKYYj/QE7tBu6vWN6fPaUeHbWnt60Euxu9aX3K07A1c3S9rF
         6dynDD+MsDjD2xJCc4eof6NZNNcOt4EQnSCR1gl4m0R/mqWQEKIaoebPWw4QHv1de3hc
         x4zBcgjB4Y/aN5VcL7khbrf+IgJCg0BenM61ufn2kppAYOri8H1mO0CvrGkRfnRuiLpk
         +ODS592BYqbQ1OUr8IqILE6RrAguD3KrT7PSLYD7MHZqvTwmiey540v4yMDh+O1U/s8L
         bAaw==
X-Forwarded-Encrypted: i=1; AJvYcCU/rSjNYiV9MQCHPIHlroTewRkCbmOuh7PsORDI909LIrN5pvFV5QaKjmlm+5atIq+10LrUXdFrymqa@vger.kernel.org
X-Gm-Message-State: AOJu0YzD5v9bJCrMvD0wwHbCQJUaSEzB1ob37yE0pLdtEk9gmr1JBNG0
	h/DuExVFe9uU1zwbw2qWk766Oz2VFTeu/qzOKZAy7Lx/PsyICtwtJ9Wh11kpDkZn0eY=
X-Gm-Gg: ASbGncsNZ45onxeOVuLY8jF/2sxYlvbJMPNotUEZ9b80+JkMHSESaWfIzP4rI1LhQWP
	PossjiQxWueu5ctZz6meMBWJFmk5DD2k9cEjSS7Y5mPnpj+ljhAOqBBhhRPczXKDNHa1rVno8tc
	7XgBj9G+c8R7sABgRrtRtX+pqpIBmC9bu9xB0HszieZLCbN+Kc96FGAAijhAAvSHc5FF1vSxY4u
	OEEnQ1Ssdpf91KaaSqah0fvzyMYIyaWEqxd8Fd8s+lDRskioDpTUrD59upcV+qFlBdI3GYQ4Yk0
	GwwLWEQ6XNSbCpJX39vkYgOwGJmIoRT/tdy4lFFV62NLbFvPjv4ZVZB7ke9skObRbze5wlttHZi
	3Ak7PH4xgOY12ZSPU+iXimlbcIlgmHG7wxk1HvWoY7OHTe+PdvuZ9Fzbopi+s6KvanZ19ObdPWc
	+wv68wQZ0v/2NdfSGtpkWSgGXzPVFj8w==
X-Google-Smtp-Source: AGHT+IF2gIGDbHEOgoK5pROighRDhmTz+p7m86Ot1mCrRJvMBJ6OX02h9vrPcUk6pgDO2JUXpwgQlw==
X-Received: by 2002:adf:f547:0:b0:3e9:2189:c2ca with SMTP id ffacd0b85a97d-3e92189f2edmr4043887f8f.39.1757934055977;
        Mon, 15 Sep 2025 04:00:55 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3eaa6476fadsm4123755f8f.45.2025.09.15.04.00.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 04:00:55 -0700 (PDT)
Message-ID: <51f233b2-f348-438a-ac11-0b711617dc0f@linaro.org>
Date: Mon, 15 Sep 2025 12:00:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/9] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 Enable IRIS
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
 <20250915-x1e-iris-dt-v2-5-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-5-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> IRIS firmware for the Lenovo ThinkPad T14s is already upstream in
> linux-firmware at qcom/x1e80100/LENOVO/21N1/qcvss8380.mbn, so enable IRIS
> for the T14s with the corresponding firmware-name property.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> index 23213b0d9582822e9503e4acf18c62d5c8c7867d..0a989e9d3d23146cb9689b68ba6c5779283b3c98 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -967,6 +967,11 @@ touchscreen@10 {
>   	/* TODO: second-sourced touchscreen @ 0x41 */
>   };
>   
> +&iris {
> +	firmware-name = "qcom/x1e80100/LENOVO/21N1/qcvss8380.mbn";
> +	status = "okay";
> +};
> +
>   &lpass_tlmm {
>   	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
>   		pins = "gpio12";
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

