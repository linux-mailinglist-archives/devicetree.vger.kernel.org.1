Return-Path: <devicetree+bounces-12145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DC57D818F
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:10:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 627431C20833
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2CA27EE4;
	Thu, 26 Oct 2023 11:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ExLY4rq5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C62C262A1
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:10:06 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E09751AB
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:10:04 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507d1cc0538so993453e87.2
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698318603; x=1698923403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CFDGqzAkT9v30DUvgbeN8oVGeAg1rb9jZ6McermBiCw=;
        b=ExLY4rq5Qoss1JJ+oipAZHjbh8s68dSRRA41Itglw5ciSDYFm+o5qTf0sa3bQzETui
         i9UcMAZRxnQ4OtDMCfi1umkuQm7aCv05PATPYMx45SN3A8sX/tVzQTxEgpBHULL8JIGh
         3Us3pb+Sl0xLFISXP6Qr/5gJDZsfGrpmZKNFEVLsyQOYURMe+ujy9eiUh2edmWLXeKe8
         SSxfZYsCqHPEA7oWkStGKKnbQxspPqnNdGbhIP2wDMYLkSw3mDTXOymP02X5k6ZmRZzk
         eLMBmvzJvmMIWAIL74arisCUiyL8svMrIV+DM4MuHlrt6498Eekd+5aXyCpv9MKx6Rsr
         mpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698318603; x=1698923403;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CFDGqzAkT9v30DUvgbeN8oVGeAg1rb9jZ6McermBiCw=;
        b=WwnpqqGF6VDyEwZq0O+EaMWw4/djRnLpjvazpECf4Q2FgzjSCORpUce/6wkSloE/iT
         Rw6cO+BEOYl7W5Bq4UikNytJL78DTSf6r/ptSdJiq0kzsmT2hWB08kBJyXRJNf6ninRv
         HasTx183XoCGHG0qfmtfECOYV5OrTySTtk7hGLaMJ35UjCTVtgV+RJ/U63Sp4NbyRuUh
         3huSgcItfMrSUBNT4D9rqLZX01/ewZlhvN8kK9o9RI0+tF2Mwq2lXs96nWbZXv8G59xv
         Xvds/JFeIZDKyA+DJUoF3c/OsfBCF81dimyQCv5xWxWT1V1wk6+TwOWVRE1q4s2lz0IH
         i7WQ==
X-Gm-Message-State: AOJu0Yw5+XITFecLbReqJXRUP6aIJquFH+tn06Rqexcvfqj85oO1npEI
	G9G1ElSO7Z857xvwtN3wJ7rKWw==
X-Google-Smtp-Source: AGHT+IGZ7Bx52xZjwNOsaoIwxTO6OODdxBXVzVwSUitUkgzo3/Zs2ma5n6Xswx3q77LV4oLmE5LW9g==
X-Received: by 2002:ac2:44a5:0:b0:503:7fc:8afe with SMTP id c5-20020ac244a5000000b0050307fc8afemr12673901lfm.1.1698318603147;
        Thu, 26 Oct 2023 04:10:03 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u15-20020a05651220cf00b00507abbaeb22sm2984919lfr.301.2023.10.26.04.10.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 04:10:02 -0700 (PDT)
Message-ID: <fb0647b5-67c4-4558-ac41-ee2b21446ee2@linaro.org>
Date: Thu, 26 Oct 2023 13:10:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] PCI: epf-mhi: Add support for SA8775P
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: agross@kernel.org, andersson@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
 quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 mhi@lists.linux.dev, linux-phy@lists.infradead.org
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-5-git-send-email-quic_msarkar@quicinc.com>
 <20231025075603.GD3648@thinkpad>
 <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <610b0621-b140-ee9b-c450-0fec6862c4fc@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/26/23 07:30, Mrinmay Sarkar wrote:
> 
> On 10/25/2023 1:26 PM, Manivannan Sadhasivam wrote:
>> On Thu, Oct 19, 2023 at 05:07:09PM +0530, Mrinmay Sarkar wrote:
>>> Add support for Qualcomm Snapdragon SA8775P SoC to the EPF driver.
>>> SA8775P has the PID (0x0306) and supports HDMA. Currently, it has
>> Is the PID fixed? I thought you just want to reuse the SDXxx PID in the
>> meantime.
>>
>> - Mani
> 
> The PID for SA8775p EP is not decided yet. So using 0x0306 PID meantime.
If it's not decided, why should it go upstream then? Would that
not break the hosts' expectations when the EP device is updated?

Konrad

