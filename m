Return-Path: <devicetree+bounces-18261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2008B7F5E29
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 12:48:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FB791C20F20
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 117CF23776;
	Thu, 23 Nov 2023 11:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zSztR4DA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7CDA1A5
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 03:47:57 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c87adce180so9459941fa.0
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 03:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700740076; x=1701344876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5z/6kzj0xpjEwyEn6jAgsUGnC17kgWeKFKQoCRWLJSg=;
        b=zSztR4DAbD6suhJ8VKTu/ajau66KyMuNQxprHZ/GBO5mKFJWe/gOafIGYVJinqD88v
         o155l4/en3BTQH1zVJykcyfmEZhyrsn+okD9hm7HQI4DOy+ciQtJ25mrtJAgtOUSgkG/
         7ZemhYW2/qHBsaY4yfgwbr7wgYorBtpUXk9UExWrEhEDhdwL7OxusJZ8A/qifGNnlICy
         EqtsxcGKyIcQMr8RihbKEBcbvi9i5gOyDbjc0e6T3uRyPuQcjtKpMW3jpSza54GtxdZ5
         +bkibdwIx0Bfgfei5/1Yc24zlSZ8aBBntPZYBHa4eZxk/igZdix3ru9Qlb7P5Jk/GZA4
         83+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700740076; x=1701344876;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5z/6kzj0xpjEwyEn6jAgsUGnC17kgWeKFKQoCRWLJSg=;
        b=oc+z5gH2zJkaDkOk9BjWs6+HdyoGHl0ii4gnMinX2y41oX6zOJnSx/qoglXe/ju9lR
         szDj9DXBeALKgP8IUy/+Z+X79O5wYNgBfvKfgLLuD37T4T72/I9YZ8evyFM/mYGoBSjP
         w543Z3RlTkgJnPBhYop8i43JCExBeK178/jyYKjjmAZF5hT4s5B/lx6GJczbPHOoywO5
         hLMTA3p5ufOivJEe6jgu3nWW2RuTq/RMmANd8NangUFVnJaqy3CwWmhW/YEGQDpm7WfC
         FeUXbIqIdqNpGTCaAOjHECeM+U/HKyYmmYmI0yWwiG1dvbGrxlkN0ts0COUH93nI6Nn4
         peDw==
X-Gm-Message-State: AOJu0Yw0mis3bssVgLNMZ3LmCWM+RrYFUKHS22wxneA3OldCbnJ1ZPlb
	PQ8WIgD2bEOOWIUmdoD/QoVW0w==
X-Google-Smtp-Source: AGHT+IFm0EJlV2LouBQ+mZHobXuZe5nby4UbO3zTHDKq7i7Jq7eN0/XJb4O6uXm73wxuqU8z1o/SMA==
X-Received: by 2002:a05:651c:1426:b0:2c5:2133:a9fc with SMTP id u38-20020a05651c142600b002c52133a9fcmr3186298lje.40.1700740075960;
        Thu, 23 Nov 2023 03:47:55 -0800 (PST)
Received: from [172.30.204.221] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id c12-20020a2e9d8c000000b002c505793a23sm164296ljj.109.2023.11.23.03.47.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Nov 2023 03:47:55 -0800 (PST)
Message-ID: <31e8a8ba-6357-4332-95a5-bce8c2991203@linaro.org>
Date: Thu, 23 Nov 2023 12:47:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 2/4] clk: qcom: branch: Add mem ops support for branch2
 clocks
Content-Language: en-US
To: Imran Shaik <quic_imrashai@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 Ajit Pandey <quic_ajipan@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20231123064735.2979802-1-quic_imrashai@quicinc.com>
 <20231123064735.2979802-3-quic_imrashai@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231123064735.2979802-3-quic_imrashai@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/23/23 07:47, Imran Shaik wrote:
> From: Taniya Das <quic_tdas@quicinc.com>
> 
> Add the support for mem ops implementation to handle the sequence of
> enable/disable of the memories in ethernet PHY, prior to enable/disable
> of the respective clocks, which helps retain the respecive block's
> register contents.
> 
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

