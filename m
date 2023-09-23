Return-Path: <devicetree+bounces-2723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 976CC7AC43A
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 20:01:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 68E251C20858
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61666210F5;
	Sat, 23 Sep 2023 18:01:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D9520B1B
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:01:53 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD399127
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:01:51 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9ae7383b7ecso657351866b.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695492110; x=1696096910; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mkku8F0DMrFfXF0YIjXe4KyjDZIaTDOE7BzWPGxhwkY=;
        b=yaQrLftzzFy5ZrNLZmvaD5iJ1dCg44tyZqEm9L/ij85Pu2+Hp7yh0ME72cucLAglvE
         xTVLW74P6PCXBOmCzLS1du1j5eY1ia0kOZ0lLsJgzi7obJHfkTC6uKeSfwv0viymVYZN
         vaSDxy6rv+Sr/qpWXGVsSIHWSN/nlUlrla5gF9HIb8KmJswEyCJ6iNTfQmKrLpQ2t/pX
         6pynLZ/3nQBiMON75W3SVR0H1csQkw6ClwEZRZkhgBuBndTFGKAl2bFaAapCiHUahvY0
         T5HITaYGWGGZa0eyBdkC/A/nvPedx8jgUUSHCfB31frYXw3qd3vhu58LUlGfYiZdr+5V
         hAew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695492110; x=1696096910;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mkku8F0DMrFfXF0YIjXe4KyjDZIaTDOE7BzWPGxhwkY=;
        b=QwynTgw4vKcuDpOKFHa8CHxG9YdnFFmA9n/TmM/qMFMO8V9y9MQzi3D2VQdzKD3KA5
         1bE0H+AJdbaiuPv6UCHhqe92De3lXQgScTy/zSyM6PuCYHII6Yf3DDYO8SOsTERPLZUp
         n6x3Tqo524zv9TKU9LEhI0SSoLWJ0FJXlsFOfKxhx7ItdfnaQ05CuIPEeooY1qcqOgMu
         ORwPHuAoEAUvm2JytwDUHII/NlkRuWBJIb5CNYleGwk4bMS4Ze548CxVtTLGEzL+Gt3R
         F/eUAWmfLtkvhOKIMH0sVW3FixFGa/w1aXFmLL+9UOvdnEjGSkVkdGBrs9vvqgOL3GTa
         HPBA==
X-Gm-Message-State: AOJu0YwXTKLR0We/0z83BfjawaARlguF6r1xInygKuZ3jLky8SByHr9e
	q65oMmWEcEcO8maFpjcRHuI7Sg==
X-Google-Smtp-Source: AGHT+IELmFBn2dpbejDFb/Fe2tZEBl+utRg6aNguT/ibSdIbYeXZPhhAouR4ibqW7DIdCESfHjVItQ==
X-Received: by 2002:a17:906:768f:b0:9ae:4a8b:fe2f with SMTP id o15-20020a170906768f00b009ae4a8bfe2fmr4486659ejm.11.1695492110260;
        Sat, 23 Sep 2023 11:01:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id t21-20020a170906179500b00988e953a586sm4192183eje.61.2023.09.23.11.01.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 11:01:49 -0700 (PDT)
Message-ID: <20372e40-e4fc-467a-d91a-fcf8e26728bc@linaro.org>
Date: Sat, 23 Sep 2023 20:01:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 02/15] dt-bindings: gce: mt8195: Add
 CMDQ_SYNC_TOKEN_SECURE_THR_EOF event id
Content-Language: en-US
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Jason-ch Chen <jason-ch.chen@mediatek.com>,
 Johnson Wang <johnson.wang@mediatek.com>,
 Elvis Wang <Elvis.Wang@mediatek.com>, Singo Chang
 <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>,
 Shawn Sung <shawn.sung@mediatek.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20230918192204.32263-1-jason-jh.lin@mediatek.com>
 <20230918192204.32263-3-jason-jh.lin@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918192204.32263-3-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 21:21, Jason-JH.Lin wrote:
> CMDQ_SYNC_TOKEN_SECURE_THR_EOF is used as secure irq to notify CMDQ
> driver in the normal world that GCE secure thread has completed a task
> in thee secure world.

How can #define be added after its usage? Does it even make any sense of
being separate patch?

Do you folks in Mediatek have any internal review before posting?

Best regards,
Krzysztof


