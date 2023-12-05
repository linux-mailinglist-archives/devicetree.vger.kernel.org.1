Return-Path: <devicetree+bounces-21823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 221BD8053DA
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:11:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97AF11F212ED
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 041275ABB9;
	Tue,  5 Dec 2023 12:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SfHfVYnO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63782C6
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 04:10:54 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c9c18e7990so76567201fa.2
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 04:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701778252; x=1702383052; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3d56aD4ZvOlwf3rQa8BE6a+ZHLUy7yitH/6f5sNjUAc=;
        b=SfHfVYnOecitImpbyc2wCLQQQY+YExur+xxaRnDA2s+lOFi7RBX8IbGBP/T6H6wUd2
         op67pPmYciuhdpH8qjHm3pTsgk1y5piMUMH3Kk1Q0SBqtoJbjh+U/xLySPnPSu+dyeLE
         ja/6L8D1kdc8CiolGYWl8+luydwFHqynJWXHDbg/2tVgQPDZbt8J59eLFLYICEyRgrbS
         s5SSURQ8+fQemzjU6Dxd8kq7z9aCLUfn8hG6ncsl1bmyJaBOmd8mUmA7HCy+CJyZ5bU3
         783H0Y2lhfcSiTzKfzDZQu4+Bf+zWVMtwSk+RnrkGiimWkhqIe5dOZrWmq3K6bpD7R9K
         gCnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701778252; x=1702383052;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3d56aD4ZvOlwf3rQa8BE6a+ZHLUy7yitH/6f5sNjUAc=;
        b=mHAKa+G5V4QRb/QRsAdlMRwb+4slZYDmTsss8sqbSrRNoz77ieKfZRiT/S6sX++RWU
         5ctpDhcL9mmCHQcnAkjlxWZ8yXe9x8I6nOtPO2nEXv6Cbg+FwDnV7vvYL1/SXivuc3rN
         dyD9Yx0gjLLXmCQbVafDyx1G83lZG+XJkKWuEfJuh1YC02dR0dlHN49bTZLe2YTYPVrM
         TJKY2e2Rces8/lE7cJOGfDUM/XMlMOd81ra4CXZ46D83hXVaOPHpUdVgu1sY35VtE+iH
         RBAxIa4Ylcgsn2mT0NQ5qLjkQeCbbUW2MooRA2cscDB8k2+cz05XaUBNf/fHyy6MuUyr
         +Otw==
X-Gm-Message-State: AOJu0Yw230SXjzyAXhJ6uIwTy0aO03OJPi0O64Ah6r3GHgs6o3QpGUDt
	4aNxVjfi/sM/46BAHcn6ZXHxkQ==
X-Google-Smtp-Source: AGHT+IE+WjEqqHU2fdHdPRsbnB3CFXOLpcnW7QXcMtkl+6Oy/uQyfG5hwppL1Mvv/N+RgdCZ5vfsuQ==
X-Received: by 2002:a05:651c:89:b0:2ca:3b1:1da8 with SMTP id 9-20020a05651c008900b002ca03b11da8mr1567631ljq.104.1701778252652;
        Tue, 05 Dec 2023 04:10:52 -0800 (PST)
Received: from [172.30.204.197] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id s22-20020a2e2c16000000b002c9f7c2635fsm956195ljs.1.2023.12.05.04.10.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 04:10:52 -0800 (PST)
Message-ID: <44840b00-4016-43df-987a-5db0c46c70b0@linaro.org>
Date: Tue, 5 Dec 2023 13:10:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sm8650: add ADSP audio codec
 macros
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>
References: <20231204155746.302323-1-krzysztof.kozlowski@linaro.org>
 <20231204155746.302323-3-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231204155746.302323-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 12/4/23 16:57, Krzysztof Kozlowski wrote:
> Add the Low Power Audio SubSystem (LPASS) / ADSP audio codec macros on
> Qualcomm SM8650.  The nodes are very similar to SM8550.
> 
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

