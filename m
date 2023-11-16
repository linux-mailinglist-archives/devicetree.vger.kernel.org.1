Return-Path: <devicetree+bounces-16296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1057EE37B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE6241C2081F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BC032C60;
	Thu, 16 Nov 2023 14:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B9B36SbS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC1ADD50
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:58:57 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507a62d4788so1309890e87.0
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:58:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700146736; x=1700751536; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/LRHtC2gpJmEwx4E/5yYYZdnHzrj5ZjGQiahaov9z+Q=;
        b=B9B36SbSlHylhwlmd97I5+Ha/uBPiChIlTZY9TmQ6DnPejnz72h5Usncp4haDG553h
         gRWDYQYdv5nUzHpVhk0BX1CTwVVg/0axWLxAvqvwFuwW7XuQIdPrsSXH65WN0oRiTnpd
         N8caerjLNj8+Ugd78fIK/+uGXX0mh70/Ao++kXhSAh1tATxMw3qje5QIyN9bVzXTYgj7
         7DELwpNzwGSJ7yJTAIbIGspdXXMsBbvmZQ6wBrRJgkKHMK6FNINUMBXElURROAW2xqvy
         bCOBfsTvdhr3DzICUUCTKA86TXhQ90vcBreJboJDlicskRcfWlp8ZIJOaz/Nk97AvMdR
         umyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700146736; x=1700751536;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/LRHtC2gpJmEwx4E/5yYYZdnHzrj5ZjGQiahaov9z+Q=;
        b=vJiXWXtFiDC1uixYM815Lag/CtmGUypti59zLeaXIAnHypkhaKDouihvb5kCvu+K2I
         5jM7bsRC3QOIQhPfXgDxLqtnKiu+4PQDXQGSqMmOdqIMd/mMs6IkgSfN5hiiip9aKwqJ
         Cu0/vU2yTTeGBYBnU0tVXEFK7AvBsl/K0VFSlQ6TX29pi+cgzDu/e9FVVwI4s7pWAjyJ
         SzI2XTO7cjub4JrqcVDfvMzjaJ4RaG67x1OuRUDnCHXU3LeJ+Yw1yMDXUq9/PJmSYWYy
         4l3cnc4og61rak6CcZMTf3D2qCpBi0nLUap+QSAJy3Cdl4OGLDRk9TZeNlve54x6gFZ7
         RSNw==
X-Gm-Message-State: AOJu0YzB/NOvlRcjmzYoE4Bfu/0nUohOrwfVyCSX3nsGPwUAaVNlKADO
	xujskgYyr8MAD6HOvh/SDR899Q==
X-Google-Smtp-Source: AGHT+IF39sYCCAsll4ai1X8v8QufbfS9p0GWBm5Tl1nARHiZftR7iTpIiKo0fROv1yllcNFaaBMSNw==
X-Received: by 2002:a19:750d:0:b0:50a:10a6:1448 with SMTP id y13-20020a19750d000000b0050a10a61448mr11111060lfe.59.1700146735779;
        Thu, 16 Nov 2023 06:58:55 -0800 (PST)
Received: from [172.30.204.128] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y2-20020a199142000000b00509463003e7sm17278lfj.186.2023.11.16.06.58.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 06:58:55 -0800 (PST)
Message-ID: <c640dc18-b4f8-46e5-9bfd-b1349f7d91ff@linaro.org>
Date: Thu, 16 Nov 2023 15:58:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/11] arm64: dts: qcom: sc7280: Add CDSP node
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
 <20231113-sc7280-remoteprocs-v2-9-e5c5fd5268a7@fairphone.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231113-sc7280-remoteprocs-v2-9-e5c5fd5268a7@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/13/23 09:56, Luca Weiss wrote:
> Add the node for the ADSP found on the SC7280 SoC, using standard
> Qualcomm firmware.
> 
> Remove the reserved-memory node from sc7280-chrome-common since CDSP is
> currently not used there.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>


[...]

> +			interconnects = <&nsp_noc MASTER_CDSP_PROC 0 &mc_virt SLAVE_EBI1 0>;
QCOM_ICC_TAG_ALWAYS

Konrad

