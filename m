Return-Path: <devicetree+bounces-11022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C04DF7D3D1F
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:12:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D2841F22061
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED0371D53E;
	Mon, 23 Oct 2023 17:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YD3AbOJj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2F0134C6
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:12:26 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1803EE6
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:12:21 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9be02fcf268so518960566b.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 10:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698081139; x=1698685939; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4pAz3lB68htt/UaONn//Wbsw90tTxTn/Tjmz20JBkoQ=;
        b=YD3AbOJjIUNe/FDuBScXlSjMVZVK9eJ6aHZRosp/vhIug64TPfpjXbRUGtBZ90qwci
         eTyEO2zKkUDP3MS8indlXU4/MCkh26W0jUtYZY3aT7/rv51cJ2iARD/0+CRHjyjdGm2Y
         +/h2FDxt9qcS7dJyBw2ZT8VGt+EUVGMfI9i26eUJAWIBs+CqWm4EGdTv5mV/3nQ9aQ+K
         odU2v20riHMhcv9cic3Y8J5Bw+mrLIE2t37W/c7eS933TK6GdpqFzkmtolQrRH05Kjen
         8xiyR1be8P8pMKQQqdH8gjeQrXc+tlVsQGPr2cZtVfmiEVZ4I5OUfX0VCqMLLfc+dMpB
         doKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698081139; x=1698685939;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4pAz3lB68htt/UaONn//Wbsw90tTxTn/Tjmz20JBkoQ=;
        b=D2/5cfWzBCFYb1cWRQF4TIRCAA48V+tVoHCB4mvEEErzWXzsRjvpY2lo4x4JQMIO0l
         UvpuWCq0AZRCBEusfnCOqe8rSNqQT1TxXVDsRhCfFkXR1mQCxB6CenpA5uLpLy0UfQzW
         /anetXUhABqxM5o5QGgD8fe9MZTCrjkwOXRHwrC9Z0n55cuZ5K8v9o7QYH4UeRaN+Bf5
         zKM1ekMzWApkosLhz6t1nOlIBAOF0g7UA4GNfAb4xdrT/1Gy+fXScsH1bJdZ6HtyU6Kq
         Xe4DNMmkqMLDZh/p2htUdQyhHpeOwZ2TJBv1JxyTej3Z3Gpn47F6to3PgrU3Mr+OufBN
         Xg5g==
X-Gm-Message-State: AOJu0Yz5CyRrcLU3SnepzOz1uYK36zxvas5VFMIPmDX8GkQR3p1bB8NQ
	AeVSa7E3q3P4kTPj6rMgpaSgkA==
X-Google-Smtp-Source: AGHT+IHfEejU3dN9paKjshv3nHJTAJlVQQ7ZS6KzCjoKYwlZ7MJd+H6FSjMfx5xo+svdT31ZHsOQrA==
X-Received: by 2002:a17:907:608a:b0:9be:6ccb:6a8f with SMTP id ht10-20020a170907608a00b009be6ccb6a8fmr8083434ejc.48.1698081138951;
        Mon, 23 Oct 2023 10:12:18 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id 20-20020a170906019400b00992b8d56f3asm6956853ejb.105.2023.10.23.10.12.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 10:12:18 -0700 (PDT)
Message-ID: <229b7c61-f1fb-4a38-9479-d65349c72956@linaro.org>
Date: Mon, 23 Oct 2023 19:12:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: watchdog: davinci-wdt: convert txt to yaml
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, Nik Bune <n2h9z4@gmail.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 skhan@linuxfoundation.org, t-kristo@ti.com, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231021171323.113208-1-n2h9z4@gmail.com>
 <20231023-sanitizer-blank-44916ffa043b@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231023-sanitizer-blank-44916ffa043b@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/10/2023 19:02, Conor Dooley wrote:
> I'd swear I replied here already, but I checked on lore and saw
> nothing...

You're almost right:
https://lore.kernel.org/all/20231022120328.137788-1-n2h9z4@gmail.com/
Different binding, but same things to fix. :)


Best regards,
Krzysztof


