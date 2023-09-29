Return-Path: <devicetree+bounces-4750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7337B3A06
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 20:27:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1A8D2282F60
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EB0D6669A;
	Fri, 29 Sep 2023 18:27:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4612F6666A
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 18:27:43 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D39ED1A4
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 11:27:40 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40537481094so148621225e9.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 11:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696012059; x=1696616859; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LOO9MB9UoF+kx+MfoIki3YD3nQhPAJHsiuL8TjZeK6A=;
        b=Za7DPoKtBQmrmaotnpRQ7hBdlEhOwnTeVWDupbbHqex3hybhWzK6medB5h+76aRz2C
         RM/UPv1FxfxNo4mbXjm7IVtp2Cigqn1jB5RyxV7oHbiDmcfipwZZ6PCLoNdyXp6sUS7O
         CTFK9SGcCity/4nKBgEAiVBuNtk5l3K3Obe6F9f/VHIP45YcRsICH2oV45bt7e6YR0Qt
         9pvQc6ymuwdlvYb/OHBXm68SXDnCTHkITx91iQkaQ1yI8ig/R89CE+e47UK+S/DI1KVm
         xsEDhafPplsgnlPOo0SgjiokapNnXJu2Fer3oZaFlufZN4yMm/ddFXcBkHYMOL47ZLcF
         0dlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696012059; x=1696616859;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LOO9MB9UoF+kx+MfoIki3YD3nQhPAJHsiuL8TjZeK6A=;
        b=DpEhvSznBtBfp6ODx4hLvcps+oo+bMsUtbYYCvv0dZZLn4f8XlKtuDhlCDT8R2XSNj
         7SQ082KRVgWf7IZeclNaqwq2HGy9ZRxvuJreMglr0MabIp7CZSNAAHbsduXDa+zRisgl
         zVHg3LI6uoWFqLxRNbGNAA+mc47/v8qLTExCCgXuJAImRgSEmq2EY4W0Si1vvpbsCE1U
         c7gzpcM0Mhs+bNyMNIX6CulDnvBhvQ5T++y1/duxivbZtkbHCKjGOdB1iZCfrQGfxbDs
         gfct2QmEp3ej5E+z1wXVmDZ65wzhJcBlEc/Iux0XtSNxBqmuLssrz2vhQ8YFkC0hogjD
         jjaQ==
X-Gm-Message-State: AOJu0YzGIQC5JSV9wvVH2MzpjO7bfFLSRKBFFhTFXtJaIBB4g/wXQPFT
	7bCCmO+5ivLfoUEg/UbfK4UAGQ==
X-Google-Smtp-Source: AGHT+IGIJoT26bLL18e8p7x6DSmd83hCa5cV7XsJzwHzUXDaA2o5A3Im5Csko/R1CGa0vxUpAfvzZQ==
X-Received: by 2002:a05:600c:3d1a:b0:406:548e:bd51 with SMTP id bh26-20020a05600c3d1a00b00406548ebd51mr3704928wmb.26.1696012059260;
        Fri, 29 Sep 2023 11:27:39 -0700 (PDT)
Received: from [192.168.1.8] (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id e21-20020a05600c219500b004055858e7d8sm1958549wme.7.2023.09.29.11.27.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 11:27:38 -0700 (PDT)
Message-ID: <378f600a-4fbb-42a0-a6d8-ea2dac0b220d@linaro.org>
Date: Fri, 29 Sep 2023 19:27:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] thermal: Introduce Qualcomm Thermal Mitigation Device
 support
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bhupesh Sharma <bhupesh.linux@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Sibi Sankar <quic_sibis@quicinc.com>, Manivannan Sadhasivam
 <mani@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
 <30066188-3787-4277-914e-e06c95fe2e1c@linaro.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <30066188-3787-4277-914e-e06c95fe2e1c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 29/09/2023 18:17, Konrad Dybcio wrote:
> On 29.09.2023 18:16, Caleb Connolly wrote:
>> The Thermal Mitigation Device (TMD) Service is a QMI service that runs
>> on remote subsystems (the modem and DSPs) on Qualcomm SoCs.
>> It exposes various mitigations including passive thermal controls and
>> rail voltage restrictions.
>>
>> This series introduces support for exposing TMDs as cooling devices
>> in the kernel through the thermal framework, using the QMI interface.
>>
>> Each TMD client is described as a child of the remoteproc node in
>> devicetree. With subnodes for each control.
>>
>> This series is based on previous work by Bhupesh Sharma which can be
>> found at [1]. I'm sending this as a fresh series as it has been a
>> year since the original version and I have rewritten most of the driver.
>>
> Since you're adding support for funky hw, it would be appreciated
> if you also linked to a tree that has the dt bits hooked up, the
> schema example may not tell the whole story

For sure, you can find a patch with a reference DTS part here

https://git.codelinaro.org/caleb_connolly/kernel/-/commit/9067f80db58bbce81d5f0703aa2fd261e88bc812
> 
> Konrad

-- 
// Caleb (they/them)

