Return-Path: <devicetree+bounces-34970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7813883BE09
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30DD12932B6
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402351BF3C;
	Thu, 25 Jan 2024 09:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rc2JVawT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7041C6B2
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706176459; cv=none; b=h0SrP2BwlXB0qBcXUHR8xdKrtn7vdwLVOdu5BDJaZo7R6YO8zR5MT67htccNoH8naolzd2Ro2Ew+OOTVyDS1ShY+Fiar9PekqPH8C0/2IOkW8QA1LzZn1hKRff1vp81qfVrAN186PEbovMmloOVwgPxjflwtUjrjY27mz+5sqWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706176459; c=relaxed/simple;
	bh=4n2BIH5baRTWNGr2u58wyV0dSVRsSNuquzi/U614OY0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GsR/IrZAPV91QdBLZ0H7z8hOJy3egLxOY8hU7OcSUUJf7TYj4k0DO4+QKmkegn43zDo/tMOdkT/+WZUXCyXtG6Rz6vzUcKSgj0D1GFXvrckGHWEdBCxMpURrXDnbmjeUDja384aBjC9XPzcGv5ViFeJxDdqtGQhXCM26+oDXE1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rc2JVawT; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-50ea9e189ebso7549878e87.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706176455; x=1706781255; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H3SoCP2ORKvlOlHkqjB85PYtzogR+n3cygyx5wlE/+M=;
        b=Rc2JVawToGeh6WJdQWkp6DQBktj9Y7nWjJywyhjj+w7tVDTpjwEgTva+WM3doDM/PV
         qel77CpGlyS3XFQoUPUVFJXXOEGdA2KbzWjkqWHwygOLFtYQmxszvQW0RX1VWz+phMX1
         c9bpDG55RoY+YDQH7PPZZPbhB7aAPKzvRpLXLLpwXeSEIcUe74cjdMB0cJQFFVfAjQ20
         owfoVDR/nXr9R4sRC1QZzfe1Z8aUNmtRclR0z+4hO2ISH43oMv5Ht3BMD68tJkd6CinT
         9ZM/9Mprrj2QEx2tbP8c3q4oy+nOeRuZRi4T8zniI+UnhEK1OUCaFl+LqXUwtaevZMkm
         2tGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706176455; x=1706781255;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H3SoCP2ORKvlOlHkqjB85PYtzogR+n3cygyx5wlE/+M=;
        b=gnXlGTmVkq/FbEliT4QJyNX8lqmrbRRRPz7pNUsAN27u+sbZdM5s52NHGiy5Mrnhmi
         +IfEIqEN10fiyVG9NO5ZkAftdxp183eNKKAjlY4niMXF5nHY8rgf8Wc6XDzhDUsWxOcK
         gmMCJjdneLsbfKNB/d9QyVGxRP1o7IO8ObUGQa2lVZLFTpIBawCQkP5xdmlv9Ob3gKj8
         6yW3dHV4CC4kL/gSbWoYu1yAiohZs6R8slorAfax2bMTh14cK6JKqjlCvcVJ3spZcY4N
         K9LVM8spXx0IH3SHikJIiVjMhZv3arCMkduTAN5SqgA5GsIw17YFrlNxFy5hantxv9qd
         RFQQ==
X-Gm-Message-State: AOJu0Yz/rQAb91yUhAqUCskXFsOj6kjTcnNYHuwWy7mDmdRV16/tfb1V
	WP39iZJP1gEAsW4pVWZyNk+LPoaiF/gxHmQvid0UiHudXnLowpDET8h3GFxir/ELUI0wB8Y306u
	e
X-Google-Smtp-Source: AGHT+IF11B2YHtPOBw+G7L2ChkoHJ1jhtXp1gvS3ji2UUN0vax/VcYF1mMJw7iToJD0MsgTUjGinMg==
X-Received: by 2002:a19:ac02:0:b0:50f:1c2a:1bc5 with SMTP id g2-20020a19ac02000000b0050f1c2a1bc5mr364307lfc.17.1706176455422;
        Thu, 25 Jan 2024 01:54:15 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w12-20020ac2598c000000b0051007e2a2e7sm713457lfn.231.2024.01.25.01.54.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 01:54:15 -0800 (PST)
Message-ID: <1af3fa85-7607-47c3-a928-2f620b65e1bd@linaro.org>
Date: Thu, 25 Jan 2024 10:54:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sm8650-mtp: add PM8010
 regulators
Content-Language: en-US
To: David Collins <quic_collinsd@quicinc.com>, quic_fenglinw@quicinc.com,
 kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
References: <20240123-sm8650_pm8010_support-v2-0-52f517b20a1d@quicinc.com>
 <20240123-sm8650_pm8010_support-v2-1-52f517b20a1d@quicinc.com>
 <892058db-8013-879d-6c6f-3fbbf4ed3c57@quicinc.com>
 <30e890e8-42dd-4b36-a133-95bb34c109d8@linaro.org>
 <884eb509-a997-869a-762b-b4c24ff89c27@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <884eb509-a997-869a-762b-b4c24ff89c27@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 1/25/24 03:52, David Collins wrote:
> On 1/24/24 15:36, Konrad Dybcio wrote:
>> On 1/24/24 20:15, David Collins wrote:
>>> On 1/23/24 00:49, Fenglin Wu via B4 Relay wrote:
>>>> From: Fenglin Wu <quic_fenglinw@quicinc.com>
>>>>
>>>> Add PM8010 regulator device nodes for sm8650-mtp board.
>>>>
>>>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ...
>>>> +
>>>> +        vreg_l1m_1p1: ldo1 {
>>>> +            regulator-name = "vreg_l1m_1p1";
>>>> +            regulator-min-microvolt = <1104000>;
>>>> +            regulator-max-microvolt = <1104000>;
>>>> +            regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>>>
>>> Optional:
>>> PM8010 L1 and L2 physically support LPM vs HPM configuration.
>>> Therefore, these lines could be added here to allow such configuration
>>> by software at runtime:
>>>
>>> regulator-allow-set-load;
>>> regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
>>>                 RPMH_REGULATOR_MODE_HPM>;
>>
>> David,
>>
>> I was under the impression that *all* RPMh regulators support
>> modesetting. Would that be an incorrect assumption to make?
>>
>> Konrad
> 
> Hello Konrad,
> 
> That is generally true.  However, PM8010 LDOs 3-7 are a special case.
> These do not support LPM configuration.  The limitation is enforced in
> the driver by this change:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2544631faa7f3244c9bcb9b511ca4f1a4f5a3ba0

Oh, I never noticed that. Thanks a lot for confirming!

Konrad

