Return-Path: <devicetree+bounces-2767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E997AC7C7
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 13:42:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CF6392814C3
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 11:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E161368;
	Sun, 24 Sep 2023 11:42:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E121110
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:42:02 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74875100
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 04:42:00 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9936b3d0286so579576466b.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 04:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695555719; x=1696160519; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kZUeSDNMLghz4hDsfW/Ul3T9sdl/U80VAf3vf6pr3fw=;
        b=Ol1hEoidzmehphraqMctMign2BnVuV8xkRCnk8Vh+zhgaTqIHODQooUJDkMj21TEJq
         lQ6RqJBXx0jcC6V2kf9x0mhMXZ4QyLxVxDvWGDT9ZjjmcHgNzNhyIpU+qvgg5yflOksZ
         PIf3nyUlZo8797MS2wDvF64QjRv3gBQ5QIWIxwAwwG/LzW9KtQKAwTHaV/hiFURd4sMZ
         qY61enkukt7pzp8cksk2pbzqmdySNj9ENN2iFGnyw/AQnfMbYCChnD2/tIbiO7zgvTjb
         skljXmKJIr9Qgq/AvIGwksLRTyB4v7+IMy1ax5y7uIDMIoUflssFCxZHRGJZR5EgnotZ
         tJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695555719; x=1696160519;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kZUeSDNMLghz4hDsfW/Ul3T9sdl/U80VAf3vf6pr3fw=;
        b=LacSoxPvJvf5RUrjH2/gSXtcNSXdFzEGXzB9pUZBUQgFyV/9f91lvdH61zzjfUS8xF
         Zse7Drurem3jArSaNDRWgQOwa8NlvEMCBT3fvP+ZLJRnysgvD8T+LMlJFOzWTNqMgVGj
         /4Bgm9UAR3g3QRnjma+yUMHLA7LuRSp9UsDQ9Oz0MuwJSmmLaH6kM4u6w3vp1J7UpXvW
         9vob53whpJ0+j0mRqLvqs7EMork3kG0SKdcRIUvf6bHe6v5RXpVqEtHrOOyhOf0+0Qvn
         8o3feIHI9Fsq1t85pnyMYhEkK1KcZPXl7N6y4o6xpS+VpgFZIwYXiqPwxSPQXNpbzsjw
         XimA==
X-Gm-Message-State: AOJu0Ywp6U9fFuDRdRbyHyFn6VZEZyi990U0QDkCTLvbrFi4kN2WcGVe
	M6db/+qc0Nn2E9BltFuYq7G+ukMlakGuSCtY5VI=
X-Google-Smtp-Source: AGHT+IGmwMjmKQxu9O3cgfllR8YsIztfrTWaJwC3k6+XttmILzD7hcg/2SP9FniIMxNQAOjoAt05TQ==
X-Received: by 2002:a17:907:7635:b0:9b2:7434:fe1f with SMTP id jy21-20020a170907763500b009b27434fe1fmr2083326ejc.46.1695555718910;
        Sun, 24 Sep 2023 04:41:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id o26-20020a1709061b1a00b0099bcb44493fsm5011159ejg.147.2023.09.24.04.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 04:41:58 -0700 (PDT)
Message-ID: <c69c86b8-67c2-cb13-8fa9-961919e258b8@linaro.org>
Date: Sun, 24 Sep 2023 13:41:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] dt-bindings: arm: fsl: Document the missing imx23 boards
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>
References: <20230923204258.635888-1-festevam@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230923204258.635888-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 22:42, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> There are some imx23 based boards that are not documented.
> 
> Add them to the list of supportted i.MX23 boards.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


