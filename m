Return-Path: <devicetree+bounces-12244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D66167D88B6
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:04:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 906D728213A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 19:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F84A3AC36;
	Thu, 26 Oct 2023 19:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zbir3E2G"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221FA3AC28
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 19:04:28 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D3531AE
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:04:27 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32ded3eb835so932417f8f.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 12:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698347066; x=1698951866; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MbynzDzZ6aYhsm3/VuZ68JZwk/UfAZZJI098UgEYcNw=;
        b=Zbir3E2GvMhpBcs7RuxRG/2ZG+6/vXeUxOl9l9O+2ycZvoId/uV4pN8Kdm7JFF01xw
         Or+mOQ/Brb17giol64kvZIlhs6ix93t7+DBDZ992OVUZun77kYxOr8ss6xtcHF7GE/Fk
         IcTXLGxu0YbBGuxJRaY29TG+b4nb9gRPGP1hNWG65ridBqgE7chcAcJCyzcTLursoONW
         wy/eNpQbGin2MS0zQf2ZiD/RZ7QEsbZ/B8TEhfyUg0rUnTMj7JUxr8t0YLX7TEoQXmRY
         pFWC5VkyRzsHKKtlG4pf7iaZPYE3Xc+DZwfCH9IIlrTvnlsi2hTXAQKpgrtZTKt26eOQ
         Sc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698347066; x=1698951866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MbynzDzZ6aYhsm3/VuZ68JZwk/UfAZZJI098UgEYcNw=;
        b=lB6kwiuCjeoc6ma2pRcgH84Ch2UIlEOh7IFNavmYeAjI5lsnLNQOGnEAOkD9tRHciK
         Q2Z7SPkSsZWWLH+21CKlq0o4gFL8Px6PXSiH7oErOvyEhB3r/05m/hJFhTRNaSl3uJSg
         GCgSkYyJcO/+WIOQy1ksEiL+0WxamPtwddxwAOVCoQqb684Fc2dQ3pAllBHrWryry84g
         xMhr3lgHXEdczoym5YwHr2pQ9aNWoOrl/+Qng1DYNIPWqSVRYN5WulMEBHQfi9sd02+Y
         1o8QtTBDDEnR8ZKU8njwp/xDHUlFaQhFzWThYEmZqjeiQr1qLd3tEBkGKRajngY2othM
         8b7Q==
X-Gm-Message-State: AOJu0Yx3NWJ3F8cKA9KboRt7oYHqY9Eg/NdgrRjcLb9PZuO37Kb57Wt0
	fPS5Zm79ZgP4Ao+ObFszPvVkiQ==
X-Google-Smtp-Source: AGHT+IF/GfMYUUnzoqsweXvAEgXUSfpxL0SwGmbvjJUViXSClKOBEivZWDDnAPsqzr04DT6TcQ3umg==
X-Received: by 2002:a5d:6508:0:b0:32d:9d80:4039 with SMTP id x8-20020a5d6508000000b0032d9d804039mr482066wru.34.1698347065762;
        Thu, 26 Oct 2023 12:04:25 -0700 (PDT)
Received: from [192.168.1.15] (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id x11-20020adfffcb000000b003258934a4bcsm72195wrs.42.2023.10.26.12.04.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 12:04:25 -0700 (PDT)
Message-ID: <d7fcb16d-1fe8-4be4-8f20-18ddcd2c2913@linaro.org>
Date: Thu, 26 Oct 2023 20:04:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qrb2210-rb1: use USB host mode
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231025-b4-rb1-usb-host-v1-1-522616c575ef@linaro.org>
 <9439252a-4dbc-417f-99a8-fa7c5f11a3d8@linaro.org>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <9439252a-4dbc-417f-99a8-fa7c5f11a3d8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 26/10/2023 19:56, Konrad Dybcio wrote:
> 
> 
> On 10/25/23 13:58, Caleb Connolly wrote:
>> The default for the QCM2290 platform that this board is based on is OTG
>> mode, however the role detection logic is not hooked up for this board
>> and the dwc3 driver is configured to not allow role switching from
>> userspace.
>>
>> Force this board to host mode as this is the preferred usecase until we
>> get role switching hooked up.
> Does that not kill usb internet and similar?

like rndis gadget? yes, it does kill that. But in return you get real
ethernet ;P

This is the preferred default configuration for these boards (I sent a
similar patch for rb2 before). The usb_role framework does have support
for letting userspace change the role via sysfs, but it's disabled for
dwc3. The plan is to enable role switching properly by reading the DIP
switch state in the future.
> 
> Konrad

-- 
// Caleb (they/them)

