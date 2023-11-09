Return-Path: <devicetree+bounces-14822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AC67E6BD0
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 14:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FE8B1C20BCB
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 13:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C2D81E51A;
	Thu,  9 Nov 2023 13:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pR9Ny5mG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B071DFF1
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:58:05 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71F35272C
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 05:58:04 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40907b82ab9so12276785e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 05:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699538283; x=1700143083; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KbosBewO6sn8YQ6qsTc+eHOzmL2IQ1+JtifimKJRbp8=;
        b=pR9Ny5mGS+dZdVHmvxPKbMMkTCBMbDJsnQJxpJ9ZUVTJQEo7ftzPIS8mHwZnsWfmYP
         6Fip9YSnYikDZNDRuaz7ZmmvYPzI8Ce+/dZPXTye+2JSPdWNlF4QLsSKNyq8ee+vEHJ1
         Q+ZUy8DEWxWyeggZuA8FhjpRGkOaRep12+Eib1ZZKvA3P69C14Voe+OL6fV5jItejECO
         aQhW4H+FdAntxMpT7l/s+d6AwYfLhRxp23dcPODgjMCIQtPLp4YUAdow0eo/P8FxLvi4
         h0QU57EPjDrYF0aXf0NqObEc1s+Yi/0MaOgShjBTTVzsxnrlcZ5xXqnSAEGS+kCqcxVH
         Gr0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699538283; x=1700143083;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KbosBewO6sn8YQ6qsTc+eHOzmL2IQ1+JtifimKJRbp8=;
        b=b5taIhcVuFYQ1mLIdvldJF5OOTbY3Kdwp48hbE/bcMhS0UOkNkN21YkAauDZ64jL3G
         QP2Nf9ir+CThc/Yv2r4VbjGWey2uhg9V3lBI9QBoxNv2vDZiM2WJyGS7STVvXfAjCGZf
         7vSNghZ2ZUdfMh4j0TRVWZvfGAlm5m4L8AmQ/0wXtM9BXaqr9SQyzsG/7ODDHeH66LRk
         7QSC5/YdudJU8uzIo3+bi+I3BUcGOtqabjdneBlmdclZyki7ePBn0dsUYr8B/UcukZej
         6fs0/+mP7/nTyjsJQNlMir58lFSvEGNqRkh/9fZzton7jE1PCbnZziqKYauMpbmfo5Le
         djPg==
X-Gm-Message-State: AOJu0Yzp79WEsGH9HE7s4XV9GyjG14BLWpQY8l9MGNmrVWD8jtJp1+YO
	REJOAogfxCfmi41A/dEIZ4TfoQ==
X-Google-Smtp-Source: AGHT+IF1UNg9lqHDFjFhxuqcIqTN1ABswd71CmIMUjOHWfOJBv+DeHRKi2Y/T8fea7smmbNiLIU8Dg==
X-Received: by 2002:a05:600c:5008:b0:405:358c:ba74 with SMTP id n8-20020a05600c500800b00405358cba74mr10749655wmr.0.1699538282673;
        Thu, 09 Nov 2023 05:58:02 -0800 (PST)
Received: from [10.66.66.2] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id m6-20020a05600c3b0600b004077219aed5sm2225410wms.6.2023.11.09.05.57.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 05:58:02 -0800 (PST)
Message-ID: <fcf81479-6137-4290-8c71-5a72d7ff5398@linaro.org>
Date: Thu, 9 Nov 2023 14:57:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] phy: qcom-qmp-pcie: Add support to keep refclk
 always on
Content-Language: en-US
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com,
 quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
 quic_vpernami@quicinc.com, quic_parass@quicinc.com
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
 <8a12ccba-908d-405a-8fcb-411d50a66ebe@linaro.org>
 <65d2bba9-b04c-f91b-100a-ffb07e9b615a@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <65d2bba9-b04c-f91b-100a-ffb07e9b615a@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/9/23 10:32, Krishna Chaitanya Chundru wrote:
> 
> On 11/8/2023 3:27 AM, Konrad Dybcio wrote:
>>
>>
>> On 11/7/23 13:26, Krishna chaitanya chundru wrote:
>>> This series adds support to provide refclk to endpoint even in low
>>> power states.
>>>
>>> Due to some platform specific issues with CLKREQ signal, it is not being
>>> propagated to the host and as host doesn't know the clkreq signal host is
>>> not sending refclk. Due to this endpoint is seeing linkdown and going
>>> to bad state.
>>> To avoid those ref clk should be provided always to the endpoint. The
>>> issue is coming only when ep intiates the L1.1 or L1.2 exit and clkreq
>>> is not being propagated properly to the host.
>> I'm gonna sound like a broken record, but:
>>
>> How much power does this consume? Would it matter if we kept this
>> clock always-on for all platforms with this version of the phy?
>>
>> Konrad
> 
> We see about 22mw extra power consumption with refclk always on.
> 
> We can't keep this property always on as there is impact on power consumption.
Ooeheh, that's not far away from a low-clocked efficiency CPU core..

Thanks for checking!

Konrad

