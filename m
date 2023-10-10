Return-Path: <devicetree+bounces-7342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 414AD7C01DC
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:41:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED71428172F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 036D62FE1C;
	Tue, 10 Oct 2023 16:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NjdDDmyB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB462FE04
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:41:44 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1C9397
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:41:41 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c16bc71e4cso70465631fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696956100; x=1697560900; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7eXnEfxjvluj2ls7P91GLCGn8R1ORvibeOsisML1eFU=;
        b=NjdDDmyBTCjygBZJAU+NRwRzl3ex6HJG9YfrfrTpOYoShqxdPuZtOqtlmxin+mbOJ3
         u4fFmpaTvK8xF11J3mTcfcw133QmdBBryJoDVYRZ8G6P5DWiLLpYwfu+2wp/DuybIxiQ
         YVLoGoQtW8eMQVJ4eTl/kizr1DnWqa9iLdWpwvQHw99Xxj2hOzFB+7H4C65pFmAS/4qo
         KnzQYJe2EJsybQQ/Y7Fk2d/oQmL0mD1PhQdx+1p4EXCIVTpTL2JMlJeCiWrZkkHApHzY
         sut2SG5fl20NC0Fg2fCHYZ9v1khyrylm95+ZifXftj3hYvddu5VIG4Dja0GyQfzribKb
         DdWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696956100; x=1697560900;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7eXnEfxjvluj2ls7P91GLCGn8R1ORvibeOsisML1eFU=;
        b=XhRbtdsblrHs494AglNU3fX3IBMBBVsrSpLH1lySeF+h+7m3hfcs0S74IYNIIADHJM
         H01gTtyJVNkSG8FOjb3hMgDs9HsAt3HA6W8CD9K4HvEz+swCR2m9d7DpYZIjlq6q6gZE
         2IECAJQKVL/pUQQDdXUN91E0I8fxakZKqWpeYm2wCBjFyQCnll48L0GLnXuUBn/DxhBD
         FCXFfXZB7QfnRtvFZGtlA9nZ50qrTuQUJVe5Q3+jkAuNdAx3+F81Ifdo2CQ3E4EiGsy6
         dubSpQMRRjkMkgna8krpEBDpA1w7xlmXllkCy84bHD1ON9MLwgpetjIhgin2NQ1BzZF8
         yUmg==
X-Gm-Message-State: AOJu0YxVC6okRuToWnv23EgCjjtga3Zzn6kT5f3Ouh4j4cbcwFXRF9NE
	jOzd1QmQBEyLXrb9gBtzLbqvZA==
X-Google-Smtp-Source: AGHT+IHOV7TgUKuKP3wlsPK+xePcD91eowpwyzmYcOf3UNIyI6vjz4PdeVrDSdYUNwTDPfkjwi7i9A==
X-Received: by 2002:ac2:5dd0:0:b0:506:926c:9b0d with SMTP id x16-20020ac25dd0000000b00506926c9b0dmr7597643lfq.20.1696956100067;
        Tue, 10 Oct 2023 09:41:40 -0700 (PDT)
Received: from [172.30.204.182] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y10-20020ac2420a000000b004fe2a7a2ee2sm1866668lfh.160.2023.10.10.09.41.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 09:41:39 -0700 (PDT)
Message-ID: <855e5504-0571-4f8c-9644-21ceb40e1132@linaro.org>
Date: Tue, 10 Oct 2023 18:41:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 3/4] ufs: ufs-qcom: Add per-cpu PM QoS vote support for
 ufs
Content-Language: en-US
To: Maramaina Naresh <quic_mnaresh@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, "James E.J. Bottomley"
 <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org,
 linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_cang@quicinc.com, quic_nguyenb@quicinc.com
References: <1696952947-18062-1-git-send-email-quic_mnaresh@quicinc.com>
 <1696952947-18062-4-git-send-email-quic_mnaresh@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1696952947-18062-4-git-send-email-quic_mnaresh@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/10/23 17:49, Maramaina Naresh wrote:
> PM QoS per-cpu framework provides performance requirements for each cpu.
> 
> The per-cpu PM QoS framework will provide the corresponding interface to
> collect the resume_latency request of the specified device and provide
> it to the runtime PM. When suspending the device, it will consider this
> requirement and decide whether to suspend the device.
> 
> Voting will follow below sequence.
> 1. Vote for maximum latency S32_MAX in driver init.
> 2. Schedule a vote of PERF when a transfer request is received.
> 3. Update the vote to S32_MAX during clock gating.
> 
> Signed-off-by: Asutosh Das <quic_asutoshd@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
> Signed-off-by: Maramaina Naresh <quic_mnaresh@quicinc.com>
> ---
Is this the same patch as 2/4?

Konrad

