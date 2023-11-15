Return-Path: <devicetree+bounces-16022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 927347EC84E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84A421C208DB
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42EF8381BB;
	Wed, 15 Nov 2023 16:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QmWb2h69"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9718381AB
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:20:00 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E83FD5
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:19:59 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c51682fddeso10876011fa.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700065197; x=1700669997; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=icFERsbKRy7KfOqu0tTtbnE8bN6Q90hl/QIfyS74idg=;
        b=QmWb2h693nxK9kNemXp1n67tsqcifoZNbYkEgbGGc3Zw/CQchcwDj5npLnzlGJBmqY
         J7Ka6tWKEExoSxSNZEXsA3+OiN5i8P5/mk995xZLtZDG0fPvOfhIqoopma345ehMlxZG
         sApULPfNprkzeYx4jG8383XHNtvNefC8igWU81m2twbJC0N1EquVQjZqAkHgil9npB8a
         9IMQxymignKe+1TUgZIwpMs4iFqBlV02id79uh91qsdKZ/EBkfFh9kW522ZZYNmohD37
         Cdsn2M1ZqvUqyr0w5nsuLjqwK/8xCdWKBdazEWgbuOoJW6++pxmq9A1Tjm55MVnOHALX
         4shg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700065197; x=1700669997;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=icFERsbKRy7KfOqu0tTtbnE8bN6Q90hl/QIfyS74idg=;
        b=CBAQCDXiL6EfTvNviN+NRMR1Z8y1LR4MQzz6QS3PXf7nsqax1AqlVl2UKRMge9x29s
         VOnRLmBy8woohuJNwnC5fHNVf8sOt2/DFnVjb9ZDxJq1OwQFhrPi8vM9EFouzw0ug8TZ
         DkV/zTQUv8df3lL3vck1UwTnda9+2yo1bzwXpm/tAu/NmT1pUIQC6QRzC5SjtvgaVgti
         nsU5JEGR8fMPEQgTuJk4+WpIWx4MCWi/VM9ZlK5uk/m8dQv8GfjOd7An8WbJwAwsUr4e
         BrJGezNWnTnf4rOrJ2bYP5I7jv7JnDvt+L51h1MW1xZwvkeWvG20WJjdrh/42In7iv60
         vivw==
X-Gm-Message-State: AOJu0YxHxehixKhNCYQ2Hy2hS1dxSK+kQw90ROEW/Ysw/s2NF3XcAVoN
	3ATTfgWxTT/0ASVICpr3E2+LzA==
X-Google-Smtp-Source: AGHT+IES8N0nnyIJL4H2hctBPCl60o8JV4reP/XkECqkfH7STBbygsVf2WKbM5aI8v1zxUkoSTMF2Q==
X-Received: by 2002:a2e:9ec9:0:b0:2c6:ec37:fb5 with SMTP id h9-20020a2e9ec9000000b002c6ec370fb5mr2117421ljk.10.1700065197245;
        Wed, 15 Nov 2023 08:19:57 -0800 (PST)
Received: from [172.30.204.150] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k8-20020a05651c0a0800b002bce77e4ddfsm1699622ljq.97.2023.11.15.08.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 08:19:56 -0800 (PST)
Message-ID: <9dec865b-36ed-4686-9d25-1e11e3fc25a8@linaro.org>
Date: Wed, 15 Nov 2023 17:19:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845-db845c: correct LED panic
 indicator
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231111095617.16496-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231111095617.16496-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/11/23 10:56, Krzysztof Kozlowski wrote:
> There is no "panic-indicator" default trigger but a property with that
> name:
> 
>    sdm845-db845c.dtb: leds: led-0: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
> 
> Fixes: 3f72e2d3e682 ("arm64: dts: qcom: Add Dragonboard 845c")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

