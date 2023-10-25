Return-Path: <devicetree+bounces-11706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF767D65E6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98657B20D1B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E9CC1F611;
	Wed, 25 Oct 2023 08:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gzQpDUt+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B1D1F607
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:56:34 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22BD7183
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:56:33 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-507a55302e0so7229298e87.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224191; x=1698828991; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XcWDpz6RiebILDq0MkRy3/6J4V7vqmXqPyZ0jkm/G3U=;
        b=gzQpDUt+LhTYuB83RhcDhHITcJjaBGxZMj12pqjGU0M/q/1EsJDBG7YFvo4bHejD3H
         iSMfInT+AYNXcx7z/V4i1ZG6oFjacRWI/d17Fhek1uGOlOSjdVchbPCeoGY48nHRrtRj
         uSnNiPz91kxq1oqO3zr0RtaZH7rfuCCqcYfq3UE6yK2OK/jPxIcOjkLvo4XwNqbIb4g6
         MAN38g8Z4Eyp7W7Hh+g8yGgx4XIlHA8ymsbWq4Hly+gkZQ8XQ65cxi8vUsUYf8AqYtVQ
         onFZ6uyqzJANlpQxt4MYXrAxfczzCwI+fmZelDqOitSIzp83Ix+pskiOiyJMeMoLzgHI
         Teyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224191; x=1698828991;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XcWDpz6RiebILDq0MkRy3/6J4V7vqmXqPyZ0jkm/G3U=;
        b=XPtbqlg8lWBzYMYj/dsiVmNAXQUQI2P58dAfGpGbB0COua1MliAzdD186VvMQE5Q1C
         e026tzZULn/7HWpbIsO91z1QKdhYm6gievTxTPItjaL4ysYYXBU2QnA4ivbZU4XLa9Pa
         S089FLkaC7PSm8GqV5FCSd50yGFxD8OXIUmuPkpo5QIxrS2IzxGLIgxp4OBXewWn4IAZ
         qbZ/9FrhC6RB/x2qQ7wVK8xe0qThLxCiPamYStrCSm7N1qAKNBW4JCXIs1dRlONIJDRT
         AsTje0+5gXq3K2ZwOMiX8yMjcsp3VTgtofHJfiNbuQcZ9bVmcSZ93+BG+qj7z5wMAcAZ
         XEyQ==
X-Gm-Message-State: AOJu0YyVkgKe9CEvNy1l/ellCYgJsOxp0oDGJ/cth9AF5u1XwZu/JDBg
	ssFU+9sMDdPvjrAKMI9rbXTezQ==
X-Google-Smtp-Source: AGHT+IFcsjDaRKHtNQkrRrpzaJTXYCgCXDLm2TWDrR2cEO93ECaEjWZjYH7DVg020p+sK7+GfwmO6Q==
X-Received: by 2002:a05:6512:2825:b0:508:1690:d825 with SMTP id cf37-20020a056512282500b005081690d825mr1167879lfb.21.1698224191151;
        Wed, 25 Oct 2023 01:56:31 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id e7-20020a05651236c700b00507a3b0eb34sm2468030lfs.264.2023.10.25.01.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 01:56:30 -0700 (PDT)
Message-ID: <a42a913d-b0b1-4645-9f60-0163bc93fc85@linaro.org>
Date: Wed, 25 Oct 2023 10:56:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] soc: qcom: socinfo: Add SM8650 SoC ID
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20231025-topic-sm8650-upstream-socinfo-v1-1-6776a5183fa0@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-socinfo-v1-1-6776a5183fa0@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:31, Neil Armstrong wrote:
> Add SoC Info support for the SM8650 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

