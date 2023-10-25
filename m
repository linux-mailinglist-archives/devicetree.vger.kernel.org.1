Return-Path: <devicetree+bounces-11679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E0A7D657C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:43:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F2091F22BF8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C92AE1CAA9;
	Wed, 25 Oct 2023 08:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mb3c9zlR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDCE19470
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:43:23 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5C279C
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:43:21 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-507c1936fd5so704640e87.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223400; x=1698828200; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tbLrXjBZXO+3rnUIjlVT/ww0YCi+1hft+XaLG33lx2o=;
        b=Mb3c9zlREbnhbaMnJvoP6riky0KyBsKEFuLU85e1uYhpXn+2bA7akhCD/tNJQ8Hcdk
         TLxoODt9AatDDhuK4WEW4hJ0n6LiizjZ5HDyCV4bDsmpcXZ5vA7YJzKut2P1DGitYZ+r
         /XI/E1ybzHOqv1ReGx7d2va6a0COvxI2TuF1H+nv3D+wKSa2vTqgKbnmBLqveJZcOZoN
         0k7ndc887GRc5GIRO2NMTwRrSLyEFZTx/lD+qe/V/ghZs8QQ+2PjuthEECdUJgcU37wt
         GB0TZCbrWIytCjaF/zotSCIQ9uq4aC5iXe/c6/sBMG8QnXfsxCjv8S9dDltZZkN4kriQ
         jNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223400; x=1698828200;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tbLrXjBZXO+3rnUIjlVT/ww0YCi+1hft+XaLG33lx2o=;
        b=eREeB8Ne00IYbRVtLImJHw8YtfYYaOpMfuXXF5p3td6pGHhpq6Skv4sLsK9FSq4jyi
         J8rH6JYaqLZWwhjQ76vDZ22Y1x5xBrYq/N9qbfHIWQMQuVxBdkKAa0TRsyrlZG7dBoA5
         bEyHcbq25PG6vfhFbdkXKfme8d3jT3bKjer/K0/WjgVjTSYBp9IQmbo6RwNUA1zhZ9Jk
         WT0ZRMhnG2RTfNLm5qtMelTm9RxGXnm4Ri34VhHJ3OzTmtUwbQM+257Us1gEzikBkYiO
         Ag1+t/sRly4STf8dyNeFSEE63isD5KpjDYFzUNMX5bpapOZSd74ruzNNvgKo/7uB8MFD
         TkoA==
X-Gm-Message-State: AOJu0Yyh1LVpNm7YauLRdxipM8j75sDfG3i76/0rQnS6n1argCdcRPgx
	jWK89AEMjJspg7CAI9UQmZGCEg==
X-Google-Smtp-Source: AGHT+IEjC9Ga1pWJ9JCoPsNumAlAtpl1XkhctgTpX8WDk3zx7MGDnwcD7bo66SBnpwb8RDdyBGo5Bw==
X-Received: by 2002:a05:6512:1287:b0:507:cfcf:d3ce with SMTP id u7-20020a056512128700b00507cfcfd3cemr5556653lfs.12.1698223400115;
        Wed, 25 Oct 2023 01:43:20 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id v17-20020ac258f1000000b005056fb1d6fbsm2449489lfo.238.2023.10.25.01.43.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 01:43:19 -0700 (PDT)
Message-ID: <c9aa685b-b746-4901-a374-4e9d4d5b6cfb@linaro.org>
Date: Wed, 25 Oct 2023 10:43:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] clk: qcom: add the SM8650 TCSR Clock Controller
 driver
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
 <20231025-topic-sm8650-upstream-clocks-v1-7-c89b59594caf@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-7-c89b59594caf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:32, Neil Armstrong wrote:
> Add TCSR Clock Controller support for SM8650 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
[...]

> +static int tcsr_cc_sm8650_probe(struct platform_device *pdev)
> +{
> +	struct regmap *regmap;
> +
> +	regmap = qcom_cc_map(pdev, &tcsr_cc_sm8650_desc);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	return qcom_cc_really_probe(pdev, &tcsr_cc_sm8650_desc, regmap);
qcom_cc_probe?

Konrad

