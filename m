Return-Path: <devicetree+bounces-16335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B977EE500
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:14:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 867B01C2081F
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 16:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F8333456D;
	Thu, 16 Nov 2023 16:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9586193;
	Thu, 16 Nov 2023 08:14:26 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6ce29d1db6eso1002218a34.1;
        Thu, 16 Nov 2023 08:14:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700151266; x=1700756066;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uPOuAU8vMYFh38SnQyp7EHt1Qwf+rn56I3qW71141fs=;
        b=PXRaeHWz8/nJo78qDYd+5PAM+a+QX9zTS9NXbwjVZTb11S1YXxxDO4a72uYzjqO9/+
         ldXSYNJqgyVeHDYgveY9+OTj2wYTquZuu1cUkgbZzyh42pxgj1cr0/uXtslTe4Fh6M7f
         2HHh6Js/LQJcvhQWJG5FxGhXPUkQ8xqcTi2zNwsMSiXhG4qV9Yzg7mIgKDJjUY5dhEi9
         ymw4X5wUXxh/UbHN1YG/iGNIXAQfKfPk/OG5FAn7gIL2LkUsyJcmtDW1Pc1ncKWZvXJ/
         WTO/zfJ+WYEb9Z3jZiPt2nMFFY9sJbGVsHUSI00TIra+XLd21THnLweHEFVculRFYBAd
         ZhdQ==
X-Gm-Message-State: AOJu0Yz0hgGXYwYSY1Vm87ezXfH3f+f8TPNcVG2lYNa+aWHmRnjMcze0
	iGirf3lwUfS3OVIbCTFeJA==
X-Google-Smtp-Source: AGHT+IHagwFA/Ipg+5SXMbyxN/5DDa33QMtCNElCnTRYpdPtJEU3ZSt1nVnaxpEMdf9BOCBTXSJDYw==
X-Received: by 2002:a05:6830:2b20:b0:6c2:1ff0:b2e1 with SMTP id l32-20020a0568302b2000b006c21ff0b2e1mr1062290otv.4.1700151266031;
        Thu, 16 Nov 2023 08:14:26 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s30-20020a056830439e00b006ce2e464a45sm952501otv.29.2023.11.16.08.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 08:14:25 -0800 (PST)
Received: (nullmailer pid 2422343 invoked by uid 1000);
	Thu, 16 Nov 2023 16:14:24 -0000
Date: Thu, 16 Nov 2023 10:14:24 -0600
From: Rob Herring <robh@kernel.org>
To: Linu Cherian <lcherian@marvell.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, sgoutham@marvell.com, mike.leach@linaro.org, coresight@lists.linaro.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, suzuki.poulose@arm.com, james.clark@arm.com, gcherian@marvell.com, leo.yan@linaro.org
Subject: Re: [PATCH v5 1/7] dt-bindings: arm: coresight-tmc: Add
 "memory-region" property
Message-ID: <170015126381.2422288.18051157836489485044.robh@kernel.org>
References: <20231110112533.2499437-1-lcherian@marvell.com>
 <20231110112533.2499437-2-lcherian@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231110112533.2499437-2-lcherian@marvell.com>


On Fri, 10 Nov 2023 16:55:27 +0530, Linu Cherian wrote:
> memory-region 0: Reserved trace buffer memory
> 
>   TMC ETR: When available, use this reserved memory region for
>   trace data capture. Same region is used for trace data
>   retention after a panic or watchdog reset.
> 
>   TMC ETF: When available, use this reserved memory region for
>   trace data retention synced from internal SRAM after a panic or
>   watchdog reset.
> 
> memory-region 1: Reserved meta data memory
> 
>   TMC ETR, ETF: When available, use this memory for register
>   snapshot retention synced from hardware registers after a panic
>   or watchdog reset.
> 
> Signed-off-by: Linu Cherian <lcherian@marvell.com>
> ---
> Changelog from v4:
> * Description is more explicit on the usage of reserved trace buffer
>   regions
> * Removed "mem" suffix from the memory region names
> 
>  .../bindings/arm/arm,coresight-tmc.yaml       | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


