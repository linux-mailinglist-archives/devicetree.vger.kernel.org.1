Return-Path: <devicetree+bounces-13895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9218F7E13AE
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 14:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3FFC1C2097C
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 13:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9059BC8E3;
	Sun,  5 Nov 2023 13:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Da/9tVM9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DB9C8CE
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 13:33:54 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0C71123
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 05:33:52 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c50fbc218bso44294081fa.3
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 05:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699191231; x=1699796031; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i71VLtyGXnfgqlxiaczDIdWu43BdqWayucGi7/Xq0uw=;
        b=Da/9tVM9nBi4zAkpzSqE9Huvev20kSGvKwYmJgmzKoZJQA1HcS9EyKmGGxZTZnA61s
         cdPSorfIfF9lb9ZKVA29INmYVOjG3S4O2F9138f5gav+2zvaxidG53XJi9bu31EEBPSD
         jRAY9gGbYWQqImIJgDstTSKjRdUMpTDuPXir8Bx+H7eIASlo7z/YT6IDA12CVq7Ql3Eh
         i3ETcj+U4xIBBq4W+27vBq5KSS+nrlUzC3cwQ31jJ7q7IKb4LjVzpbwks1JoNlHYM5zA
         G0yZMQ+MDzSW0l9lCVGEP7U0lfB04at8ZgJF70MCZG7p3YpWsvXe3iO693ia/FHdUu0c
         /VRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699191231; x=1699796031;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i71VLtyGXnfgqlxiaczDIdWu43BdqWayucGi7/Xq0uw=;
        b=C2qjQfLIhBdssZpk4seu9WZFFMUERelLhqwYWS++THCpGIMDHw0oPWhnngguHXHd04
         Vy9Ac9Wa5Nz+m8KSdonEh54eQYySRODVyg32zY8gi3UGslMPb3cYWVi9K3nT+6WXjxoj
         aG8pCmk5hq2H4JPAgcB7xGMi+RPOfUtmWhftwTRv8oDpD5pWsg5JCE5RdoLL7ANu7Kvb
         lJgjVRIoHTG+WxTPqzP4100XX85ArLCOi/8RLz2x3U7iv+Pnf2P0NRgyk6OTjXXWfRvo
         gniWCp+ptjt61n6C74IE5pXf/xdm4pwXN6rXC+1BccsN8KAVvjcClu2LI8f36yczrunf
         6hSg==
X-Gm-Message-State: AOJu0Yzi5amox20YXlzQ8DxFaScna7wXTWYrSGfxzpPniUDlZC72LdDq
	o+KLlPPioUzTv+0ln6HjkbPI5w==
X-Google-Smtp-Source: AGHT+IG9cyYh8pZ/6MjaYjvx53/tv0yPcpPPyzkKeVGh6nhbrgVfREbLF7nDazwBlWie0DF8vFHPvg==
X-Received: by 2002:a2e:be10:0:b0:2c4:fdc9:c8a3 with SMTP id z16-20020a2ebe10000000b002c4fdc9c8a3mr24349326ljq.50.1699191231138;
        Sun, 05 Nov 2023 05:33:51 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id f20-20020a05600c43d400b003fbe4cecc3bsm8718488wmn.16.2023.11.05.05.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Nov 2023 05:33:50 -0800 (PST)
Message-ID: <a3679c0a-0c74-42d9-a31f-e3a99407f1d7@linaro.org>
Date: Sun, 5 Nov 2023 14:33:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] dt-bindings: watchdog: qcom-wdt: Make the interrupt
 example edge triggered
Content-Language: en-US
To: Douglas Anderson <dianders@chromium.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Cc: linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 swboyd@chromium.org, Andy Gross <agross@kernel.org>,
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231103163434.1.Ic7577567baff921347d423b722de8b857602efb1@changeid>
 <20231103163434.9.Ie30c1d3f780666f6906fd2fd7c437632c229d987@changeid>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231103163434.9.Ie30c1d3f780666f6906fd2fd7c437632c229d987@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/11/2023 00:34, Douglas Anderson wrote:
> As described in the patch ("arm64: dts: qcom: sc7180: Make watchdog
> bark interrupt edge triggered"), the Qualcomm watchdog timer's bark
> interrupt should be configured as edge triggered.
> 
> Update the example in the bindings.
> 
> Fixes: 7c631cdff391 ("dt-bindings: watchdog: qcom-wdt: allow interrupts")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Best regards,
Krzysztof


