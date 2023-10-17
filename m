Return-Path: <devicetree+bounces-9323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DA07CCAB9
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BFBF281A5D
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 18:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 203AF2D7B7;
	Tue, 17 Oct 2023 18:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A089CA5C
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 18:35:14 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D6EE9E;
	Tue, 17 Oct 2023 11:35:13 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3af6cd01323so3729508b6e.3;
        Tue, 17 Oct 2023 11:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697567713; x=1698172513;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IvrIiJWq+n8YDLTkOFBATbZgJOnUihq2U+eENPEqdgI=;
        b=r07r7jF4FZo4PQAUWLZHeouVmB89GI3FxMVqspmPByc3Zd6ds4Nr/iITI2g+cYl4Sn
         h8Odrr9dm2YykJfgMm/9zf7+fSdBk6uMFn87HbpsGOcrdefO0QzIPeY0yC/jW5FgHz9N
         7H5M6oFiYtjE2SLFgtTmF3cFjHzo8Poyu2EB0tXKxBDlgQkdCGM0TE+k5gkm/E4WZ/Qp
         uN0uN7ev6CdH4h6vCMsEwdfkNXbinWgORTHbfBsNGwAor8gyLMRDHqTnPITcPEF03lti
         f4LCQX8QfC45I3Is8QUI4lmQTBOdpdiDN9Ta8GpJxX9122mwYfC5JVcUr2RHvxa9GDAV
         RU/w==
X-Gm-Message-State: AOJu0Yz75WIFSf4f1daR43y+psrBYRll0Oc9jSglR5eKaIj/rhurRmva
	a/y1PCsoELYmZLyCMN0pqA==
X-Google-Smtp-Source: AGHT+IFwrG2G9V+WzMR8t6/VcVQnYVQqqTMf+zxSRlMmdCuFJWQL/bWxYXJZN3yLyevIWE8VSZNj1w==
X-Received: by 2002:a05:6808:94:b0:3b0:da4a:4823 with SMTP id s20-20020a056808009400b003b0da4a4823mr3195106oic.56.1697567712826;
        Tue, 17 Oct 2023 11:35:12 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bp18-20020a056808239200b003af644e6e81sm346268oib.45.2023.10.17.11.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 11:35:12 -0700 (PDT)
Received: (nullmailer pid 2484073 invoked by uid 1000);
	Tue, 17 Oct 2023 18:35:11 -0000
Date: Tue, 17 Oct 2023 13:35:11 -0500
From: Rob Herring <robh@kernel.org>
To: Mohan Kumar <mkumard@nvidia.com>
Cc: devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com, linux-tegra@vger.kernel.org, vkoul@kernel.org, ldewangan@nvidia.com, robh+dt@kernel.org, dmaengine@vger.kernel.org, jonathanh@nvidia.com
Subject: Re: [PATCH V2 1/2] dt-bindings: dma: Add dma-channel-mask to
 nvidia,tegra210-adma
Message-ID: <169756769843.2483754.101770522333028835.robh@kernel.org>
References: <20231017091816.2490-1-mkumard@nvidia.com>
 <20231017091816.2490-2-mkumard@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017091816.2490-2-mkumard@nvidia.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 17 Oct 2023 14:48:15 +0530, Mohan Kumar wrote:
> Add dma-channel-mask binding doc support to nvidia,tegra210-adma
> to reserve the adma channel usage
> 
> Signed-off-by: Mohan Kumar <mkumard@nvidia.com>
> ---
>  .../devicetree/bindings/dma/nvidia,tegra210-adma.yaml          | 3 +++
>  1 file changed, 3 insertions(+)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

Missing tags:

Acked-by: Rob Herring <robh@kernel.org>




