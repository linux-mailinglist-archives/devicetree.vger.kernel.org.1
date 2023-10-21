Return-Path: <devicetree+bounces-10555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4367D1E78
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:03:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D83001C2092F
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720D6101C8;
	Sat, 21 Oct 2023 17:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j0nvX3sb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DA3DF6D
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:03:18 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE9A810CB
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:03:03 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507962561adso2669001e87.0
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697907781; x=1698512581; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hSb7kDqnL0e0m5qYiaEQPSJy4QoRklt5XP7ajpYmJuk=;
        b=j0nvX3sbdsHiezzlU0qrJtbfCalhKvoa4L6j3bJANoBBo378SEb1eRibwlVQVbR8Dk
         BKr7jUOqoNnR2HhMEWfr/ZRl0J/IBZezXg+FqD6MH2h6qFW12IuXQWZgVdsdhb9tsVQR
         j5SLYIjzgeIdLNasDZIGSxfkaDp+cjM6taP9RfZvGl+3x9RYNOtSxoH1p2rUt3y8PsRF
         +wL4bCieR40k+jfMjgybI2vz4POyw9PJZcnCLowzd43BZTtFY+oS7KKq6iLKwU61jxwo
         KC/ssSosO581+AecsOfDWu2NYfL55HUMSxWcdaR9Y4Ksnq0uu4+NZUgio50DRFVs4NJt
         do7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697907781; x=1698512581;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hSb7kDqnL0e0m5qYiaEQPSJy4QoRklt5XP7ajpYmJuk=;
        b=KE5LS5FJf9keVOx69FJsToRk/FtYWWpZyTx06nSjC4BDGGuMn1wguBU7KDYgKeJbTN
         fn4ynri7lRFUCAmPjsyaLkxMJT7BUNeKRwsiiLdfobVatoVmp/WzOdgD+c21YaIwwBe3
         dxYV6vRjsa14MizDqayzFNGJtvZF1JOdkXO1Px4sz5io7miujfjpX/FZ90vWG1zXryBf
         lyJwwcGBATPkNMP8tWz7V54VGcWsI232Vd9PENI5z6lwEuJsVQcdGj1rRg0ovRjY9EHH
         x2f13fEPv3tosbBr1fmlbMj24L5N9+r3uAsmVMZ5oh/dNzFbRb6swwujUeY8OQRH111i
         wizA==
X-Gm-Message-State: AOJu0YyFlGcyCFaZGeEscO1H4xstbt6aYIZP/sM7evpeZcZu9NCfY3q1
	Ru3el5LcZPYuLcQb1gdslSFVdw==
X-Google-Smtp-Source: AGHT+IFkFBT1w2NRKYUC95udCqUO8PW+c54EilqbVJSiejPFDB94seKhSS6qk1cJzYHca0E65b5Mag==
X-Received: by 2002:ac2:464b:0:b0:507:b15b:8b92 with SMTP id s11-20020ac2464b000000b00507b15b8b92mr3045935lfo.59.1697907781059;
        Sat, 21 Oct 2023 10:03:01 -0700 (PDT)
Received: from [192.168.1.116] (abyl4.neoplus.adsl.tpnet.pl. [83.9.31.4])
        by smtp.gmail.com with ESMTPSA id f10-20020ac2532a000000b004ff8cd27a61sm924443lfh.213.2023.10.21.10.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:03:00 -0700 (PDT)
Message-ID: <808d2409-09aa-4adb-9d91-46f97cefc6c1@linaro.org>
Date: Sat, 21 Oct 2023 19:02:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/9] clk: qcom: apss-ipq-pll: Use stromer plus ops for
 stromer plus pll
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
 sivaprak@codeaurora.org, quic_kathirav@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <cover.1697781921.git.quic_varada@quicinc.com>
 <c86ecaa23dc4f39650bcf4a3bd54a617a932e4fd.1697781921.git.quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <c86ecaa23dc4f39650bcf4a3bd54a617a932e4fd.1697781921.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/20/23 08:19, Varadarajan Narayanan wrote:
> The set rate and determine rate operations are different between
> Stromer and Stromer Plus PLLs. Since the programming sequence is
> different, the PLLs dont get configured properly and random,
> inexplicable crash/freeze is seen. Hence, use stromer plus ops
> for ipq_pll_stromer_plus.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Fixes: c7ef7fbb1ccf ("clk: qcom: apss-ipq-pll: add support for IPQ5332")
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

