Return-Path: <devicetree+bounces-5602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F06187B6CF5
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 17:21:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9D018280C3D
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97DDD34CEC;
	Tue,  3 Oct 2023 15:20:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1911DDC7
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 15:20:56 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BFD2B7
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 08:20:55 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1c735473d1aso8086015ad.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 08:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696346454; x=1696951254; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+Fi0GvVL1UlJlWvA6+wPBTvjnYAhizI6Olhrf8X5QnE=;
        b=jYWxL9eXcRXRPLUxOd7IetRBizK/L8Wos1jlIpu8XpdOntEIg096Nqtl0/ArP/BPpJ
         2EWTeBf1zZo4ZH0cOE9v9EesI5H/EkG7/2Q0RlJmjpCNAFPu2CEHtshC8IcHoVJzqTUw
         b2F1iVKbbrAVby/eotyeJSBeMMCYLCNHxbxk1fTqdO2UtczNQYsx4ksJq8goNd9euZ81
         RXH+30LAzuWbhiSY2LOm59o/bmEp3IUfOM9XtUNVGXtSX2c7s+CFVort8qv3TZTM7QFB
         yiWwQQhP2aI1U+yuGbaC4OLSIwygP5zhlSpDKUUMvuxHXk2e7StSyLe/Xor51PBZRyaf
         14cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696346454; x=1696951254;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Fi0GvVL1UlJlWvA6+wPBTvjnYAhizI6Olhrf8X5QnE=;
        b=QPRfXvPhDmqQRwIDNoTJCL/DuNoduY5K2fBgj8vtrLaLRIbFzMZYX1i1WSBB9EmISx
         rssY9k76JqGtEjxc4Qa9Lsk/gitWjsBV06oAsUDPu0WxQvSH2tyUZOVv2J8A1hb/yUCh
         bexI+f/xXaAefGh1szxAbVUIFA9zZmJcMBmA9t+Nslldogwz1sMvc2AIdgxV2U3revZQ
         fdkFHlI1uY7TL4cD6w/wPFaoa6FRgMlcx97Qb6TlAWtelj2VLSJ2ydPfbUd6+7bZuMSd
         pLn/PE9WlQWkNFekpWtj9paQk1Ksl4z8VBlDCD0nN0B4PaOtD6DAcQRKcpfQ2JGMI+mK
         M5mw==
X-Gm-Message-State: AOJu0YyoM4N3qI1P1sj1e1J2pbJ4hMgdJS74YmmhibzNoRnmySasS9rO
	nf4qMyogf0FyydTgt4H1h4jP3Q==
X-Google-Smtp-Source: AGHT+IHbk4360AQXMEM8OHKJjDDmSkblY5FgQIBA5Fra9XDJdxKFPKgQIzSaAMDLRapNNLqBYtu7wQ==
X-Received: by 2002:a17:902:d512:b0:1c4:c5d:d7fa with SMTP id b18-20020a170902d51200b001c40c5dd7famr13112626plg.45.1696346454478;
        Tue, 03 Oct 2023 08:20:54 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:9379:e1e1:dd3c:a271])
        by smtp.gmail.com with ESMTPSA id w5-20020a170902d3c500b001c74df14e72sm1684106plb.212.2023.10.03.08.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 08:20:53 -0700 (PDT)
Date: Tue, 3 Oct 2023 09:20:51 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabien Parent <fparent@baylibre.com>,
	Miles Chen <miles.chen@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Sam Shih <sam.shih@mediatek.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Jieyy Yang <jieyy.yang@mediatek.com>,
	Tinghan Shen <tinghan.shen@mediatek.com>,
	Seiya Wang <seiya.wang@mediatek.com>, soc@kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] MAINTAINERS: Add Angelo as MediaTek SoC co-maintainer
Message-ID: <ZRwxUz+K1SwGVQU3@p14s>
References: <20231003-mediatek-fixes-v6-7-v1-0-dad7cd62a8ff@collabora.com>
 <20231003-mediatek-fixes-v6-7-v1-1-dad7cd62a8ff@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231003-mediatek-fixes-v6-7-v1-1-dad7cd62a8ff@collabora.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 03, 2023 at 01:13:43PM +0200, AngeloGioacchino Del Regno wrote:
> I am a top reviewer mainly for MediaTek SoC related patches in most
> subsystems and I've also been upstreaming both improvements, fixes
> and new drivers and devicetrees when required.
> 
> The MediaTek scene saw a generous increase in number of patches that
> are sent to the lists every week, increasing the amount of required
> efforts to maintain the MTK bits overall, and we will possibly see
> even more of that.
> 
> For this reason, and also because of suggestions and encouragement
> coming from the community, I'm stepping up to be a co-maintainer of
> MediaTek SoCs support.
> 
> Acked-by: Matthias Brugger <matthias.bgg@gmail.com>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Link: https://lore.kernel.org/r/20230929082009.71843-1-angelogioacchino.delregno@collabora.com
> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90f13281d297..57f82fcea1e7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2327,7 +2327,7 @@ F:	drivers/rtc/rtc-mt7622.c
>  
>  ARM/Mediatek SoC support
>  M:	Matthias Brugger <matthias.bgg@gmail.com>
> -R:	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> +M:	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  L:	linux-kernel@vger.kernel.org
>  L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
> 
> -- 
> 2.42.0
> 
> 

