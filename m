Return-Path: <devicetree+bounces-16921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BABB37F0689
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29DDF280D92
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:43:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9E711C86;
	Sun, 19 Nov 2023 13:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B716E6;
	Sun, 19 Nov 2023 05:43:29 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6ce2cf67be2so2001887a34.2;
        Sun, 19 Nov 2023 05:43:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700401408; x=1701006208;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eC7R2aDGjcyaZieADea/5qgs9vEV8wCKAKof6xgBBlQ=;
        b=ISt3yrEuH38JlRpCDCePXXFnhqj6aServYqF/XqY4SXa1grlhfimJFO8AvTudHN2kV
         LWOY7/nXcZA0H/xVInONtie71NLQLisaiWt08W7mCEUtYKWJgXdBXE1xwO/aRAb/BbXy
         j5GHoOv24httwwDVo7kuSbmL3VWzreO8yfJbCVOf5/fkYn4K96quS2Mf167grNl38Fyh
         DSBT39I1osm1YjmD87Pzrlw+pBVkvGvLb4LetpRyUvnZuLzWBPJZIJ3A0G6wi/m/DJ52
         rtrNv7Nns0mu8JiYpxth+0KddjgZYED6pHM6hcEZ2GdC8mMWQV6IZKPKbLbELCPdg9Jx
         XboQ==
X-Gm-Message-State: AOJu0YwmzREAiVN6NH5HgU+hC0JCVCuckAiivuFAFuzS9UF8uILhEFDw
	P6G+kKJreMw3P6FVoZEdlw==
X-Google-Smtp-Source: AGHT+IEjmOOgpm/LkHZKFHzuItqSpn8lyCN5G9GVSFuxVx3shNYIX91fj/expeuhfHS2bP+hrV2iNw==
X-Received: by 2002:a05:6830:1d61:b0:6b7:52ce:ff38 with SMTP id l1-20020a0568301d6100b006b752ceff38mr6204255oti.16.1700401408681;
        Sun, 19 Nov 2023 05:43:28 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id bg21-20020a056830361500b006ce2cb3b959sm879328otb.52.2023.11.19.05.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 05:43:28 -0800 (PST)
Received: (nullmailer pid 3136 invoked by uid 1000);
	Sun, 19 Nov 2023 13:43:26 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Elad Nachman <enachman@marvell.com>
Cc: conor+dt@kernel.org, gregory.clement@bootlin.com, devicetree@vger.kernel.org, andrew@lunn.ch, krzysztof.kozlowski+dt@linaro.org, chris.packham@alliedtelesis.co.nz, cyuval@marvell.com, pali@kernel.org, sebastian.hesselbarth@gmail.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, mrkiko.rs@gmail.com
In-Reply-To: <20231119102638.1041978-3-enachman@marvell.com>
References: <20231119102638.1041978-1-enachman@marvell.com>
 <20231119102638.1041978-3-enachman@marvell.com>
Message-Id: <170040140652.3109.2493816352448660414.robh@kernel.org>
Subject: Re: [PATCH v5 2/3] dt-bindings: arm64: add Marvell COM Express
 boards
Date: Sun, 19 Nov 2023 07:43:26 -0600


On Sun, 19 Nov 2023 12:26:37 +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
> 
> Add dt bindings for:
> CN9130 COM Express CPU module
> CN9131 COM Express CPU module
> AC5X RD COM Express Type 7 carrier board.
> AC5X RD COM Express board with a CN9131 COM Express Type 7 CPU module.
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.yaml           | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml:64:13: [warning] wrong indentation: expected 10 but found 12 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231119102638.1041978-3-enachman@marvell.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


