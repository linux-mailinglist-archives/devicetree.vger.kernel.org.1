Return-Path: <devicetree+bounces-77011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAD090D2B0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DA98281A68
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEFAE15A850;
	Tue, 18 Jun 2024 13:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LMpNYd40"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5CB13C684
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718716972; cv=none; b=juLc2dGqV2Xw3Utdoj/sfMHgBqdfhN1iVgmmLWcZ/Wf8OtZo+yG0zldjTX9AQR3SUK4SP7OsOKIAdkW6thh87WHVwlcjuae7m5AdXLyvmSjuudaQ43SToydn2OqPCDXXqyfyDWB3iRfTOlcipT9s59FCejSQKpahWP+rTUZi6xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718716972; c=relaxed/simple;
	bh=cLhKZRsySXdFjzY+W77koyayg8BOMHXFhQnPCjTziDY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NOOquF3t4PDDUjwadWwflfrA4Y4on39yuxFWM1YMzzQrt+Gk0cfrmwlJuR9OGLa7DBNI4+jhxZ0IHHjuZj3tl9OJJMlRS6LBVbaUF06ArYRoIfBVX9lAR03LyPPTeK7y3gfyn+JLFMHuFlnFMapslvoc2ZX/0wwrRDejlhHGnYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LMpNYd40; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ec10324791so56804951fa.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718716968; x=1719321768; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cz/Qic+yN1dw4dup2qyauUs0bSkbzUv7Dw6XhgDklWk=;
        b=LMpNYd40icpDs26H4WqLaHygZCzmDj6nG3cpz4uAn5WRWnMIj4+vMDcTYOoNxBXvAZ
         4chiXOeNmXy1LRhixmJDpgXYcPj26hIY6QXD0V6WLnmr61+zQL1ef2xTbSczU87T77wC
         9rsO/keJbm2qsY1fosqDYb3lkmvATaboiLJiGOSiTu5LvJQ3zmx6OR4ssudMfytegaRp
         CEu/lzMGG0vBFaoLZ61Q0OToYepux3AIntVCYOmgo3WlDc1Qw30AptaIxqGgZoBgztC9
         MhZj9MsN31WyfyzLCPgZOIdm8KoefTXKg7jbHEd3A8KyulCjbCawuCNgZrYqUCSS7QjB
         NoNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718716968; x=1719321768;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cz/Qic+yN1dw4dup2qyauUs0bSkbzUv7Dw6XhgDklWk=;
        b=hAPhXsRQu3XkfivxkZKuRYLYIBMGedmmwJkPoIcKOg9rcN6Up8NQk1iORosdac2K76
         EdSjFJUDDkXMkKLG/WO6TzoO1FD2WRlcvmteMviOYlInk1xar6cbVgRcw+dMxUpKZgYT
         0Vuf5FrbQ9+ABflmqv16ZxzjaFJffll1DAGRSx2amU16aNKDI/5SCRvNeRTZxRq7ADPI
         gkVCNmLL31gHrrcSWU9x1Q7d3HbDJsb/pCmafTZmnQWWBT/TorHwD0NbmrHHITlQI4Mt
         pocOAgB3Shr/QbneTMvdeMfQoyUTfOYBUU72107RgHg9e7nL8YMoae39dq6+7fF3/Tts
         aQHA==
X-Forwarded-Encrypted: i=1; AJvYcCUN7nmEmBm2tRdloVe/ODbSAgQtj8CMiNx0QT8kDMEJEbaZWaXf/Vt42hMXPc6rzr8+DS0gHVJo9Nj/E2J43Yu9MXlobwsGnMTicA==
X-Gm-Message-State: AOJu0YxLd/7xqU9fmE3I56n9wrdASeCnXH2xuXycUvNcedy+s+CGK42O
	m+ngw5HbUYWcVGUjMbTs1/lhwrKSc4xcMAOvsyi04+dqtEH56VxcyqPUo8wK9+k=
X-Google-Smtp-Source: AGHT+IEBxW8WorKgj1f8yFLsdKMKt561xGH+Xblx6s0H8aCgbs1KMuYQ5voW2gXosCFALRH9RdaaMQ==
X-Received: by 2002:a2e:95c6:0:b0:2e1:ebec:1ded with SMTP id 38308e7fff4ca-2ec0e5d139emr88120351fa.25.1718716967421;
        Tue, 18 Jun 2024 06:22:47 -0700 (PDT)
Received: from ?IPV6:2a00:f41:9028:9df3:4fb7:492b:2c94:7283? ([2a00:f41:9028:9df3:4fb7:492b:2c94:7283])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c9ad36sm16990071fa.135.2024.06.18.06.22.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 06:22:47 -0700 (PDT)
Message-ID: <b72b1965-b93f-4b71-9783-f201a17c7e36@linaro.org>
Date: Tue, 18 Jun 2024 15:22:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: lpassaudiocc-sc7280: Add support for LPASS
 resets for QCM6490
To: Taniya Das <quic_tdas@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 quic_jkona@quicinc.com, quic_imrashai@quicinc.com, devicetree@vger.kernel.org
References: <20240531102252.26061-1-quic_tdas@quicinc.com>
 <20240531102252.26061-3-quic_tdas@quicinc.com>
 <6aad6a71-dd2f-4682-91ea-835357342ba1@linaro.org>
 <2800ce74-44ea-444b-b00f-e07bbfdd4415@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <2800ce74-44ea-444b-b00f-e07bbfdd4415@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 6/10/24 12:19, Taniya Das wrote:
> 
> 
> On 6/7/2024 3:00 PM, Konrad Dybcio wrote:
>> On 31.05.2024 12:22 PM, Taniya Das wrote:
>>> On the QCM6490 boards the LPASS firmware controls the complete clock
>>> controller functionalities. But the LPASS resets are required to be
>>> controlled from the high level OS. The Audio SW driver should be able to
>>> assert/deassert the audio resets as required. Thus in clock driver add
>>> support for the same.
>>>
>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>>> ---
>>
>> Please stop ignoring my comments without responding.
>>
>> https://lore.kernel.org/all/c1d07eff-4832-47d9-8598-aa6709b465ff@linaro.org/
>>
> 
> Sorry about that, it was not intentional. I had posted the v2 and decided to split as it was delaying the other changes in the older series which had more functional fixes.
> 
> 
> Picking your comments from the old series.
> 
> ---------------------------------
>  > -    clk_zonda_pll_configure(&lpass_audio_cc_pll, regmap, &lpass_audio_cc_pll_config);
>  > +    if (!of_property_read_bool(pdev->dev.of_node, "qcom,adsp-skip-pll")) {
> 
> Big no-no.
> --------------------------------
> 
> Yes, I have already moved away from it and introduced a new probe to support the subset of functionality on QCM6490.
> 
> 
> ------------------------
>  > +        /* PLL settings */
>  > +        regmap_write(regmap, 0x4, 0x3b);
>  > +        regmap_write(regmap, 0x8, 0xff05);
> 
> Model these properly and use the abstracted clock (re)configuration functions.
> Add the unreachable clocks to `protected-clocks = <>` and make sure that the
> aforementioned configure calls check if the PLL was really registered.
> ---------------------------
> 
> These were made for alignment of code, but existing approach was not touched.

That's not purely cosmetic, this now falls into the compatible-specific
if-condition, which was my issue.

> 
> ---------------------
> 
>  > +    lpass_audio_cc_sc7280_regmap_config.name = "lpassaudio_cc_reset";
> 
> Ugh.. are these really not contiguous, or were the register ranges misrepresented from
> the start?
> 
>  > +    lpass_audio_cc_sc7280_regmap_config.max_register = 0xc8;
> 
> Provide the real size of the block in .max_register instead, unconditionally
> -----------------
> 
> This had a little history behind this approach. During the driver development the ask was to avoid duplicating same descriptors and update runtime what is possible. That is the reason to update it runtime. The max register size is 0xC8 for resets functionality usage for High level OS.

What I mean is that, the register region size is constant for a given piece of
hardware. Whether Linux can safely access it or not, doesn't matter. The
regmap_size value can just reflect the width of the region (and so should the
device tree).

Konrad

