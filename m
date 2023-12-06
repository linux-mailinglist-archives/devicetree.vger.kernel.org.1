Return-Path: <devicetree+bounces-22482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 260D3807AD8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 22:53:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D54852819E2
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 21:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38224187D;
	Wed,  6 Dec 2023 21:53:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C82398
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 13:53:37 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3b9b5bff21dso209015b6e.2
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 13:53:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701899616; x=1702504416;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TRApxN84tK1OELGvRIkKXdOvX6UMTgem7J1gQuAhgrg=;
        b=Crcw0rOZdJsFmW9wdvA71NcWoNoeurUP94BlMlENGUGuwFivbIDvhDFo/c0gfnsxg3
         zPiZSDR2Wltn1WXOrwaFztrSL26cWZzcGUsXvdyf0I4FV7yEhRs2Yt2KU8NeeUztkIdG
         u52M4jKeygqoicOavy1cNQ3+Um3rZPG2EBxThMV2N8BVgUIiGqsg44aCtxQXXvinLuaY
         K0y5rSPiiNXvh4GgEvtvXTf+eG0VLUTszvW3s1qfcToke35+zNQaGE8/ewEV7B3lAcqW
         K/HzdOQioCLm6/sVeOdH2MzHSXHd8hvIgzovJx7Qd6bm/L5nKpGnrmaLr0kCadekEvnJ
         ZW0Q==
X-Gm-Message-State: AOJu0YxH5nCRXrKSU+GYlSfxEjWbjMGy/cBnlL3mUgixw92Z3mHmxHiN
	ylN8JkSZbhBPFR9qPpRjIw==
X-Google-Smtp-Source: AGHT+IGSHMJia4JEhVitpl4rHwyzT+vJEYWcrBDIAeXj93oiVLvFAOezZjEaBHHG5bU3owr8bMVpeg==
X-Received: by 2002:a05:6808:218e:b0:3b2:ef9e:45af with SMTP id be14-20020a056808218e00b003b2ef9e45afmr2100596oib.13.1701899616447;
        Wed, 06 Dec 2023 13:53:36 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bd32-20020a056808222000b003ae11a7ab80sm141791oib.47.2023.12.06.13.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 13:53:35 -0800 (PST)
Received: (nullmailer pid 3390127 invoked by uid 1000);
	Wed, 06 Dec 2023 21:53:34 -0000
Date: Wed, 6 Dec 2023 15:53:34 -0600
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, krzysztof.kozlowski+dt@linaro.org, marex@denx.de, robh+dt@kernel.org, stefan@agner.ch, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2] dt-bindings: lcdif: Properly describe the i.MX23
 interrupts
Message-ID: <170189961308.3390031.1609585569246344819.robh@kernel.org>
References: <20231206112337.2234849-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231206112337.2234849-1-festevam@gmail.com>


On Wed, 06 Dec 2023 08:23:37 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX23 has two LCDIF interrupts instead of a single one like other
> i.MX devices.
> 
> Take this into account for properly describing the i.MX23 LCDIF
> interrupts.
> 
> This fixes the following dt-schema warning:
> 
> imx23-olinuxino.dtb: lcdif@80030000: interrupts: [[46], [45]] is too long
>         from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Reviewed-by: Marek Vasut <marex@denx.de>
> ---
> Changes since v1:
> - Add missing else to limit the number of irqs for the other variants. (Krzysztof)
> 
>  .../bindings/display/fsl,lcdif.yaml           | 20 ++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 

Applied, thanks!


