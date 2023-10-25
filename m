Return-Path: <devicetree+bounces-11682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2657D658C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:45:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01878B20EFA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD551CF8F;
	Wed, 25 Oct 2023 08:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b7rhufxx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680D71D520
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:45:36 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B44112A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:45:29 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c594196344so24340751fa.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223527; x=1698828327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lz4GBEe2iYd2hPiUbHjNhJfJE8hAsaCc8WBmk1URiJY=;
        b=b7rhufxxmcb94qp3i2N35UWGm/z6Xl42Rl8pQWlvmy155jjhjEEfHwrPfFkOdOPOtA
         T+iOduuURmv4p3C7bmcz05q7D7AHR0pOi8PyPuv0U7CXTpX6Zr+sFHrzamyTQv1lY4jh
         FquSufL5cluBloDJI3LyJ2WYYIge1M+cvauTtfTs68U05MFWZ5H2Msy+I6NQz9W17B86
         8K1/Rh1BflYCUA7ATD3Knznog8BNGtaTOzVYEskfnV7+JxBObbx9l83c7ud57/N0YUwG
         54qTrCEYDlx5JrVTTiyOhDV1dgQ2hiGvP1UIuZtlehZ1P1wl0OS8tA7HhLtp9uSs3svJ
         gG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223527; x=1698828327;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lz4GBEe2iYd2hPiUbHjNhJfJE8hAsaCc8WBmk1URiJY=;
        b=kdpgv7x9JWIPckhEcdwnqP/WFPsWZ3IXlAxUgfUr7m8JiJk3BeRoY1p3pN06k3Rodz
         y64uH9Gd2ATXMA4AfEXzuL2oFSAlaB6d8E+/fLXzl/Elr9YSLohtV16C0N4RpjGfooMT
         A5MsArpCrDGbRWYCi3+uOm7CrWqB/BC1YPc+omykjtw8MJRgMiV4PUe1cWX2fFHhlteP
         Hit1MX+D3g6R408teSnlLv+pmyDD4y2gHioSlsA658fDyQ3fWbP8FW2rqFgfGTXr0ij4
         yOuYop1aBHOB4Lx3tXT4w164Bvdh2YLtz5MEv8DP5L0qh/+iE+9ZNuL9oR0uF5LBaOBm
         DhqQ==
X-Gm-Message-State: AOJu0YwJVbNXYDBViyaCSKzjARevQoMIG7ApV1Oz6FBbs3Gobl9kjiM+
	eoIqBwJl90nf6c8L1xiD36OAcw==
X-Google-Smtp-Source: AGHT+IHRs8ioYUF0uiv43OgYZEf/cTRv3dTA9nQGwcK/q3lIqgD/wBvpiIIeY+3yK3L3jwhMQp7voQ==
X-Received: by 2002:a2e:2e06:0:b0:2c5:cac:e9a3 with SMTP id u6-20020a2e2e06000000b002c50cace9a3mr10482614lju.52.1698223527595;
        Wed, 25 Oct 2023 01:45:27 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id p13-20020a2e9a8d000000b002c5122f13b8sm2320875lji.30.2023.10.25.01.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 01:45:26 -0700 (PDT)
Message-ID: <4d6b8e54-8ec2-4774-9a7e-881af58093e2@linaro.org>
Date: Wed, 25 Oct 2023 10:45:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] clk: qcom: add the SM8650 Display Clock Controller
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
 <20231025-topic-sm8650-upstream-clocks-v1-8-c89b59594caf@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-8-c89b59594caf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:32, Neil Armstrong wrote:
> Add Display Clock Controller (DISPCC) support for SM8650 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
[...]

> +static int disp_cc_sm8650_probe(struct platform_device *pdev)
> +{
> +	struct regmap *regmap;
> +	int ret;
> +
> +	ret = devm_pm_runtime_enable(&pdev->dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = pm_runtime_resume_and_get(&pdev->dev);
> +	if (ret)
> +		return ret;
> +
> +	regmap = qcom_cc_map(pdev, &disp_cc_sm8650_desc);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
need to clean up RPM

Konrad

