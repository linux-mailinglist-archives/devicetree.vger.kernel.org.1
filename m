Return-Path: <devicetree+bounces-19356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7537FA85D
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 18:53:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C47BB20F0E
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B66936B03;
	Mon, 27 Nov 2023 17:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C550B6;
	Mon, 27 Nov 2023 09:53:13 -0800 (PST)
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-58d54612d9cso1220577eaf.1;
        Mon, 27 Nov 2023 09:53:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701107592; x=1701712392;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gXEZGcv8bSxQjKfcCrALAvNXAs+CKpToCxY7DnKjWaE=;
        b=XFZa7zWqCi5ksV2SE5Cp9rR38xDuJHr5hEJyxeREMN0RjAajWVNX4H08C44+VNOj0T
         2Oh8jL98JlWy5TN+xVKKtW0wBtlZSEa2kIxiqsoKUMDGJ4gFbJtg5jKTULy0qB7pPjDs
         Ms377jNZ5oYyCc9kULSsewWaUL0tZZLsF6bl4FJK+hOG//rHFs/cEYJRAqtdxOCjXybq
         P0jnXK9DtbROMrpc7Zm7YVN2WMglVwwZFFQX0H9U6frUtVto8Nxw1YMHZP7xIjvQpAsS
         ohCh+cKRMDCvZFBB6s1DP8aEhZm3bYJdyZ9tR16cDgc0ANN8c4t1Y3/AxX068nzqJOIW
         Cbyg==
X-Gm-Message-State: AOJu0YyJO32OVe5U4d8i+11LaVBH1927/O1t4chxX/EhPowl+BCIWhg9
	+kyU1OwB8t5RKWXLpUEUhw==
X-Google-Smtp-Source: AGHT+IHqCcFjtcM7hpVFdO1GU5tjNNQyP+pOeAzsBXWkues29+89h8GwQNH+gICSaOfRfB6G2/lWGA==
X-Received: by 2002:a05:6820:514:b0:58d:9d79:abc with SMTP id m20-20020a056820051400b0058d9d790abcmr2490913ooj.1.1701107592638;
        Mon, 27 Nov 2023 09:53:12 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i14-20020a4aab0e000000b0057327cecdd8sm1545477oon.10.2023.11.27.09.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 09:53:11 -0800 (PST)
Received: (nullmailer pid 1865094 invoked by uid 1000);
	Mon, 27 Nov 2023 17:53:10 -0000
Date: Mon, 27 Nov 2023 11:53:10 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Walle <mwalle@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org, Jitao Shi <jitao.shi@mediatek.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: mediatek: dsi: remove Xinlei's mail
Message-ID: <170110758909.1864817.4462999891137574457.robh@kernel.org>
References: <20231123134927.2034024-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231123134927.2034024-1-mwalle@kernel.org>


On Thu, 23 Nov 2023 14:49:27 +0100, Michael Walle wrote:
> Xinlei Lee's mail is bouncing:
> 
> <xinlei.lee@mediatek.com>: host mailgw02.mediatek.com[216.200.240.185] said:
>     550 Relaying mail to xinlei.lee@mediatek.com is not allowed (in reply to
>     RCPT TO command)
> 
> Remove it.
> 
> Signed-off-by: Michael Walle <mwalle@kernel.org>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml       | 1 -
>  1 file changed, 1 deletion(-)
> 

Applied, thanks!


