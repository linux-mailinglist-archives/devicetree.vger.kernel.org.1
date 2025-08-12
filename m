Return-Path: <devicetree+bounces-203869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA93B22B61
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 17:08:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D596188B01C
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 15:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 452FD2F5303;
	Tue, 12 Aug 2025 15:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zl8YIv+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2D52EFDAC
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 15:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755011143; cv=none; b=hqB2bLVs6TEFWNgTniAcI0i+uBDEf0qg/zDF0R8ORqib96aQoSAuqg1R1707/M+UEPzRCPLRIIEE8r/2LYFnwJtEz7i5qh8mRZzaV02uH5caBd9ebL5v28AzwLis/TZJm8ck6+3m0snzazAADMWQt9UTO7HbJ+CXmqCXaKqP/Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755011143; c=relaxed/simple;
	bh=13LJJo6dqvQkGASUem9OaXV1fYDIMnu0t4nIeHZzuOI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O8fGSqK9ekGYxU4wo57KnWba65N6tyGNxB9AHgNXfCEexETUTprwLYtOqgMSp4KTPtpaNIR7+/j2uZxbEbIH6CZhJyO4OSsuV9Djx/Pqgcn7Rdl2PmeYWoc/HlGhfo99N+qLcsArIfScHLl8Aa+Z9/anfPw8BkAHy+y7tcdt4CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zl8YIv+N; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-459e3926cbbso24036395e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755011140; x=1755615940; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iFiyXHmzPTJSM/FpIqJQMHXEodXhM8NURp+djBOJcws=;
        b=Zl8YIv+NHaeknxTmX9VUlwVpvAn5dSqHUWM8OFlo/p0kE/AHP4jeEIkRAg62ZMW8hk
         HUTFYHU2v1m+1z2CSX+6p+9lixrqccZUN1fj3vr0lml6gcaka6RNVvE7yWIXgfmWFgJH
         pDmwocEuHB0NtVj9tuQw6ZTHKuq6euv2SR3yoI1DTUImknQ6WYTf0ob6r1J+eJpKccC9
         gPpSeNYmNHF0JI2M3o5DRSqn8STh818a8DqW89rWT57rwnOewHTbI5V3xtXqik6UxYnr
         j0hqrTIcv70LSYTRe5jQKT5FtTgIoVOamlzO1y6hVpX8766HXsgNKrRJLVuTB1ycYaXr
         KWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755011140; x=1755615940;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iFiyXHmzPTJSM/FpIqJQMHXEodXhM8NURp+djBOJcws=;
        b=PHYJUYbCuSjfkhEbCk1cKrGGXgSgXCeFYlJ9Tu/7+PtJ/SJWUA8x2domic1YVYeoe/
         heyLq/4Dr+IJFO1K8C+u3i4XkZ9CNitfwXkhA4pBj4OB4YK8FXm4YY6fQsoUFVITaSvD
         D4X0/2YRd+CEBqkHX36XVwdF9HxkovAuNB/LgFgL8eDNRAYa+z49qulcEjHX1++LpPgK
         15PjmDLNAxxgK/y/Smx01ffs2WQ2AKfg4sMOBcAT1+StXjB7P5VoGhS1AYzISmfVtDRZ
         El/U8mV5ZwToJCOxX3nJDTtwat+nuvlaftDED3VnsBtzGMOrLKnZOiq+9gluOKWY/mpz
         b3tw==
X-Forwarded-Encrypted: i=1; AJvYcCUkZAu4iwo75Jl8gUxu+tdqFQrmz5KQw2pgdRGYLLoXawkaBYO6bnILKkZN8aIPPDwTw5CTJmXQ4LfU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+zxTQAW1A4Bpt7OvIoBVoGQ1kiFd2Db6fM5yLIbQVtXKDwZIt
	OISYg+d5zxVyvOgK8IMpeGhZwwltIBiQw96+9nn+wIa30IRqJaOQG4iN0WHan/t77hY=
X-Gm-Gg: ASbGncvo67qIyeqHr2GUN1udV2eFIEJzc2qY2A8OdO96G4/hfusPiAlXNqN/DKOrhF2
	QGN8Q4HiFK/oVazEJBITSNnNEUEQ99V0n2stHjOpP9ScxBqCCwTZoCN97+wkAYwPQweEg7eIVaX
	JpX+qdAlMfKT4h/hmOXdnjXan1+R6aS6IvkCZjsfoxZ9SBjt6NOz2OHzjLyOo8/jGFqpiBauU2I
	+LZccZvUOsyW+DYrTwz9Z+VvP+zk2IShxeOzMwzPVmes6Eod2TlEZ8pMxEpQz1lXZ98rlNiN8Ar
	y7hHZNAtm/yrAfYBX4b51ZJ+weD7f/sIYsTQDKM8JwEvghZoBLSHKhViD9uHyPEuNd1kkhTJNV8
	MMZuq3vZgtpF6lSLUucBsKuEN9OK+6D2IGCbTgDGLnlR3PGWO38f/Iex0KoY80ZI=
X-Google-Smtp-Source: AGHT+IFaF18WlpXLiOPapLF9skeq6bos29ChTJTlyHVAm8O0Lnm+tnZQv8MZbqesSAf81giG9PV3vg==
X-Received: by 2002:a05:600c:474c:b0:456:1923:7549 with SMTP id 5b1f17b1804b1-45a15b555demr1276015e9.26.1755011139689;
        Tue, 12 Aug 2025 08:05:39 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5873c43sm327424985e9.22.2025.08.12.08.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 08:05:39 -0700 (PDT)
Message-ID: <16e4883a-a056-46c3-a7c7-a87ff5da89a1@linaro.org>
Date: Tue, 12 Aug 2025 16:05:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <d7949778-73c4-4575-8db3-a3724f75eb38@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <d7949778-73c4-4575-8db3-a3724f75eb38@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/08/2025 14:39, neil.armstrong@linaro.org wrote:
>> +    .clk_freq = {
>> +        zero,
> 
> It seems clang doesn't like this at all:
> drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c:486:3: error: 
> initializer element is not a compile-time constant
>                  zero,
>                  ^~~~
> 1 error generated.

Weirdly I compile with clang..

thx though

---
bod

