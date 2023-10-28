Return-Path: <devicetree+bounces-12600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DC37DA710
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 15:05:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1AFC4B20F99
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 13:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A050D29D;
	Sat, 28 Oct 2023 13:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BifJbxzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8796523A0
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 13:05:28 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1DD0D9
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 06:05:25 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c5071165d5so5122951fa.0
        for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 06:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698498324; x=1699103124; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Q7REDLfQsAJ7SndjWElaiqS1d/sO15e1fwlkWpCSSgw=;
        b=BifJbxzZaHymXPjwPjLh1ve4DxlSJA2V7NuNHazcXuy74j7I6jMT02rm9eCQF+wuHW
         /dCEhHKdSKOZJ5B+JwDGVmKf8xcNtbqGEgie+I/sVUYoxtVFIeN3ntKHkkE/oHtS5OxI
         OHnk47HLT+nDRQY6goIKyYM5yLQC18OMgCmwveXjKbdh8iOVZj5q6v8SFDNT6J2K9HIk
         DC+6G6p8JqnLkPe+uvA+iR+AAXk7BiFAZLEIDM4qL0d/U+Z4/eznnDrotbnXdgLsR5bf
         XaQhvesybQ8FX5VCKQ7e5CaUF6WbpPfZgIkU2U3960YG4UDXmWailYfakZhKCfQ/qhdj
         Bb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698498324; x=1699103124;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q7REDLfQsAJ7SndjWElaiqS1d/sO15e1fwlkWpCSSgw=;
        b=WbePmcEmr8aQgEHC1gKNFSqKN4o8jH5lsrBl+vzwLAIGJSn9FF6SxyIhF0RkLK57If
         odDdK+4/pdOCZaoM/cmRV0xPa8X52Lufiac92myUhq63pdw9IxHdPqk9PWteSd4JKpEy
         PSRb6QWxkFFaghsQihsIInSX1g8htmuCd0tKDa7TNTqdt35R7+4U0LsR2OZFZq/dvDHm
         bbODt5UFwaWKvFhDYdYlFsxeQi0Y6SWZUcvNEYy9CWRxMtjsq+Y5yPM+DhOWcB6tLaTI
         7/VJV10vANhHOrTgQpjWc3vMG4z/NwFOxP0IM6ER0pGnxgBuB8DUr/emh7m8TII3o3/M
         QQnQ==
X-Gm-Message-State: AOJu0Yxl5T5dXI55QPDa0nesVvRZWznGHufxlFP1kTEbdTIP9BjBd2Io
	FCajLotv+JTzmzEfsNPPuSy+kw==
X-Google-Smtp-Source: AGHT+IEff08NZ+taaIxvODn3ijskDQen0I7LF1xmT9yvVdzmz0sGH6Mjy906q4wa1YMvfHtWuelFLQ==
X-Received: by 2002:a2e:a70f:0:b0:2c0:293c:ad12 with SMTP id s15-20020a2ea70f000000b002c0293cad12mr3226120lje.17.1698498323978;
        Sat, 28 Oct 2023 06:05:23 -0700 (PDT)
Received: from [192.168.130.123] (178235177183.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.183])
        by smtp.gmail.com with ESMTPSA id z21-20020a2e8415000000b002b6ce8b0dd6sm618828ljg.75.2023.10.28.06.05.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 06:05:23 -0700 (PDT)
Message-ID: <42fa773d-b58a-4bd9-b12d-3e9931d2ae6c@linaro.org>
Date: Sat, 28 Oct 2023 15:05:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pinctrl: qcom: sm8650-lpass-lpi: add SM8650 LPASS
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231027093615.140656-1-krzysztof.kozlowski@linaro.org>
 <20231027093615.140656-3-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231027093615.140656-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27.10.2023 11:36, Krzysztof Kozlowski wrote:
> Add driver for the pin controller in Low Power Audio SubSystem (LPASS)
> of Qualcomm SM8650 SoC.
> 
> Notable differences against SM8550 LPASS pin controller:
> 1. Additional address space for slew rate thus driver uses
>    LPI_FLAG_SLEW_RATE_SAME_REG and sets slew rate via different
>    register.
> 
> 2. Two new pin mux functions: qca_swr_clk and qca_swr_data
Hmmm so slimbus is entirely removed on 8650?

Diffing it against 8550, looks sane

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

