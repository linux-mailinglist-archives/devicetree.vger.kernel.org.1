Return-Path: <devicetree+bounces-3191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A127AD9C6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:11:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C92892811A1
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A641BDED;
	Mon, 25 Sep 2023 14:11:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7609F63D6
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:11:46 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29DCFCE
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:11:44 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so10052873e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695651102; x=1696255902; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lBOvC0K9KP7qMsTGJs/XlB/BY83dr7+2ydlkGk5mVEI=;
        b=A1ReN1v/MyjTJISpXYZWQ0/P03lWqOwjc+hhpHnHuj1o0MUac2KzSwQPdKUj2EfW6w
         gKZeSHTk47h6yo4YCkIk7KZc9b+jSdf8wLKFIaMuvgP/vMR+/PKtGi0t7+Yh366X+ahs
         NCHlUYF6CqmwiWkUiYU9hXkkovqC4O2ocupYorzUmmkQcFScZxgPY857dfo+8rRP/jsG
         D4k67Ke/fRtNtZ0VrMImhpcuZWr18cSl/tmZomXEakdEJsWIwVu14UZOl8BI1zcD2g28
         1xWdE0Gers5nImse9ZBC0BZvefwRpE4ID1VNWMIB0Tx+847Mw35mina4xPBVg5Ae/+Sv
         zSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695651102; x=1696255902;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lBOvC0K9KP7qMsTGJs/XlB/BY83dr7+2ydlkGk5mVEI=;
        b=LoyT0BeF0yxaDn2O9CFv2prlUl1+jbWLZb87O/jDVFWKZSn0Qa4p3WDHuVdFVciR8B
         dduGOiH+miiIZRbD8+lERpe+7KZ0eYUOR50sa9xVpLe2HGO7YBypT429WkcKKk5ZXkRK
         a1D2BBYUTyYzOdTyyk1DNZE98BWTgyR2mPD05LqLVWwu6roiLGZae3KIAiOj+v4PfQJ1
         80nJK2/q6AajkwbZgAk84+AfIg3uyCLa6r443tlBQW46xMo7oL486XnmzGgiGR7si79c
         8Q5amDwQ7wV6XhHM5Bnmj+2HHL93yEGEvOFVW8Bnll8A+3OD59UiWuFPmbE8iJNKY+M7
         Bc5w==
X-Gm-Message-State: AOJu0Yx/oog//5ycNolNA9lfdLd1z9p5ZJF0G8/TePmWG76XHtyhRq02
	cCtfgu7eCeWthMZ8v1ghfRN1TA==
X-Google-Smtp-Source: AGHT+IH/enSkU0B+xx17RFHSrcUfQKwrTeyF3VIzAeMXRjn8t4tSgmAPSe37mpYZRA3+eXRrZXDAYg==
X-Received: by 2002:a05:6512:2089:b0:500:9d6c:913e with SMTP id t9-20020a056512208900b005009d6c913emr4888703lfr.52.1695651102197;
        Mon, 25 Sep 2023 07:11:42 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id x13-20020aa7d38d000000b0052fe12a864esm5562105edq.57.2023.09.25.07.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 07:11:41 -0700 (PDT)
Date: Mon, 25 Sep 2023 16:11:39 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 1/9] dt-bindings: riscv: Add XVentanaCondOps extension
 entry
Message-ID: <20230925-e2aee59a5ea91fa14fab12ed@orel>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
 <20230925133859.1735879-2-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925133859.1735879-2-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 07:08:51PM +0530, Anup Patel wrote:
> Add an entry for the XVentanaCondOps extension to the
> riscv,isa-extensions property.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index 36ff6749fbba..cad8ef68eca7 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -171,6 +171,13 @@ properties:
>              memory types as ratified in the 20191213 version of the privileged
>              ISA specification.
>  
> +        - const: xventanacondops
> +          description: |
> +            The Ventana specific XVentanaCondOps extension for conditional
> +            arithmetic and conditional-select/move operations defined by the
> +            Ventana custom extensions specification v1.0.1 (or higher) at
> +            https://github.com/ventanamicro/ventana-custom-extensions/releases.
> +
>          - const: zba
>            description: |
>              The standard Zba bit-manipulation extension for address generation
> -- 
> 2.34.1
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

