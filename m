Return-Path: <devicetree+bounces-104555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C0C97EBAA
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 14:44:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95F19B21219
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 12:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB2DD198A10;
	Mon, 23 Sep 2024 12:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VPoZVdMw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1FB195B1A
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727095444; cv=none; b=mnl4hB2FBGATzGqIfazkrMnQDWoXDga/8D2/iD23dNc6rIrWksIRKBLvaj0NrFnu0od5qBNp9GWUK9iPUz4njqGAU3/9Vt3KNYeZBdKGQdiovnJgsMYoClSNUU0xCBvsdpLyp7AalbwSg0sIP1eRRjPswn8U4EQEjy4Vxy1nNwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727095444; c=relaxed/simple;
	bh=TVLtiVvW5vaCL46NINDK8Adww8W/D9+l6DqTY+m8VUg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C9W2hgoc2fQnsGLvwuaSfYW/hQyNdxASp7efMpZUk2U64TkrD9QGyahrGaxSrs52PAdcWFbd7sEmDFCfnbQsUSrtje8ho+M4svG7HQVs15Q6mR4LkmeMV5cv0VkP7obG7KI0jtYgmobCzuqTuI9wHtxoicIUWmfE2VGoVODvCwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VPoZVdMw; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5c3d2f9f896so6063156a12.1
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 05:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727095441; x=1727700241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i6bIma9HKr/eXg0lAgMWRo2b9ll54v4t077yr94CrZ8=;
        b=VPoZVdMw2E9eWKDXEBGvqOWGlHg6+TMjU2RGC20e+DSbZuu1M/QBXhPWRM2REt4beX
         3UD0U0Q7dScxby8PwQxgxY1xpC2DGfdFdfIGFBXQD8XR1mVoTVosWu6oTbiy36Ws+w/w
         1yKzAbtSiffRLLr6jxQOzWovS3Tow4hE3hT/7Vk6nsOkoVXLSh3f/bOtLd+Exqhr5nlF
         Sy1Lc3+CynSsDR2hoPN96kIzaQewTgAocDVt6KUx63eEOqwm3/DN0YwpHiM2FwBlwSxh
         0CCzU3eZaQUyrjfhAhysNi/WSraPPfnXjRHPDRv+cWrIVztsy+8+JIniB/GqpedS3CW0
         IbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727095441; x=1727700241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i6bIma9HKr/eXg0lAgMWRo2b9ll54v4t077yr94CrZ8=;
        b=W+Mu2iqJxh2WL8AcVpfwF8LIinxAJyDAvfCpOVW8jCe00M/kYQJcM0mKP61oQSnlFq
         iP6Y7wM28F8XqUWexDPIgsRh+5RzH86mNVnnBBBaXB67ymWjyVg6h/Q2mbwX2lQVBiai
         oIjelF+mo2dhV1KlDk9JyMj69L4ZdCPkgRzV8csO7N0c6lFj1PiGDaF0/iwSvAIdWfWd
         cY/csap5Z+lYgJdxdsiBKvan5D9s7qkhYgWdOa/yeCnkClbvxdcSiJLWTNjbY6NOEsmN
         eUj1SsEYBB2rKRxqAAWAbwmkDQ+A3+HHwdZzMCmR15xzWHbEMMpgnv7vej119VFiXcds
         z+ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUlasBqMuahtp0zYnQAzE1RNX0bYefFLK9BIcrz3j1Hy3UJRFWJahGt7SnhvepcRTtDyZ1MnFvz4orW@vger.kernel.org
X-Gm-Message-State: AOJu0YymzmhdRPHWNA4lzJFU6IfKYeBEv1m0w8AIJQ6yGtzxJ3IhYLEo
	jYmN24LkmFruzqgEabbwunXiKawswJKH9qocKRHizHv+/LHY87mXRmhF4kcEX8A=
X-Google-Smtp-Source: AGHT+IEVAj1HE3hb6jZE4BzB+CcLNa8iY01RAmuxlz+j9hb4CloAziZ26qigCmGcnprsyLA3FBALmA==
X-Received: by 2002:a17:907:f706:b0:a8d:4e24:5314 with SMTP id a640c23a62f3a-a90d4ffe7dbmr1058725566b.24.1727095441259;
        Mon, 23 Sep 2024 05:44:01 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90610f429bsm1211494966b.61.2024.09.23.05.44.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 05:44:00 -0700 (PDT)
Message-ID: <5ec1aca4-c690-49c9-9432-96b9852de86f@linaro.org>
Date: Mon, 23 Sep 2024 13:43:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/6] media: dt-bindings: media: camss: Fix interrupt
 types
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/09/2024 08:28, Vladimir Zapolskiy wrote:
> It was discovered that on a few Qualcomm platforms types of interrupts
> do not match both downstream code and a type requested by the CAMSS driver.
> 
> The mismatched interrupt type between firmware and the correspondent CAMSS
> driver leads to known problems, which were discussed previously:
> 
>    https://lore.kernel.org/lkml/20220530080842.37024-4-manivannan.sadhasivam@linaro.org/
> 
> Here the situation is right the same, namely a repeated bind of camss device
> is not possible due to a wrongly specified interrupt type, and it may lead
> to an issue in runtime manifested like this:
> 
>    irq: type mismatch, failed to map hwirq-509 for interrupt-controller@17a00000!
> 
> Changes from v1 to v2:
> * added gained Acked-by, Tested-by and Reviewed-by tags,
> * per patch review requests from Krzysztof deduplicated "media:" from subjects.
> 
> Link to v1 of the changeset:
> 
>    https://lore.kernel.org/all/20240905164142.3475873-1-vladimir.zapolskiy@linaro.org/
> 
> Vladimir Zapolskiy (6):
>    dt-bindings: media: qcom,sc8280xp-camss: Fix interrupt types
>    dt-bindings: media: qcom,sdm845-camss: Fix interrupt types
>    dt-bindings: media: qcom,sm8250-camss: Fix interrupt types
>    arm64: dts: qcom: sc8280xp: Fix interrupt type of camss interrupts
>    arm64: dts: qcom: sdm845: Fix interrupt types of camss interrupts
>    arm64: dts: qcom: sm8250: Fix interrupt types of camss interrupts
> 
>   .../bindings/media/qcom,sc8280xp-camss.yaml   | 40 +++++++++----------
>   .../bindings/media/qcom,sdm845-camss.yaml     | 20 +++++-----
>   .../bindings/media/qcom,sm8250-camss.yaml     | 28 ++++++-------
>   arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 40 +++++++++----------
>   arch/arm64/boot/dts/qcom/sdm845.dtsi          | 20 +++++-----
>   arch/arm64/boot/dts/qcom/sm8250.dtsi          | 28 ++++++-------
>   6 files changed, 88 insertions(+), 88 deletions(-)
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

For the series.

