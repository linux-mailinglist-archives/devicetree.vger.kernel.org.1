Return-Path: <devicetree+bounces-9297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4347CC8A8
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:22:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FDA4281B1C
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 16:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45D5547346;
	Tue, 17 Oct 2023 16:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lT6jPE50"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81CFF44498
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 16:22:13 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E68CB0
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:22:12 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5079eed8bfbso5331722e87.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 09:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697559730; x=1698164530; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LhFXYnO9Sn+RH2C/xMmWiKTwoHM9JKuhK3zd261Cr0s=;
        b=lT6jPE50MGNKevW1X1gWUvhfUODj4hpFpz71XE6+EhQjcAY6mVszKMQsWOqdqN456L
         u/trIBom5FFuOP6aV931LjXIJ4ErxRfnN0QXFbC9LOISi3BjrmLNQ9jT7RZpLuIaNZGv
         bIM9QPYA8vtUCb4QcBQ8Vn/qyCGytaghbhNw8yy0bc2rJljzMmhXwBqx8LURLw9mwByV
         ls8RuC9LuMMPC/ZLd7ydE/G0e9YofuDOD4q+FxsjChkXQB7C2TKPf5nxkIMV8bsQk4pH
         YRJefyNzqSai6w1qsK6iQKgMQ5QDTVByryuXoE0Fnbn6zGpeZNfRYXBVx4C7rBZa3iKk
         oCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697559730; x=1698164530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LhFXYnO9Sn+RH2C/xMmWiKTwoHM9JKuhK3zd261Cr0s=;
        b=ApGuZOsqVHmU7a641tYNMacY1FPRk7QWpP0gLGOfjiOixzzk/I3XkRsQ7VTWBHK5U2
         UYBRcFAbsApt4Evk0XkZfrY/4bEC8XLq4X5MBqnvf0kKlENMxGflPiDzCqK4UE0iksXg
         uDWCunq50LzZsXCpcSUyA4Zpl87BZ4RxibwdTjLjtj+6OPR5ZPCLzgPcPl9boDNuzy0H
         9kAzRQPetUgSElghNRxdnUvsNIdyW0dOL/WuuQzt4OOIf/2XpFZ8SVe0DImuFuXxI44w
         EzLIK1ef4xAURrojWv3P3SZZlunK3kW3793nCutL3yJfgz9UkfYf0Hnk7ydwKien/tl6
         Dttw==
X-Gm-Message-State: AOJu0Yx5PrLbGtrqQo0fPzqoJtMB8m/fLAdb6yAP+K6v3u8w0tsDF1Zf
	folVpSsGz+falUYEJ3gyzMDiCzC8aYMKzinxnqA=
X-Google-Smtp-Source: AGHT+IGe4/EPokGcR14WOKTrawH9tGwUZLQcJXRew6V+8JtVuXgdh2CH8CgJREzH8K+96cAmlsZdIg==
X-Received: by 2002:a2e:99da:0:b0:2c5:19ab:726e with SMTP id l26-20020a2e99da000000b002c519ab726emr2386571ljj.47.1697559730239;
        Tue, 17 Oct 2023 09:22:10 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id 3-20020a05600c234300b0040813e14b49sm1684492wmq.30.2023.10.17.09.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Oct 2023 09:22:09 -0700 (PDT)
Message-ID: <f4a5cd2e-112d-478c-b56b-68bc55ecbdf7@linaro.org>
Date: Tue, 17 Oct 2023 18:22:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: Use the correct DP PHY
 compatible
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230929-topic-x13s_edpphy-v1-1-ce59f9eb4226@linaro.org>
 <CAA8EJprXCzVyaU49qgVcVfF0-FJ3QqAfTMZj5CEZm187hoi4=g@mail.gmail.com>
 <ZSz7---IW_7Oj2Zr@hovoldconsulting.com>
 <CAA8EJpr=HQOs8Ho_s_34y0-krCHwq3MThMkUzhOkPVdOSMQ62A@mail.gmail.com>
 <20231017032810.GP3553829@hu-bjorande-lv.qualcomm.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231017032810.GP3553829@hu-bjorande-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/17/23 05:28, Bjorn Andersson wrote:
> On Mon, Oct 16, 2023 at 12:10:18PM +0300, Dmitry Baryshkov wrote:
>> On Mon, 16 Oct 2023 at 12:01, Johan Hovold <johan@kernel.org> wrote:
>>>
>>> On Mon, Oct 16, 2023 at 11:51:33AM +0300, Dmitry Baryshkov wrote:
>>>> On Fri, 29 Sept 2023 at 19:03, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>>>>
>>>>> The DP PHY needs different settings when an eDP display is used.
>>>>> Make sure these apply on the X13s.
>>>>
>>>> Could you please clarify, is it the same PHY type, just being
>>>> repurposed for eDP or is it a different PHY type?
>>>
>>> Same PHY, just different settings AFAIK.
>>>
>>>> If the former is the case (and the same PHY can be used for both DP
>>>> and eDP), it should carry the same compatible string and use software
>>>> mechanisms (e.g. phy_set_mode_ext()) to be programmed for the correct
>>>> operation mode.
>>>
>>> Possibly, but that's not how the current binding and implementation
>>> works:
>>>
>>>          6993c079cd58 ("dt-bindings: phy: qcom-edp: Add SC8280XP PHY compatibles")
>>>          2300d1cb24b3 ("phy: qcom: edp: Introduce support for DisplayPort")
>>>          3b7267dec445 ("phy: qcom: edp: Add SC8280XP eDP and DP PHYs")
>>>
>>>          https://lore.kernel.org/lkml/20220810040745.3582985-1-bjorn.andersson@linaro.org/
>>>
>>> And you'd still need to infer the mode from DT somehow.
>>
>> If it is the same hardware block, it seems incorrect to have two
>> different compat entries. For example, for PCIe RC vs PCIe EP we
>> specify the PHY mode from the host controller driver.
>> I'd say, we need to fix the bindings for both DP/eDP controller and
>> the PHY.  See the `phy-mode` DT property for example.
>>
> 
> It is one hardware block, supporting both eDP and DP, so I like your
> suggestion of having a single compatible instead and using some other
> means of defining the configuration. I just wasn't able to find a
> better way to do so back when I wrote the binding/driver...
Since this one is still unused, we can deprecate it (not sure if remove, 
but deprecate) and add phy-type instead. I was quite surprised to see 
that a new compatible was added as well :/

Konrad

