Return-Path: <devicetree+bounces-12901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B17057DBCDE
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D705B20CD7
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 15:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2421118658;
	Mon, 30 Oct 2023 15:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B012A12E64
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 15:46:21 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFC1CDD;
	Mon, 30 Oct 2023 08:46:20 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3b2f5aed39cso2874368b6e.1;
        Mon, 30 Oct 2023 08:46:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698680780; x=1699285580;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HhgYLbg9CpuoRxcaeuro+Zs7vQs2cUHUGXONLu3huPI=;
        b=T7PRoXRDWqLLFhzKXevEq4gTTEKHEBoAa+Vq2ohewzuFbmF7RYUIy6SlE76OmZzwXT
         G2oXJPDwWllv28JJQTqx03HzjgF/QpT3EvIr2MdW1tpFe3nfG3yzWy1S1ltwiRTUg/Ov
         gYwfUCG4xWvbE7XxOzHFcydEXpAiBzIDZIQ6WC8ypsqTmsoqIj8bpncX0aeQneJVzRHe
         PixW+TjlmWvZVgvSf/pg0U35WPrqixZaSfFZ+H89n8rsMpNegbmx5vMzFhjHMoXW2PWk
         yLZnkqEokpj1vpMBxoCqLvDN3xspO8abwF8sU4QKwxv3gWoxnE1+LJf16vrxtpM/hZmn
         qnSA==
X-Gm-Message-State: AOJu0YxE7kUdtrVRbenU6KBgeJkXD9MJO1LfniyU3H6u8042+ffwz8bN
	8ji0SgBl/iqPseOpXKFm3w==
X-Google-Smtp-Source: AGHT+IFSruwbJkEig+B3Y64xgE9mhFyNxARc1HIyHctZR+Z00jxUt3Wrrm8hz4v/Q8eRTqSYiXD6+w==
X-Received: by 2002:a05:6808:8ea:b0:3b2:f3e6:f36f with SMTP id d10-20020a05680808ea00b003b2f3e6f36fmr11142849oic.54.1698680780125;
        Mon, 30 Oct 2023 08:46:20 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c7:c3eb:a6fd:69b4:aba3:6929])
        by smtp.gmail.com with ESMTPSA id i13-20020a056808030d00b003afe5617691sm1404553oie.12.2023.10.30.08.46.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 08:46:19 -0700 (PDT)
Received: (nullmailer pid 1240978 invoked by uid 1000);
	Mon, 30 Oct 2023 15:46:16 -0000
Date: Mon, 30 Oct 2023 10:46:16 -0500
From: Rob Herring <robh@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, =?iso-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E?= Prado <nfraprado@collabora.com>, Macpaul Lin <macpaul.lin@mediatek.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-mediatek@lists.infradead.org, Bernhard =?iso-8859-1?Q?Rosenkr=E4nzer?= <bero@baylibre.com>, Sean Wang <sean.wang@mediatek.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: arm64: mediatek: Add
 mt8183-kukui-katsu
Message-ID: <169868077528.1240604.14632740739675998202.robh@kernel.org>
References: <20231026191343.3345279-1-hsinyi@chromium.org>
 <20231026191343.3345279-3-hsinyi@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026191343.3345279-3-hsinyi@chromium.org>


On Thu, 26 Oct 2023 12:09:11 -0700, Hsin-Yi Wang wrote:
> Add katsu sku32 and sku38 which uses different audio codec.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


