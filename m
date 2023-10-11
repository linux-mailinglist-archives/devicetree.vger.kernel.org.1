Return-Path: <devicetree+bounces-7640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 532167C5021
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 12:30:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84E9E1C20D4D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAB14A21;
	Wed, 11 Oct 2023 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pqfTt118"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7AF10955
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 10:30:33 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95AC894
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:30:31 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso82174121fa.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 03:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697020230; x=1697625030; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xzHKCgjb8/zw/flLxHNtdD2jh+riVKfmw0ipQhtOwLE=;
        b=pqfTt118gv/2PLnUGZUncLjgvEzV3FvIdVs5DF6QNEp9JxMDSL16mzP44q+5XJJfji
         DPQa8VUBr4PnWejYa40KeTLKFgJu8dMv5VWSBSFQezceQ1WUhw9d0Wzk1cwMqDHUMpKX
         YwvOCExdX+ZChSFuhv5AuHGE0PJKpZsI+JFmP8DmMJBO++9E8799dUUljHLMWp1K6FRG
         tcE+1mrmcCxpVVHbnXQUPkevDayDxTeIV6+BOP4qp+BZEV6GHhgJ1fhSz/8EKmdFcoTC
         Q+m5SC/bD3mpmo/Xd4gWktc3hXZoFyymdCDI/Hv3Ki5GnZEjUV8/W70CwN6uxQN6wYZb
         J+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697020230; x=1697625030;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xzHKCgjb8/zw/flLxHNtdD2jh+riVKfmw0ipQhtOwLE=;
        b=jBHxD0RnuyW7vFUaVCIq1e2FumiFLgWaYLqweWyUntzORxGgc+0aHpZ+KD+k7Se6o0
         GrUem30IXsTGVBqUXLxiPNt3p5V5WLxy6YqkPdC/+L1qPBNaCD6KtpGrPHVSQw+xb9Xa
         ynaqfTJcOnr/XA2XylrK9oHWNcOhTLmufy8azAYJnD5zIFMhx8427mdRirQ3XqQ+sKao
         MDof5AnP1RQIRQ2I0YZ9oGzT+uSw1i1RnjdjWk8atu4eJdkMXTOrMjlJWTANrvKFkz4b
         Q4/fsFpIpmHZUL5YLdtNWArx745cY1gJpof+xv7pvnPfFmaFp08WTq8Q7xTzcC3aG0sE
         8C5g==
X-Gm-Message-State: AOJu0YxuVE8GIW0MoZ0JUpHcfB7523pgGC7hcokXuTSsBTk/uY5fAKDz
	3+7kQfYlUUtph/Pr0MvBCDloKg==
X-Google-Smtp-Source: AGHT+IEaw7rwDtUJYy85sJqrAFyVJ8Sl98KLuplFuXyA7yQPW41U0XXgksBo+0yN9rEAMltSVET/gA==
X-Received: by 2002:a05:6512:457:b0:503:35af:3058 with SMTP id y23-20020a056512045700b0050335af3058mr15408059lfk.52.1697020229684;
        Wed, 11 Oct 2023 03:30:29 -0700 (PDT)
Received: from [87.246.221.93] (netpanel-87-246-221-93.pol.akademiki.lublin.pl. [87.246.221.93])
        by smtp.gmail.com with ESMTPSA id v1-20020a056512096100b0050480e8a676sm2213434lft.268.2023.10.11.03.30.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 03:30:29 -0700 (PDT)
Message-ID: <3c7115dc-f9b4-42ab-8923-098d96b75e86@linaro.org>
Date: Wed, 11 Oct 2023 12:30:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 3/4] clk: qcom: Add ECPRICC driver support for QDU1000
 and QRU1000
Content-Language: en-US
To: Imran Shaik <quic_imrashai@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20231011090028.1706653-1-quic_imrashai@quicinc.com>
 <20231011090028.1706653-4-quic_imrashai@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231011090028.1706653-4-quic_imrashai@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 11:00, Imran Shaik wrote:
> Add ECPRI Clock Controller (ECPRICC) support for QDU1000 and QRU1000 SoCs.
> 
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> ---
[...]

> +static int __init ecpri_cc_qdu1000_init(void)
> +{
> +	return platform_driver_register(&ecpri_cc_qdu1000_driver);
> +}
> +subsys_initcall(ecpri_cc_qdu1000_init);
module_platform_driver?

Konrad

