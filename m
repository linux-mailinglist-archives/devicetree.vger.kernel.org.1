Return-Path: <devicetree+bounces-59721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A89018A6D2B
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 16:00:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62C55285DF9
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 14:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218B912D74F;
	Tue, 16 Apr 2024 13:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dZAIFmKg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A6412CDB2
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 13:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713275965; cv=none; b=VZq8D6CGu7g4/E6kOYyNhkRNG3luhWkJ7A4LralYj6bKavOrAXa3qCUZRJg8AfgFElmXwswfhpJe9YuUe8ZsoHAw+JzLpHSHl65qlOFV1Mip1e3V/7iwwhLWUUKr9Gg5+pPGhAgKmOnvyviHP2JhL90DKOwis/1tTSFxtmKBJU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713275965; c=relaxed/simple;
	bh=LHyKeXKzNTWwXkPYS/BAIhA9PRdODG+cNEw1D9IU6jw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pbeup34jWz0pZmj4z6ZybYXO4OblujOLpB/D2qA8dWKybpo10Xr8EHH6nfFthBRRfLatglKkFpIWOvzBefqMTBlSLgqou7momBL/ZpWj59bTWmHMtuJ/vDrP0AfutBa+ZPH4wK4CJ/Az8TRefkCws3MfaR8wWCMXHXEKoB2Dt0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dZAIFmKg; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-516d2600569so5662171e87.0
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 06:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713275961; x=1713880761; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wD9eHBRhW8p2vFdmYSbs5m/0CPQ24aGQTS5i8W86vBg=;
        b=dZAIFmKgWbwxuDtAC33YWFPBMG9SEHY0ijYMMF5sgjt4BSt/LdruMpLSxEK2YPoQF6
         ztoqHnVV7lme3zT1SbofGj4LsGf6gOaRpZGt/vXjkoA04PMTM9l9TAESGnRrklw7z6yV
         QYxC7UbAPjuWqU2xnv6GrnswaHgaWCXKee/5lN1RvsHNux8ceQ+hc5mdaG6KU57BbfU5
         Yf3wB1UOjKrYCccfoaPmPo/eS+sD0Dt9KqtGquXHB5Rq5dSzV2ITodWNjExndlB5wyzO
         p5Wz9kda3w9yzWfkucm3SSVffPkCfd+t5ns3iPD4lGFbtpwc/yzus+3QKLEEXMjDeayf
         WkUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713275961; x=1713880761;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wD9eHBRhW8p2vFdmYSbs5m/0CPQ24aGQTS5i8W86vBg=;
        b=HFyQ4MBqPTT1OVLCMEepb3x2zkHj+ps0KlY1xulXFbMO6B6VPTbbbaYiX1A418tQjS
         KZEXJomYuQ8hQuU2OlPCNmmrHpUeVbophqu+tXIsXZijfwNl5UIXwoGJCE6SwHMiDZ1W
         P9lgLR62xtLodO+EwybHg9hLITkIcIAKwr1B4E45yOHNhDfOOZeQSTotnqGNXHMvkM8i
         HlJvDDrmZ8/c3CbP3YAJiM1G5IY2EW3y1k0FBqapRAKUuiCFnwXCva+g/zLv2RYZq/r0
         gdrfZTD3gfUT9erNabAnepMYAvw+LJG0gNaKC4LKab2SAEfHI4McR556IjsbZWwqEr4I
         1Mlw==
X-Forwarded-Encrypted: i=1; AJvYcCVQpvciOXRNYLkX2M2Or5elhy9JzNJRtLre6xsbskao4j0aIvw5ovGU/vZVWqRY6T303I2DYT9za1VoAgI9lgruMJQyScFRwZdsiQ==
X-Gm-Message-State: AOJu0YyljhqqEOwl2Z5GNBNgo0nxh2B4xJ//iBlytIY3HNppDELx1Adx
	YRCQlmFp5IqKx9AYoq2a9o5FAw+WQsyFKu1wueptQFj5TwDjd1Xgx3yFZ9TZ8r8=
X-Google-Smtp-Source: AGHT+IE37/W/LNxHjwv+kSmZ5GYL1F0f4rusBwAvgLPgoyr0g/XjmubcRmdvnLkQS2BP/CcBUAheZQ==
X-Received: by 2002:a05:6512:1c7:b0:516:d3ba:5602 with SMTP id f7-20020a05651201c700b00516d3ba5602mr8868189lfp.16.1713275961469;
        Tue, 16 Apr 2024 06:59:21 -0700 (PDT)
Received: from [172.30.205.49] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id eq2-20020a056512488200b00516c40b05b0sm1585497lfb.215.2024.04.16.06.59.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Apr 2024 06:59:21 -0700 (PDT)
Message-ID: <08f3b1d1-c3ab-4201-b943-ca35bd321103@linaro.org>
Date: Tue, 16 Apr 2024 15:59:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/3] input: pm8xxx-vibrator: add new SPMI vibrator
 support
To: quic_fenglinw@quicinc.com, kernel@quicinc.com,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240416-pm8xxx-vibrator-new-design-v11-0-7b1c951e1515@quicinc.com>
 <20240416-pm8xxx-vibrator-new-design-v11-3-7b1c951e1515@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240416-pm8xxx-vibrator-new-design-v11-3-7b1c951e1515@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/16/24 04:44, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <quic_fenglinw@quicinc.com>
> 
> Add support for a new SPMI vibrator module which is very similar
> to the vibrator module inside PM8916 but has a finer drive voltage
> step and different output voltage range, its drive level control
> is expanded across 2 registers. The vibrator module can be found
> in following Qualcomm PMICs: PMI632, PM7250B, PM7325B, PM7550BA.
> 
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

