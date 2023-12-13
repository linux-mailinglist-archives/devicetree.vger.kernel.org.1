Return-Path: <devicetree+bounces-24962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5092D811CD9
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:40:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EE7828244C
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C035EE96;
	Wed, 13 Dec 2023 18:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ocTx0uuM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACA9A12A
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:40:04 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50bffb64178so8603202e87.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702492803; x=1703097603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ol6nvI3xbrouU9id0Mvjg5S7+/mxK6nwvUyef7QNfDo=;
        b=ocTx0uuMP6Qgjvbs6/r3JAAsysaaXHlmSjsTovcuTCwHK1I1JCQP79FjKd11iC4nn+
         9gQfCGMbfUFvT7pzzuT7uaAy33EczJEZ/p8yLLhdWU+UotsoyiLf+JDwAACk9wGWapMZ
         5IYqSnGzXxHJ1AxXzVX8Uabcp1CcocFx3XFjkaALhTcpqSMWp4TWApMBPps8IhLjtq9a
         aruRK+qlU30qd8SyndYQhv7K7EGqCg5Gwnw3qrUhPLX2iPpurlwhUnSChwvVDF+nyIfY
         llvhTtP1gENY1r2LVI1PuwDPpn3ko4c24qcF/UXAXYxsqobIrnHCVT8MjnM3XNizxtF0
         9tPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702492803; x=1703097603;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ol6nvI3xbrouU9id0Mvjg5S7+/mxK6nwvUyef7QNfDo=;
        b=SHnjzAf4ZdV3OocdOIK4VDiQ4/5ze2uYICABhkZXRElSEMB/2+1FIW9y652yqb+WQc
         j28wKKc20Qv8ufJPGMOuGwM9yK+lJ4OMNJGyqCjy21v24fq+y8o2FJOpX1IM4m6Qz4P+
         7dFAcKcZf81QgM3bAze19MdclSlrlKX+UIb2TGvoQE+E4irJckAeJp2Gw4IzprD1Zajz
         wpZz60YRxysShlVMTUjRbxpg7qXQQKkx12Xs5xicgDKrBE7bwwQYmF6OJwUvpeVZMQAw
         zulFyzfF1RjHoF3ATgH+YDLxyqz0alQ/JbTMjOwUPP3w9ZM44kVq4wv7/tun6D4LvGm0
         PITQ==
X-Gm-Message-State: AOJu0YyI07AqrjB0p5EHjAbVWBLdFAzNIJTNtK73RAuwEQXfxbaAHLyj
	ss7ZywiJgXBYaXMu1JoPRzZNAw==
X-Google-Smtp-Source: AGHT+IEatj0Tn8aANvUUeB4wkvdtU24i+33W2pAE/l99W6gdO8QW7OmX9LNBTTroUxtZvYb8vioDOQ==
X-Received: by 2002:a05:6512:e88:b0:50c:e70:7b8b with SMTP id bi8-20020a0565120e8800b0050c0e707b8bmr5288901lfb.2.1702492802872;
        Wed, 13 Dec 2023 10:40:02 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id 13-20020ac2484d000000b0050bc59642casm1664598lfy.286.2023.12.13.10.40.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 10:40:02 -0800 (PST)
Message-ID: <6e9c93a6-48d0-4200-903c-caf271e2531d@linaro.org>
Date: Wed, 13 Dec 2023 19:39:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/11] ARM/arm64: dts: qcom: fix USB wakeup interrupt
 types
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231120164331.8116-1-johan+linaro@kernel.org>
 <ZXc7KcjF82EgiXWd@hovoldconsulting.com>
 <06354190-b572-46e4-8036-0fae7f15dd15@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <06354190-b572-46e4-8036-0fae7f15dd15@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/12/23 10:30, Krishna Kurapati PSSNV wrote:

[...]

> SM6375, I think GIC_SPI is fine but I will try to get back on this.
interrupts-extended = <&intc GIC_SPI 302 IRQ_TYPE_LEVEL_HIGH>,
                                               <&mpm 12 IRQ_TYPE_LEVEL_HIGH>,
                                               <&mpm 93 IRQ_TYPE_EDGE_BOTH>,
                                               <&mpm 94 IRQ_TYPE_EDGE_BOTH>;
                         interrupt-names = "hs_phy_irq",
                                           "ss_phy_irq",
                                           "dm_hs_phy_irq",
                                           "dp_hs_phy_irq";

the mpm node is not yet upstream (I only managed to untangle the
related mess recently), I'll submit this soon.

Thanks Krishna and Johan for looking into this!

Konrad

