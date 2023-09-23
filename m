Return-Path: <devicetree+bounces-2727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 649187AC449
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 20:04:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1436D281DF7
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:04:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2649A210FC;
	Sat, 23 Sep 2023 18:04:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE21820B1B
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:04:51 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38DEB127
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:04:50 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-52fe27898e9so4574865a12.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695492289; x=1696097089; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bLYCr2Z4vuDAhql4XDXkXixLZPPP1JO3qvIuyryDbtU=;
        b=MdfOxM+4i5rXjQE6r64pURUoMCKoCA9GMhjezZ3FNry/5OafHYfU5xE4f5wBK9//Gk
         8hMGkMsRt664FFGP23+Jmo93tx42XFnUzMzWv5iQL7vDY3+hHdedqV45PHBtBoAK0H6p
         4wRhKS+OBihlSbvEkwcpJTUsNM+QRahSckhNTuoXzYpaHizXm9GIw0+OHQhbp14GwoTt
         q/a3m8mFW6YVjP5H+r13HFkrHCFT1MhEqzb+5EFPsfND1IabYGZK5C7ANCZbwen8RSJX
         V3mFm+FVjR4hcsBXz5kGgOeIFwl4lVlLXYLuzmrlQff+PYoob0YFyDpUwkceIlayqus4
         c9FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695492289; x=1696097089;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bLYCr2Z4vuDAhql4XDXkXixLZPPP1JO3qvIuyryDbtU=;
        b=QoJAbVH+YLnIRPUUQwMYLhZi9wv5SwWyDbJNHS2ceIlXuzgdRwGKMqh+/bIcd/LP5j
         YtDfuew00jtE8ALME9OSLZYbXYqPcaBkkubOBb8s7sIeCYGiBm8O7RxohVupfZ6qTQ4o
         7/FZWx0RxxEZyzInSWjzvg6P5wkJh++nbs+Xb8cnWfY6NzPw+imlPDr63CQa3k3M/TuV
         yfgIa6k+NJJOOglFIz6DUGyifeeUP036k4cZuRA5qUnq8UsLP3b+6ky5xv233GWWKfQP
         shAZYqSLgMT/GhU3HfYADc+ODsmBc2dDiQELeYSTmCVCYWahvcprucyUvxuQqQ1dqONC
         KQyw==
X-Gm-Message-State: AOJu0Yxwt7o1l1Wb0SpD1vFVBRGgw9FH5XXQrBl5ja2K4iI/v0XJvPIf
	2a/YfY5PoiZweCmVvvTuqIZJFg==
X-Google-Smtp-Source: AGHT+IEw+sN5D8rf7LUOkThHrXnJDjHXiCrShJbLvyy6HlUTwvbaS++DGIvd128TxX7bpTRBo77clg==
X-Received: by 2002:aa7:d518:0:b0:522:2111:1063 with SMTP id y24-20020aa7d518000000b0052221111063mr2280637edq.18.1695492288665;
        Sat, 23 Sep 2023 11:04:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id s3-20020aa7d783000000b0053116e45317sm3534309edq.44.2023.09.23.11.04.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 11:04:48 -0700 (PDT)
Message-ID: <46e6aba3-cd10-5fb1-c217-5d9341a65381@linaro.org>
Date: Sat, 23 Sep 2023 20:04:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 08/15] soc: mediatek: Add cmdq_pkt_finalize_loop to CMDQ
 driver
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
 <20230918192204.32263-9-jason-jh.lin@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918192204.32263-9-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 21:21, Jason-JH.Lin wrote:
> Add cmdq_pkt_finalize_loop to CMDQ driver.
> 
> cmdq_pkt_finalize_loop appends end of command(EOC) instruction and
> jump to start of command buffer instruction to make the command
> buffer loopable.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 23 +++++++++++++++++++++++
>  include/linux/soc/mediatek/mtk-cmdq.h  |  8 ++++++++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 4be2a18a4a02..bbb127620bb3 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -475,6 +475,29 @@ int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  }
>  EXPORT_SYMBOL(cmdq_pkt_finalize);
>  
> +int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt)
> +{
> +	struct cmdq_instruction inst = { {0} };
> +	int err;
> +
> +	/* insert EOC and generate IRQ for each command iteration */
> +	inst.op = CMDQ_CODE_EOC;
> +	inst.value = CMDQ_EOC_IRQ_EN;
> +	err = cmdq_pkt_append_command(pkt, inst);
> +	if (err < 0)
> +		return err;
> +
> +	/* JUMP to start of pkt */
> +	err = cmdq_pkt_jump(pkt, pkt->pa_base);
> +	if (err < 0)
> +		return err;
> +
> +	pkt->loop = true;
> +
> +	return err;
> +}
> +EXPORT_SYMBOL(cmdq_pkt_finalize_loop);

1. Missing GPL
2. Missing kerneldoc
3. Missing user
4. Are you going to split the patchset into one function per patch? No.

Best regards,
Krzysztof


