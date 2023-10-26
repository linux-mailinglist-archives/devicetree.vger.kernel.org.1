Return-Path: <devicetree+bounces-12225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4A57D8714
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83C1DB2102A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CAF237C85;
	Thu, 26 Oct 2023 16:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427F31A5B9
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 16:55:06 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1980D1A1;
	Thu, 26 Oct 2023 09:55:05 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6ce2988d62eso713414a34.1;
        Thu, 26 Oct 2023 09:55:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698339304; x=1698944104;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UqVX3Y2hh8wF3AF0b034MVtSAyVodiL2k0GJvFKx1sc=;
        b=sA4UNd88RwHPL21iGMVPP3GLhvFlfBDTWv8pcUx1aAGK/vwY+N4oOdDX8j6L80HSzX
         FFRUlubiyD17UFn7zeBkjRYta/oeaIngG0lf4KInJosxgcL18xHcpxVQgKnvNKtnd6lO
         6Guk8r2fVZnB6CqjVFZxjF3rMza0it/kVFz9taFRG2yZ7pGUZVzO/1M4P9Cef9OwufmJ
         ETBQ/mgwXB28G4LsqHTZl2hU3EmyuB7/3gS4NQhBPZJHZ2TX68tJ83na06++sZoDlvwa
         xYkPMA0Yt6/wQY6Y7UAluAoFV70+kFAz5qBYTSbGwY4Gf5jnSfE7aCbnGAwjaiCbRksF
         Bplw==
X-Gm-Message-State: AOJu0YyVb8cLR+G/zQmmaI05yspuGymP6c/HwaHAYGKxcwKa0tHTRjo5
	3DJ0X6MzvnQyk9wIm1wFyBoD0cK3eQ==
X-Google-Smtp-Source: AGHT+IE/MH+JJgS5vEdXK70LkjEegow7R58Hj5TKMfeDduznSgUmOTQxskGFijfaajLhCl4XEse0/w==
X-Received: by 2002:a05:6830:3102:b0:6cf:6837:e4aa with SMTP id b2-20020a056830310200b006cf6837e4aamr12666578ots.27.1698339304032;
        Thu, 26 Oct 2023 09:55:04 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v25-20020a9d69d9000000b006c65f431799sm2742181oto.23.2023.10.26.09.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 09:55:03 -0700 (PDT)
Received: (nullmailer pid 4014885 invoked by uid 1000);
	Thu, 26 Oct 2023 16:55:02 -0000
Date: Thu, 26 Oct 2023 11:55:02 -0500
From: Rob Herring <robh@kernel.org>
To: Guo Mengqi <guomengqi3@huawei.com>
Cc: vkoul@kernel.org, dmaengine@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, xuqiang36@huawei.com, chenweilong@huawei.com
Subject: Re: [PATCH v6 2/2] dt-bindings: dma: HiSilicon: Add bindings for
 HiSilicon Ascend sdma
Message-ID: <20231026165502.GA3979802-robh@kernel.org>
References: <20231026072549.103102-1-guomengqi3@huawei.com>
 <20231026072549.103102-3-guomengqi3@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026072549.103102-3-guomengqi3@huawei.com>

On Thu, Oct 26, 2023 at 03:25:49PM +0800, Guo Mengqi wrote:
> Add device-tree binding documentation for sdma hardware on
> HiSilicon Ascend SoC families.
> 
> Signed-off-by: Guo Mengqi <guomengqi3@huawei.com>
> ---

This is where you explain any expected failure. Resending the same patch 
with the same failure again is not a great strategy. The patch needs to 
stand on its own and not rely on some explanation in a prior version.

>  .../bindings/dma/hisilicon,ascend-sdma.yaml   | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

I had missed that pasid-num-bits and dma-can-stall are IOMMU consumer 
properties. (We really should have prefixed them with 'iommu'.) I've now 
added them to dtschema which should fix the warning.

Rob

