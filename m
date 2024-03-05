Return-Path: <devicetree+bounces-48586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C52F87294F
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 22:20:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 270591C21D14
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 21:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5159D12BE83;
	Tue,  5 Mar 2024 21:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DFa18ctv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E7E86AC0
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 21:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709673612; cv=none; b=QKzZuLdPJzPNMaWizAM3LMY9slvOLnfB4BFePso9Bvs/Jmr2x/+9pe5LGW7U3jcIsQJ//dQtjp0DOgL5RvfsnhEUbXrTwY5JI7LpRTrZ5w991r9XELEAi2uSqXehr9ODPJSuaVWm7VxIwJ0xZxjsU0qqjk1FP+GKxQOpcpQwggo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709673612; c=relaxed/simple;
	bh=8gyoVpbXbTPdcB4Yvp2J0IriA2HKLVhVeYhJ5krneF0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b3PUoVIphN8F3xaW409oD/+yX+pTe2prkJ7bEPh/qEDpVePcCqrpKo+SDDfQGjTDI5c/QQ+mUVKG4/MRQGnt1bDpxivFBkgWrGHowAfb9rdwo5lbL1NkQ6CkwTgJGEjts//3cwJQNNSL2g2uExW1kNQZojB9Lh5QysUU4p3iQQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DFa18ctv; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d3b93e992aso36222161fa.1
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 13:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709673609; x=1710278409; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LwYGBpfsWhFnk7FTfU/O7q2nILX0f4TS9O7UX7LpAm0=;
        b=DFa18ctv1m9GPLaJas6zoL7o1fQBlisvece8qMtPLTToo8gAoiJYgFmXS7nBwBC2/a
         /2P1KbplpYy2MbsGmjVuq2j/6uKWkvl81rsdtDQ2aowfEIB1hJF/nNujfTemSw9Ktrww
         2sNKooVzcm7a4T9hwWdDfANTCXWgB0i+9aahg6jatmk++HIpWRXDufVFo2Nv4cAj3Hp5
         Ec81siScNzfSjQCl3hJehumnUXMLnHJxgZCBC7+gRoLr4TPyTM+NWgkAX7oC5Uy//Rsl
         nrFyLkzypyTTHo/UwMYP9Z0MBI57ioKBu7RzvAYBpujyLCNurzfXVdOEe0YXBvoWo9ai
         VwRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709673609; x=1710278409;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LwYGBpfsWhFnk7FTfU/O7q2nILX0f4TS9O7UX7LpAm0=;
        b=qLuX8/F4026fW0e5dYIA9txwM1VmZbtTpOzYssF6vcoaIgMlbvQybM4Lx6hz5pOrrE
         UpmnpXt34gb34O+m1zOExeuwbA+Ch5kE/ZUUr3qZZNX8pLi2j6zXbwrZdOTBCdQivBtL
         Gqh5wzX/edBc5n7zFjQZLrlKVfTopfqOCTSnkT0G0espPcwLhpbQm+9LC/XjMnUC4Q2/
         1yFf0rEHwdQIEtgWsU+eUBHb1IxLLvCqBgqGeOd1exafRN+saAut7kk05pFW1jCcJiXQ
         pYxwasotpbni/PMGGB+/fPMgTH72qxZMtROZh4m42ZlJkQJ8EksmuxGH0Hk7YQLHa5sb
         27Rw==
X-Forwarded-Encrypted: i=1; AJvYcCUPmigZAG9OZyZd+2hO2bQwGsk2JT/I065L3DM6f7gqpjQjY7mSuGC7vt0SgzDXESZ0Sl+uaXPNhCmvDMU4Ankjk028bRP1mVbyxg==
X-Gm-Message-State: AOJu0Yws2phy3AvHwjSeEkt3Vy9Pma8FWeHgJVmHDLDo3ySKS9FLWNgd
	Ft3Bl/enmM525DATlnHMvX41U7inhKK3c/BguDVB35Swk0DbeFxUqNRpfTOCXdc=
X-Google-Smtp-Source: AGHT+IFNuMn9M0fcaC5DRHySN6tsmSkvb8Y59TC3YuAlY8dDtTmk3pyanIdduKd6yADTt9zBylOXpQ==
X-Received: by 2002:a05:6512:34d3:b0:513:46be:2465 with SMTP id w19-20020a05651234d300b0051346be2465mr1962740lfr.55.1709673608989;
        Tue, 05 Mar 2024 13:20:08 -0800 (PST)
Received: from [172.30.204.154] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f14-20020a0565123b0e00b0051326e76ac5sm2245658lfv.306.2024.03.05.13.20.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 13:20:08 -0800 (PST)
Message-ID: <f09dc3a4-ed5e-40b7-ae71-7c6cfd79da1b@linaro.org>
Date: Tue, 5 Mar 2024 22:20:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] arm64: dts: qcom: qcm6490-idp: enable PMIC Volume and
 Power buttons
Content-Language: en-US
To: quic_huliu@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240304-gpio-keys-v4-1-03604d778c86@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240304-gpio-keys-v4-1-03604d778c86@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/4/24 08:09, Hui Liu via B4 Relay wrote:
> From: Hui Liu <quic_huliu@quicinc.com>
> 
> The Volume Down & Power buttons are controlled by the PMIC via
> the PON hardware, and the Volume Up is connected to a PMIC gpio.
> 
> Enable the necessary hardware and setup the GPIO state for the
> Volume Up gpio key.
> 
> Signed-off-by: Hui Liu <quic_huliu@quicinc.com>
> ---

[...]


> +&pmk8350_pon {
> +	status = "okay";
> +};

This device is already enabled

Konrad

