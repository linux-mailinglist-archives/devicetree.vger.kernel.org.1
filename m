Return-Path: <devicetree+bounces-24985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ACE811D9B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:56:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8CF51C209E4
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B3FE5FF04;
	Wed, 13 Dec 2023 18:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QXIms8BK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88F6CD0
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:56:08 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2cb21afa6c1so88119981fa.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702493767; x=1703098567; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fKSdIvUXJptSaydKKV+34gXP5RUCj8nQ0FIDDQ6EDoA=;
        b=QXIms8BKwv/TQHifd59cqsou3fJH0RDMQ0yOW5+JQS+qr8/wJsNZXxMRyTkDOezOeP
         +buOh0S+pA2Z8mfPAP2PKCkLUlwVblXv61K3zYMViq+shZtcSD4YKr+HGWo3EdedX3Yl
         SquXoPuLrI2PYrbx/Gsy9vrKDKgI3JiczCJ+/ztXVAeLVpn0zVZkHnBBttB5tkDsNQFb
         WOKTLaLJ9VSz+hT0zf8DrE6ccH0KOB4DXoD8p1Zdn3Mbci853CM7fAWMGsrIHdwcu1GA
         bHhSkIgTAkDTzX8rvxtumI+hqmbBDcQLfQ4Ws3rR8XlHrZhqb2UICm0/jlu/i4++9QCq
         vzUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702493767; x=1703098567;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fKSdIvUXJptSaydKKV+34gXP5RUCj8nQ0FIDDQ6EDoA=;
        b=gO9ecSQZC5rLvVlsmxgKajZ/aKbDUyqMzfRJ6aw7JOgav7aS0K23hQEecyW96JKKwG
         ZB3Ov2uSTq3LW0XzUcuaUCrR/oIWs3Nrzv2q2kdHWVjGXPt9RJTqMyj1SnEapXQNvjHH
         /dVNPShflK8Ck0MK01Ua6GhN+rABOYuArQy1fJYe4OGBNNNeu16hWmiecFx2s0KtcfrX
         ldH1MC8x9x01YpccB2B4Vf4/X8hnMTiUnLcvAiyKBbGv5dbVzk501MhSIf1jc7alhcwS
         vuUZjUorcKQqgHAH58LAO8WU+6WcmSj5Gn7qG4XHqd5L8zCOQn7oc8h5Nox6S4GmNcqc
         stCQ==
X-Gm-Message-State: AOJu0YwKpPfG3zgZo11x0RkrqZh+eZeX/xMIfRkf+BuLfNbAjxjGHxDF
	2Vt3xzsOhmsQQN1M8ydjAnEkrA==
X-Google-Smtp-Source: AGHT+IHmKyLw4EdkfaBNBActBS9fIfW5ZX2iyhAR1KnLVTypwTtv+sgrm/kBINLhCV1WT5KbKqZkVA==
X-Received: by 2002:a2e:a681:0:b0:2cc:3f83:e3f1 with SMTP id q1-20020a2ea681000000b002cc3f83e3f1mr171229lje.95.1702493766785;
        Wed, 13 Dec 2023 10:56:06 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y5-20020a05651c020500b002ca35a126e5sm1895017ljn.119.2023.12.13.10.56.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 10:56:06 -0800 (PST)
Message-ID: <8d292ba5-fe48-49dd-84af-0afe3204b877@linaro.org>
Date: Wed, 13 Dec 2023 19:56:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: move Soundwire pinctrl to
 its nodes
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231213162536.171475-1-krzysztof.kozlowski@linaro.org>
 <20231213162536.171475-3-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231213162536.171475-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/13/23 17:25, Krzysztof Kozlowski wrote:
> Pin configuration for Soundwire bus should be set in Soundwire
> controller nodes, not in the associated macro codec node.  This
> placement change should not have big impact in general, because macro
> codec is a clock provider for Soundwire controller, thus its devices is
> probed first.  However it will have impact for disabled Soundwire buses,
> e.g. WSA2, because after this change the pins will be left in default
> state.
> 
> We also follow similar approach in newer SoCs, like Qualcomm SM8650.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

