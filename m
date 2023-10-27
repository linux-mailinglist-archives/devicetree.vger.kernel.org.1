Return-Path: <devicetree+bounces-12429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0347D9707
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:54:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF2C8B2124B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC5CF18C16;
	Fri, 27 Oct 2023 11:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E95218AE4
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 11:54:42 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC50ED7;
	Fri, 27 Oct 2023 04:54:40 -0700 (PDT)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-1e9c42fc0c9so1022559fac.1;
        Fri, 27 Oct 2023 04:54:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698407680; x=1699012480;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9b+/9ZwUdROxnR+oS+/WwpQi1QFxbE22Ia4rZevwgMo=;
        b=MvRl46K3vsPnSAGZJr1TI1s8IsqM3w+78N9VT8wRDNl4Ow/hcFe3QBUcFgLV8lmavF
         M9VqTx73QeNBksPwvPrsYgeat+F/HFe1r7T00i2dEN8KW2dYCzQ+RIjB3dX4QFEXpacc
         rW7HyK+8zsSEmSDbjb/JIr1UaIlTi+Ico/zyryG2oU6NabtCEvjOnsS8TH3yzIM/BpGf
         f92D8zZuw/mIH0OwO3sAO59kZPeeB+vb8VlZiLu9/HSqB7RsGUMCy0kZxUR2mKY5+SuF
         FMqI3zlvVJtFTzF6/PhCaZfiOajJ8honhGDctzYWd/wZ0gTKWLe0NKDzlqAJ0tRxWkNp
         T7OQ==
X-Gm-Message-State: AOJu0Yx0Nx7yVUMWVs2uH5OAmc98TVF4E5ogbc+W+Sfgm3dKw3v2vYjM
	YMNwu/X8+QY0+mA5DSxOeg==
X-Google-Smtp-Source: AGHT+IHxDsoKekl8Yvqf0gShEW9817qFAuqyXO1pz/hZt/mb8dMArGiXOTmukS2xWKDp/y2/VxMElA==
X-Received: by 2002:a05:6870:9e98:b0:1e9:b29b:b145 with SMTP id pu24-20020a0568709e9800b001e9b29bb145mr3170664oab.7.1698407679875;
        Fri, 27 Oct 2023 04:54:39 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id ef11-20020a0568701a8b00b001c5a3e31474sm267686oab.45.2023.10.27.04.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 04:54:38 -0700 (PDT)
Received: (nullmailer pid 2176039 invoked by uid 1000);
	Fri, 27 Oct 2023 11:54:37 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
Cc: sudeep.holla@arm.com, linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-kernel@vger.kernel.org
In-Reply-To: <e9285b4377242e4d888391be987cbb99caf8c573.1698353854.git.oleksii_moisieiev@epam.com>
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
 <e9285b4377242e4d888391be987cbb99caf8c573.1698353854.git.oleksii_moisieiev@epam.com>
Message-Id: <169839099385.1526712.3835943870318448924.robh@kernel.org>
Subject: Re: [RFC v5 5/5] dt-bindings: firmware: arm,scmi: Add support for
 pinctrl protocol
Date: Fri, 27 Oct 2023 06:54:37 -0500


On Fri, 27 Oct 2023 06:28:11 +0000, Oleksii Moisieiev wrote:
> Add new SCMI v3.2 pinctrl protocol bindings definitions and example.
> 
> Signed-off-by: Oleksii Moisieiev <oleksii_moisieiev@epam.com>
> 
> ---
> Changes v3 -> v4
>   - reworked protocol@19 format
> ---
>  .../bindings/firmware/arm,scmi.yaml           | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/firmware/arm,scmi.yaml:244:15: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/firmware/arm,scmi.yaml:258:19: [error] string value is redundantly quoted with any quotes (quoted-strings)
./Documentation/devicetree/bindings/firmware/arm,scmi.yaml:259:19: [error] string value is redundantly quoted with any quotes (quoted-strings)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/e9285b4377242e4d888391be987cbb99caf8c573.1698353854.git.oleksii_moisieiev@epam.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


