Return-Path: <devicetree+bounces-7332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CD27C0181
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:23:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA869281C54
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4870724C6A;
	Tue, 10 Oct 2023 16:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RjKH9wc4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A3C2746C
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:23:15 +0000 (UTC)
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68B12E0
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:23:11 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2c277f6f24eso11823681fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 09:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696954989; x=1697559789; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zGxdskynZq38kn996amRvHGUp58nLQDbuPG7+yxVYHk=;
        b=RjKH9wc4DYVG5kRtgu83t8mJYXDdFoJeN//M90qvdrhZ77a/+Y0zbK2yrMvhBK5eCH
         T3TLzjI5by3CeTqncv+coRdF2ae5XsCzRJPYnnN/gHD5xfSyM+mEWHC6HXTfNn5ncRuv
         EZKx6Gavr3vay2hKpz5CzrlAOWi2DoAV73H4AViu4iavZ1Q5lC8BMEl/OWi6Cp6gZ+lc
         RobhIa+J424Vy150O87Z/YWaGs2a1d4GKKreNbiMf+mtHAekos/nfYcab2Dq1MK9Wnxi
         hyA4v6cD44RDRtOI9Y9NQtdYgh0nEBFmvbvBtho5KDKutyohQT/ouvv81TWEpZgvpxga
         ZR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696954989; x=1697559789;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zGxdskynZq38kn996amRvHGUp58nLQDbuPG7+yxVYHk=;
        b=uBPoam+BUUkyM11AFnGfGJzXy0D+/QLKnbPa7xoGhCT+zPPQDIEw9ccaIuawBRQOrP
         4XfDpnIMxQ8egLJr0xT//L/3OmH7rlhu9v3wFZUfGaG/OLpnUajvay1XD/UHgWMWd3y8
         wMwlpsSB1uSh4BCBQtS6zPAXzwBOZhVhwBZou4nedDM9KQkuVQxeS1BK7GBqs68It5am
         q/aSe4vq7ES4BFAjZxb9u0vEb1bY3aKYGZvrvjrQDFutkmpB1Ac+isSO035dMhXpWkTV
         bdbNCTBZwPpTIivHKdWxP2JqzA7EdQIDQQAxQ1PUeilwICNLMFo6kue5XMrkQEELrtZ+
         zJrw==
X-Gm-Message-State: AOJu0YzHSYVVNEmsdKUxdTVQAm3uWrlqiDH+pLHuSk6VyvoGJxAajHV5
	pbItmTiYv1s3FyK1U8Ex+g6GhA==
X-Google-Smtp-Source: AGHT+IFTE6eOdZXoi8YRtnGanq+t9ep6GtcNWqfxr1sWycbErleyJS5/yW9eIoIOCZNMnyP4cC3QXA==
X-Received: by 2002:ac2:55a9:0:b0:502:af44:21c2 with SMTP id y9-20020ac255a9000000b00502af4421c2mr15010256lfg.5.1696954989429;
        Tue, 10 Oct 2023 09:23:09 -0700 (PDT)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id t17-20020ac24c11000000b004fdde1db756sm1887519lfq.26.2023.10.10.09.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 09:23:09 -0700 (PDT)
Message-ID: <8d51e471-916e-e132-3f56-75804379c6cd@linaro.org>
Date: Tue, 10 Oct 2023 19:23:01 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] arm64: dts: qcom: qrb4210-rb2: don't force usb peripheral
 mode
Content-Language: en-US
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20231010-caleb-rb2-host-mode-v1-1-b057d443cd62@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/10/23 13:46, Caleb Connolly wrote:
> The rb2 only has a single USB controller, it can be switched between a
> type-c port and an internal USB hub via a DIP switch. Until dynamic
> role switching is available it's preferable to put the USB controller
> in host mode so that the type-A ports and ethernet are available.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> base-commit: 6465e260f48790807eef06b583b38ca9789b6072
> 
> // Caleb (they/them)
> ---
>   arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index a7278a9472ed..9738c0dacd58 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -518,7 +518,6 @@ &usb {
>   
>   &usb_dwc3 {
>   	maximum-speed = "super-speed";
> -	dr_mode = "peripheral";
>   };
>   
>   &usb_hsphy {
> 

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

Thank you for the fix!

--
Best wishes,
Vladimir

