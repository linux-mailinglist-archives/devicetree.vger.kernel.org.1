Return-Path: <devicetree+bounces-12284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F85B7D8A5E
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 23:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C03121C20CB2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 21:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14073D979;
	Thu, 26 Oct 2023 21:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD5B3D394
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 21:30:56 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2041B1B1;
	Thu, 26 Oct 2023 14:30:55 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1e9baf16a86so828192fac.1;
        Thu, 26 Oct 2023 14:30:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698355854; x=1698960654;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+n4F/tIjxEVGIj5feCsisIXTCZ4rtI6GeUYlCuKBavU=;
        b=qr6FpBzGaq4C7Ax6os7czQKyOcIP3P+vRkvVE5D3UfrVg0zENAWMs5LVobPZvauw4y
         77icmyXONUx3w0psMeNyXZSZhxitCCLR3SpIMkW0Hkj3sMeTJjJDSywy3vXs+0cBxpIw
         KAuLV67cRd8XjWfvG41EBnqYTGypPYiAiJrNyhMUqEsCpqb1/mrpXP1ZuTJb+xUcQw2F
         p45SFGXfbj0zJQoyIMQEuwFZb7w/jyl1jvmCsKz1MDe4YX+gWo5I/1LubNut/2+lmqS7
         psEjzPaZ1ZINDq6E4YRAcipVu1AJjQQyr6LvDHSEbLg1Y1DSTgarqwzHwg5ACr7VelDg
         2ZZQ==
X-Gm-Message-State: AOJu0Yy2as7tpXYJxIoqueKkQn+mxDiDyNbkPs/1ITkhXpRtFRbTcDcy
	DoKm0idrbKRsYWUxOx5ODw==
X-Google-Smtp-Source: AGHT+IH/UTjSPvCsr2fgIuKSuYiroRDllOssl+ncCKZugW4bfxWuuPSnaZRxrb51ueuli2AdceEjHQ==
X-Received: by 2002:a05:6870:d88b:b0:1db:70ee:efed with SMTP id oe11-20020a056870d88b00b001db70eeefedmr926701oac.18.1698355854334;
        Thu, 26 Oct 2023 14:30:54 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id xv8-20020a05687121c800b001e9dabc3224sm22171oab.50.2023.10.26.14.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 14:30:53 -0700 (PDT)
Received: (nullmailer pid 432395 invoked by uid 1000);
	Thu, 26 Oct 2023 21:30:52 -0000
Date: Thu, 26 Oct 2023 16:30:52 -0500
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH] dt-bindings: iommu: arm,smmu: document the SM8650 System
 MMU
Message-ID: <169835584978.432274.5480293102736245515.robh@kernel.org>
References: <20231025-topic-sm8650-upstream-bindings-smmu-v1-1-bfa25faa061e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-smmu-v1-1-bfa25faa061e@linaro.org>


On Wed, 25 Oct 2023 09:30:04 +0200, Neil Armstrong wrote:
> Document the System MMU on the SM8650 Platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


