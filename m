Return-Path: <devicetree+bounces-20174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D067FE18B
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 22:08:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 579301C20A22
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 21:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB5661675;
	Wed, 29 Nov 2023 21:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bIWoXVpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48B46D69
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 13:08:03 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-409299277bbso1540295e9.2
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 13:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701292082; x=1701896882; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O9jFHV2GrUp0ps1JJpB9xoZzEO2eSz+0BnDBZmO9bUs=;
        b=bIWoXVpYSzInobRl43VhJAlIO8YRr73ZKFHAgmlKmt1c4cmNsBflJsAjGTq7q1Xtlr
         Q6j39YnZoIXl3SrOqQ1rgo+O37S3lWSqBLA7gedBE4VldroTVAaaFvIdj2WZaJ6Fb9Lr
         5Bc4qGWdg1N6Ww87GaxTSOg1Zzs7KA3mt7S/NWzCXBF9MCHMdhu1nbRGOZVunecVMLt7
         9fGZQ1Eg513HZ1V+cM5WcuQfYNQVnjevZRLNZaA7gu3yFNxMrx+NfiibVuQMfwQrQ2Do
         9I8oLP8mZ+k4y3nvpkLiXSGuEmhjUsRTB3M3ZnQSGkN8mTyxHwyVjADCpSucSBQpelbC
         psDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701292082; x=1701896882;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O9jFHV2GrUp0ps1JJpB9xoZzEO2eSz+0BnDBZmO9bUs=;
        b=RvHnTGZx0qlhEllEgnWVeNhcTQ1tT3YRGEe/1mItLsXvo6Rp+gR4jS2uSDPZ90DkUx
         +ytoObuQzgY18yI6AtPdMj0m/uTFDC/UHOs7oIMeeNlWvp0l9WgZZc6VPEMyQm5JM0ie
         HwfgGuMmoYjcruGc6GhL4EfjfFNTePZUEBc7dEKSilgNCnSQJrFIick57PFLJcabXCSi
         xJGrGTT+FxPT1yZ2Ba30wPMD0W95P6Gkx8C52C6KkK0LmgZgrIgKS8Bq6MVEFYrdlCY8
         K6WDAK5cP2G0oqBFiUFGHhL3O68PU0OaUZKZwDorJO9zCbZT9Wz3vaHx1ICgf5mPi1Dk
         wOEQ==
X-Gm-Message-State: AOJu0YyJc6kbGLZLXY2g0ICPHyGbMyGIwdQWixtyR8NuVnhI+lhnbFu1
	4WS7+jVtNMAfmigK29MCTq/yJS0Hn9QiSKfQk8N0OH6/
X-Google-Smtp-Source: AGHT+IEpKW5T6Mdf/X3bYFt6X7XSBnY76TN2RB3vLijvMEL2ZkKnEKMVbKRqdV8Xk1Wnk5wdvI3a2A==
X-Received: by 2002:a5d:6a42:0:b0:332:c585:400a with SMTP id t2-20020a5d6a42000000b00332c585400amr14557007wrw.44.1701292081556;
        Wed, 29 Nov 2023 13:08:01 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id f2-20020adffcc2000000b0033315876d3esm3082637wrs.12.2023.11.29.13.08.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 13:08:01 -0800 (PST)
Message-ID: <9deb31e4-2e75-4db2-8a73-7c8b7f9ac03a@linaro.org>
Date: Wed, 29 Nov 2023 21:08:00 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/15] clk: qcom: gcc-sm6375: Unregister critical
 clocks
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230717-topic-branch_aon_cleanup-v2-0-2a583460ef26@linaro.org>
 <20230717-topic-branch_aon_cleanup-v2-3-2a583460ef26@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v2-3-2a583460ef26@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/11/2023 18:59, Konrad Dybcio wrote:
> + qcom_branch_set_clk_en(regmap, 0x2b06c); /* GCC_SYS_NOC_CPUSS_AHB_CLK */

Shouldn't this be 0x79004.

Also the logic here is - since its currently marked as CRITICAL => its 
fine to just mark it as qcom_branch_set_clk_en() which I guess adds up..

hmm

---
bod

