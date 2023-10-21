Return-Path: <devicetree+bounces-10506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5977D7D19FB
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 02:39:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AD9D1C21005
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 00:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8117B37B;
	Sat, 21 Oct 2023 00:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="SCeLXvxH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E140F379
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 00:39:02 +0000 (UTC)
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 156DCD72
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 17:38:57 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1e0ee4e777bso965737fac.3
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 17:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697848736; x=1698453536; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sSq0LiQ9DQKIgfiPKxfox3yrdlP/6a1Wky/bubnJNtk=;
        b=SCeLXvxHn0BCXH+fUhPrq1qZ+Sc4igPf4/jnNbvV8IU1zEke/EPqd4ZwVgewUx5nSB
         tLVNfRueIvrBeNGdYrvk1QxOVaXv5NAUqBo2G4bvHcwCLUdE3AikZ+iPH1OaQU5wnBZT
         t5dVDcU52XbZYLhoAx7Ku8JsjjarXjhtso8sMRwIcYwhF33fgycSXPLT1OqnohvBg4YZ
         zYVdJRMhRmrukmmBSt/FWTtnyknSEHio2wJggoXsfXXyOQpmvwMQEwXBHvhTtE+OhLzT
         DYeOLHBOfUNOgkwFt0RiblcRnTodRXednti72xrFyJbaRW0YtEumlQi1qml+eaMqOsG3
         MzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697848736; x=1698453536;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sSq0LiQ9DQKIgfiPKxfox3yrdlP/6a1Wky/bubnJNtk=;
        b=ufYw41d3zhMCs5PouqVoq3UupZ3GJDYPIDmdm4oo4Zl+leoLMmY628179YD/mQwj4J
         bYl9RytJYV8BUe+c6fu8kuRne7F4M7McB8Va7vU2zSDDhmqWUGtHkVMO1aWxuoSIGyKx
         /1TSztD5E9iVg2PNaSi5peZowgs4ZU9enQMo5GGkYHTlpmK0e6mPmrKcz/4i/coNPRhQ
         DYemPIpyi1phkFvUuc0JGG67KtdMTM5zjcQWKcDccjHJmpdf924InV9Rl94ijnNISZzh
         VOG4zZq9wKpU4uv3caB48u3iNw0PN/TUlLUFCFSc/Q7GpT5JuiwBzRxbUb1jMWgN+6lS
         biEg==
X-Gm-Message-State: AOJu0YyyES77PUxXTCVsTsFRHyI4gZicT+HskRLA2pamNZ+Fbq40ME7K
	wwXJunUnUggBopXEeDGSPksV7w==
X-Google-Smtp-Source: AGHT+IGDsFGs9Jk018Kwmxob0O23QAjKaUSRVq/R/vkP5Pxc/Mm7q+JwePrfACOZ5D53ZrLy4UpBjg==
X-Received: by 2002:a05:6870:4949:b0:1ea:8b10:247e with SMTP id fl9-20020a056870494900b001ea8b10247emr4638798oab.27.1697848736400;
        Fri, 20 Oct 2023 17:38:56 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:9012:790b:50f:4eda? (2403-580d-82f4-0-9012-790b-50f-4eda.ip6.aussiebb.net. [2403:580d:82f4:0:9012:790b:50f:4eda])
        by smtp.gmail.com with ESMTPSA id k194-20020a6284cb000000b006926e3dc2besm2226644pfd.108.2023.10.20.17.38.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Oct 2023 17:38:56 -0700 (PDT)
Message-ID: <35d74411-9b67-4c41-ae68-6042519a17b3@tweaklogic.com>
Date: Sat, 21 Oct 2023 11:08:50 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: iio: light: Squash APDS9300 and APDS9960
 schemas
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, matt@ranostay.org
References: <20231019080437.94849-1-subhajit.ghosh@tweaklogic.com>
 <472aa31d-7d6c-41df-86e6-d17f05998256@linaro.org>
 <6b721019-c98e-d926-04a9-e71f9ea20762@tweaklogic.com>
 <eedc5ebf-f8e5-4cbf-b394-c260d2fc53c8@linaro.org>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <eedc5ebf-f8e5-4cbf-b394-c260d2fc53c8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

>> of apds9300 handles both situations whether interrupt bindings are provided or not, whereas,
>> apds9960 requires an interrupt binding for probe() to be successful. I thought it would
>> be appropriate to add that in the schema.
> 
> Not explained in commit msg.
> 
> Best regards,
> Krzysztof
> 
Yes, I will add all these point in my next commit message in apds9306 patch series rather than
a separate patch as suggested by Conor.

Regards,
Subhajit Ghosh

