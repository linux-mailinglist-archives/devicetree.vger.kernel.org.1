Return-Path: <devicetree+bounces-18271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F08F7F5E89
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 12:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4104A1C20FA1
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:58:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0977524219;
	Thu, 23 Nov 2023 11:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G3L6YooF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35E37D6F
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 03:57:57 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-507975d34e8so1042297e87.1
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 03:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700740675; x=1701345475; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1PIIYPDZcaUUtbo5ldUSpIo3Jpbx+2SXqPzhdvBEuU0=;
        b=G3L6YooF1ZayRNxRr3E/4rHAzdFlAVRnYgCn2GGvqzzr+LaQyBi1LeYjXz9xaS2Uhp
         ZmhiJ2Dk2ozUH1mRD09uFdyfDT5iwn9/5FWD54YUjRsKxx4rB6CqJP0QUfxdVnsn9Dr6
         ae62hPqryDDW7HOc2mnlnHZnCy+4K5zwoc760/AfyCQgraEjvorw+I7Z9tR+FfK9bvHs
         FXT8EjVjRUQTEIOgyomuN1RJzo1Fh4k7eQU8Fql+AuTSk0jSKZK32xZvJ9VzUjbOync9
         bAOc5DAa+ttACNbkPIl6DOzuVOGH5112Rr2Q70/RJ5rBuiN1F7/SjiF4ZQNDInUpkRZK
         2pnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700740675; x=1701345475;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1PIIYPDZcaUUtbo5ldUSpIo3Jpbx+2SXqPzhdvBEuU0=;
        b=vuCSxrBed7iLYDOCTAN9L44fuLvjk+6PTmw7/A7yHe1GKAK9kBNRSFi/v1QsjaAgqN
         5Ww0zopZltMMZbKOQ5OPNw8bbqjaen63gABleqCnZH+rw7gMwd/uNNLN5/mpI2/CWNkR
         EVJFYg/dYxP2+N6SlRBXJ/q0MaDqjIHrMqX0WXqhj1/9/spSCAM6zoCiJhk9HvxEq135
         1qVTpJLcs0914FY4Woj4vUhbV/YpDrVatzn2a5m6NeHkkmwqRdl8fnsUFkjsp7pGyk0G
         qgvzuNXb9Gyr0DvZqucRbhgHt+uznrnyeO6TPIZjF9aSAo9tPT9UHha7F5cxO7SgjAy8
         h7TQ==
X-Gm-Message-State: AOJu0YznzQCmNpwk8qF7e6lus4tbqHLJzM8kYItnUOicGDYqTCeIk+mW
	iGT97Mg0xf9umIOnFEg8E9FvVQ==
X-Google-Smtp-Source: AGHT+IHEzwFsSiUrHxerkzp2AE6ef97hiVMKuGwN8td7j6ph1CSPFLbE8yWNAIQwxbq6Fe3tMk0EHw==
X-Received: by 2002:a05:6512:3d0a:b0:50a:aa30:f9d7 with SMTP id d10-20020a0565123d0a00b0050aaa30f9d7mr4942548lfv.67.1700740675512;
        Thu, 23 Nov 2023 03:57:55 -0800 (PST)
Received: from [172.30.204.221] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w28-20020a05651204dc00b0050a71f99960sm167359lfq.197.2023.11.23.03.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Nov 2023 03:57:55 -0800 (PST)
Message-ID: <3cb4834f-18c0-43d6-8c81-5689df7b1d60@linaro.org>
Date: Thu, 23 Nov 2023 12:57:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 0/3] Ethernet DWMAC5 fault IRQ support
Content-Language: en-US
To: Suraj Jaiswal <quic_jsuraj@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Prasad Sodagudi <psodagud@quicinc.com>, Andrew Halaney <ahalaney@redhat.com>
Cc: kernel@quicinc.com
References: <cover.1700737841.git.quic_jsuraj@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <cover.1700737841.git.quic_jsuraj@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/23/23 12:38, Suraj Jaiswal wrote:
> Suraj Jaiswal (3):
>    dt-bindings: net: qcom,ethqos: add binding doc for fault IRQ for
>      sa8775p
>    arm64: dts: qcom: sa8775p: enable Fault IRQ
>    net: stmmac: Add driver support for DWMAC5 fault IRQ Support
Missing cover letter with explanations/an abstract

Konrad

