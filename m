Return-Path: <devicetree+bounces-24375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2A580EF05
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 15:41:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 889161F215C5
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 14:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE12C745CD;
	Tue, 12 Dec 2023 14:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v0ai7RS7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C524D2
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 06:41:08 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c9f85eff28so86524181fa.3
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 06:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702392067; x=1702996867; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mt0RJuRzONksksmHKJ5+QxIw2yK885EP6NVJe05HDXw=;
        b=v0ai7RS7xku8P5+CKAU7nmTK7xVSK176EW1ujOLf0lgeLEFlPFRoKbOj1mLVuxwJmR
         nnV5PO2Zi2G2051WAzNQcJdtoSBKVijfLTIk5POcE7KC7nJTfbxbXEncLt6kEJGFE0af
         +HHLQys11GMBf5L1uj6J1Oa1tssiwedQhgroaQNpiOELekcT2eW5LQW5+hs4bRHooJ58
         fDl08svrsALgf2b3G8kyGnSJ+aIbuJfhWaxq+PT/DeXOqqXgjgJH/3q/kV6f4H3jQBIl
         CI+MZle2CIVVMEqagkSOGqOBq1Mid2GG3sIO87NCqWk+rpWIwJjfvO2ZDDx/hbV0OKMS
         SO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702392067; x=1702996867;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mt0RJuRzONksksmHKJ5+QxIw2yK885EP6NVJe05HDXw=;
        b=ZqHyLAztwvemN6zyhSwmnIGGj735/8gd+8cujev+N7jGGIFN+nAKelYkE0N20IJqxg
         LzpCPaFvy22Qcmw/bcpfWrLwXJBhCDysYZcoUroYljrxdqpd3i3cRp4QNEp91HJ14Fqh
         VtzU1y8nytn1yAr4KNTUduHwq2qb9HiWpXRL9bJdSrfzGRUBuRiPKluf9tk+wrLmLKXu
         FRrooeRZ00mEmkzaDQ/lXCg1y078W/vjNrqqVSfLAc9JEJ2MUxci2SxBQsSaXLTjH9GB
         nQaTsTNDRSM2X4D+th5diX9oA8nWzarhGFzEgNg30nBqvEG3Mw014/bfjji4Wq9KGvOw
         N05A==
X-Gm-Message-State: AOJu0YzVo1i1xGbmPTn7u7l9YtwooP54ItUfi58xreQCY5L1n/B43lkG
	aJ7xBXjt9iuX92VYzub9cyLZ8w==
X-Google-Smtp-Source: AGHT+IHjmt9N5sHhVDkteIF1PnQFUta/ditveaR0cep4gfy0ZgiiYwB3FbpejBjBcD769GhWHVUzMQ==
X-Received: by 2002:a2e:9ec4:0:b0:2ca:5e:d16f with SMTP id h4-20020a2e9ec4000000b002ca005ed16fmr2990790ljk.18.1702392066690;
        Tue, 12 Dec 2023 06:41:06 -0800 (PST)
Received: from [172.30.205.64] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t27-20020a2e8e7b000000b002cc21cc7710sm638479ljk.68.2023.12.12.06.41.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 06:41:06 -0800 (PST)
Message-ID: <52aa1fdb-ebdf-4cef-80d6-6c1b83d626ab@linaro.org>
Date: Tue, 12 Dec 2023 15:41:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: drop unneeded assigned-clocks
 from WSA macro
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231212133143.100575-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231212133143.100575-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/12/23 14:31, Krzysztof Kozlowski wrote:
> Review of v1 patch resulting in commit 58872a54e4a8 ("arm64: dts: qcom:
> sm8650: add ADSP audio codec macros") pointed to remove unneeded
> assigned-clock-rates from macro codecs.  One assignment was left in WSA
> macro codec, so drop it now as it is redundant: these clocks have fixed
> 19.2 MHz frequency.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Thanks, could you also check if they're fixed on older platforms?

Konrad

