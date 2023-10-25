Return-Path: <devicetree+bounces-11720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 726777D665E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:12:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D594B20E8F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E6920B01;
	Wed, 25 Oct 2023 09:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fCpfzy4k"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED4D208CA
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:11:57 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E34E7B9
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:11:55 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c5720a321aso50532691fa.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698225114; x=1698829914; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ikf4RQnMQeyOLmmpbCxkqQ+qg4jdp+u0cU0mdI9Q5GY=;
        b=fCpfzy4kW/Eyf4lTODGerNUL+vXonfSnb1LMNoJbfFmLCZ2q5qozV1IjUZV93+A6px
         UhDUyaJ/9rImOA6xZgjoWLS6a73J2vyNCJc7K0tB9qsgcF98N3ze1Y4aoqhI3iyyon+e
         ruV3WPt7j4esZ0D+37if/utNoMe2OKmD8aWS3qKiqB1/1HCH1Kqs1EFeZFUZ8MuToqKL
         1CVAf6woJ2EV5BzSFJhrpohp8DREpUgfQySSTtTJfd7UDjY//FjFDkcoZnnadsORB1XE
         6OgpxjQUiKxPgPkVaOhac3sWgX9W3C5hY46kKgWGZCNDlHD1Kb5lyqNAfnC8SvGB/HQj
         xr0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698225114; x=1698829914;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ikf4RQnMQeyOLmmpbCxkqQ+qg4jdp+u0cU0mdI9Q5GY=;
        b=e98EDIlOg7z61yMxFYIf44zv2QUeDM6qLpcXbWXNwEFXbvKINjb4MsyaGC6Jgl77q+
         lspmS5XQ9B72vQLQu8PrtolD7tOWNZ5y8LrMbnFPylvpNaOJmzFJjqQwS4O9zYd1ksy0
         Tq3G76Kjwm4W+hVTKyo4ddlCvVlDaHvIOSwjU8ZOdvRsma8nrbRwsSmnufankp2GkvEU
         iR9/HgJT/YWof4BTnQlN8ovRKcUsx7Gmvl0XH37U4vb5FqHPH9ogHuqjbOfzYV5/P4ba
         ZKAiPaX2xhCZFCtRRpA+4c8JNbL48kvS9gHL63Wbl6l4v0EBQHwf0++/PCM7yFTEsgs9
         fYlQ==
X-Gm-Message-State: AOJu0Yx3FW/XUfcABl+BMMabTa7ss3fNQDooRS2IhPDX5lQ9PRf+YMFj
	bNIVQ/aLDEu7sNO9jC/UiM+X6Q==
X-Google-Smtp-Source: AGHT+IFmMAxM0VzBfFMXUEhAPjHjRESYsYMYV5NmTHnGJZBY2IMsiD04kM7hfC94gQgNmwdPFtnHcQ==
X-Received: by 2002:a2e:b88a:0:b0:2c5:fde:e457 with SMTP id r10-20020a2eb88a000000b002c50fdee457mr10943596ljp.3.1698225114271;
        Wed, 25 Oct 2023 02:11:54 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d24-20020a2e3318000000b002bce87faca9sm2354356ljc.57.2023.10.25.02.11.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 02:11:53 -0700 (PDT)
Message-ID: <e046b554-34e7-4c95-a42d-47338a5ba927@linaro.org>
Date: Wed, 25 Oct 2023 11:11:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 8/8] arm64: dts: qcom: sm8650-qrd: add interconnect
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
 <20231025-topic-sm8650-upstream-dt-v1-8-a821712af62f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-8-a821712af62f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:47, Neil Armstrong wrote:
> Now interconnect dependent devices are added in sm8650 DTSI,
> now enable more devices for the Qualcomm SM8650 QRD board:
> - PCIe
> - Display
> - DSPs
> - SDCard
> - UFS
> - USB role switch with PMIC Glink
> - Bluetooth
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Same comments as patch 7

Konrad

