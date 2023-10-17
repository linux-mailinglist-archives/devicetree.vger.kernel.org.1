Return-Path: <devicetree+bounces-9402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9A27CCDC6
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 22:19:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 27F462813C5
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D94D43105;
	Tue, 17 Oct 2023 20:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A63430EC
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 20:19:04 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D7992;
	Tue, 17 Oct 2023 13:19:03 -0700 (PDT)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-581b6b93bd1so1526228eaf.1;
        Tue, 17 Oct 2023 13:19:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697573943; x=1698178743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6YKzXb6RpcvAIE2KNseI2JNeCjjBedEHxdHH0ygsVs=;
        b=CZeX9f9JGRBQAGsPQIG+7pwpbu9eBSjOUKMs6aA/9qmbpt4boF2g9+nE4eP531eNjN
         bM+xQBdSl5HwMNO15FAjSZr4eSQiUaxzm41IYjNlVP+JhwTveEJyyiCDlSVkmQXtFbbh
         /wEEJ1JKOQPDqa+IXyTBZ3wv0GVwovpzslnLqH0pdqoTgitlsGL1STvhfR716cRf+Nk5
         tcmdvo07N1fAD2XUvLUaDt8Qac4e/rPsVcQguGyFrkG4tFV+fkfPgBdwzHR25lfMc2Bj
         ugVwig5jT71yWrrPmNIA8lB5/Ezn8B0CQN8jR2k5N5dh5v0wgC5xyjpUd7TqqbsYmNU3
         stUQ==
X-Gm-Message-State: AOJu0YwBLDBRzQjwdotmsFwrdT14hb/74IQVvsHnC+zefgYo9tevhOi4
	J/eibn4CHak8Bz3Yha1q7Q==
X-Google-Smtp-Source: AGHT+IGvqa31RZJ8r/SrafiLvgLLHO+b84rMNqNQHLDYchD24kgtHpxnm526SRtBWsxbafS8D89ukQ==
X-Received: by 2002:a4a:db86:0:b0:57e:1618:e700 with SMTP id s6-20020a4adb86000000b0057e1618e700mr3406874oou.7.1697573943076;
        Tue, 17 Oct 2023 13:19:03 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f7-20020a4aeb07000000b0057bcbc23738sm372285ooj.17.2023.10.17.13.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 13:19:02 -0700 (PDT)
Received: (nullmailer pid 2681966 invoked by uid 1000);
	Tue, 17 Oct 2023 20:19:01 -0000
Date: Tue, 17 Oct 2023 15:19:01 -0500
From: Rob Herring <robh@kernel.org>
To: Hsiao Chien Sung <shawn.sung@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, Jason-JH Lin <jason-jh.lin@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, David Airlie <airlied@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, linux-kernel@vger.kernel.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v3 03/11] dt-bindings: display: mediatek: ovl: Modify
 rules for MT8195/MT8188
Message-ID: <169757394073.2681910.919376164260775888.robh@kernel.org>
References: <20231017064717.21616-1-shawn.sung@mediatek.com>
 <20231017064717.21616-4-shawn.sung@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017064717.21616-4-shawn.sung@mediatek.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Tue, 17 Oct 2023 14:47:09 +0800, Hsiao Chien Sung wrote:
> Modify rules for both MT8195 and MT8188.
> Hardware capabilities include color formats and AFBC are
> changed since MT8195, stop using the settings of MT8183.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,ovl.yaml      | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


