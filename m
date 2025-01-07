Return-Path: <devicetree+bounces-136321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6A0A04C27
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E729A18867B9
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 22:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC891DED46;
	Tue,  7 Jan 2025 22:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P7TANGwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105F91AA1F4
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 22:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736288550; cv=none; b=NctOOSNgnBbyu1IApwvXeVAO1TDDcc72X5oZh6XiIAyg+sBGtjJstDYHA9APTcOT3rQX4GjSDlJdqJe3qnPanhse8r9M5ZddFY9qPKgwwWpqLjUIM0A4JllnuQHyQApLOWLEQVNEHeMPnIRaNHmi3qU3vhzLnA2TvFTB9SX7dho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736288550; c=relaxed/simple;
	bh=/C9V9k4oRr9NIMlvxTFyU0lVbVL2D3A5g1PZx/mlgWw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IegkLqxk4u77XzIAJMfY2UbKhsALrIgIjRk/5drfCQNUvkSihYZzy9c65nfeDT8yC+1lpEDln18015WFg4xTn8GUdOu1paZzpWTElIlUpJerLYCCC36Gxtng31+8Tmrs+hTlCzN/0tbulvXzQrieGZzTRmMNj4Kwc0thBlrb89A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P7TANGwL; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53e3c47434eso16464658e87.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 14:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736288546; x=1736893346; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6ESQnJJ6RaWplIB/jgPT0AvvoPiUybJLXeZ80lh+Xy4=;
        b=P7TANGwLvo0sqTFQLiFiNOA0Nn2d5Lm5QIT6QW0msF/Inid7SvhhahdWZfpScuLZEI
         VjpZpYW6lRCqc644fGWE3/4If/FZrrc+adPwQvsbqjvZiJhgn07e61x2LBHjWBDrGF/2
         f4OHLIJ1t+5WxdixcC8upYBXUhJHUeCqMZfVq75ep2XgUzSMbKSgIg7YKqKRfO3cKMdK
         Os9DncTRF5vzOrzfDdlIcJ9mH8g27JW5UzpUxS+0kDaLec2tmXmHuKX69013Plg2tnw4
         rVHsO+IFs++qMMOJ3ZtCDVKSSSpfscXu36w3twynW+OdAyMAHo7y7YZv/q8omvmWsBX2
         hEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736288546; x=1736893346;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ESQnJJ6RaWplIB/jgPT0AvvoPiUybJLXeZ80lh+Xy4=;
        b=Xk0q5Elpl6qmf8h18OMQ8K7rxfz6idbCGjJ1+vH0QFKzlXxNwlq3ineztdyUS5v3k8
         C/1ApeyU4vx6pHUdRIY5zZ9zabVNzjCbLkT4GRScP7471PUYB8+zYHVv9SnkM2jFK0qC
         JndsxIvc6M5oBW6G2r07HEUEFPAj7WGcpgwidQ8YyUWJIhtFF79AfqSWCtLbYw4p4P+5
         pr6Sdt2GOGQy6r3Ez1FlCi6nvs5I/eazdIU9Egf+wd+D4OTDLlRIVxzhQlf5U8Ld8cAQ
         uNJHlv7yfdmMWF2v6gNn9RdjrUgQlEpBVwsDX6GLbxec01sKbrkllzmDS/gOc5ypwDXO
         N5Cg==
X-Forwarded-Encrypted: i=1; AJvYcCXHdVD3QXcYyffyrQtI7F4Yo7kzVDYyvDQTgTh6cxqmI1Fx9sD6wHnR58QJ0YNW8fH+6LkQUYrdU9b9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9SXqagrdASoaqPYPrf+C15On6MwNFP6LR0ST2x6X2RXLRyyHD
	EU3O/Brqshqdv43399OS1KjfiprBLRbwFGtm0/Os/gZc65A4Z21avK7NpU9tTrI=
X-Gm-Gg: ASbGncv3uZkv05ofkY1Ev9tY8PoQ42DyB01+R6QOEirI8c11RC7WYVDjKCvONifQBWB
	wcl8w0Gotohp0xJT1gxnHRS8L0PQj+LVrtqaSGRDv2YQn05rLyv/F2nHNIaoVDBvv7/WvuNfQh9
	881xqMLzfvgnp1KFAt2Xy5VJci6eq3W/Qz6uoNeQRAimWr2yqQKhVAFqRt8V/jlOnxToQJDqq17
	bNUmTFQc77trSYi/AXhWTfPJVaYXqlfK9wTnHNwpgiTK/olioh1bxzwKaW7+qqpPqwdOPO4yeTt
	aVUq7Cs57epES2pAjrOr/k8C4brEcXM1F4QZ
X-Google-Smtp-Source: AGHT+IFnS+89P+R20rxSVwXMFgmVIida5oAviwnvCG7UgPRL6sqycM/IAnw4EINYUJaJOUGjeMeCug==
X-Received: by 2002:a05:6512:23aa:b0:540:358d:d9b5 with SMTP id 2adb3069b0e04-542844ad98bmr149812e87.0.1736288546084;
        Tue, 07 Jan 2025 14:22:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832b6csm5379607e87.273.2025.01.07.14.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 14:22:24 -0800 (PST)
Date: Wed, 8 Jan 2025 00:22:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Lucas Stach <l.stach@pengutronix.de>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Jonathan Marek <jonathan@marek.ca>, 
	Mahadevan <quic_mahap@quicinc.com>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Jacopo Mondi <jacopo+renesas@jmondi.org>, dri-devel@lists.freedesktop.org, 
	linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: Correct indentation and style in
 DTS example
Message-ID: <g5u4xazpsgoxes3bwowufrdd266uhwqw2qidqs3tm4wq2qbk6h@bpzh4cnwybaj>
References: <20250107125854.227233-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250107125854.227233-1-krzysztof.kozlowski@linaro.org>

On Tue, Jan 07, 2025 at 01:58:51PM +0100, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.
> 
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../display/amlogic,meson-dw-hdmi.yaml        |  8 +-
>  .../display/bridge/fsl,imx8mp-hdmi-tx.yaml    | 28 +++---
>  .../display/bridge/samsung,mipi-dsim.yaml     | 66 ++++++-------
>  .../display/mediatek/mediatek,aal.yaml        | 46 ++++-----
>  .../display/msm/dsi-controller-main.yaml      | 98 +++++++++----------
>  .../bindings/display/msm/dsi-phy-10nm.yaml    | 40 ++++----
>  .../bindings/display/msm/dsi-phy-14nm.yaml    | 34 +++----
>  .../bindings/display/msm/dsi-phy-20nm.yaml    | 36 +++----
>  .../bindings/display/msm/dsi-phy-28nm.yaml    | 34 +++----
>  .../bindings/display/msm/dsi-phy-7nm.yaml     | 34 +++----
>  .../display/msm/qcom,sa8775p-mdss.yaml        |  7 +-
>  .../bindings/display/renesas,cmm.yaml         | 12 +--
>  12 files changed, 221 insertions(+), 222 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # msm

I think we can take it through drm-misc-next (or even
drm-misc-next-fixes) once we get acks from Renesas and iMX maintainers.

-- 
With best wishes
Dmitry

