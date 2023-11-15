Return-Path: <devicetree+bounces-12877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EE07DBA46
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 14:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33B1128138B
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 13:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D4E15EAC;
	Mon, 30 Oct 2023 13:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11E83239
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 13:09:06 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26F8DC2;
	Mon, 30 Oct 2023 06:09:05 -0700 (PDT)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5842a94feb2so2928903eaf.0;
        Mon, 30 Oct 2023 06:09:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698671344; x=1699276144;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+1hF5SOcNji3uR1yv28vFojYM7C1X0msQ6UgHXm+PnU=;
        b=akOllQhxi6V0SSXcK0OZ60WqrL8I7o8lfCls+/7AKXRzz0ANm1WyM+sHvJsGeWjMsi
         ZF/YVzTkjST3xevKA5R4XchN+c3i9zrv76UdCRdxGmDgW49ZYTH+pgVl32rkuuxDtSUk
         mpFMoGOfNhyzUbh7TWXwC0/v3U3KONQelkzbhX77C9fwT0KmenKDPoj1MYl1x3+XC9in
         C2UxjaQsP10+Qw9zbB9W8B4re14ImIftpDlrrSGRwfaZgP4Ugv/Ldjy34RJtUOfujEVV
         tLsPMkq+6J1bT2IuBhTSjrzoTvVTxF5qlrIoNUDgJfRYzuvNrAqjOWqsZ/houDe5iXz0
         yL8g==
X-Gm-Message-State: AOJu0Yx70LO1EWl1hmU97F9gpMBUQ8rvTVgi395pKOHET8w7M8UiNDfz
	eA5A7LDBx7vUdc5mS3kRjQ==
X-Google-Smtp-Source: AGHT+IE3lYCaUBGuE146rzLZSsU1ALlxBGCNKWishfFrz5IP6nmq01gQ+3IubijrXqzlENrEGPuISw==
X-Received: by 2002:a4a:e9ae:0:b0:57b:dcc4:8f1 with SMTP id t14-20020a4ae9ae000000b0057bdcc408f1mr8249787ood.8.1698671344207;
        Mon, 30 Oct 2023 06:09:04 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r25-20020a05683001d900b006bee5535b44sm1403198ota.75.2023.10.30.06.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 06:09:02 -0700 (PDT)
Received: (nullmailer pid 715151 invoked by uid 1000);
	Mon, 30 Oct 2023 13:09:01 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jyan Chou <jyanchou@realtek.com>
Cc: ulf.hansson@linaro.org, p.zabel@pengutronix.de, jh80.chung@samsung.com, conor+dt@kernel.org, doug@schmorgal.com, asutoshd@codeaurora.org, krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, arnd@arndb.de, riteshh@codeaurora.org, briannorris@chromium.org, william.qiu@starfivetech.com, linux-mmc@vger.kernel.org, tonyhuang.sunplus@gmail.com, abel.vesa@linaro.org, adrian.hunter@intel.com, devicetree@vger.kernel.org, robh+dt@kernel.org
In-Reply-To: <20231030062749.2840-5-jyanchou@realtek.com>
References: <20231030062749.2840-1-jyanchou@realtek.com>
 <20231030062749.2840-5-jyanchou@realtek.com>
Message-Id: <169867132556.714776.8773166399900067157.robh@kernel.org>
Subject: Re: [PATCH V4][4/4] dt-bindings: mmc: Add dt-bindings for realtek
 mmc driver
Date: Mon, 30 Oct 2023 08:09:01 -0500


On Mon, 30 Oct 2023 14:27:49 +0800, Jyan Chou wrote:
> Document the device-tree bindings for Realtek SoCs mmc driver.
> 
> Signed-off-by: Jyan Chou <jyanchou@realtek.com>
> 
> ---
> v3 -> v4:
> - Rename compatible(add SoC-specific part) to be different from filename.
> - Describe the items to make properties and item easy to understand.
> - Fix examples' indentation and compiling error.
> - Drop useless properties.
> 
> v2 -> v3:
> - Modify dt-bindings' content and description.
> - Fix coding style.
> - Update the list of maintainers.
> 
> v0 -> v2:
> - Add dt-bindings.
> ---
> ---
>  .../bindings/mmc/realtek-dw-mshc.yaml         | 161 ++++++++++++++++++
>  1 file changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: properties:required: ['compatible', 'reg', 'reg-names', 'interrupts', 'clocks', 'clock-names', 'pinctrl-names'] is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: properties:examples: ['emmc: mmc@12000 {\n  compatible = "realtek,rtd1325-dw-cqe-emmc";\n  reg = <0x00012000 0x00600>,\n        <0x00012180 0x00060>;\n  reg-names = "emmc", "cqhci";\n  interrupts = <0 42 4>;\n  clocks = <&cc 22>, <&cc 26>, <&cc 121>, <&cc 122>;\n  clock-names = "biu", "ciu", "vp0", "vp1";\n  clock-freq-min-max = <300000 400000000>;\n  clock-frequency = <400000>;\n  vmmc-supply = <&reg_vcc1v8>;\n  resets = <&rst 20>;\n  reset-names = "reset";\n  speed-step = <3>;\n  cqe = <1>;\n  pinctrl-names = "default", "sdr50", "ddr50", "hs200", "hs400",\n                  "tune0","tune1", "tune2","tune3", "tune4";\n  pinctrl-0 = <&emmc_pins_sdr50>;\n  pinctrl-1 = <&emmc_pins_sdr50>;\n  pinctrl-2 = <&emmc_pins_ddr50>;\n  pinctrl-3 = <&emmc_pins_hs200>;\n  pinctrl-4 = <&emmc_pins_hs400>;\n  pinctrl-5 = <&emmc_pins_tune0>;\n  pinctrl-6 = <&emmc_pins_tune1>;\n  pinctrl-7 = <&emmc_pins_tu
 ne2>;\n  pinctrl-8 = <&emmc_pins_tune3>;\n  pinctrl-9 = <&emmc_pins_tune4>;\n  };\n'] is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: properties: 'required' should not be valid under {'$ref': '#/definitions/json-schema-prop-names'}
	hint: A json-schema keyword was found instead of a DT property name.
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: properties: 'unevaluatedProperties' should not be valid under {'$ref': '#/definitions/json-schema-prop-names'}
	hint: A json-schema keyword was found instead of a DT property name.
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: properties:required: ['compatible', 'reg', 'reg-names', 'interrupts', 'clocks', 'clock-names', 'pinctrl-names'] is not of type 'object', 'boolean'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: properties:reg-names: {'maxItems': 2, 'items': [{'const': 'emmc'}, {'const': 'cqhci'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: properties:examples: ['emmc: mmc@12000 {\n  compatible = "realtek,rtd1325-dw-cqe-emmc";\n  reg = <0x00012000 0x00600>,\n        <0x00012180 0x00060>;\n  reg-names = "emmc", "cqhci";\n  interrupts = <0 42 4>;\n  clocks = <&cc 22>, <&cc 26>, <&cc 121>, <&cc 122>;\n  clock-names = "biu", "ciu", "vp0", "vp1";\n  clock-freq-min-max = <300000 400000000>;\n  clock-frequency = <400000>;\n  vmmc-supply = <&reg_vcc1v8>;\n  resets = <&rst 20>;\n  reset-names = "reset";\n  speed-step = <3>;\n  cqe = <1>;\n  pinctrl-names = "default", "sdr50", "ddr50", "hs200", "hs400",\n                  "tune0","tune1", "tune2","tune3", "tune4";\n  pinctrl-0 = <&emmc_pins_sdr50>;\n  pinctrl-1 = <&emmc_pins_sdr50>;\n  pinctrl-2 = <&emmc_pins_ddr50>;\n  pinctrl-3 = <&emmc_pins_hs200>;\n  pinctrl-4 = <&emmc_pins_hs400>;\n  pinctrl-5 = <&emmc_pins_tune0>;\n  pinctrl-6 = <&emmc_pins_tune1>;\n  pinctrl-7 = <&emmc_pins_tu
 ne2>;\n  pinctrl-8 = <&emmc_pins_tune3>;\n  pinctrl-9 = <&emmc_pins_tune4>;\n  };\n'] is not of type 'object', 'boolean'
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: 'oneOf' conditional failed, one must be fixed:
	'unevaluatedProperties' is a required property
	'additionalProperties' is a required property
	hint: Either unevaluatedProperties or additionalProperties must be present
	from schema $id: http://devicetree.org/meta-schemas/core.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mmc/realtek-dw-mshc.yaml: cqe: missing type definition

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231030062749.2840-5-jyanchou@realtek.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


