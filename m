Return-Path: <devicetree+bounces-31357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC0C82AE91
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 13:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F9871F28BB1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 12:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B527156F3;
	Thu, 11 Jan 2024 12:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mduOEd5z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C057015E8B
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 12:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2cd81b09e83so12291411fa.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 04:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704975571; x=1705580371; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sB0RisVxzG4fCy/lSv8Ys0Km85GWJSkQtSWNZJfVNYQ=;
        b=mduOEd5ztWZKxwvltBRjkkcOj2taQea9CAYhsW2kGNELDFgSBwUQFvQOlHviwANp4Z
         6ujfH/wtdcO3fDdM3F91d3G4fxOKSm9tpzRqN31YBnKn2zMzyZ5k43xLa7q5foykcRIU
         hwlUm84KqH5cY03VlGYMe0TetRIcvfSrQheZbsxI/iB6A5W2DItkKhbVPjHToaqo/UUq
         z3VdNGlaOE70GtA/sE7+sjDMyxDXgOc9eEONUhx03zJua0jCeFzt/96QccPUC4P9XRpP
         lmF4C+6nSPCS1TVjWFvK85OzOdWd92ccJuKPDanwaY1ne5KEbeYqF5Pcwf0RqpIPgwih
         B45Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704975571; x=1705580371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sB0RisVxzG4fCy/lSv8Ys0Km85GWJSkQtSWNZJfVNYQ=;
        b=nHY73OcsLTVSEGFurYMygenjfsGkVF3nqpsz5hJOoeUtuYmYLT7441ossQdRsvE9DY
         /zFvmfxneBCtE2Hibf7PRf3Mx/ogyr2F0eT+peGs9vJ+fRkJlF1SujzSrHC8aocOJQN+
         /WMCTah2ZgO1kH0e2JtijWTGF4CntHrq9/ZyMW/6sQY845yuQgb4LRd3+G3lpKNYJ878
         y8fHOpJxtkx1sWo/8PS3aUXuwjbHMBqSMYH2Ey7dqcpEiCwJ17D0RI5I47g4uhIMlP2T
         yKrum5RoVz4epgWev+0pTMBIJLSIzxRzuRUTeReKpDVYEh8M+CH+Fm26QvteoXM0CTAN
         JNHg==
X-Gm-Message-State: AOJu0YyEUSdV96DJ3Bf66IQJ5Do1V8K8gMxmgYfqny4diFHr5644qx+o
	/987aiPRhwqqcIbFgMBBA9J8p/tiwXDyVQq5IOUmrunBSaU53w==
X-Google-Smtp-Source: AGHT+IGw98QB8JspIZaFT8NnyeapJqJS+aKffDsBw668qr0QiPfv6qoV3Q3lubRojSpsGwQ8+nazXA==
X-Received: by 2002:a2e:94c3:0:b0:2cd:45dd:73c3 with SMTP id r3-20020a2e94c3000000b002cd45dd73c3mr181748ljh.78.1704975570776;
        Thu, 11 Jan 2024 04:19:30 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n25-20020a2e7219000000b002cc83210f65sm126181ljc.89.2024.01.11.04.19.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jan 2024 04:19:30 -0800 (PST)
Message-ID: <b64a5650-6152-4a66-81c1-22df2abfe359@linaro.org>
Date: Thu, 11 Jan 2024 13:19:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: ipq6018: add LDOA2 regulator
To: Chukun Pan <amadeus@jmu.edu.cn>, Bjorn Andersson <andersson@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Robert Marko <robimarko@gmail.com>
References: <20240110151040.2155938-1-amadeus@jmu.edu.cn>
 <20240110151040.2155938-2-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240110151040.2155938-2-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/10/24 16:10, Chukun Pan wrote:
> Add LDOA2 regulator of MP5496 to support SDCC voltage scaling.
> 
> Suggested-by: Robert Marko <robimarko@gmail.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 5e1277fea725..2f892d3bbbc6 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -174,6 +174,12 @@ ipq6018_s2: s2 {
>   						regulator-max-microvolt = <1062500>;
>   						regulator-always-on;
>   					};
> +
> +					ipq6018_l2: l2 {
> +						regulator-min-microvolt = <1800000>;
> +						regulator-max-microvolt = <3300000>;
> +						regulator-always-on;

Why is is always-on?

Konrad

