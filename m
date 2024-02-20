Return-Path: <devicetree+bounces-44079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F42985C8F1
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B26981F21BCD
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 21:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73894152DE3;
	Tue, 20 Feb 2024 21:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GUlQs/IX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8983F151CE5
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 21:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708464447; cv=none; b=hFuZUS8e/mR8vK6oPGqtWNu3dOJ5pT5/JAa0/pLU1QXPCdMsINxCxIABTa03H/PFpFIIP49Lg9M5VttCzxuaev8f7UVVRyKyufqHn6wbcFLE1WjEIl9I+u0EpVQil8cqKGX1dXqVOOIUNR4f2Ql/wx/7fzckmdZoxVSEatv1gkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708464447; c=relaxed/simple;
	bh=mihNVPdkAjT4yMtBvR/DOp64MRkHVFRDihgFw37lvKA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WgEKsxx9ciugLmtEo4hWz+XJ+QEcG333Bo+eKBSy2iv+i1VpJQBvXyjZtZpYcYSXHEctFEcx3xGq/vj/XRWLk6adXESsc88MRzW5SzTE9qE9/rQEqTagooEeCQxay7jotNpwONKE8AOzX0Pas+WA9p7pQsEovHPvYvq45A1E4oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GUlQs/IX; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2d0cdbd67f0so83804261fa.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 13:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708464443; x=1709069243; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hk72E6PCYMAJefDGHAelMphfYnvgFhyOXizcDeLOSm0=;
        b=GUlQs/IXhN0obOK9PAEl+s4R3MoSr9WYSsk//AuT49ZtE0TH44grIwQyuogA+tsw74
         QOdh3pmw+p4FbunvctcsnE5y1e2OYGYxfSJ8SVEiNs+zjNjJ5k5TeBtCK5k7M0DM+nkY
         dM0da1b398tx0x14OnD4kWO5hbaLFZ9LlGi+X725XUfNm7JYa6sjJi6wEMBPlfiMj60t
         PthELhKkqQf8XmJBm691EGudgv+F0sA48nuC8Mt8S5TwX1SjT0KiL94ZviFJT+Xg8hKf
         xTTFdp0qnmCOqTiEfgugyutVqGiDk5f7MiulgAgZ7G0usby909rc/RXkzfOmHgy5VytP
         m5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708464443; x=1709069243;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hk72E6PCYMAJefDGHAelMphfYnvgFhyOXizcDeLOSm0=;
        b=TA4Z8g9DqrUUdJeFxZRrgqzp9J6wQ5b/pcorWXGimCr3icqX5Ymyz6Ul2VYKIfpjk2
         yQZy+HurPixfWBNCrwNeDgOveg86CzT6apQWYf/BT6qE1lP7B1N/VebMi5sg1a5RAfvq
         lnrKvNI/eEQ7anZF4XSMxoW3ZfYxgEoQjiWOqncYha/a1bgJ3JOBK+iAhat2jxycxpwN
         UkDwvl3y90QWE4d6jO6pZfQgWxhU2/PC7QwcOE9z4VAk74YDWIa/xkPUHnb56zFpu5iA
         1mg6g+bxgHfImbpGuv43bfaIxzDfRMg3iwmlvINrTZEeeAgeMw2fK0ED9PoX5Gj/i4rI
         ljYA==
X-Forwarded-Encrypted: i=1; AJvYcCVRE47lt+x/mFbe7zedRpDH9IUqASfg6o7pBkdjRRC/vZku1Vy5OW0eeDOILGD7lm3DvR33IUGz9WAMdehlz34LERNPmqfBEG6w4Q==
X-Gm-Message-State: AOJu0Yxumu94nOevIvJ4y6PIThxMnBAUbFEmB2CyNKsdSK8+/s+SpqHs
	QcpK0oISloeX2L28VX3nofmbAcIOfXF+xSC9f+v7CmrgaOEh2EQDd2bMlCW5jgg=
X-Google-Smtp-Source: AGHT+IENDNFngqWBM1CHA3TPkwpJRypYzZ5TnrACPHbsfAJQJ+XLDbhOvzx2B6RpuMTFGpSm8xTBbA==
X-Received: by 2002:a05:6512:31c5:b0:512:b773:2800 with SMTP id j5-20020a05651231c500b00512b7732800mr5224409lfe.34.1708464441698;
        Tue, 20 Feb 2024 13:27:21 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id f18-20020a193812000000b00512cf7f4454sm55907lfa.129.2024.02.20.13.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 13:27:21 -0800 (PST)
Message-ID: <f3ae0fac-c117-4261-890e-d8953f7e9d1e@linaro.org>
Date: Tue, 20 Feb 2024 22:27:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: acer-aspire1: Add embedded
 controller
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20240220-aspire1-ec-v3-0-02cb139a4931@trvn.ru>
 <20240220-aspire1-ec-v3-3-02cb139a4931@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240220-aspire1-ec-v3-3-02cb139a4931@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20.02.2024 12:57, Nikita Travkin wrote:
> The laptop contains an embedded controller that provides a set of
> features:
> 
> - Battery and charger monitoring
> - USB Type-C DP alt mode HPD monitoring
> - Lid status detection
> - Small amount of keyboard configuration*
> 
> [*] The keyboard is handled by the same EC but it has a dedicated i2c
> bus and is already enabled. This port only provides fn key behavior
> configuration.
> 
> Add the EC to the device tree and describe the relationship between the
> EC-managed type-c port and the SoC DisplayPort.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

