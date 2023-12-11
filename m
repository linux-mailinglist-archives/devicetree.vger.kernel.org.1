Return-Path: <devicetree+bounces-24021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B07BC80D611
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 19:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E213C1C21513
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E8B9FBE0;
	Mon, 11 Dec 2023 18:31:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30A75AC;
	Mon, 11 Dec 2023 10:31:00 -0800 (PST)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-58e256505f7so2555299eaf.3;
        Mon, 11 Dec 2023 10:31:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702319459; x=1702924259;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8NOhlYnm+FZkbVpAWn8tzYqB/VPDJafzom4vdukGDH0=;
        b=nyewRtz1KzJwIouP5dEO5XUTA8CMUrYbBqe+mbItCSNasEXKniC1Em+VJsMUA9Mtvj
         uaHk7itj6S7Apzv4+sq0WvndcZ+SdLETjlQUaKdKhcdSkvRswNCp2MHNGK8gCDkpM9Cp
         UDQs00556Y2uK+Gs9U3NKp/8DYQBcYM4Jljz0XdCu9kTowlKGfpMDweBbG7Isfb6J82f
         G2lfknj16JjFkQlr3MRz/tKAVHXWqy+4YuQKXudGGbt104F50uh7qiQGr9yYxG9R/oVU
         4eBMPRoZ2q2EzrBKzOLgy5JzqkxEdM+8gkRVLSxxXjTHExplpbQ3Zo5eXd+662Cf3FKN
         5YPQ==
X-Gm-Message-State: AOJu0YxOyGQPtt9R6iAl3yaqOEkWeOsb6dZU/j+y6gFHWsFq/0FofHUs
	EiS/03RBBUhkiEzYhjnfUA==
X-Google-Smtp-Source: AGHT+IFIL3mi1TarX0OKsbht5ruPGj6H3DQ8vegu9JVdHB14VHw1O0mXLliII3Ff4OrzWs8gVRGISA==
X-Received: by 2002:a05:6820:556:b0:58d:d525:6b68 with SMTP id n22-20020a056820055600b0058dd5256b68mr4479054ooj.7.1702319459382;
        Mon, 11 Dec 2023 10:30:59 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v13-20020a4a8c4d000000b005906f420ba9sm2010055ooj.43.2023.12.11.10.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 10:30:58 -0800 (PST)
Received: (nullmailer pid 2668308 invoked by uid 1000);
	Mon, 11 Dec 2023 18:30:57 -0000
Date: Mon, 11 Dec 2023 12:30:57 -0600
From: Rob Herring <robh@kernel.org>
To: David Heidelberg <david@ixit.cz>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Ulf Hansson <ulf.hansson@linaro.org>, linux-riscv@lists.infradead.org, Luca Weiss <luca@z3ntu.xyz>, Catalin Marinas <catalin.marinas@arm.com>, Anup Patel <anup@brainfault.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, devicetree@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: merge qcom,idle-state with
 idle-state
Message-ID: <170231927021.2664622.14216212511291629895.robh@kernel.org>
References: <20231202234832.155306-1-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231202234832.155306-1-david@ixit.cz>

On Sun, 03 Dec 2023 00:47:17 +0100, David Heidelberg wrote:
> Merge Qualcomm-specific idle-state binding with generic one.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> 
> ---
> v4:
>  - drop Linux-specific details
>  - integrate compatible into existing block
>  - added surrounding patches fixing node names
> v3:
>  - integrate into idle-state.yml
>  - original patch name was:
>    "[v2] dt-bindings: arm/msm/qcom,idle-state convert to YAML"
> 
>  .../bindings/arm/msm/qcom,idle-state.txt      | 84 -------------------
>  .../devicetree/bindings/cpu/idle-states.yaml  | 80 +++++++++++++++++-
>  2 files changed, 76 insertions(+), 88 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/msm/qcom,idle-state.txt
> 

I kept the single entry compatibles as 1 enum and applied, thanks!


