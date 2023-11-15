Return-Path: <devicetree+bounces-16039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 556757EC96C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 18:09:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8E901F27E9C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:09:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E856641A83;
	Wed, 15 Nov 2023 17:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aggNa+7n"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D494175C
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 17:09:14 +0000 (UTC)
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C67D1B3
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:09:12 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id 5b1f17b1804b1-4084095722aso57880455e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 09:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700068151; x=1700672951; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9vDuT27fFAPAr+lXJ//e8nOJYd3xhkmGW/lepZEY6+o=;
        b=aggNa+7n1f16oteFqdkyBHgKMCfw/o8IlzawMtOm94F/PADMiE5uQOxhRqXvbutBcY
         Eumu/PyBWhA6JEPEVejDI1ytovT1Hnnim7atD1pOoRmylr2fndFycmWxL5US/Lmz0eSL
         E+EsZcs6gRAY1y9HA+pabCxPY1lUcdXAEbZMuD2oSlniQlpEa7nSZ5IHeAnge89OCrg2
         eJ6pJdXtzpv09ylD6lDm/c01+xg9N2RXC9bUSw2pzZw26yaCDzBDX/irJpty51OteV6U
         LE1Qw+MBjHhG4ZwIwSvYbeQgEqL7h/L1ergVJOrRTwtHYz6qSPz1gEDTxAZwVRrC9Aa1
         wEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700068151; x=1700672951;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9vDuT27fFAPAr+lXJ//e8nOJYd3xhkmGW/lepZEY6+o=;
        b=C52LoK2zRyxQQ4+Hfps+vwjmk3ELiQHCkV0Pw0hMUpdB4joXQ93RBiJSBP/rOStQH0
         R8QinPSm+KG6iChYQa1BuSA2zyM/gVHirUixUV1+eETs9oovXr9059IZceUGM/quNa6h
         g+qp4TOer0Gl+bgRKvBibdYkAoxrQs5qph1krXMoZmScbI+88gp2b5ohmBD62kBePkJl
         qNaXA6sLPFx7RTtXsN8HJkknA2VqSyI1OFAjETuEpnXpLhyUmg+BDKd5/nRiuYJJxWq6
         4CaC47hx8x6Wgf+eLuoRWgXI08bCM9y7EDwH0k0lZYfy6OJ9G26oluRrSXbyj7/XMnQe
         PDGw==
X-Gm-Message-State: AOJu0YwTKA6LZr9bkRJnBUanh+y6eDSSyvPhu0Q0EZx8PgjcJRK+R5Nd
	UF9UzRbQTkRdO493Vhnrnf/XxA==
X-Google-Smtp-Source: AGHT+IEUghZ831J4tzYmdf2gt2xTAlWfN6B4Wb74AMJ11f5CmNqzbTCLy3rWiJ//CiGDQFo6yuPI+w==
X-Received: by 2002:a5d:595b:0:b0:32f:7cf4:c779 with SMTP id e27-20020a5d595b000000b0032f7cf4c779mr9948351wri.23.1700068150834;
        Wed, 15 Nov 2023 09:09:10 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id r18-20020a056000015200b003258934a4bcsm11036647wrx.42.2023.11.15.09.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 09:09:10 -0800 (PST)
Message-ID: <bee6062d-55ad-4577-8478-d20881c5047d@linaro.org>
Date: Wed, 15 Nov 2023 17:09:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: videocc-sm8150: Update the videocc resets
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Andy Gross <agross@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20231110065029.2117212-1-quic_skakitap@quicinc.com>
 <20231110065029.2117212-3-quic_skakitap@quicinc.com>
 <31dac823-cc46-401e-85f8-d04544bd38c3@linaro.org>
 <2c5dae0f-5bd4-4fed-ba47-1175eba07207@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <2c5dae0f-5bd4-4fed-ba47-1175eba07207@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/11/2023 16:48, Konrad Dybcio wrote:
>> +    [VIDEO_CC_INTERFACE_BCR] = { 0x9ac },
>> +    [VIDEO_CC_MVS0_BCR] = { 0x870 },
>> +    [VIDEO_CC_MVS1_BCR] = { 0x8b0 },
>> +    [VIDEO_CC_MVSC_BCR] = { 0x810 },
> FWIW this seems to be a copypaste from
> 
> https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blame/92b31370d31d22e910120f6a875bf0919b3f1773/drivers/clk/qcom/videocc-sm8150.c
> 
> so if it's an issue, it should probably be fixed downstream too

More of a question than a gotcha - 0x9ac is valid for sm8250 so curious 
to me that its a different address on sm8150.

---
bod

