Return-Path: <devicetree+bounces-1701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2D97A77DC
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47CB02820B6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05772156CA;
	Wed, 20 Sep 2023 09:45:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC800156C1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:45:24 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3F4B9E
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:45:22 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c02e232c48so24459391fa.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695203121; x=1695807921; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ROIbgkr8E7Nrb6d7F4e7U0q1YWrRxeLH8QG4xJU6CVU=;
        b=nZ8u1l6kZoPDjHYSW/3pmFqnjGoZIJQwotgIEdglVyT7+dB7CgnY1jldXXxkJjLT0B
         ePtmKjLz1VziNIMqM8aVS4uR1OXG211fTCB5scvpV+fweR3AyxN+YYaHqOIq7eBY+h59
         6KmrhNvb7BAZABVseMO/rc6bncUm1DtGV3eqkCypUYPpQogmSUF7BImlhjllSbpI9P41
         jvY0CgExZMwm6jq8B/fiWJ0HNAobjcHbTxr/bQmbqCd4w0n16WJtgoNX7fPk+3PSoa61
         4Z6k9R5B/+OzABueUn6R+gxox+tUiUafin8RLWvRmaDZVQksnSD2sAWmcwWg8HQdnlHn
         iAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695203121; x=1695807921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ROIbgkr8E7Nrb6d7F4e7U0q1YWrRxeLH8QG4xJU6CVU=;
        b=oIB3fCsUj0UpnUsYDU2l+8TjA5Z4tQk2J8d4iTdT179VAsqXoQWn3w8r2FmJtmRthg
         YDv+nIyU+xm9Bt/3jp2QxTMGvl+E13PGneUFZw2mj5m7caU8rcMubSWAos8soimCXPFA
         hRz6z0pUpVTVL9QZG4eBJHZqbnzxihTYCrU1Bx8rb5cb4fmu3vaDqhu4ktiz6AkIrCU5
         DW4fmrnzbAxDX6gD4bj1K1jU0w0Q0E8thDdH5uvVX8DWsLPxDHLZB6FS4mlP/lfPUx1n
         ks7iKBqkdfHzppKauRAGoe1I/uGoVSdWtOI6qKeMklzOS+FOGhXE3QXTk9zSzshIPWO2
         wdfA==
X-Gm-Message-State: AOJu0YwpIZ2tHSkNSXs0Z5eLm24bFHmEOgTsdP1DaWERLwrpWSnP5SqE
	MbbNpfm4cFkVzKxP24BUJJiK8Q==
X-Google-Smtp-Source: AGHT+IHGhu0CGwoUKzQBJ/ayJeMLhvpN2LuyyiuKSKpZpEdfk+C9egH6A8RMkDkjP+miH0u0kax/HA==
X-Received: by 2002:a2e:3609:0:b0:2c0:240:b574 with SMTP id d9-20020a2e3609000000b002c00240b574mr1631517lja.31.1695203121167;
        Wed, 20 Sep 2023 02:45:21 -0700 (PDT)
Received: from [172.20.86.172] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id u1-20020a1709064ac100b0098e2969ed44sm9043952ejt.45.2023.09.20.02.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 02:45:20 -0700 (PDT)
Message-ID: <68fb2f4f-ba21-21b0-ddbe-aab92991ec44@linaro.org>
Date: Wed, 20 Sep 2023 11:45:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] arm64: dts: qcom: Enable RPMh Sleep stats
To: Raghavendra Kakarla <quic_rkakarla@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_mkshah@quicinc.com, quic_lsrao@quicinc.com
References: <20230920052349.9907-1-quic_rkakarla@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230920052349.9907-1-quic_rkakarla@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/20/23 07:23, Raghavendra Kakarla wrote:
> Add device node for Sleep stats driver which provides various
> low power mode stats on sa8775p SoC.
> 
> Signed-off-by: Raghavendra Kakarla <quic_rkakarla@quicinc.com>
> ---
The subject must include the platform name
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 9f4f58e831a4..23ae404da02e 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -1912,6 +1912,11 @@
>   			#clock-cells = <0>;
>   		};
>   
> +		sram@c3f0000 {
> +			compatible = "qcom,rpmh-stats";
> +			reg = <0x0c3f0000 0x400>;
Please test your patches before sending. This one has clearly
hasn't been.

Konrad

