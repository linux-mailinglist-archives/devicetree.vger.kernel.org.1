Return-Path: <devicetree+bounces-16394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DE47EE78E
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:35:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 709412816FC
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 19:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E45246524;
	Thu, 16 Nov 2023 19:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 029E9192;
	Thu, 16 Nov 2023 11:34:55 -0800 (PST)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5872b8323faso586788eaf.1;
        Thu, 16 Nov 2023 11:34:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700163294; x=1700768094;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UcjcJ6yC84qjYRKDtkrCm3IWQlELi8MIdlcWyAso3aI=;
        b=cAlVbRtE79xHkDw7Vl+DT1laY1A55fNWfU8LeB5lGZz1TiE+lcoq9wmM6abcxsmj7S
         nkMkqQ4l2y8QCucszlyd1cWJLlGLkRqvNKoDRebM7ImK7+3cl5uKCcEo1gK2jYHO5ASe
         s0lPN/KgWIyGjg1jmzlsfq3TRBKdLDPlumg2jIyUxbiQ/ztQcMjZEuPSgRsrWaWWi23G
         t95Voryoub9fx0vC3FgisyAZzVDN5y6MOSPu6ocLMcx12s5ANLplxz5HMHEb7xXA7IYY
         qdn7TQSH6Rr6rdO+5kqqJ4CVOuHZm4zL8RNe4XzHY3F7mytdAkWbGnj4XvPqWR59A5/Y
         0vcw==
X-Gm-Message-State: AOJu0YwatwSQtab2k+pylvypTTj7UGXtCIrbQp3o7pRzml8ULDPK0UwK
	JFv/SqMJkGawaZN8lyXFXg==
X-Google-Smtp-Source: AGHT+IE1k/pE704kJjj6JvCaj4cD+f1bZp3wmmUcVUY+DPlLnohekIjBe9RsbsFf9GrFOEXaMBLK/A==
X-Received: by 2002:a4a:ea0f:0:b0:587:2b3c:e11f with SMTP id x15-20020a4aea0f000000b005872b3ce11fmr19037504ood.0.1700163294242;
        Thu, 16 Nov 2023 11:34:54 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y7-20020a4aaa47000000b0058a193dbc7fsm14879oom.15.2023.11.16.11.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 11:34:53 -0800 (PST)
Received: (nullmailer pid 3084507 invoked by uid 1000);
	Thu, 16 Nov 2023 19:34:50 -0000
Date: Thu, 16 Nov 2023 13:34:50 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Davis <afd@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/4] dt-bindings: arm: keystone: Convert keystone.txt
 to YAML
Message-ID: <170016329016.3084373.13644981441783739420.robh@kernel.org>
References: <20231114212911.429951-1-afd@ti.com>
 <20231114212911.429951-3-afd@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231114212911.429951-3-afd@ti.com>


On Tue, 14 Nov 2023 15:29:10 -0600, Andrew Davis wrote:
> Convert keystone.txt to ti,keystone.yaml.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  Documentation/arch/arm/keystone/overview.rst  |  2 +-
>  .../bindings/arm/keystone/keystone.txt        | 42 ---------------
>  .../bindings/arm/keystone/ti,keystone.yaml    | 53 +++++++++++++++++++
>  3 files changed, 54 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/keystone/keystone.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/keystone/ti,keystone.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


