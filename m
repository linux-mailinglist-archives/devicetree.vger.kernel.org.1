Return-Path: <devicetree+bounces-6750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 893FE7BCB8B
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 03:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DF67281C02
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 01:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65DF10E9;
	Sun,  8 Oct 2023 01:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AQsAZLEv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE7710E6
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 01:21:01 +0000 (UTC)
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A90C8C5;
	Sat,  7 Oct 2023 18:20:59 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-57bc2c2f13dso1841768eaf.2;
        Sat, 07 Oct 2023 18:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696728058; x=1697332858; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aWgVHcNRC0JxhBz17/KtrgsQGECNqtzTGRrjgDLed/g=;
        b=AQsAZLEvqQRCun3T6bX7HjpNAVhBaylAOxSS//m8T93bTR3Eack2YRvTY0UnBZWCJn
         EejxO1MDX+hfl3vzgoTt+X78Ic5yIVBzC17iPBky3qT4eP5Rv0GezflE9rQhcWqHGM0Y
         S5GeFnFNX6CoF/R/oNPK2nKvaxCBB+4SGK8F2pTpETZZ8kanxwvyiffSRL5qFgYobHW3
         TWzdg7xFeT3j/CB/tafpgidO1xQAguV6R0dJygBRJuAvm43+b1WKTEYsaC+zgcHNCaZK
         Kg7MmTyttOUcScILPrM9v1W55JYUSHvgXMZHpaE5h7ejxcuwzFPbyg2lQ/L6g5rc/f6v
         znMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696728058; x=1697332858;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aWgVHcNRC0JxhBz17/KtrgsQGECNqtzTGRrjgDLed/g=;
        b=D+lwRewcyUYhaf9muldZiaCqRTr9OW+RJOGCahXPbfWdXmyyOJpKkaya9jPc1he2DI
         VBHezq+KYroq4Ti2FAt04/+BsEtrab0UfFwpKca3k+bOH+JFmDEmm0xH7Pg28AxrRsC4
         ZkZF+7hrR9J3E+TDTD9Os4JZvsx289ec9edXIbjk9G2YjPvZL+Xt0KVWp/ev8b6iAJxt
         0ihHAZVTpUUAUzm/JQzkaFOzV/jwOut1rfKnRyGUTfteb19OSPKzGcBMR+Qft66R6VdP
         r18QZSJ9sBpTSv2GQ8WG/dgNGsfLFIv0MpGY8ZaFBh5wSF7wJMEh1xDOLG/id0gtesyt
         x/8Q==
X-Gm-Message-State: AOJu0Yzcc925ji88b2iNmI1Qy+5U/xqb2U3Wg/1c7iEUzvTuGnZXdsE+
	MTSXJuIOkEdwP56+SQnVAS0=
X-Google-Smtp-Source: AGHT+IFfdYRJEHhAlgzwgZ8M3LFWwOwHpmK6da0oqhjV2kkLznUJZq4uuvdF7cPIzrB8t5rs8Py5Gg==
X-Received: by 2002:a05:6358:9691:b0:164:8742:525 with SMTP id o17-20020a056358969100b0016487420525mr4776787rwa.17.1696728058287;
        Sat, 07 Oct 2023 18:20:58 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id p26-20020a63951a000000b0058d26647e45sm1669606pgd.54.2023.10.07.18.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 18:20:57 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sat, 7 Oct 2023 18:20:56 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Saravanan Sekar <saravanan@linumiz.com>
Cc: sravanhome@gmail.com, lgirdwood@gmail.com, broonie@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jdelvare@suse.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org
Subject: Re: [PATCH v3 2/3] regulator: dt-bindings: Add mps,mpq2286
 power-management IC
Message-ID: <84f4692c-5fee-4d00-b537-570f90191d6e@roeck-us.net>
References: <20231007165803.239718-1-saravanan@linumiz.com>
 <20231007165803.239718-3-saravanan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231007165803.239718-3-saravanan@linumiz.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Oct 07, 2023 at 10:28:02PM +0530, Saravanan Sekar wrote:
> Document mpq2286 power-management IC. Instead of simple 'buck', 'buck0' is
> used to keep the driver common which handles multiple regulators.

Sorry for the maybe dumb question, but where can I find the driver
depencency on buck naming ?

Thanks,
Guenter

> 
> Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>
> ---
>  .../bindings/regulator/mps,mpq2286.yaml       | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml b/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml
> new file mode 100644
> index 000000000000..594b929fe4b8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/mps,mpq2286.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/mps,mpq2286.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Monolithic Power System MPQ2286 PMIC
> +
> +maintainers:
> +  - Saravanan Sekar <saravanan@linumiz.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mps,mpq2286
> +
> +  reg:
> +    maxItems: 1
> +
> +  regulators:
> +    type: object
> +
> +    properties:
> +      buck0:
> +        type: object
> +        $ref: regulator.yaml#
> +
> +        unevaluatedProperties: false
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - regulators
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        pmic@3 {
> +            compatible = "mps,mpq2286";
> +            reg = <0x3>;
> +
> +            regulators {
> +                buck0 {
> +                    regulator-name = "buck0";
> +                    regulator-min-microvolt = <1600000>;
> +                    regulator-max-microvolt = <1800000>;
> +                    regulator-boot-on;
> +                };
> +            };
> +        };
> +    };
> +...
> -- 
> 2.34.1
> 

