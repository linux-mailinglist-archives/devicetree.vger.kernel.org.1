Return-Path: <devicetree+bounces-16295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC047EE373
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:57:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E45A51C2081F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DD631A71;
	Thu, 16 Nov 2023 14:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TiSslfS/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AA0F93
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:57:36 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c50cf61f6dso12071071fa.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700146655; x=1700751455; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R0j2XTymde6n77RZxuh+iJCPkZ01ZtzNu1Y+icYSnoY=;
        b=TiSslfS/e7BRQd7w4sNt42QjLdjB+60uzBahgBePHhJV8wWiH4AxMxaQnUigSzGPrY
         jX9I/rDCmG6sBsOOSKlCrpwq5s+M5uFkKSw8CBl07/gV6RaT2jeo/KGCyyAKhQ9M1x5O
         N8HzxoISeTbbFrA4AAMd8LjUs/5rj0dn6yg5ti6Pu5rYUbUf48ZdbmbmSSUVyJY6ZrNh
         H2SgVTNnYDtKYpaOXJ1Xpr+mk2LUbS8Jc1+z2lWKCiGQ5hqdZn5idQkrOu2hVVk0uEpB
         ZRWZ+Ljyhidl44ujcIzPDM+37kbtc+85ffvz9MKsFiYuILdtOd4lmG6kIKNUGHWYyFWA
         SXXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700146655; x=1700751455;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R0j2XTymde6n77RZxuh+iJCPkZ01ZtzNu1Y+icYSnoY=;
        b=Ht1A/qXLrRutvzeOgmOfnB0wDXRf400UzPMLDbQuGWIXtzm2bbBXQS5BUAeGmH1jEm
         9CALjmljwVmhdygRMDb0IJm9BVhRGe+6sYbH85uzr4Zgt86U9E3BDKGdeN0LCW7EwbmW
         tz8Id0odqAgYsrCsh+zCRVMOizyiYVkDTU2Oy4vCT97x4hwLngF9UdGSyrAwxTMVGJWw
         5j8jF5+SW5+rvQLHmUL+FuTmAqlci8nQCKodMHkS4vzdUaR3RUvyl2TObF4TPf+2palG
         Z+DlvQZlyPEvKscTEqOcKnZmNZQUE2VJoXc0cDXbbIsSV9w1zTxYZvBDq27nHvhC5tvw
         chsQ==
X-Gm-Message-State: AOJu0Ywd/b+K1lrY8QpUoEEKSAUMW/tdvODsEmNBNSsOj6DEiuWdJxrC
	tCD1ElC8Y5d00phdXVG9L03MHg==
X-Google-Smtp-Source: AGHT+IFfCgVFmiQVrotF5sQQJuOfgF8Pp6fg4nFG0tBbccGK279cm85THeZg3qohiSXi7l+aJTlQ0A==
X-Received: by 2002:a19:5e47:0:b0:509:476a:ee51 with SMTP id z7-20020a195e47000000b00509476aee51mr11127194lfi.20.1700146654824;
        Thu, 16 Nov 2023 06:57:34 -0800 (PST)
Received: from [172.30.204.128] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y2-20020a199142000000b00509463003e7sm17278lfj.186.2023.11.16.06.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 06:57:34 -0800 (PST)
Message-ID: <48139b6d-5ceb-44a7-bc73-ed1621d5f656@linaro.org>
Date: Thu, 16 Nov 2023 15:57:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/11] arm64: dts: qcom: sc7280: Add ADSP node
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, =?UTF-8?Q?Matti_Lehtim=C3=A4ki?=
 <matti.lehtimaki@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231113-sc7280-remoteprocs-v2-0-e5c5fd5268a7@fairphone.com>
 <20231113-sc7280-remoteprocs-v2-8-e5c5fd5268a7@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-8-e5c5fd5268a7@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/13/23 09:56, Luca Weiss wrote:
> Add the node for the ADSP found on the SC7280 SoC, using standard
> Qualcomm firmware.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

