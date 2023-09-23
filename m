Return-Path: <devicetree+bounces-2726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D77057AC446
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 20:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8A625281E0D
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F767210F8;
	Sat, 23 Sep 2023 18:03:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD0920B1B
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:03:49 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F522F7
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:03:48 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9936b3d0286so487261566b.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695492226; x=1696097026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xze0269DJpz1msfiE6vhhaaDti5lnwQMTzvMi8h07ck=;
        b=ni15YvwyVjCFJSgbL2tqjOQSjlM9/1FMvPgWq6Ttrcj8Rr7LAnA18ZhlKnwQWdjrCH
         5n5DaxV8/34gICbKdumfnKo+2QnJC2IPaEfg6zZD+BIU7gkToCFm5Hc0c0elrSXWDBVk
         UHQxTbmYNY2IVUvWl2fGpMNLOdanD/QOoIztW9OiIJRwBsDjunzpL2r05i7BiPnitVjC
         fAjBcybG4TS46faP1CFhyuC6oM/yChMz3g8TWM1WeaHj9HWvu80kRWJjY4Dsbk4arIbt
         8a6qHkwGPjnRUqEqgJ/0p/hx0ntyNKlQXR9IM/GdejX4Z0bSJGHa7YTbEKJ2u0maDVMn
         7Skw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695492227; x=1696097027;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xze0269DJpz1msfiE6vhhaaDti5lnwQMTzvMi8h07ck=;
        b=vX5rxGsVLbkmbdhrvkA+tEiSs9tcYBRxaOF5DJpB1q4HXvQVJIihBFNiccYLRG/G1n
         Vbjkhg3QchHPuJajQmPMKdD7nwtZwGLH6Zxr8Rh1y7LL0XK4eFdGjhffsVLXawugAD0m
         POfV+MroJbIV2QSWC+H5GTBD7xCJbBCZu7FDqvy3ExUq9sd7r9izS5PLJLC7F3aVtHiW
         Pkcxt/X919LdskB7agmHOEQGW4If2W/d+/6eqF/qvBpa/Lf65kIFhlLYDqANBbZU4EeH
         oTBKH1vyylD5nozROqU9KgKZ5LT86KfpKlquLsMGoW4BSY0auozb0786TttXAT3rpK3/
         s7FA==
X-Gm-Message-State: AOJu0YxzObRdTVh8haspseB2rCUqEOc/UQhlem7rUDo8Q0STGeUBu9bs
	ziJvA4Ssdbcqguap6mW0KhUW+w==
X-Google-Smtp-Source: AGHT+IFIyimj0pgZ7ge+avAiCLM3XDnvT7w8KKsHu4Up7SRj6VF0hmPmN9BzVV/4AJRLlC92qYiVLw==
X-Received: by 2002:a17:907:7897:b0:9a5:ac56:3b63 with SMTP id ku23-20020a170907789700b009a5ac563b63mr2138758ejc.63.1695492226723;
        Sat, 23 Sep 2023 11:03:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id gs10-20020a170906f18a00b009ae40563b7csm4129447ejb.21.2023.09.23.11.03.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 11:03:46 -0700 (PDT)
Message-ID: <5d528036-e506-7b95-69bb-7748b26d2aa8@linaro.org>
Date: Sat, 23 Sep 2023 20:03:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 07/15] mailbox: mediatek: Add loop pkt flag and irq
 handling for loop command
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
 <20230918192204.32263-8-jason-jh.lin@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918192204.32263-8-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 21:21, Jason-JH.Lin wrote:
> CMDQ client can use a loop flag for the CMDQ packet to make current
> command buffer jumps to the beginning when GCE executes to the end
> of commands buffer.
> 
> GCE irq occurs when GCE executes to the end of command instruction.
> If the CMDQ packet is a loopping command, GCE irq handler can not
> delete the CMDQ task and disable the GCE thread.
> 
> Add cmdq_mbox_stop to support thread disable

How or where do you add it? I do not see it in this patch. Your patchset
looks randomly organized.

Best regards,
Krzysztof


