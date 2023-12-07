Return-Path: <devicetree+bounces-22836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3A3808F32
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 18:58:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C96BB20BC1
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 17:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4609C4B157;
	Thu,  7 Dec 2023 17:58:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F7331718;
	Thu,  7 Dec 2023 09:58:23 -0800 (PST)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3b9d23c8bf7so820311b6e.0;
        Thu, 07 Dec 2023 09:58:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701971902; x=1702576702;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XlGlC1SkIL9mmE58AXO5RRQ634yhMDTeXthN1KRiRhM=;
        b=oulV3p8FKKu1N+MwwHPqu8KgOslcNAkL3l2U1hkNhCEQhnIDKEHgmWXr7RZJ8S46EI
         ITOYSAEk4Z/PLR4NXDtMO9PeiITRrqLn+3IG3TbUlmo7FHXjB6z1nKyHE5/a9HPFRyzy
         8tKp9VIel2Ea3fWNQgHaf3LOUS6fR4bDt/ksslyWhWOKdn5o65tsOboaa5nxcxplMRGb
         nYIuwlxyf76ZJvDIsNaR6pgl9dAdfaQPrDj4QUIBmkWebf6VdaPDK5NlgcAY50ITW6G6
         wY8laqR6eXehqLe3rt/0zrDQP+gOTax6M/lnwVnTMVN19NYHIneOSYooSipUvp4HFr7b
         L4fw==
X-Gm-Message-State: AOJu0YyKMNGpq2OUlT6gGqYKe8COqKy4af05z06ZQ4dicF+4lu+I2vL9
	NNOtx1+6gE+uAq2zjPSPoAra5JkGrA==
X-Google-Smtp-Source: AGHT+IHxq2Dw8sFsLLI+z4S9TgWxaf6l0cocAGF+yc2TisyC49euiJvcC1n+Yr/0HeIX18RO0y1CyA==
X-Received: by 2002:a05:6870:390c:b0:1fa:fee1:6f1e with SMTP id b12-20020a056870390c00b001fafee16f1emr3075427oap.10.1701971902619;
        Thu, 07 Dec 2023 09:58:22 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k29-20020a05687022dd00b001fb0edac63csm58231oaf.6.2023.12.07.09.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 09:58:22 -0800 (PST)
Received: (nullmailer pid 2977746 invoked by uid 1000);
	Thu, 07 Dec 2023 17:58:20 -0000
Date: Thu, 7 Dec 2023 11:58:20 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nishanth Menon <nm@ti.com>, linux-mediatek@lists.infradead.org, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Olof Johansson <olof@lixom.net>, linux-arm-msm@vger.kernel.org, linux-doc@vger.kernel.org, 
	Andrew Davis <afd@ti.com>, Andrew Lunn <andrew@lunn.ch>, linux-rockchip@lists.infradead.org, 
	Michal Simek <michal.simek@amd.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jonathan Corbet <corbet@lwn.net>, Konrad Dybcio <konradybcio@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-amlogic@lists.infradead.org, 
	Bjorn Andersson <andersson@kernel.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, 
	workflows@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4] docs: dt-bindings: add DTS Coding Style document
Message-ID: <170197172648.2974247.13097453111547800548.robh@kernel.org>
References: <20231203174622.18402-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231203174622.18402-1-krzysztof.kozlowski@linaro.org>


On Sun, 03 Dec 2023 18:46:22 +0100, Krzysztof Kozlowski wrote:
> Document preferred coding style for Devicetree sources (DTS and DTSI),
> to bring consistency among all (sub)architectures and ease in reviews.
> 
> Cc: Andrew Davis <afd@ti.com>
> cc: Andrew Lunn <andrew@lunn.ch>
> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Chen-Yu Tsai <wens@kernel.org>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: Michal Simek <michal.simek@amd.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Olof Johansson <olof@lixom.net>
> Cc: Rafał Miłecki <zajec5@gmail.com>
> Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
> Acked-by: Heiko Stuebner <heiko@sntech.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Acked-by: Konrad Dybcio <konradybcio@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Merging idea: Rob/DT bindings
> 
> Changes in v4
> =============
> 1. Drop label at the top (Jon)
> 2. Grammar fixes (Laurent, Dragan)
> 3. "Unless a bus defines differently, unit addresses shall ..." (Rob)
> 4. Use hex in example of dma-controller (Andrew)
> 5. Example: soc@ -> soc@0
> 6. Reverse points 2 and 3 in "Indentation" (Andrew)
> 7. Use full path to coding style doc (Conor)
> 
> Changes in v3
> =============
> 1. should->shall (Angelo)
> 2. Comments // -> /* (Angelo, Michal)
> 3. Use imaginary example in "Order of Properties in Device Node"
>    (Angelo)
> 4. Added paragraphs for three sections with justifications of chosen
>    style.
> 5. Allow two style of ordering overrides in board DTS: alphabetically or
>    by order of DTSI (Rob).
> 6. I did not incorporate feedback about, due to lack of consensus and my
>    disagreement:
>    a. SoM being DTS without DTSI in "Organizing DTSI and DTS"
> 
> Changes in v2
> =============
> 1. Hopefully incorporate entire feedback from comments:
> a. Fix \ { => / { (Rob)
> b. Name: dts-coding-style (Rob)
> c. Exceptions for ordering nodes by name for Renesas and pinctrl (Geert,
>    Konrad)
> d. Ordering properties by common/vendor (Rob)
> e. Array entries in <> (Rob)
> 
> 2. New chapter: Organizing DTSI and DTS
> 
> 3. Several grammar fixes (missing articles)
> 
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-amlogic@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-arm-msm@vger.kernel.org
> Cc: workflows@vger.kernel.org
> Cc: linux-doc@vger.kernel.org
> ---
>  .../devicetree/bindings/dts-coding-style.rst  | 196 ++++++++++++++++++
>  Documentation/devicetree/bindings/index.rst   |   1 +
>  2 files changed, 197 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dts-coding-style.rst
> 

I added the quotes as discussed and applied, thanks!

Rob

