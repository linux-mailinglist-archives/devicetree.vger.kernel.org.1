Return-Path: <devicetree+bounces-21822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 339A88053D8
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:09:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C7C1B20CFB
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A27CE5ABBF;
	Tue,  5 Dec 2023 12:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RkRmGiju"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D986D7
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 04:09:33 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ca0f21e48cso17321531fa.2
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 04:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701778171; x=1702382971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zq5iNAQ1y1/ofhK1voNUhMj7x5xpHF0VD5FVrbbBMQg=;
        b=RkRmGijuPyfpap7lqGq3WT6WHsOwI4kKV9VqxgWhnvB69t5pkM8Byjz7LTSVudVnR8
         q6e8Hm6vWZD0nMNgQcHkqBm7UHJjXXNyVDm3+1dOtAAUh0Gkk1/4PjMBu+5kBxfG/JAE
         1HoXPROpZLmN6BZfzEzeo/LSA5svqUDELh8qEr/WdbC0v22uWzxHav4jjp7sORxXvSWm
         JsItru0L+3io5/q6jx13yA074g50TCHCIjE2xM3RPUsRm0Wtp2sbFUm/Rnv0iTOqv+xJ
         f2LrS4O2K0fRWHbSejsB5qKhQMcQXzRO5uyYstFHHvqzhOh2zQMfF/UHf0wgtGRcY+eF
         U09A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701778171; x=1702382971;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zq5iNAQ1y1/ofhK1voNUhMj7x5xpHF0VD5FVrbbBMQg=;
        b=JxH3Ui2PDGn9Rggf7/wsB2/eT/xoVpqk9H1YWl1tdW+yva169MhBBhGVBPsseE0a7O
         GnYFCG/Br2wEtBQIn7QGquP8Iy7wlbXUSRxHphdMNOCeK00SHs/8DabMHttTKczqevqW
         Jpvho4qka/plQCxmkecwCV1eaeYabY/HbqE1lB4/EKkWOkAZS0f/bHpKPkKivgRrAZUO
         JmeSlCn85igqKhiJOr1EVhU6TEzapi67w2NoM91RxBmkD/pQBd0juSQhF9lyOblo8YUR
         8lSCCrqIg9dcWKpJ/TId+nEDrjuqHcN2H2pbXy5cOLYuQVNki2eI+sw/9Uiqt8DlsGip
         96xw==
X-Gm-Message-State: AOJu0YwsZeleXDMCuqzBr2+6vQvWiAbFAerElSVv6WTdT9u+kacIKLL4
	M9r0cg9tTak5Dt8ToXBst1kElRjjJ9n/PcWK/3nMSw==
X-Google-Smtp-Source: AGHT+IFWJu20XMJnMqJQmeSGCxwMvv+kJmTfyJ5kS9lWQoV8p4TzYw/OgMgUxGj7hR8M2NDEA6nJuA==
X-Received: by 2002:a05:651c:cc:b0:2c9:f0e8:bb5f with SMTP id 12-20020a05651c00cc00b002c9f0e8bb5fmr2801707ljr.40.1701778171157;
        Tue, 05 Dec 2023 04:09:31 -0800 (PST)
Received: from [172.30.204.197] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id s22-20020a2e2c16000000b002c9f7c2635fsm956195ljs.1.2023.12.05.04.09.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 04:09:30 -0800 (PST)
Message-ID: <6c29bddf-175d-4ff7-b560-3d4017707baa@linaro.org>
Date: Tue, 5 Dec 2023 13:09:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: msm8996: Fix 'in-ports' is a
 required property
Content-Language: en-US
To: Mao Jinlong <quic_jinlmao@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Yuanfang Zhang <quic_yuanfang@quicinc.com>,
 Tao Zhang <quic_taozha@quicinc.com>
References: <20231205082922.32149-1-quic_jinlmao@quicinc.com>
 <20231205082922.32149-3-quic_jinlmao@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231205082922.32149-3-quic_jinlmao@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 12/5/23 09:29, Mao Jinlong wrote:
> Add the inport of funnel@3023000 to fix 'in-ports' is a required property
> warning.
> 
> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/msm8996.dtsi | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index 6ba9da9e6a8b..e7d93d0b4f3b 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -444,6 +444,20 @@ memory@80000000 {
>   		reg = <0x0 0x80000000 0x0 0x0>;
>   	};
>   
> +	modem-etm0 {
> +		compatible = "qcom,coresight-remote-etm";
> +
> +		qcom,inst-id = <2>;
> +		out-ports {
> +			port {
> +				modem_etm_out_funnel_in2: endpoint{
Nit: missing space between 'endpoint' and the opening brace

Konrad

