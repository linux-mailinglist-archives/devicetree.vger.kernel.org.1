Return-Path: <devicetree+bounces-250970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDBBCED4A1
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 20:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CDDA8300095F
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 19:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94E5E2BDC26;
	Thu,  1 Jan 2026 19:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0uHkHFz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A75A231A3B;
	Thu,  1 Jan 2026 19:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767294338; cv=none; b=IylNquV4CdWe7iAf4QLbpsLqxNmDrHlQyeFPfpPBShPTckgYg3BGWk5xSuYi+bkafcYKr5/aIt3bNXZwO/L42tNr8hgaLudUbPhEG3J717gchkKlePHpa5wM1HZWk6fLxIU1O4XMzwQjLiYQwuHClo8y3fP0hAOZISv58uR1bJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767294338; c=relaxed/simple;
	bh=mseGt6+VHgHN7F4TpAc+qL+VGig9rDMl7YN6BM1+ev8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=rKEanogcPnQ6Kw/jIb4PMNouNgPPihRZPeNcyu5+sGXrijh3MyujShux55+LyG3hz2veulsvJLyCZ6WGl4+IWTs3ADV37C+OQImzseGxnuqEHNt6XpH8LC0siik4ddk6AaE78e4rcDGWiF/QR1IVfthI4pAyC+GW0bDaFVaHNd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0uHkHFz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7332C4CEF7;
	Thu,  1 Jan 2026 19:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767294338;
	bh=mseGt6+VHgHN7F4TpAc+qL+VGig9rDMl7YN6BM1+ev8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=b0uHkHFzr4KV7ajqa51J9yc08IaeWzmeQ80SP1tI5zE4dUUiwy4+hN6Da/ZNEoi43
	 bB/jsXsQEv3lQ8aUP6I3CCjT/pJkPedmr/g+/d+rYdjFqutNmvzCXvZKgMTsyokL5/
	 nu9fmXCLhIw/zSJ5gqDDMHN5HxrWljhATnNM9KCosZTgN6zpCBoMv78zqFbe3ho9Ld
	 fFMOAnq1tr4Bdiv6XG4UGl0XvpdMoyNHhgrg+uIfiKavKZTlaHIe2Al7Ig6wU8gOlI
	 CZUt30xPP0c9Ij0CVwGYupUOBvILl8ZX5mnbjFh/0SN7X06cBNkXCE8PQB14loNa4J
	 uK/hzwCPfgNrQ==
Date: Thu, 01 Jan 2026 13:05:36 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-mtd@lists.infradead.org, 
 Naveen N Rao <naveen@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Nicholas Piggin <npiggin@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linuxppc-dev@lists.ozlabs.org, 
 Christophe Leroy <chleroy@kernel.org>, David Airlie <airlied@gmail.com>, 
 Crystal Wood <oss@buserror.net>, linux-kernel@vger.kernel.org, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Simona Vetter <simona@ffwll.ch>, Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Conor Dooley <conor+dt@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>
To: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
In-Reply-To: <20260101-ppcyaml-elbc-v5-4-251c7f14a06c@posteo.net>
References: <20260101-ppcyaml-elbc-v5-0-251c7f14a06c@posteo.net>
 <20260101-ppcyaml-elbc-v5-4-251c7f14a06c@posteo.net>
Message-Id: <176729433680.1704817.8344719442516572763.robh@kernel.org>
Subject: Re: [PATCH RESEND v5 4/4] dt-bindings: memory-controllers: Convert
 fsl,elbc to YAML


On Thu, 01 Jan 2026 17:58:17 +0100, J. Neuschäfer wrote:
> Convert the Freescale localbus controller bindings from text form to
> YAML. Compared to the .txt version, the YAML binding contains a new
> usage example with FCM NAND flash, and a full list of compatible strings
> based on current usage in arch/powerpc/boot/dts/.
> 
> Note that the both the compatible strings and the unit address format
> are kept as-is, for compatibility with existing kernels and device
> trees, as well as unit address readability. This results in dts
> validation warnings:
> 
>   Warning (simple_bus_reg): /example-0/localbus@f0010100/board-control@1,0:
>   simple-bus unit address format error, expected "100000000"
> 
> Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> ---
> 
> V5:
> - fix reference to fsl/lbc.txt in
>   Documentation/devicetree/bindings/display/ssd1289fb.txt
> 
> V4:
> - no changes
> 
> V3:
> - move this patch after the GPCM/FCM patches to dtschema/dtc warnings
>   due to missing bindings for fsl,elbc-gpcm-uio and fsl,elbc-fcm-nand
> - add "simple-bus" again, for compatibility with existing DTs/drivers
>   based on discussion with Crystal Wood and Rob Herring
> - fix fsl,pq2-localbus compatible properties based on mgcoge.dts / ep8248e.dts
>   (was missing "simple-bus")
> - add board-control (bcsr) example again, now using the compatible
>   string listed in Documentation/devicetree/bindings/board/fsl,bcsr.yaml
> - remove interrupt-parent property from example
> - rework the commit message
> 
> V2:
> - fix order of properties in examples, according to dts coding style
> - move to Documentation/devicetree/bindings/memory-controllers
> - clarify the commit message a tiny bit
> - remove unnecessary multiline markers (|)
> - define address format in patternProperties
> - trim subject line (remove "binding")
> - remove use of "simple-bus", because it's technically incorrect
> ---
>  .../devicetree/bindings/display/ssd1289fb.txt      |   2 +-
>  .../bindings/memory-controllers/fsl,elbc.yaml      | 158 +++++++++++++++++++++
>  .../devicetree/bindings/powerpc/fsl/lbc.txt        |  43 ------
>  3 files changed, 159 insertions(+), 44 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/memory-controllers/fsl,elbc.example.dts:29.23-34.15: Warning (simple_bus_reg): /example-0/localbus@f0010100/flash@0,0: simple-bus unit address format error, expected "0"
Documentation/devicetree/bindings/memory-controllers/fsl,elbc.example.dts:36.31-39.15: Warning (simple_bus_reg): /example-0/localbus@f0010100/board-control@1,0: simple-bus unit address format error, expected "100000000"
Documentation/devicetree/bindings/memory-controllers/fsl,elbc.example.dts:41.31-46.15: Warning (simple_bus_reg): /example-0/localbus@f0010100/simple-periph@2,0: simple-bus unit address format error, expected "200000000"
Documentation/devicetree/bindings/memory-controllers/fsl,elbc.example.dts:82.23-89.15: Warning (simple_bus_reg): /example-1/localbus@e0005000/flash@0,0: simple-bus unit address format error, expected "0"
Documentation/devicetree/bindings/memory-controllers/fsl,elbc.example.dts:91.22-97.15: Warning (simple_bus_reg): /example-1/localbus@e0005000/nand@1,0: simple-bus unit address format error, expected "100000000"

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260101-ppcyaml-elbc-v5-4-251c7f14a06c@posteo.net

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


