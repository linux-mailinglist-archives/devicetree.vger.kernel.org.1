Return-Path: <devicetree+bounces-11692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E1C7D659D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:46:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 226131C20CE7
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86FC31CFB5;
	Wed, 25 Oct 2023 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L0rH+BHD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260B8749D
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:46:33 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56A27181
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:46:31 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c50906f941so81992511fa.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698223589; x=1698828389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2/qDJt2TktcCTAjVqQQhY9/t4tuTrwTtLlHAGkujnds=;
        b=L0rH+BHDTRJltVtYgGHibtc2kAhZRpfQzX17xTaf3FYZUoehotgfexGZAO95Qkwgfq
         if397bM3mt7YLJHPb9Th3IP1sbeuZsdX3XZf+kkLx4vtkpl6VfEV9fsQh2XbAMNvelsw
         V/pCYBedExVegIoHtCxuAUWLdj/sF3a1pWr97uMFh5w8PsADJLZKUYcIAzmJ0eVmlb9W
         i4B4iX5dUBtNbOQX+E1BpVoKcK9CXXCOoMkzDqhcjpWqnXateDLDRMTqGOyf+vRMVhJ6
         +BSZdyfHti2XZIRpvKvSAvDVxt9sTyQr60Ys9XjWypganqFvsTgOnaIFJeNic1AmF3Po
         2VVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698223589; x=1698828389;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2/qDJt2TktcCTAjVqQQhY9/t4tuTrwTtLlHAGkujnds=;
        b=rGg0Dh/hN50ieL9HUAMRAHoOCZdG9qQZJTxE3B9p68mQluotpbS70tacvHYxLmOSZZ
         0Qnd7SHhS/arLZjfOG56XpBY2YbWURvKBkZh7BeP20Zv4UMkUjWYMDOEQ7q78H88H3Tl
         7OsG23V+alQbNX3HihzbEME4zDVibehPFu8ZZ+b/meusZSyYLcMRVR/BTWhSmZq6dygW
         feKyZkktyXRDoseCAq46nX9m8bntrS4O6beiAEnXhlFnAIFAptsU/HG4+wpeLajGSWjR
         X0ptwL+KK1zH8HvZDk9JfCnW7ATK3mdHkVEgdzyIt9iI0pfZlG76fuemu2HKhNAdDX4E
         buCQ==
X-Gm-Message-State: AOJu0YwPZbgBK2HxZVOsvUxPH+/OarTF9Qp/5/Ib79G1YFHm9cDFp2OV
	Qpp/eFsvArBREDBUEUE2NEqNaQ==
X-Google-Smtp-Source: AGHT+IHrkSVsX7DyHcQJ6Dgs3IFMRhs0xM2WvS141qWk0u9YzRxXAMgcw/0DND/s9rBxWOKyOBFj7A==
X-Received: by 2002:a2e:81cc:0:b0:2c0:2ef8:9716 with SMTP id s12-20020a2e81cc000000b002c02ef89716mr10491238ljg.1.1698223589554;
        Wed, 25 Oct 2023 01:46:29 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id p13-20020a2e9a8d000000b002c5122f13b8sm2320875lji.30.2023.10.25.01.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 01:46:28 -0700 (PDT)
Message-ID: <73409bba-b27a-4c8d-af4b-9efb4c0a5efb@linaro.org>
Date: Wed, 25 Oct 2023 10:46:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] clk: qcom: add the SM8650 GPU Clock Controller
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
 <20231025-topic-sm8650-upstream-clocks-v1-9-c89b59594caf@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-9-c89b59594caf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:32, Neil Armstrong wrote:
> Add Graphics Clock Controller (GPUCC) support for SM8650 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

