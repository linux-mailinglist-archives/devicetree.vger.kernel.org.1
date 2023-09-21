Return-Path: <devicetree+bounces-1991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE4E7A95EA
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 160CCB2098F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0759199CE;
	Thu, 21 Sep 2023 16:58:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB72F199CD
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 16:58:13 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05B8CE54
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 09:57:44 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50306b2920dso1415943e87.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 09:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695315449; x=1695920249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9L+Ayd4AVCY39J9Hxvd6MFEArOTVMascukL1YJniY/w=;
        b=UDHZ99McUQT1T7/cjp362uPZJ8qr9+1CsZvN99JObCkLUan6S+gErM+GymRzQwIpOw
         ptfkErrtOaJHNwtasSEvwsEQVlbtPm8mfZVoSa5o1Ur+TAiKIz4trylT79HASJ8lsfC/
         E/JO9JCWhiZWywVOsL4vgDMcNJN/uXKlY03euuO6O1kv3DpoNHanrAlDDyeQ6y/eNJt8
         snIfbYg+HwXIYYfKozqbZGelhSYZyhuI7rnmaeStUFSG2PU5yvygeRhmCX6cMJvEsWja
         gyC8Nz08D8ycPJCC783fwJfoKAGQPGbOafxhnTIxxZTrTzY0YRrJjGPzq6P16METw2LZ
         a4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695315449; x=1695920249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9L+Ayd4AVCY39J9Hxvd6MFEArOTVMascukL1YJniY/w=;
        b=fR68U/zh02SmpRwcdL/6fGAsZlsTsPkvlY84m4pZaBHtNbBKdlrPddaOpNXxkuex3v
         hQ1mb1xLTTaatb/E9FZfOzksxbGDgd4ONicTKHhJeGOb7E0EL5oi3KQV39fYU5zeAHuO
         q/u08CSIBlu4lI5DJiZFuxTv8mqzT1sgZJVjmW+/F1ryw3dK3CjHad8/aF/5zuvx8TqU
         f4cZv1lWUAJURhtWVPfMyTDO+/LfLOQrY1yNVaKSqgIeShz8iWBt9dFTeLGGXyGcgTf8
         TPaBdgUeNxhKQLOSeNFGFzTH2+3rAZo5SBS5gVE+78ZLdSqlhf1wiyB5yDnvO4HCOjuE
         NfrQ==
X-Gm-Message-State: AOJu0YyaoztWhoqOXbQM7isEa4SMeNRJHmkuMBXpRDfFJQmLz9NTbPI3
	EobtSFauApxhRcE6zM9woC5SQbbTTvw6o2jMc0rDMQ==
X-Google-Smtp-Source: AGHT+IH1+DWkTnhgn92dCu/7v9TiDYaPSRko+SKIGaQTddVCw3CZc5wy/uOcCNoqIUvWqVc+G4l53g==
X-Received: by 2002:a17:907:3e15:b0:9ad:e3fd:d46c with SMTP id hp21-20020a1709073e1500b009ade3fdd46cmr11318009ejc.10.1695280184740;
        Thu, 21 Sep 2023 00:09:44 -0700 (PDT)
Received: from [172.20.15.189] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id i13-20020a1709061ccd00b00991faf3810esm594634ejh.146.2023.09.21.00.09.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 00:09:44 -0700 (PDT)
Message-ID: <01af3370-1d70-aea4-c808-5a96ecb5ee18@linaro.org>
Date: Thu, 21 Sep 2023 09:09:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 3/3] soc: qcom: rtmfs: Handle reserved-memory
 allocation issues
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
 <20230920-rmtfs-mem-guard-pages-v3-3-305b37219b78@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230920-rmtfs-mem-guard-pages-v3-3-305b37219b78@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/21/23 04:37, Bjorn Andersson wrote:
> In the even that Linux failed to allocate the reserved memory range
> specified in the DeviceTree, the size of the reserved_mem will be 0,
> which results in a oops when memory remapping is attempted.
> 
> Detect this and report that the memory region was not found instead.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
typo in subject: rtmfs

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

