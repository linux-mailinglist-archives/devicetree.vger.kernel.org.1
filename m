Return-Path: <devicetree+bounces-69834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9731D8D1B16
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:24:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E843DB27895
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 12:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5179516DEB5;
	Tue, 28 May 2024 12:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xaOUCrHV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69D716D9D9
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 12:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716899026; cv=none; b=OMTNDGdbPmttHj2EIuX28uSUaUxDBMhSuEwXoAv9DZwczx8fyTUoP4uUWFAXvlylk72+7eoYoJoiyfjk3nJMlvZWsafr8gdqaWD2bB4gWJSnzlwUhBj3KIqSk9WFwMC8g0gZJyGO8P7KBTcXgwvTNfY/wwRuUUz93C95Vubgohg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716899026; c=relaxed/simple;
	bh=Oo1VVCN2iEcCIq5omFSHUtr3GmVK7LdxTr9vvNWVUh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iVpkaPmWUoek2LbIyW5YEdcmg5wefMTkTshgVItTclCTY2+8mTCxuZe/OpcOgs9XfGcnp6t39DaObLrxPBNfuZQNsJCgehzAjt4uR301Swb3XQXnd0MHEwov+dmG9hhG9BLXFpRvnCOMp6HtplhBzk/yLZv5/xwZ9LvVSgscQH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xaOUCrHV; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-523b20e2615so874817e87.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 05:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716899023; x=1717503823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UZ442P+0Or7Cam9asGbhPN4ke6dVv33PDSrllNSNeqk=;
        b=xaOUCrHVuNT+IkhKiLP9eNvLiAnhcbj3QNo8dN1YKMnTt/NJJ4J8U5e7tDeNkkA2uP
         kUFEAMSJcJCGFOAayxzvpK9XjZe5cCsSOZwH/2CACQQbQ5qG5JT/aq8KlcekpbxmhCv4
         E3FDK0Nkrz231KnJZ6OnaPcmOU7WaC4O+ICoWdvhm1qR9FGxXwwcxX41H1d65upnUXwJ
         dyFeOHzR+6WBsPtnlAEz/CtNUFYm46/b4dQ5ZtyC8I2slqtQZRGS3buzxkc28orO+dg9
         ZjAzirg1EVNTUddq9d0lPRWb3lmQfU8IKF6+LMoI28vrjGwP5ODwfcV8rZ9vLP3yp7up
         bagQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716899023; x=1717503823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UZ442P+0Or7Cam9asGbhPN4ke6dVv33PDSrllNSNeqk=;
        b=XNsUX7X5tl8YEpQkfpgoPPcCkWosbzjgHJF95CUGmKFZ17qt+e0vLQQ2hGq3vhu3WT
         jkbcOislYhx6tc6HrZJi8ke3+7u7p4xo5u1TqBtX+co4a0oT7+vcJibqsWTwArun37Mc
         fj5daBFhd2IftK7xgI2Vr4SvB93aUd2hCT+7ScUgSjwq+b2G5UW9h8DaGvjQbV17KCEH
         nnGUVT2wRka0i+NuFH6XHznTBxt4wWmnjaeQd7y2GTR+FxwA/g+vTFfIBdWjNPh8+dRc
         TGglM7F3V/JpgJehODAlh460EPl6dqctDV+t5v/m0h6I5GyHVIgJy+tcSrlfNH/Ss83/
         SxIw==
X-Forwarded-Encrypted: i=1; AJvYcCVP6X24UrDdC/xBNXalO3W6KpeZX5sjI9hVoAXXVHuyQ+Jh2fRFqfyciazNpdJ/VKLsQmN4sfS3RcXuhSUmfPVdqcEjkwa/yJiI/Q==
X-Gm-Message-State: AOJu0YysYmNoApNu7XkXmlq0XpPIPp2i0KzreNWAyElBqmFoeowmaOGG
	wLi03QC6uPywbCIrN2FwTxQyKzrdNgEqnVTL/9EhMkXyxmLq59+xPEnRu+f+VqTMt8+wVUXVS7u
	d
X-Google-Smtp-Source: AGHT+IEMiL8/rxeov6f0rfbAIQ1+IJo4FyBFPKOFDMPbev0fJ32U+UVbC+sisGredaGC0FdKXRDYCA==
X-Received: by 2002:a05:6512:3d26:b0:529:b609:fa0c with SMTP id 2adb3069b0e04-529b609fa64mr2671414e87.67.1716899020625;
        Tue, 28 May 2024 05:23:40 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296ee4a645sm947955e87.68.2024.05.28.05.23.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 05:23:40 -0700 (PDT)
Message-ID: <699a2b74-a06b-4f44-9756-b7d5aead88af@linaro.org>
Date: Tue, 28 May 2024 14:23:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: x1e80100: Add ports nodes to USB1
 SS[0-2] PHYs and controllers
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
 <20240527-x1e80100-dts-pmic-glink-v1-1-7ea5c8eb4d2b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240527-x1e80100-dts-pmic-glink-v1-1-7ea5c8eb4d2b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/27/24 10:07, Abel Vesa wrote:
> All PHYs, being QMP combo type, implement both USB and DP. Add the port
> nodes for high-speed, super-speed and DP to all 3 PHYs belonging to
> USB1. Also add the counterpart nodes for the DWC3 controllers.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

You can substitute this with

https://lore.kernel.org/linux-arm-msm/20240512-typec-fix-sm8250-v4-8-ad153c747a97@linaro.org/

Konrad

