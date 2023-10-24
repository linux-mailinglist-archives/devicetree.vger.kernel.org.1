Return-Path: <devicetree+bounces-11453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F29057D5CE1
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:05:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 822A3B20FC9
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08A73D3BE;
	Tue, 24 Oct 2023 21:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7783038DCC
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:05:10 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2831C10CE;
	Tue, 24 Oct 2023 14:05:09 -0700 (PDT)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-581d4f9a2c5so3174517eaf.0;
        Tue, 24 Oct 2023 14:05:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698181508; x=1698786308;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I9Jm9ApzQsIzZy9Gg4QWmLADDrD7P3P/rQ+FPHDJPLY=;
        b=n0McznPp9pEICAf0LUESvwAzCvnfOQJTjTn7pIiWp25W6MlUXoIPTb6Mt2h8j9F5ul
         +kgua5CKnY8lg2HHem9R/OHvhyuiA+EA9sJrdeZY3GPzwswSkr0h2ZM9r6SBBzXqHkGw
         jKwik/llSKkCtkddJeCtVXg3ovBDDMhvr/YXZ3X4lBrUpFpaAJMcPISsyAqUYxxSqPXS
         1oGvHZIYvUNcZZ5KGAcC/QLup7gUhw8EgQXXSW1BR5jePPqEwi4wkUzDl33L39A2O9u2
         TCfCwl5NLffPZvWuK+tYWUTy/X9JLMeSiRCJFzyg3obEb0idvMcl1jzEwER7E0i86YrV
         kA1w==
X-Gm-Message-State: AOJu0YyOc0xzgvrolK+hFGE7ntPnSPOYH3UMFuForJthobAhBqez2v1E
	p/qF2TN0ZRMYOmgYZuAitw==
X-Google-Smtp-Source: AGHT+IF7Nx137HVm0cdS3eQV3tQRM+AfGLBpEp3+amIbNonfpHoo43OeYB/YL3TfKLtWBudotEAICg==
X-Received: by 2002:a4a:da54:0:b0:571:28d5:2c71 with SMTP id f20-20020a4ada54000000b0057128d52c71mr12909779oou.2.1698181508427;
        Tue, 24 Oct 2023 14:05:08 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e22-20020a4a5516000000b0057e54da7201sm2178503oob.35.2023.10.24.14.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:05:07 -0700 (PDT)
Received: (nullmailer pid 591081 invoked by uid 1000);
	Tue, 24 Oct 2023 21:05:06 -0000
Date: Tue, 24 Oct 2023 16:05:06 -0500
From: Rob Herring <robh@kernel.org>
To: Jim Liu <jim.t90615@gmail.com>
Cc: linus.walleij@linaro.org, linux-gpio@vger.kernel.org, openbmc@lists.ozlabs.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, brgl@bgdev.pl, linux-kernel@vger.kernel.org, JJLIU0@nuvoton.com
Subject: Re: [PATCH v6 1/3] dt-bindings: gpio: add NPCM sgpio driver bindings
Message-ID: <169818150576.590864.5480268670179831271.robh@kernel.org>
References: <20231024090631.3359592-1-jim.t90615@gmail.com>
 <20231024090631.3359592-2-jim.t90615@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024090631.3359592-2-jim.t90615@gmail.com>


On Tue, 24 Oct 2023 17:06:29 +0800, Jim Liu wrote:
> Add dt-bindings document for the Nuvoton NPCM7xx sgpio driver
> 
> Signed-off-by: Jim Liu <jim.t90615@gmail.com>
> ---
> Changes for v6:
>    - Drop quotes for $ref
>    - Add and drop '|' for description
>    - Add space after 'exposed.'
>    - remove status
> Changes for v5:
>    - remove bus bus-frequency
>    - modify in/out description
> Changes for v4:
>    - modify in/out property
>    - modify bus-frequency property
> Changes for v3:
>    - modify description
>    - modify in/out property name
> Changes for v2:
>    - modify description
> ---
>  .../bindings/gpio/nuvoton,sgpio.yaml          | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/nuvoton,sgpio.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


