Return-Path: <devicetree+bounces-9609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A5B7CD940
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 12:32:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F271281C54
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52D017732;
	Wed, 18 Oct 2023 10:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA78B19443;
	Wed, 18 Oct 2023 10:32:52 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9A15BA;
	Wed, 18 Oct 2023 03:32:50 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3b2b1af09c5so2710888b6e.0;
        Wed, 18 Oct 2023 03:32:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697625170; x=1698229970;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Dg5d8SDlSlp62Ln+IjkIa1gYxVR7adVppGs8QF8Exl4=;
        b=K3pAfIWVRAhldE4tHtTLVoY503rA/kuzDmW0/8YZlVjOrsbcZeMCBghwUsoPoY5MMZ
         bW6EdD4M+Wu3fKtgHDaC6f/g/yJnXYibLnEjBLLsh061KHbvHX+a8YsV5u6baRZnOLFn
         Esao7dAigHk9mX3qYkzg3GCAtp2sPH9rIggZjTNDp5OtrzRHBKlIr81MdIbQGH5OqxmS
         V11Dimrap+Nj/tnj4pKe7jrqL8qfZagkP7+PXbxI9fEc9wVPlbKCOsUDBN3AUrj/rKB1
         q6MvVJsV9KvlLSgE2OcbHwHOugHW9D+dYXaJgJG7sVTZKw+uP4X6YbcgV1q66EHroQP2
         ETzw==
X-Gm-Message-State: AOJu0YwoQ6k/MMPt8Cj6QhLctAKILQiNBBEctwhqCMKZZzoBLTllnGA3
	U3GdDJToMSo1uLvZMpqSkg==
X-Google-Smtp-Source: AGHT+IHviX6UrIwh06mLdMonHxveecpCE8DWO90wIhrcz1SbC/uPTFpaZVLY5Sw4GTzxzyU2gDNwHA==
X-Received: by 2002:a54:4693:0:b0:3a7:52b9:cbfe with SMTP id k19-20020a544693000000b003a752b9cbfemr4462272oic.32.1697625169886;
        Wed, 18 Oct 2023 03:32:49 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r24-20020a056808211800b003b2e2d134a5sm390772oiw.35.2023.10.18.03.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 03:32:49 -0700 (PDT)
Received: (nullmailer pid 391914 invoked by uid 1000);
	Wed, 18 Oct 2023 10:32:48 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Russell King <linux@armlinux.org.uk>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Eric Dumazet <edumazet@google.com>, Vladimir Oltean <olteanv@gmail.com>, Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>
In-Reply-To: <20231018-marvell-88e6152-wan-led-v4-1-3ee0c67383be@linaro.org>
References: <20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org>
 <20231018-marvell-88e6152-wan-led-v4-1-3ee0c67383be@linaro.org>
Message-Id: <169762516670.391804.7528295251386913602.robh@kernel.org>
Subject: Re: [PATCH net-next v4 1/7] dt-bindings: net: dsa: Require ports
 or ethernet-ports
Date: Wed, 18 Oct 2023 05:32:48 -0500
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Wed, 18 Oct 2023 11:03:40 +0200, Linus Walleij wrote:
> Bindings using dsa.yaml#/$defs/ethernet-ports specify that
> a DSA switch node need to have a ports or ethernet-ports
> subnode, and that is actually required, so add requirements
> using oneOf.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  Documentation/devicetree/bindings/net/dsa/dsa.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/net/dsa/dsa.yaml:60:7: [warning] wrong indentation: expected 8 but found 6 (indentation)
./Documentation/devicetree/bindings/net/dsa/dsa.yaml:62:7: [warning] wrong indentation: expected 8 but found 6 (indentation)

dtschema/dtc warnings/errors:
Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 64, in <module>
    ret |= check_doc(f)
           ^^^^^^^^^^^^
  File "/usr/local/bin/dt-doc-validate", line 32, in check_doc
    for error in sorted(dtsch.iter_errors(), key=lambda e: e.linecol):
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/dist-packages/dtschema/schema.py", line 125, in iter_errors
    self.annotate_error(scherr, meta_schema, scherr.schema_path)
  File "/usr/local/lib/python3.11/dist-packages/dtschema/schema.py", line 104, in annotate_error
    schema = schema[p]
             ~~~~~~^^^
KeyError: 'type'

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231018-marvell-88e6152-wan-led-v4-1-3ee0c67383be@linaro.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


