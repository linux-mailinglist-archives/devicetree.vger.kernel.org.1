Return-Path: <devicetree+bounces-34355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B9C8397B4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:30:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E06D8B220F9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCDFD81AD3;
	Tue, 23 Jan 2024 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MjBwkIwA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2F281AB6
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706034593; cv=none; b=WB+S40nrm09OkjAwR0xtnnfVb0Pp8UFMB3XwklXG/I+RtFVbQS/vw3I+aDEMgStzhIdd7SITiHcFJBhK5LtVJHQGu8lXaqM0rrKXwis6e28WQsW58ysJkexkM4v9BLw2QQuYZvyPXVxqnk1eUWQ/JyPi72rilPJdgXcwZY38cpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706034593; c=relaxed/simple;
	bh=fiekJ9gQkX3GHpy870ZYvVqe/CwFCpVFEzjy6fVDr+U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RbNqJ4Nw5RbOgXqVhFb/DMkAleLPmWwqnxQU5amsjzfU0bfdqSwT9lqoJHwiUvBBvN2tFAzhMIdKrOpum+o6SEXPAJCafDLhyFDjfZVzvWxgfBA7EXCiXLqtBOpJ5ZtRsJHD550S8B60vdUr4q7/LhBxG9p67KjoKXW59Zmpt78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MjBwkIwA; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50ed808db11so5089416e87.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706034589; x=1706639389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2xz+HhUHMvkBPyimWGJbs8g6trJwsAsyPOOXlCioBJk=;
        b=MjBwkIwARP875PhqJGH6BzZwB1soH3C33zTfXEjqEtaITZYNtnxpDZv/hTayKvtkCz
         /5lMIGRLi4hNf86+1d2ixZhBiNr7qAzXW8LYgMrHPQutXXA4f6lwApvDCyEpbhyEGZPV
         vVvwjpOWiHTXYG82iOkdTyeWPxgnk6SLfLnVQN/0eKEqh8CXr5CtkeeWtCmr79ylh+Dg
         YZZnFmT2vHuR2Zs6NPY/1EL5SOMfNdqbj+Y8n43iniPo3eZuwQA+sQl29Jz9VnpO/QCP
         7VVXOPU1rvKB6B6U1PosYesIJCSL6znlPRIkGaoCEMh0cS/cIf9HRTwpvYpDMhaRCoUA
         P0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706034589; x=1706639389;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2xz+HhUHMvkBPyimWGJbs8g6trJwsAsyPOOXlCioBJk=;
        b=tSbVgCVWLvJz6iFkx5U4H97II1Ddaewky24opMruuh2DzLAX401FWMdZ0K9aUj5fhE
         oh3rZII+MdVG+p41OKY8rHcliksn9Kw73TeuIgg0kBzr63lzKdLRF9wiGAKt7voo/Rsu
         TfFo6AUQsBER6oAsD9PlpC6HmSE3qV+TlyAGLHrbTuIxjFbcdphNFSRjRqdCTPAMjbkB
         gwoxHL3mnczFBdUdiR9imlCRFi3KD0PVAyiCYWmajsKS92pXC7S0mFOjjBUCDNjuQnW7
         +vL/pQPlfeFa/fxk2e0nt0yh37fF3a9y7p03ZxFhrUyJCLkxO0UUW5Y0r0zCp+I+Menn
         b2sQ==
X-Gm-Message-State: AOJu0YyPy4LvMNGktbnVGUaGcih41FJPHlDBcaPU/Ji2mLLEzL22QA36
	tIp/Ri4XjElSe2aB5qjk5uQBj2CHV9gYizbl97XmBgqi3AGVX8c+6xIAOYVX01I=
X-Google-Smtp-Source: AGHT+IGRd+jzki5BWEBqzfAgV9huF7zXL57P4d+Xg5M85UL8BBk47uG4aqDJftTDnRge4gDfP5SLTA==
X-Received: by 2002:a05:6512:3e18:b0:510:893:f8c3 with SMTP id i24-20020a0565123e1800b005100893f8c3mr981592lfv.20.1706034588942;
        Tue, 23 Jan 2024 10:29:48 -0800 (PST)
Received: from [172.30.205.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q20-20020a056512211400b0050bea32beeasm2398479lfr.216.2024.01.23.10.29.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 10:29:48 -0800 (PST)
Message-ID: <990cc7cf-1cc9-4af4-9d94-994e92b1c7f0@linaro.org>
Date: Tue, 23 Jan 2024 19:29:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [4/4] arm64: dts: qcom: sc7280: Add clocks for QOS configuration
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Odelu Kukatla <quic_okukatla@quicinc.com>
Cc: georgi.djakov@linaro.org, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240122143030.11904-1-quic_okukatla@quicinc.com>
 <20240122143030.11904-5-quic_okukatla@quicinc.com>
 <CAA8EJpoU=jOSERW70NBXkr5JARH+2TAL1KSb130DTcSu4EmX4w@mail.gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJpoU=jOSERW70NBXkr5JARH+2TAL1KSb130DTcSu4EmX4w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/22/24 18:43, Dmitry Baryshkov wrote:
> On Mon, 22 Jan 2024 at 16:39, Odelu Kukatla <quic_okukatla@quicinc.com> wrote:
>>
>> Add clock handles for required clocks to be enabled for
>> configuring QoS on sc7280.
>>
>> Change-Id: I58991300ff1d8d2865763d4e79ee81c03586249e
>> Signed-off-by: Odelu Kukatla <quic_okukatla@quicinc.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
>> index 83b5b76ba179..73acf1bd0f97 100644
>> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
>> @@ -2099,6 +2099,8 @@
>>                          reg = <0 0x016e0000 0 0x1c080>;
>>                          #interconnect-cells = <2>;
>>                          qcom,bcm-voters = <&apps_bcm_voter>;
>> +                       clocks = <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
>> +                               <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>;
>>                  };
>>
>>                  aggre2_noc: interconnect@1700000 {
>> @@ -2106,6 +2108,7 @@
>>                          compatible = "qcom,sc7280-aggre2-noc";
>>                          #interconnect-cells = <2>;
>>                          qcom,bcm-voters = <&apps_bcm_voter>;
>> +                       clocks = <&rpmhcc RPMH_IPA_CLK>;
> 
> Is there any reason to write QoS for the IPA before the IPA starts
> poking around? The same question applies to aggre1 NoC.

Yes, as the NIUs require a clock source which may or may not be
the peripheral's clock

Konrad

