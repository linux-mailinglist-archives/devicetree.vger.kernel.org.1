Return-Path: <devicetree+bounces-10029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E711E7CF69D
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:22:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D26F281FB5
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A5719450;
	Thu, 19 Oct 2023 11:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MjJyjHIm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D2E19442
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:22:41 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 345BE13A
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:22:39 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50797cf5b69so8341151e87.2
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697714557; x=1698319357; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JF3I+wTLcoIXHkUlqgyCgajBza1SKWve0FuhZ7R74mQ=;
        b=MjJyjHIm/7nbx/A2nNmykGOUKOAM+oZp1ydNLgCHWpflNhu+wm/MgHbvzqkQ6l+pid
         Ml7bMm44FXr1S/1d9qUt0vZySzGXh8FmAJ/AQIWWkG0EEbbsXtRaMJcvxT+5d/MKAvwB
         jTliervsvC3JsO+LKSyNgVasagxdoEuyd4EIfjRnnO3BBF90B41TMoUdUtGd0em3YZZD
         M6CYdzCoiG7DogP7TB8VAcGn92GpY+t3kKyt4QLQ1tEnA7Jna7xYZASI3fEeyD7DDVJf
         UI0b3qrGWHKt1rKZKVWsplxO7NJzReVlCrQHNSC4Ppk9ov3WiG3SsKUkPYuKwjU9M6AS
         iwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697714557; x=1698319357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JF3I+wTLcoIXHkUlqgyCgajBza1SKWve0FuhZ7R74mQ=;
        b=M4HiZaeAZjIdUYyVqO8ajq+BQt5F9uus/lBt6R4Bsbfvypom+4aLf0xoTfFnPi4fR7
         8RfEnKIlXKejEredHpXSezxTzWhRIwdNJ0wMnk2wi6Vyh5rHLAaEBIku5u6Wm7h71GwN
         IOz3+Qv6Nv4kIgq4b9c1BWgH43G8s6NWBIJLisViRIgcY6N7bQa5bjqSQsuJNVCuBme0
         iZLOzejhVk6qC2q65Ig1kWPDWnun0/CpyySvUQTb2fUXwYZrsW8JQvztkTgfoyr7lM5n
         sa+HoH+6zTTXDbxHcXiCEFJdma4WS59P8aPtwYeA2Wd0xpV7VClctqKsdNyo0ExNVCbI
         3T5Q==
X-Gm-Message-State: AOJu0YySeA8xfTFscaL31t7YkjQHKa42In4M4gpz+/RynoziW3UaLUBF
	mHwI+ZmbtgwhMX8e05Lsse9tOQ==
X-Google-Smtp-Source: AGHT+IGHu1SthsKQxFVZ5zrdpJuE4LvCEAyyAzSdVgld40OewvREW+BFTjg7BmlIMUrvGbJa0COjEA==
X-Received: by 2002:a05:6512:2038:b0:507:9693:12aa with SMTP id s24-20020a056512203800b00507969312aamr1286536lfs.15.1697714557365;
        Thu, 19 Oct 2023 04:22:37 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id e7-20020a195007000000b0050574829e48sm1075529lfb.298.2023.10.19.04.22.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 04:22:36 -0700 (PDT)
Message-ID: <76b652c8-041c-49d6-9804-2781fe2ccfe3@linaro.org>
Date: Thu, 19 Oct 2023 13:22:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/11] clk: qcom: ipq8074: drop the CLK_SET_RATE_PARENT
 flag from PLL clocks
Content-Language: en-US
To: Stephen Boyd <sboyd@kernel.org>, Andy Gross <agross@kernel.org>,
 Anusha Rao <quic_anusha@quicinc.com>, Bjorn Andersson
 <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Devi Priya <quic_devipriy@quicinc.com>,
 Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring
 <robh+dt@kernel.org>, Sricharan Ramabadhran <quic_srichara@quicinc.com>,
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 stable@vger.kernel.org
References: <20230913-gpll_cleanup-v2-0-c8ceb1a37680@quicinc.com>
 <20230913-gpll_cleanup-v2-1-c8ceb1a37680@quicinc.com>
 <76f3bc23-8677-42bd-a3a5-43b17cbe552e@linaro.org>
 <c3dfeecf5cde513cf675b2f1a382f7a4.sboyd@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <c3dfeecf5cde513cf675b2f1a382f7a4.sboyd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 10/19/23 02:16, Stephen Boyd wrote:
> Quoting Konrad Dybcio (2023-09-15 05:19:56)
>> On 14.09.2023 08:59, Kathiravan Thirumoorthy wrote:
>>> GPLL, NSS crypto PLL clock rates are fixed and shouldn't be scaled based
>>> on the request from dependent clocks. Doing so will result in the
>>> unexpected behaviour. So drop the CLK_SET_RATE_PARENT flag from the PLL
>>> clocks.
>>>
>>> Cc: stable@vger.kernel.org
>>> Fixes: b8e7e519625f ("clk: qcom: ipq8074: add remaining PLL’s")
>>> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
>>> ---
>> Stephen, do you think there should be some sort of error
>> or at least warning thrown when SET_RATE_PARENT is used with
>> RO ops?
>>
> 
> Sure? How would that be implemented?
drivers/clk/clk.c : static void clk_change_rate()

if (!skip_set_rate && core->ops->set_rate)
	core->ops->set_rate(core->hw, core->new_rate, best_parent_rate);

->

if (!skip_set_rate) {
	if (core->ops->set_rate)
		core->ops->set_rate(core->hw, core->new_rate,
				    best_parent_rate);
	else
		pr_err("bad idea");
}

Konrad

