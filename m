Return-Path: <devicetree+bounces-156466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 315C1A5BD6B
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 11:15:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6ABE18988EA
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 10:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1554A235354;
	Tue, 11 Mar 2025 10:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Be+vbEiM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBD22343CF
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741687949; cv=none; b=OxYll8cEsXz9Cn9sHCTlDyKyYh7shBMfy0FpBzI3UPykySGGQsW9HV592nmicfQGD98FsaZNDbo3E9OGAweBVzk1Xnbje1/PqfupUPIIvUesMjplSOr0DvBBYO8nWQ9GRVcyZ2QKgWrtde1p+XUqgYCbmqT+C/3xheaynoeGlgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741687949; c=relaxed/simple;
	bh=+3yq1s96UJR2X/8rxc0GrcD75DfM7d3VNeS5ZzC5agU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Me1KL1HxlmRxF+NmCzRlLHXo8msn577cwWloJe6pB+AdusPwNaM39do77/KWqpyK/wgOEYBABxcJvX3GBfLGDonxy3xMqBlT2Zn9CYLA6ZIVAKXToKlrF3JHKfGR2oP6F0TgNmFPFj3YEgq/imZx7DEmvVl1qlsbN4kbSdEA04A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Be+vbEiM; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5499af0cecdso434450e87.2
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 03:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741687945; x=1742292745; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M0Ue4Q4qIT2SkgukgvQkQoV58AEl4Qx/JQQFOU8HKzc=;
        b=Be+vbEiMYeyOEhWZc2tx9xaa0o21RFpqTNwCkJ4EE2iyCqmv4GqtReV+D1ZlTAStoF
         9k2ZsMhaYQmPDGF2lgY143CTeQZl3IX9QDgfCjKsnITf/2cRBfLx/r+DByyZrIJ2rG1k
         DkpKw+Ckmv3kLxPBWfHlkNAvHUpEVaGmzgIgk2N13OXZ3gjSGeeTnbYoA1evjrVfLTYD
         FgZ1q5WVEIggr03LoEhULaaWa8bOOjeQHun3Zv1ib7faD+ZPH+rwqDFqoNp+QNzI93Ew
         wPW6u3gTAi1D3OOJhg5pk3dm40NfM4Rbd6N1UFRUofeB37el5iyS7v8EfQ8OsxTacK7H
         Q9iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741687945; x=1742292745;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M0Ue4Q4qIT2SkgukgvQkQoV58AEl4Qx/JQQFOU8HKzc=;
        b=A8GljF+cGXREVMR/IPkOY+d5KTxY5Zmnh1hFVmuQCM0f97sIvZO5rUPBCR5NWjLAHN
         cEIiJg78zPBSMJ5d9rFEj1+hl262APguv4t2wpy7PWyLAbd+sCHZBmOubECbk4qhVTbW
         evco3IQSVN0g1osizRT9c9bKIxszkGBqYFqs/aAQspbdnlJ9oOOUZ5ah/qpV8ckbz8wV
         6wF2JEUTrVmdzr5swKJgQiGvWP7YVnKizTUJjb2TAUmzBYW+voalTCQxR64rmeaJFnwT
         cISdu7xXiS84eu7MXuqn1I6sUJp/4Tr7HdPCUbldTEWZwNM/WNw3YA5ClOu3mfJ1l9/L
         Rczw==
X-Forwarded-Encrypted: i=1; AJvYcCVhhDzDMnW9JC227BCrFYNSwaUF5iPvJ8io6v+X0nJVAUKEdPn8P6iHIqFLnCQ1SgqWHuYf5Vl4TyEy@vger.kernel.org
X-Gm-Message-State: AOJu0YypIB+9f6lIuGK/6CXhz+xJYgvNPGfHOROe+E3MJ6z/za6Wk1lT
	OqcwBpndsK3zuGlBWmZOaeFKGVZL87uIz9sPgxaMHGn9x4TnGUEKLtY7yufVQVQ=
X-Gm-Gg: ASbGncvzphMpT27JOur57C9DBHCXxLSZsxCwk6oyD1EVgmPSLLtxLFQdH2/hyW/2zv2
	Azc38ExxmO295gh+TgOrytl6D51+r4iW9TjlvSwR89uF2Kb/4QVwrOuijiAHgaQAFNuTeas94jU
	xkLIwxT6NlAxMOWrdDSxdQnsRhiC7kg00gbFgNYTW/wLNyPKaOfHSygQBG1cCSrk+n1K3coZEbc
	f63eAldcvSrfVuioZJ7fby+ZpktctVzvheLK4x1bXfEgXqjbPEKqNEcOtpKU9enfjcsciS3DZEz
	lGXE5hKU/KxSyhZlH2lUq3Yt6cEn0VposDU8Q5SPZFEZCBDxBDFODcuAm7Q9/3pcFBvfjZjqb19
	f3UEMF87DRepU6zcCt+gLqwI=
X-Google-Smtp-Source: AGHT+IGIs8Uu4dRag/V9E+dTalU6U6PS8Xj1gzq2Dg/DyTe7dnw6wtEZjbZZzgP2hxww523Rqg5BKg==
X-Received: by 2002:a05:6512:3b0c:b0:549:732d:e2d1 with SMTP id 2adb3069b0e04-549abaf1056mr371507e87.11.1741687944758;
        Tue, 11 Mar 2025 03:12:24 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498b0bd0b6sm1735773e87.109.2025.03.11.03.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 03:12:23 -0700 (PDT)
Message-ID: <46d4f090-3e31-414f-abfc-3d1018913c56@linaro.org>
Date: Tue, 11 Mar 2025 12:12:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/8] clk: qcom: Add support to attach multiple power
 domains in cc probe
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <CMTYKKilQJYeHUYYKvlqnwv4Q2P-58Ic1v1ndS9HQ8Yhq2xpHuNThibFDjXDEQ1PyNbx__f9BVBr0peoTUdvPg==@protonmail.internalid>
 <20250306-videocc-pll-multi-pd-voting-v2-0-0cd00612bc0e@quicinc.com>
 <5a45fd25-74ed-46e3-b0e3-5adf92b5e9f7@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <5a45fd25-74ed-46e3-b0e3-5adf92b5e9f7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/11/25 11:52, Bryan O'Donoghue wrote:
> On 06/03/2025 08:55, Jagadeesh Kona wrote:
>> In some of the recent chipsets, PLLs require more than one power domain
>> to be kept ON to configure the PLL. But the current code doesn't enable
>> all the required power domains while configuring the PLLs, this leads
>> to functional issues due to suboptimal settings of PLLs.
>>
>> To address this, add support for handling runtime power management,
>> configuring plls and enabling critical clocks from qcom_cc_really_probe.
>> The clock controller can specify PLLs, critical clocks, and runtime PM
>> requirements in the descriptor data. The code in qcom_cc_really_probe()
>> ensures all necessary power domains are enabled before configuring PLLs
>> or critical clocks.
>>
>> This series updates SM8450 & SM8550 videocc drivers to handle rpm,
>> configure PLLs and enable critical clocks from within qcom_cc_really_probe()
>> using above support, so video PLLs are configured properly.
>>
>> This series fixes the below warning reported in SM8550 venus testing due
>> to video_cc_pll0 not properly getting configured during videocc probe
>>
>> [   46.535132] Lucid PLL latch failed. Output may be unstable!
>>
>> The patch adding support to configure the PLLs from common code is
>> picked from below series and updated it.
>> https://lore.kernel.org/all/20250113-support-pll-reconfigure-v1-0-1fae6bc1062d@quicinc.com/
>>
>> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
>> ---
>> Changes in v2:
>>    - Added support to handle rpm, PLL configuration and enable critical
>>      clocks from qcom_cc_really_probe() in common code as per v1 commments
>>      from Bryan, Konrad and Dmitry
>>    - Added patches to configure PLLs from common code
>>    - Updated the SM8450, SM8550 videocc patches to use the newly
>>      added support to handle rpm, configure PLLs from common code
>>    - Split the DT change for each target separately as per
>>      Dmitry comments
>>    - Added R-By and A-By tags received on v1
>> - Link to v1: https://lore.kernel.org/r/20250218-videocc-pll-multi-pd-voting-v1-0-cfe6289ea29b@quicinc.com
>>
>> ---
>> Jagadeesh Kona (7):
>>         dt-bindings: clock: qcom,sm8450-videocc: Add MXC power domain
>>         clk: qcom: common: Manage rpm, configure PLLs & AON clks in really probe
>>         clk: qcom: videocc-sm8450: Move PLL & clk configuration to really probe
>>         clk: qcom: videocc-sm8550: Move PLL & clk configuration to really probe
>>         arm64: dts: qcom: Add MXC power domain to videocc node on SM8450
>>         arm64: dts: qcom: Add MXC power domain to videocc node on SM8550
>>         arm64: dts: qcom: Add MXC power domain to videocc node on SM8650
>>
> This list looks sparse.
> 
> - camcc is missing
> - x1e is missing
> - sm8650 and sm8750 and both also missing
> 

Since there are concerns about DT bindings ABI change of CAMCC given by
Krzysztof, likely CAMCC changes shall not be inserted into this series.

--
Best wishes,
Vladimir

