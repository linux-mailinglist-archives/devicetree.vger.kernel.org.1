Return-Path: <devicetree+bounces-11670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D406B7D6536
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:34:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E5B7281C3C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DF771549B;
	Wed, 25 Oct 2023 08:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zNpW4DbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78F41F611
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:34:31 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10575B0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:34:30 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-508126afb9bso1286853e87.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698222868; x=1698827668; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dhRq6ELvC7uQFtRIB/5lAoX6fyatLerNjrGGdcwBi58=;
        b=zNpW4DbJgZkeZa8jyfn8SvS/f5V0rf5482L99Cmal28nG03jmM496iiLPqGbU5cHTB
         g6mDqe2o42sog37pIZF/lbg6BQTAnmWURaoYV8L0LXsWwE1CNcY2t9uQQZJWgerhEFI5
         Npz3NdNKqyP0uHVx4081Xl7ZnWlJfdvQyzE5YqRikJNlnSWHW7ZteKboI0tMGZdLcTWZ
         a01+dA95sAA8tZ54Zh3BSu/kBp+N+8RcXKSmdikyH1sIpkOmHdA8NAdPG4uAecI3s5k4
         UNk47yR1zUnPbQiGQSey+q/Lw3nULPSklTp+1cxxxqFMUfsVGL0T6MWKcNmkDE+IakOQ
         k/2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222868; x=1698827668;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dhRq6ELvC7uQFtRIB/5lAoX6fyatLerNjrGGdcwBi58=;
        b=kaqjb5seurAh4ga9PHtF2H+UWJ+OR4vqKAmJOk8XLoO9XFHfEu1KGtdffe/uyIyGpd
         N8mKm4cwo1VUKnilYGb1L7eHpqKnqtdPw5g7CiG/AqOlYM+sLbCC9KZ1e1j59tNcCgI9
         hF1FEJFQyImBp6ifKOECE/k04L+NPcleLWsWPgMyBWQjqhCKjykVxxGaMTnlL8m+6YQD
         RxvtWX02Wi3KutDhi2WGGtYxmEV0rPbU3XXZIXkmrZfzo2kxrQamyY60S2+svaYHGGk+
         FxfN8ga2f2HIlImxd/7b9X0sL0SD4MTTVKKw5WHDbFluV5iJvNZwr25Ag6TKZmoDIq/p
         FDLQ==
X-Gm-Message-State: AOJu0Yy0ufeJGCNOSyoBLaATRz14ilnGcN2ciQXhr5Kw3vKzFvBj7BkF
	zmrruOKWO52QVA/dNm3ff8oFKQ==
X-Google-Smtp-Source: AGHT+IGxr5NzwFM8t4H2W5t7uvDgwxYIdSy+ilWWzmNrKaEX65sH0IwwKO21xx6dAbCpIvwpHzKUoA==
X-Received: by 2002:ac2:5e9c:0:b0:507:8f1b:ff59 with SMTP id b28-20020ac25e9c000000b005078f1bff59mr9803097lfq.62.1698222868312;
        Wed, 25 Oct 2023 01:34:28 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q23-20020ac25297000000b0050481c400e9sm2452724lfm.287.2023.10.25.01.34.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 01:34:27 -0700 (PDT)
Message-ID: <39d9fa16-8bf2-4698-9fa3-63841850fa45@linaro.org>
Date: Wed, 25 Oct 2023 10:34:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] interconnect: qcom: introduce RPMh Network-On-Chip
 Interconnect on SM8650 SoC
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Georgi Djakov <djakov@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-interconnect-v1-0-b7277e03aa3d@linaro.org>
 <20231025-topic-sm8650-upstream-interconnect-v1-2-b7277e03aa3d@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-interconnect-v1-2-b7277e03aa3d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:33, Neil Armstrong wrote:
> Add RPMh Network-On-Chip Interconnect support for the SM8650 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

