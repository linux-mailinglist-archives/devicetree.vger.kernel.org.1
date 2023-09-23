Return-Path: <devicetree+bounces-2728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DC27AC44D
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 20:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id AA49B1F231F2
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10E3521103;
	Sat, 23 Sep 2023 18:07:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35AA20B1B
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:07:11 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5674010C
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:07:10 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-401d6f6b2e0so35574115e9.1
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695492429; x=1696097229; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H149ZKwWnYhZ1xunGnnrQ+QQwSAWk1F1dR91/0OJmNc=;
        b=wIemnXWxQOpuB7ACQ/JqQL2PBdbGZHEX3Dvroir4APx3dmR/Hez34Selg94bt9ZZos
         yJua1MSyP8hE9bVkLUEK911CRSNZRisM7CP5jXJhDhSKoEd2DWi9n1c0Ntz+CiLKupzR
         bTcGROgy9sAfbAq4zwhqNCnwlxldT1KTC2mDvx7JB9klVlmLPXIteE3Th+IX2kTnmj7k
         F2BLjdhm66idVpjzADeaTHFHNV4lwRMDV330tApPfgj5eHnM7pBjtnBhu+YzbIBAIkjn
         p3vom+VmBWP/rtthk0Pt1fAz1BBbakPQG33S4BhfZrCMiWraZ2Ud5pG0il5xVkgYBUrd
         3KvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695492429; x=1696097229;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H149ZKwWnYhZ1xunGnnrQ+QQwSAWk1F1dR91/0OJmNc=;
        b=q3aQRbAiupbewGH5fmTvMXtYzC03uOs6/zq6GWQAKTIZws3Els+hDNBOrfzzZSCfno
         IPzsoolNzQTBFbB5H773feQsVR8jcC2TxoCPysztfi7Ouy0ShZ+gbQbYD0+t+Pp6maxN
         FMaH2GZIjmoKDGIKpZFeeqTRM7/3bqZHN1p4qSW3FbBjrATKO5lIQmcb2iaER/hW3hRJ
         2rlNXjQsR2RXlo1TtIyBiGDmPtSB+d1oNogjPzZwzbOhn5+IrU7V/sK6dZ3vmod6KQlO
         ejaDnoLQydK8N5KOKKBmeWvYx/1akgMX60vc85yRGAh1hZfPURPm+QE+k1p6i6BoZ8YB
         I1cg==
X-Gm-Message-State: AOJu0Yx5u2jk97MTfEsUvzlXFnTy6XnXiSjXGBhhq1JWpPUeYQu7RsEZ
	vrhRGlwk+YKjVddSimVSko86GQ==
X-Google-Smtp-Source: AGHT+IGGssrmYKQo06++hnwES4sRRwvQ+H+tZUVgGod48UpHafZ5lCkIM3LAng25TajcdA+SQMzndg==
X-Received: by 2002:a5d:4682:0:b0:319:5234:5c92 with SMTP id u2-20020a5d4682000000b0031952345c92mr1812474wrq.35.1695492428791;
        Sat, 23 Sep 2023 11:07:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id p5-20020a056000018500b0031c855d52efsm7427661wrx.87.2023.09.23.11.07.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 11:07:08 -0700 (PDT)
Message-ID: <84655695-52bf-a67f-e0f1-7ad46fe44e6e@linaro.org>
Date: Sat, 23 Sep 2023 20:07:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 06/15] mailbox: mediatek: Add cmdq_mbox_stop to disable
 GCE thread
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
 <20230918192204.32263-7-jason-jh.lin@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918192204.32263-7-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 21:21, Jason-JH.Lin wrote:
> Add cmdq_mbox_stop to disable GCE thread.
> 
> To support the error handling or the stop flow of the GCE loopping
> thread, lopping thread user can call cmdq_mbox_stop to disable the
> GCE HW thread.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c       | 6 ++++++
>  include/linux/mailbox/mtk-cmdq-mailbox.h | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index 4d62b07c1411..8bd39fecbf00 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -469,6 +469,12 @@ static void cmdq_mbox_shutdown(struct mbox_chan *chan)
>  	spin_unlock_irqrestore(&thread->chan->lock, flags);
>  }
>  
> +void cmdq_mbox_stop(struct mbox_chan *chan)
> +{
> +	cmdq_mbox_shutdown(chan);
> +}
> +EXPORT_SYMBOL(cmdq_mbox_stop);

Plus there are no users.

NAK. This is not code which should be posted upstream.

Best regards,
Krzysztof


