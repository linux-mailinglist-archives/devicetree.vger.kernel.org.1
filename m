Return-Path: <devicetree+bounces-11055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E407D3DFA
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:41:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C1BC1C20A15
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CED52111F;
	Mon, 23 Oct 2023 17:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5BF1BDEB;
	Mon, 23 Oct 2023 17:40:58 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 721DBB0;
	Mon, 23 Oct 2023 10:40:57 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6c4b9e09521so2505781a34.3;
        Mon, 23 Oct 2023 10:40:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698082857; x=1698687657;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gJUB7T6ggr9ReWGTHjmIzl9odtVPcmxjSmpLxnF/YjE=;
        b=VTOiTKNeh0qvTcAUYXnF+O67rR3klIVi5shGC/jyK9GcACRWIrbyHcZnfO4wh9++Xq
         Dr5pEfF4+aC6T77BbDSS8lHzwW7Qonlc7uXjJoF5sVgg9voiDsQTW8r5lTB6S9VC2Ii1
         XnDgYtZt5j4/1Vy72HqA94KwvV0YkeppdpM/pvoLrK3J4Qj+/tceu9R2fTesupHbNRz+
         WrAqHbgJjvhsVtz9BMRntmkBoN2YJ5Y4vIzPimrV2xkHd6wt4tZx2IZWzqKgUqUu5CzT
         H4/lj6bI/5xb/gqdS000Oy5xpmZIOE5uvIH5jIU0cPizJDh9iLls36ghC0jxDbHXy7Pb
         97Jw==
X-Gm-Message-State: AOJu0YyxOjSC5BwqyReI/uZE/JbxlhvztMCtIe/oKbIo6bHK/BI5qAoA
	PFhm20vxAEltjdCT5Trq+g==
X-Google-Smtp-Source: AGHT+IErcHg33n39OkEdWsOE47mWXIR4sKav331Xa/eEmRdc558JSqoUNUuAI0pR3IQ3X5PA+BEk7Q==
X-Received: by 2002:a05:6870:7029:b0:1e9:96c6:e040 with SMTP id u41-20020a056870702900b001e996c6e040mr10972318oae.32.1698082856727;
        Mon, 23 Oct 2023 10:40:56 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6e0:8169:8cd7:6070:de02:c079])
        by smtp.gmail.com with ESMTPSA id z16-20020a9d7a50000000b006cd0a04b56esm1491815otm.56.2023.10.23.10.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 10:40:56 -0700 (PDT)
Received: (nullmailer pid 864632 invoked by uid 1000);
	Mon, 23 Oct 2023 17:40:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
Cc: linux-doc@vger.kernel.org, horms@kernel.org, devicetree@vger.kernel.org, horatiu.vultur@microchip.com, krzysztof.kozlowski+dt@linaro.org, corbet@lwn.net, linux-kernel@vger.kernel.org, Nicolas.Ferre@microchip.com, robh+dt@kernel.org, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org, rdunlap@infradead.org, andrew@lunn.ch, edumazet@google.com, pabeni@redhat.com, kuba@kernel.org, steen.hegelund@microchip.com, davem@davemloft.net, Thorsten.Kummermehr@microchip.com, Woojung.Huh@microchip.com, casper.casan@gmail.com, conor+dt@kernel.org
In-Reply-To: <20231023154649.45931-5-Parthiban.Veerasooran@microchip.com>
References: <20231023154649.45931-1-Parthiban.Veerasooran@microchip.com>
 <20231023154649.45931-5-Parthiban.Veerasooran@microchip.com>
Message-Id: <169808266165.861277.6927507882203709016.robh@kernel.org>
Subject: Re: [PATCH net-next v2 4/9] dt-bindings: net: add OPEN Alliance
 10BASE-T1x MAC-PHY Serial Interface
Date: Mon, 23 Oct 2023 12:40:49 -0500


On Mon, 23 Oct 2023 21:16:44 +0530, Parthiban Veerasooran wrote:
> Add DT bindings OPEN Alliance 10BASE-T1x MACPHY Serial Interface
> parameters. These are generic properties that can apply to any 10BASE-T1x
> MAC-PHY which uses OPEN Alliance TC6 specification.
> 
> Signed-off-by: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
> ---
>  .../devicetree/bindings/net/oa-tc6.yaml       | 72 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/oa-tc6.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/net/oa-tc6.yaml:16:68: [error] syntax error: mapping values are not allowed here (syntax)

dtschema/dtc warnings/errors:
make[2]: *** Deleting file 'Documentation/devicetree/bindings/net/oa-tc6.example.dts'
Documentation/devicetree/bindings/net/oa-tc6.yaml:16:68: mapping values are not allowed in this context
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/net/oa-tc6.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/net/oa-tc6.yaml:16:68: mapping values are not allowed in this context
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/oa-tc6.yaml: ignoring, error parsing file
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231023154649.45931-5-Parthiban.Veerasooran@microchip.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


