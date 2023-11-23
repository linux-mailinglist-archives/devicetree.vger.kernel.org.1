Return-Path: <devicetree+bounces-18357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 914D27F6321
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 16:38:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4579D281BAA
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 15:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3FE3C082;
	Thu, 23 Nov 2023 15:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F32CD50;
	Thu, 23 Nov 2023 07:37:19 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-7a66aa8ebb7so30726339f.3;
        Thu, 23 Nov 2023 07:37:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700753838; x=1701358638;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aLt1KUAUGHRqUvPHJLf1zcCoicLrr1OYvZT4WwBuoZE=;
        b=qNiVHjqUNFG7aU71k+N5fKGv61B8Yrk+oRFQhf9lN7KASDGHWjj6SLC9lFVW/ArEXZ
         jn+fg9pceRBN89OF2ztxmHm6RMOu1yT04eb2ijvlpcuwCXgxVRNqZiqbEiAGoTqI3kGF
         XnOysxKuMpXm+LUbBJ8LnHC+yPwIo4wAXngfS3MZHfKtLO4npKWYsKAoggF4I40plKsR
         g33jrCNqkrRJ/kFjiXppsNT4rsv1x6Ty2ytynWT1M6h1E5zKYGpXgi4e+LfkOoNRBMwE
         kuYpFKxXZkdZbjC3q7AhB5l5JPyG1wHThG428X3HP91F33TvGa6/WCJtgjwk2WqZv2jD
         KoVw==
X-Gm-Message-State: AOJu0YzchWuhjFk7se3p2yn/AA1qYikPVHCIK5E+N29URshL6jRxG20O
	+9TjBtJZc4gOOBfMeu0rDQ==
X-Google-Smtp-Source: AGHT+IHxmIHckVPvE9RTOm5DMneEAqIyAk45FUNpf3d8xViwnKcBica9KXjhnjw12dR++i/1riIIUA==
X-Received: by 2002:a6b:d107:0:b0:7b3:4b1a:e414 with SMTP id l7-20020a6bd107000000b007b34b1ae414mr5939092iob.11.1700753838621;
        Thu, 23 Nov 2023 07:37:18 -0800 (PST)
Received: from herring.priv ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id q10-20020a0566380eca00b004668fb951e8sm360236jas.84.2023.11.23.07.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 07:37:18 -0800 (PST)
Received: (nullmailer pid 1407026 invoked by uid 1000);
	Thu, 23 Nov 2023 15:37:16 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: linux-imx@nxp.com, shengjiu.wang@nxp.com, linux-kernel@vger.kernel.org, daniel.baluta@gmail.com, iuliana.prodan@nxp.com, kuninori.morimoto.gx@renesas.com, broonie@kernel.org, robh+dt@kernel.org, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20231123150012.154096-3-daniel.baluta@oss.nxp.com>
References: <20231123150012.154096-1-daniel.baluta@oss.nxp.com>
 <20231123150012.154096-3-daniel.baluta@oss.nxp.com>
Message-Id: <170075383625.1407009.6277919043530213618.robh@kernel.org>
Subject: Re: [PATCH v2 2/2] ASoC: dt-bindings: audio-graph-port: Document
 new DAI link flags playback-only/capture-only
Date: Thu, 23 Nov 2023 08:37:16 -0700


On Thu, 23 Nov 2023 17:00:12 +0200, Daniel Baluta wrote:
> From: Daniel Baluta <daniel.baluta@nxp.com>
> 
> Document new playback-only and capture-only flags which can be used
> when dai link can only support just one direction: playback or capture
> but not both.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  .../devicetree/bindings/sound/audio-graph-port.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/audio-graph-port.yaml:22:6: [error] syntax error: expected <block end>, but found '<block mapping start>' (syntax)
./Documentation/devicetree/bindings/sound/audio-graph-port.yaml:23:9: [warning] wrong indentation: expected 7 but found 8 (indentation)
./Documentation/devicetree/bindings/sound/audio-graph-port.yaml:26:9: [warning] wrong indentation: expected 7 but found 8 (indentation)

dtschema/dtc warnings/errors:
make[2]: *** Deleting file 'Documentation/devicetree/bindings/sound/audio-graph-port.example.dts'
Documentation/devicetree/bindings/sound/audio-graph-port.yaml:22:6: did not find expected key
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/sound/audio-graph-port.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/socionext,uniphier-evea.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/cirrus,cs42l51.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/ak4613.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/sgtl5000.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/wlf,wm8962.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/socionext,uniphier-aio.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/everest,es8316.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
./Documentation/devicetree/bindings/sound/audio-graph-port.yaml:22:6: did not find expected key
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml:
while parsing a block mapping
  in "<unicode string>", line 16, column 5
did not find expected key
  in "<unicode string>", line 22, column 6
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/audio-graph-port.yaml: ignoring, error parsing file
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1424: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231123150012.154096-3-daniel.baluta@oss.nxp.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


