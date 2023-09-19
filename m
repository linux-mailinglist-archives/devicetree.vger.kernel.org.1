Return-Path: <devicetree+bounces-1372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D49567A604B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:55:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E50428112E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD7135880;
	Tue, 19 Sep 2023 10:55:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B962E629
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:55:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20B8EC433CB;
	Tue, 19 Sep 2023 10:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695120926;
	bh=IZ8QHJlzaFVxxzy8OGWmG+Rj9SpjIEfIWOgoiQgccBU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JBxY5iduN7o1cY2/4GRVtfKDsiE5Czm1sRnrsmpKbPXFLKag17D1QnWrAp9D6nwC7
	 nhJX8SRi7cThfE0ydIw9yiQk6ibqbtA14P8RTON3iLJa9cmnWhWca1M76LMnHxR3SW
	 EZRqEpT6fj/hGTOgSp5+Z7z41xovqfUIgecZ1q7ls4pIc4z0YtWGNIFdzvCKrN8z1H
	 STN8vbE3QG4ksq62bVDLghmQaIRYaQdgxScC/gNRPhRXZ/1yNCMhuC7hFmbIAZm7gc
	 GSjopSPNrG7MRCWvR53hU3/5fYFTyugoqQfF+GxUnaIaK50USE3zcGVzD5RLT/pW9d
	 Fm3TVxk16BB7w==
Received: (nullmailer pid 3135077 invoked by uid 1000);
	Tue, 19 Sep 2023 10:55:23 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: alsa-devel@alsa-project.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20230919090739.2448-1-bragathemanick0908@gmail.com>
References: <20230919090739.2448-1-bragathemanick0908@gmail.com>
Message-Id: <169512092376.3135048.3729589976906559665.robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: tfa9879: Convert to dtschema
Date: Tue, 19 Sep 2023 05:55:23 -0500


On Tue, 19 Sep 2023 14:37:39 +0530, Bragatheswaran Manickavel wrote:
> Convert the tfa9879 audio CODEC bindings to DT schema
> 
> Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
> ---
>  .../bindings/sound/nxp,tfa9879.yaml           | 45 +++++++++++++++++++
>  .../devicetree/bindings/sound/tfa9879.txt     | 23 ----------
>  2 files changed, 45 insertions(+), 23 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/nxp,tfa9879.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/tfa9879.txt
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/sound/nxp,tfa9879.example.dts:22.27-40 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/sound/nxp,tfa9879.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1427: dt_binding_check] Error 2
make: *** [Makefile:234: __sub-make] Error 2

doc reference errors (make refcheckdocs):
MAINTAINERS: Documentation/devicetree/bindings/sound/tfa9879.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230919090739.2448-1-bragathemanick0908@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


