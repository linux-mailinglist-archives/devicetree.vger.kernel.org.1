Return-Path: <devicetree+bounces-18030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 563947F4CD5
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 17:39:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87BFF1C209F4
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 16:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE19D59B5E;
	Wed, 22 Nov 2023 16:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PcmgUgG+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A51F10DF
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 08:38:53 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507a62d4788so9903084e87.0
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 08:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700671132; x=1701275932; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tfN8vV15Ea9/EIcc8eCkqmRkgeAQEYZd6rWJeYZUq3w=;
        b=PcmgUgG+hzjqL3nkPVgARJi0FxNJNH02pxK5Iz9YYrArQeKJkmnloMSAWUd9H4LGXt
         HOFosgpCwYBRc9YIzFeO8daWSVUsepjEgTyJCqDtDTH+bK+gqm0AkQNiDWRZ2qTaoKyt
         O318cpmw4gXFXjeI73XyzvWGzl/e8LPEyIGnfasIiD3AOogdtXpY8QYE7V3+SaVIA5Rg
         U9ceIi13DUz5sP7raszYmoLLN/TkXWknqyMXWcgqoD1XkDjL51tN9GxqvBgBBMNEE2Bz
         OCE4sTmAN+rldcr3J970s30QMAqgPL8O6i2HW+R1yruo0FkJQWMz85AP8KfEB+2PVGKb
         Dk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700671132; x=1701275932;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tfN8vV15Ea9/EIcc8eCkqmRkgeAQEYZd6rWJeYZUq3w=;
        b=a8hWZFJ8wUY2bkUr32hu5GmgG72o0UqbOrxeP0/UbUu2qeLnHSbsTzUtVG3LxKSOly
         2iC7M604EtkTzLdB2dZsZc9yMFJm51dxfTQ9ZBjzWADVsYTkYDm98dguECt+erQ1Ff0a
         tD7MiFhUOpkdcBtbM/YMAfuZPUeIS1LTyquL+uW7oljoWD4sbbNf7dRX8ZEqSsoe+fAp
         015wcyxygFseaKSg9KEPcgcmlza26UsCDyS9TsJkxgpKJQ8gJQT0b8x6ThmE3cq38KVl
         2inZUvAYs+TqYA8/02Lr8aGWgD/hJk9+fWSaTJENoM9bH/ztOwbMzu3fZ1Huz825OdX5
         AN5A==
X-Gm-Message-State: AOJu0Yy6gtfGb+p38o6lzWwYfsEShy3IVi/yXGGBOSZ+ADifjsLRquMx
	H1SK+uLhkqvLbKFLrdwl9vMoeg==
X-Google-Smtp-Source: AGHT+IHKb7OWKqCJ2bI45C9RLV06lHjgr4MW3iZszai98Cva3bxT3FNafWP1S5OJsucSj7tAjtCa+g==
X-Received: by 2002:a05:6512:684:b0:508:1a2c:46d0 with SMTP id t4-20020a056512068400b005081a2c46d0mr2724979lfe.15.1700671131691;
        Wed, 22 Nov 2023 08:38:51 -0800 (PST)
Received: from [172.30.204.227] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w3-20020ac25983000000b0050aa51bd5b5sm1587819lfn.136.2023.11.22.08.38.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 08:38:51 -0800 (PST)
Message-ID: <e52c69d4-a2b7-4d9e-9ccd-08d7746c3312@linaro.org>
Date: Wed, 22 Nov 2023 17:38:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: Add PM8937 PMIC
Content-Language: en-US
To: Dang Huynh <danct12@riseup.net>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20231121-pm8937-v2-0-b0171ab62075@riseup.net>
 <20231121-pm8937-v2-3-b0171ab62075@riseup.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231121-pm8937-v2-3-b0171ab62075@riseup.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/21/23 06:35, Dang Huynh wrote:
> The PM8937 features integrated peripherals like ADC, GPIO controller,
> MPPs, PON keys and others.
> 
> Add the device tree so that any boards with this PMIC can use it.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---
No users?

Konrad

