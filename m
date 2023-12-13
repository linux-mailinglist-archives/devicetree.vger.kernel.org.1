Return-Path: <devicetree+bounces-24910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF79D8119F7
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:46:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C273B21052
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B74CE39FC8;
	Wed, 13 Dec 2023 16:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yQAZLgx0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71778DD
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:46:14 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-33642ab735dso413759f8f.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702485973; x=1703090773; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gl8eoLUzBb22dSI7qdnrUzIaG/dfbsYNZdAqMzHLZ4E=;
        b=yQAZLgx0pkjZq7nxJcuxXWkuYbqm3hpsd0n2bVSTdZCIKj4pV5NOOZsFiNDTgI5pTg
         iXUvyrBojqCe8Ts5lM8G0srwqYpsMmOZJs/OTgRKyUVsyaHUkNxzpoF+E3lbGtf2FnAg
         Il47sfTlcBZR+eqC3KX7htrOIUBL0pe241Nf2X7sU6afNONV1pMefoZ2d591N+oVkNxz
         pfG4Sbwp7GIOdoQDQ4bd/UmDXhN3I+SBAmh6AwOVaXHb3DtJcO6u3lvzXQ1nM8ENbekb
         XonoHp9Mvswb10L8ghDxDb73mYCHynASPLOK0RKspDcLOJLp2HBeXUuhA4dnZbLSzTpU
         t51w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702485973; x=1703090773;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gl8eoLUzBb22dSI7qdnrUzIaG/dfbsYNZdAqMzHLZ4E=;
        b=Ohlj6sxEuWToJRKEW3wMyRGFzUdP6i2k1MD+ibulHASjaikQAuzi8VHC/LM0SOVDeH
         apSq7wNi827TmlfCFMBGbEstagjgm2LfhXypWwlaiQUg5L9rXAf+MUWd6+4x3zc1zP6A
         9PAHmNg7z8WBc7HNRKwnvMT9u2n6GwObJ3VhCuFpgm7IqkaOHH+lqePA1xaUVgU1kdpE
         46ZxDms4jrHt7f67sQ17IqSn01LW0FpP+rDQ5g7tgZ9AnUu5BvWE0xrCwTD9WOO868gG
         xgyZMQyQAMkIVceM7Rs55ktlKAu7JimPRHlQlZbd178dNUcWyuDyW3ai/HYIdAUTPfQQ
         7NDQ==
X-Gm-Message-State: AOJu0YwzBy1wNYYsnlvCWcA+CQb9ycd6LYpXHeal7ymjqwAyeEvMb3Kr
	xQ/dSYQMdsri3lu//EMtwJ9MGw==
X-Google-Smtp-Source: AGHT+IGntbw26qTvU7nU58AgDpvBGkGyiiv8pmNjWoGN6o68fk+7KZkLwAFhZEuqZDdWhq0H3KhoPQ==
X-Received: by 2002:a05:6000:1a4e:b0:336:3743:5a5d with SMTP id t14-20020a0560001a4e00b0033637435a5dmr484831wry.48.1702485972967;
        Wed, 13 Dec 2023 08:46:12 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:ac4e:a5fe:7f71:8d59? ([2a01:e0a:982:cbb0:ac4e:a5fe:7f71:8d59])
        by smtp.gmail.com with ESMTPSA id o4-20020a5d58c4000000b0033333bee379sm13767115wrf.107.2023.12.13.08.46.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 08:46:12 -0800 (PST)
Message-ID: <af14a2dd-75a4-4007-b9f2-207f2dc40ff9@linaro.org>
Date: Wed, 13 Dec 2023 17:46:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sm8550: drop unneeded
 assigned-clocks from codec macros
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231213162856.188566-1-krzysztof.kozlowski@linaro.org>
 <20231213162856.188566-5-krzysztof.kozlowski@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20231213162856.188566-5-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Le 13/12/2023 à 17:28, Krzysztof Kozlowski a écrit :
> The MCLK clocks of codec macros have fixed 19.2 MHz frequency and
> assigning clock rates is redundant.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 14 --------------
>   1 file changed, 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index d8f79b5895f5..68b05ab5f65f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -2045,8 +2045,6 @@ lpass_wsa2macro: codec@6aa0000 {
>   				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>   				 <&lpass_vamacro>;
>   			clock-names = "mclk", "macro", "dcodec", "fsgen";
> -			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> -			assigned-clock-rates = <19200000>;
>   
>   			#clock-cells = <0>;
>   			clock-output-names = "wsa2-mclk";
> @@ -2092,9 +2090,6 @@ lpass_rxmacro: codec@6ac0000 {
>   				 <&lpass_vamacro>;
>   			clock-names = "mclk", "macro", "dcodec", "fsgen";
>   
> -			assigned-clocks = <&q6prmcc LPASS_CLK_ID_RX_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> -			assigned-clock-rates = <19200000>;
> -
>   			#clock-cells = <0>;
>   			clock-output-names = "mclk";
>   			#sound-dai-cells = <1>;
> @@ -2138,9 +2133,6 @@ lpass_txmacro: codec@6ae0000 {
>   				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
>   				 <&lpass_vamacro>;
>   			clock-names = "mclk", "macro", "dcodec", "fsgen";
> -			assigned-clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> -
> -			assigned-clock-rates = <19200000>;
>   
>   			#clock-cells = <0>;
>   			clock-output-names = "mclk";
> @@ -2156,9 +2148,6 @@ lpass_wsamacro: codec@6b00000 {
>   				 <&lpass_vamacro>;
>   			clock-names = "mclk", "macro", "dcodec", "fsgen";
>   
> -			assigned-clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> -			assigned-clock-rates = <19200000>;
> -
>   			#clock-cells = <0>;
>   			clock-output-names = "mclk";
>   			#sound-dai-cells = <1>;
> @@ -2233,9 +2222,6 @@ lpass_vamacro: codec@6d44000 {
>   				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
>   			clock-names = "mclk", "macro", "dcodec";
>   
> -			assigned-clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> -			assigned-clock-rates = <19200000>;
> -
>   			#clock-cells = <0>;
>   			clock-output-names = "fsgen";
>   			#sound-dai-cells = <1>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

