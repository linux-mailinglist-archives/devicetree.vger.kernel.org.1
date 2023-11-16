Return-Path: <devicetree+bounces-16302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 054A27EE3C8
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 16:02:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE51A1F27FA6
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2759341BD;
	Thu, 16 Nov 2023 15:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TT3WIvoX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66A2BD5
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 07:01:58 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so11649141fa.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 07:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700146916; x=1700751716; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zxqVH86X4cuXfvt9WZn0ecdmtgufJGOQ8mS6FlCKTTg=;
        b=TT3WIvoXl8t285/yu51geQxnaBFYUWy4rblGHXf271XRY+dn5okGopwRi1PeOF5V1G
         aqyuoS2szYDu/LvI20MKoLvrUtUK2sZzBIseA1U/C29nL1Tpn1pElR2gPrDAfuoKJtdc
         w/4RhrT/lV7b9nGcxP6Xzkc7Vhw7dTrnkVMZkMvcdPPJjm7Ah6r09L0yHaGrBxtWBmAr
         vftGr75080x3uW2Izb/oeNYz66B6No4NiE9vaLLI7oSSYNfA+EQSsB005iGlzbOBQUaW
         AAzewtRBjdi1A7jxQY9BRwZxpCvzvNdWkX7vGqZHjZZ9j9flItF/EGCkqCnq8QraspFl
         rbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700146916; x=1700751716;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zxqVH86X4cuXfvt9WZn0ecdmtgufJGOQ8mS6FlCKTTg=;
        b=r8B4VdBQArGbkBGnw5ubiLOgk3udTLm+0+WdlzbhrK4h+D/cNiAJnmiB28IgWYitT5
         ipR4V5c7I/eubhOxCBShuQiXww5pd0AnfbrSF7UUtRnxJ4YQoF56BklyzL3AZ5pmSlTX
         h8b+mS4nbMQnmvEG5z/wr/Sr7Yu+BlbUjWZk6LdBvlR5l2HYl3XhNPTJvWgix5c9fhsk
         nrEhvCmPrya8WIJbqEA+4pFhPIcwGC/BSAWn2gopUBkJCiaXWPE67WZz/deu/OzQZQ/W
         LyBPC1r/nKFrnfnac9rgUF79woqd8zSZOcsQuArjSFCp0OCikyZXsziII48hK5Vip5kF
         Nopw==
X-Gm-Message-State: AOJu0YzINZKaBBii4Tz731rHs+0ovSWscPclRyB0lksapG9wHjtYyxtv
	C7Ff0BE4VZ9ylmOsygcJ8ppv0w==
X-Google-Smtp-Source: AGHT+IE7vexAqvYBpf5qKBNAy2mXPg26r4KlHbQTKyhkH8y2DOhxq89FAIPla6UrhtxGpzhE1S6ZbQ==
X-Received: by 2002:ac2:4426:0:b0:509:fc7:8853 with SMTP id w6-20020ac24426000000b005090fc78853mr10278293lfl.12.1700146916542;
        Thu, 16 Nov 2023 07:01:56 -0800 (PST)
Received: from [172.30.204.128] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i7-20020a0565123e0700b00509471d41besm18062lfv.211.2023.11.16.07.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 07:01:55 -0800 (PST)
Message-ID: <e8dc01a1-f3fd-4c23-9607-62a199b6a2bb@linaro.org>
Date: Thu, 16 Nov 2023 16:01:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 3/4] clk: qcom: Add ECPRICC driver support for QDU1000
 and QRU1000
Content-Language: en-US
To: Imran Shaik <quic_imrashai@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20231106103027.3988871-1-quic_imrashai@quicinc.com>
 <20231106103027.3988871-4-quic_imrashai@quicinc.com>
 <CAA8EJpoGLCfrWQ5r8cOcqyWmF2ZTTqPxFy_HVzPC-A-dCiV48A@mail.gmail.com>
 <8a1ce949-204a-1c22-c554-67b31379eb7c@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <8a1ce949-204a-1c22-c554-67b31379eb7c@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/10/23 09:34, Imran Shaik wrote:
> 
> 
> On 11/6/2023 6:34 PM, Dmitry Baryshkov wrote:
>> On Mon, 6 Nov 2023 at 12:32, Imran Shaik <quic_imrashai@quicinc.com> wrote:
>>>
>>> Add ECPRI Clock Controller (ECPRICC) support for QDU1000 and QRU1000 SoCs.
>>
>> After reading this series I have one main question. What is ECPRI?
>> You've never expanded this acronym.
>>
> 
> This is a clock controller for eCPRI Specification V2.0 Common Public Radio Interface.
This should be under description: in bindings

Konrad

