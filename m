Return-Path: <devicetree+bounces-11814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2347D6AE6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:11:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A2A8AB20C72
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1766D27739;
	Wed, 25 Oct 2023 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F33220B21
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:11:51 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B96458F;
	Wed, 25 Oct 2023 05:11:49 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1e9d3cc6e7aso3644502fac.2;
        Wed, 25 Oct 2023 05:11:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698235909; x=1698840709;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HCPxgs4NDh+ho3+ibefi5n2+RrXmyVlZVu+Q51te2v4=;
        b=lrbBz0e+73t37IWLz5n3LOcjiuZKr2MomYvzP3aQGWRKzy1YF5j72Rd4Hbr4MS+rss
         ySrorq1h9DOoS0NQmLK9wAAymOo2g3BGGOauGz+HxGwekjq0bl7rHapj6j3LAwObcih8
         NbVpREuQJ79nUqo9ulKpwChy6meEKkwFJo2qG+b5/sS6Joh69fOKXQ9l3e1YWAtlLBbG
         VWd7Ojo9dP3nIqEG2DgciAEyktntdK3dR1qZmwA1pQOXKWdQGSlbYu6O2KPZHaBWupFH
         rowqFL/csS79u57HYC1vMIItn0fHsNy8vmy3wASdb4tJmzVt+qiOAdaVTQt0o5MaDiLV
         OFHw==
X-Gm-Message-State: AOJu0Yx8BHPAbTXViZK5R3gAu3NdBKdGev1QGY46aO8oXgYcyVJg8uzc
	OEkCUNPr0hun4MTXnL+AIA==
X-Google-Smtp-Source: AGHT+IHK4CWlhFUcrr2tQOB6IBVUM5SaULgdBfzfqNt/82aSi0iQDTiGIhgrsbRNKvEcKAMBHVkAfA==
X-Received: by 2002:a05:6871:78a:b0:1e9:d25d:3cb0 with SMTP id o10-20020a056871078a00b001e9d25d3cb0mr18681753oap.21.1698235908781;
        Wed, 25 Oct 2023 05:11:48 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id nd25-20020a056871441900b001dcfaba6d22sm2620513oab.46.2023.10.25.05.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 05:11:48 -0700 (PDT)
Received: (nullmailer pid 3367369 invoked by uid 1000);
	Wed, 25 Oct 2023 12:11:47 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, U-Boot Mailing List <u-boot@lists.denx.de>, linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Walle <mwalle@kernel.org>, linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>, Richard Weinberger <richard@nod.at>
In-Reply-To: <20231024213940.3590507-2-sjg@chromium.org>
References: <20231024213940.3590507-1-sjg@chromium.org>
 <20231024213940.3590507-2-sjg@chromium.org>
Message-Id: <169818808080.999988.12536383382799868342.robh@kernel.org>
Subject: Re: [PATCH v5 2/3] dt-bindings: mtd: binman-partition: Add binman
 compatibles
Date: Wed, 25 Oct 2023 07:11:47 -0500


On Wed, 25 Oct 2023 10:39:17 +1300, Simon Glass wrote:
> Add two compatible for binman entries, as a starting point for the
> schema.
> 
> Note that, after discussion on v2, we decided to keep the existing
> meaning of label so as not to require changes to existing userspace
> software when moving to use binman nodes to specify the firmware
> layout.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> Changes in v5:
> - Add mention of why 'binman' is the vendor
> - Drop  'select: false'
> - Tidy up the compatible setings
> - Use 'tfa-bl31' instead of 'atf-bl31'
> 
> Changes in v4:
> - Correct selection of multiple compatible strings
> 
> Changes in v3:
> - Drop fixed-partitions from the example
> - Use compatible instead of label
> 
> Changes in v2:
> - Use plain partition@xxx for the node name
> 
>  .../mtd/partitions/binman-partition.yaml      | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml: properties:compatible: [{'enum': ['binman,entry', 'u-boot', 'tfa-bl31']}] is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml: properties:compatible: [{'enum': ['binman,entry', 'u-boot', 'tfa-bl31']}] is not of type 'object', 'boolean'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
Documentation/devicetree/bindings/mtd/partitions/binman-partition.example.dtb: /example-0/partitions/partition@100000: failed to match any schema with compatible: ['u-boot']
Documentation/devicetree/bindings/mtd/partitions/binman-partition.example.dtb: /example-0/partitions/partition@200000: failed to match any schema with compatible: ['tfa-bl31']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231024213940.3590507-2-sjg@chromium.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


