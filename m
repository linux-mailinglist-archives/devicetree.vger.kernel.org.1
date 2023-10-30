Return-Path: <devicetree+bounces-12990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1E67DC21B
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:51:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DF041C20B0B
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4FF1CAA4;
	Mon, 30 Oct 2023 21:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s7AwhXLH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1F61CF97
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:50:56 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 768C6FE
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:50:52 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2c5071165d5so24405321fa.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 14:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698702651; x=1699307451; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ttxIanjqvG1zYzKHX4Ly11R/8GQQy/BYZqzIWE7ybLI=;
        b=s7AwhXLHONIrem9IWo4ZloXVniq5hA8T4ztDgHxoovlrhOwqQL30b/O/7fJlR2DJX5
         p4RfRCKLC0v7R5EjbQCRpp4Kce+8OrljWVHm93q1G+qICfDcRcOjSsD61+rn3bd86LBo
         wfMTjN0a2EvsucQpkOYpU3twntqsf/cRAagnij44r1Z7P8KZ0tNub2EUamGnsPHJXPB8
         +xNw++XoyqCYsRgMG/VsCN2dGzan7d/UOMEpzFxpAHYhfZMbnHdq7iwkjpX+IYH8JiE2
         2wyXS0/LEEsRMbzLPvQcOv9B2dnXAEalctYmAhbN47OfCeBHnom2oe6pLPhBXYxdrV3c
         rwQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698702651; x=1699307451;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ttxIanjqvG1zYzKHX4Ly11R/8GQQy/BYZqzIWE7ybLI=;
        b=TZnpKgLRMmGM+1u1qrYE4JJf76ZNL7rmeCZh0cqnNkgH9PRs/p0EcAxG1oXCxmeGEF
         Ub7NSh+knfJ9MT7bfnwr0ULvzLy+auIoajrQaq7VISpMo/c4dgS2O2X7bLxX4gAdW5NT
         x/VBcslLUeC4nm74v/2vfJflvbnGZMx4QCDlpmzkFlfPSSq4tgnU/ggrdW99BnSEJhk0
         Hk/50o6Y0jEWUdpm1vxfCsx7c4yebjHVoREz5+oPIYOA3dbjBqYQB6a4jP6Fr22veM42
         lZFonlE8H+rN08vMywhiLLMdP9INgSzn0wilvI7hGYXk0laN8vOvN2o4mWrRkJYJxi2z
         vqQg==
X-Gm-Message-State: AOJu0YzSwn+dVW2+JkrsaR/jRfs6KqoUVAeaHQf5PFzUlJrfeOV7n51S
	EJ0vdZm6EQK595tPUcWvkcEvtA==
X-Google-Smtp-Source: AGHT+IFIXjkI2/1SLJc6OkGqaMLJLR0cK+RDeuqDUw/oogOAw2tnec6ZbVUprpamzzP6g9+C8hvX8w==
X-Received: by 2002:ac2:44da:0:b0:507:9a49:3f23 with SMTP id d26-20020ac244da000000b005079a493f23mr7739736lfm.18.1698702650607;
        Mon, 30 Oct 2023 14:50:50 -0700 (PDT)
Received: from [192.168.133.160] (178235177091.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.91])
        by smtp.gmail.com with ESMTPSA id s2-20020a19ad42000000b0050794b05c8asm1560841lfd.42.2023.10.30.14.50.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 14:50:50 -0700 (PDT)
Message-ID: <c2ad06fd-805f-44b9-bf4d-806ef20f272a@linaro.org>
Date: Mon, 30 Oct 2023 22:50:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: acer-aspire1: Add sound
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>, cros-qcom-dts-watchers@chromium.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
 <20231027-aspire1-sound-v1-3-5ff3cf8b5701@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231027-aspire1-sound-v1-3-5ff3cf8b5701@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 27.10.2023 16:42, Nikita Travkin wrote:
> This laptop has two i2s speakers; an i2s audio codec for the headset
> jack; two DMIC microphones in the lid and the displayport audio channel.
> 
> This commit adds the audio node that describes all of the above with the
> exception of the DMICs that require in-SoC digital codec to be brought
> up, which will be done later.
> 
> Note that the displayport channel is connected here for completeness,
> but the displayport can't be used yet since the HPD signal is created by
> the embedded controller, which will be added later.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
[...]


> +		primary-tx-dai-link {
> +			link-name = "Primary MI2S Capture";
> +
> +			cpu {
> +				sound-dai = <&q6afedai PRIMARY_MI2S_TX>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6routing>;
> +			};
> +
> +			codec {
> +				sound-dai = <&alc5682 0>;
Both RX and TX going to 5862 interface?

Konrad

