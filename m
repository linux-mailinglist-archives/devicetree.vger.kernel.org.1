Return-Path: <devicetree+bounces-9315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 494617CCA0A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:42:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79F491C2082A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 17:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E6D79CA52;
	Tue, 17 Oct 2023 17:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="NPYRdxaw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F2E44469
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 17:42:42 +0000 (UTC)
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9083DD3
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:42:39 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3af5b26d599so4347003b6e.2
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1697564559; x=1698169359; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rPz/XE7kyZI3rqX/gW9OA3u4MOOTZR6TB5rRl4itwhs=;
        b=NPYRdxawSM8Pj98hHtZ0hv7DfMstgEY1cm+smjxiP93UYH8oiCcGEJ7pl6Ulycltxa
         L7crYaT91lUTFugINyOOEtR21E5Z/r6zD1Zyznr06CUZOX28REPXq1xU5lGCGfamjGWZ
         jI8RLKZXJYg8BTdrunZBWCMdpmG1PVARdTfZHQ+T89rMSMzTqCOgewIs2aJN1WiiOpjf
         Kk5rO7vDYN7tQRVZSnC+ugNRrU7gdq8LO1yr1SbvblyOlKlma33S82PDJt1FeG7CXdzW
         NKu5JYMMK6Q8H88VJBnLHTQCUN2CnvOdCSWoiLGT6Z89cAK3JASNODqfxYsE3luBA+ri
         rbEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697564559; x=1698169359;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rPz/XE7kyZI3rqX/gW9OA3u4MOOTZR6TB5rRl4itwhs=;
        b=WfV7MR6v7uS/bOQ93Am5OXZXyesinz3Am+W7vqFdleVuzk8DGIHAqety3W/8JydYzl
         9l9e7hsCbWnXq2w0WKRen399ztzw8VkINr9sHQhhI4hzcZ9I2HjTq2DUfvCUwAwOH48w
         eWmOBNbQr0mvaVDMuc2gETZvXzC6pWevKMUNVEa8wjLiPXmf49rPehy3+txAXQYqJ8Nn
         c2xEFUapIXq7n45pFR/NzAC7KxOWRk9DDOFVmBQ8R6DLQa5gI7QjYz2Wz7KIWLsd99zH
         ARR8sq41HafNx1tdZcpP/af2rsjaL0MKyvGufbNBRmWkK4J5TrOM1+GXbXGo8jRH9qMX
         tcUw==
X-Gm-Message-State: AOJu0YwflJHcTR1QsjGzlroTCw8vrhluZwyJZwxJ2O8FMuVyfc5Ow+mb
	VktOdFy0w18wX3BnIbVPK8ih1g==
X-Google-Smtp-Source: AGHT+IFEfoBhjOQCm3H2dwONN2OZeU0Zpiqlzxa0ALnC7U/VrgPgviuWtLFU33wwArf5EqgRuHAO2w==
X-Received: by 2002:a05:6808:170b:b0:3a7:37ae:4a47 with SMTP id bc11-20020a056808170b00b003a737ae4a47mr3577036oib.12.1697564558899;
        Tue, 17 Oct 2023 10:42:38 -0700 (PDT)
Received: from ?IPV6:2600:1700:2000:b002:95cc:ccc5:95bc:7d2c? ([2600:1700:2000:b002:95cc:ccc5:95bc:7d2c])
        by smtp.gmail.com with ESMTPSA id g5-20020ac85805000000b00419cb97418bsm785313qtg.15.2023.10.17.10.42.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 10:42:38 -0700 (PDT)
Message-ID: <8905630a-30dc-4b22-9d6c-fd4af97728bf@sifive.com>
Date: Tue, 17 Oct 2023 12:42:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: dma: sf-pdma: add new compatible name
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>
Cc: shravan chippa <shravan.chippa@microchip.com>, green.wan@sifive.com,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com, conor+dt@kernel.org, dmaengine@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, nagasuresh.relli@microchip.com,
 praveen.kumar@microchip.com, Conor Dooley <conor.dooley@microchip.com>
References: <20231003042215.142678-1-shravan.chippa@microchip.com>
 <20231003042215.142678-3-shravan.chippa@microchip.com>
 <20231004133021.GB2743005-robh@kernel.org>
 <20231005-wanted-plausible-71dae05ccc7b@spud>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20231005-wanted-plausible-71dae05ccc7b@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Conor,

On 2023-10-05 5:54 AM, Conor Dooley wrote:
> On Wed, Oct 04, 2023 at 08:30:21AM -0500, Rob Herring wrote:
>> Any fallback is only useful if an OS only understanding the fallback 
>> will work with the h/w. Does this h/w work without the driver changes?
> 
> Yes. 
> I've been hoping that someone from SiFive would come along, and in
> response to this patchset, tell us _why_ the driver does not make use of
> out-of-order transfers to begin with.

I have raised this question internally. So far I have not seen anything to
suggest we need strictly-ordered transfers either, but I still need to confirm this.

Regards,
Samuel


