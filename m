Return-Path: <devicetree+bounces-15717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB5A7EB6F1
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 20:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD90A1F25772
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 19:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B39C26AD6;
	Tue, 14 Nov 2023 19:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7727126AC5
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 19:39:17 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE8E4110;
	Tue, 14 Nov 2023 11:39:12 -0800 (PST)
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-586753b0ab0so3332666eaf.0;
        Tue, 14 Nov 2023 11:39:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699990752; x=1700595552;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=66FO0rFoymBoHmWespIONtTOqOjDT10E+rE3EYNbNv0=;
        b=AMt5ClARWbsgPfE2X+GN7iTkmaqI4wDy/nXb7R0Eq8LF79oUgy+phPhG2M17VccbVQ
         zjhUx17EQrpAlPgqY+tMi27HDL9cdm484x7JRzQlHmNSg8PFm3OdwYpWKoGx81fVDC2I
         yW4OTuh/HTY0ZwGmz+fm66ykxKWaxA60rxD6USxy4UBWlWhHITv418KQrfg43cRoqiLc
         RrpoEjQnjeDUUnhBUkOJGZAZaVkIlx0NVQaYWA2vPXMiATFFEg6E4kmdy7b5CTsChCpB
         SO4wy5ADK/ful8GkdvqwsxKhBSogC9kdCqapoqeYwaEDs6/DM+TK7078nKfwk+oQDMo3
         ytOQ==
X-Gm-Message-State: AOJu0Yxq0Hjgr3al06ycnTv9ulhsNjAoIcIwcH7/TJkz7JeNzuL96AbH
	I8TCuvBFhnBIrIn+413cv2xnSu8kpQ==
X-Google-Smtp-Source: AGHT+IGqxbBDt0oLpAq4LD3k2eEgSmDYjEWhQ5U4aGx3woglR2xZnEhVRp/mbZpeoQTQbn4tkTwWXg==
X-Received: by 2002:a4a:655e:0:b0:587:873d:7e2c with SMTP id z30-20020a4a655e000000b00587873d7e2cmr11832386oog.1.1699990752195;
        Tue, 14 Nov 2023 11:39:12 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b27-20020a4ae81b000000b0057327cecdd8sm362660oob.10.2023.11.14.11.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 11:39:10 -0800 (PST)
Received: (nullmailer pid 396920 invoked by uid 1000);
	Tue, 14 Nov 2023 19:39:08 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Andrew Davis <afd@ti.com>
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20231114185613.322570-2-afd@ti.com>
References: <20231114185613.322570-1-afd@ti.com>
 <20231114185613.322570-2-afd@ti.com>
Message-Id: <169999074787.396862.1486062109956707191.robh@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: clock: Convert keystone-gate.txt to
 YAML
Date: Tue, 14 Nov 2023 13:39:08 -0600


On Tue, 14 Nov 2023 12:56:11 -0600, Andrew Davis wrote:
> Convert keystone-gate.txt to ti,keystone,psc-clock.yaml.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  .../bindings/clock/keystone-gate.txt          | 29 ---------
>  .../bindings/clock/ti,keystone,psc-clock.yaml | 59 +++++++++++++++++++
>  2 files changed, 59 insertions(+), 29 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/keystone-gate.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/ti,keystone,psc-clock.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/clock/ti,keystone,psc-clock.example.dts:18.24-26.11: Warning (unit_address_vs_reg): /example-0/clkusb: node has a reg or ranges property, but no unit name

doc reference errors (make refcheckdocs):
Warning: Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt references a file that doesn't exist: Documentation/devicetree/bindings/clock/keystone-gate.txt
Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt: Documentation/devicetree/bindings/clock/keystone-gate.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231114185613.322570-2-afd@ti.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


