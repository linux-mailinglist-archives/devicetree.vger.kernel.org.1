Return-Path: <devicetree+bounces-91389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02137949205
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 15:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 963D11F257C5
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 13:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9451D54D0;
	Tue,  6 Aug 2024 13:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6IosOej"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BDD1D47DB
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 13:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722952191; cv=none; b=nAi7ocVfzEn7+8Z7TjC4zce50ZqLWVLCWAtOVqiVYi750b7a3WcdV0o/G0vD56+kEPQKRWIzBZrg74zep6zeWdSA4E5a4z7VWY7XTNGrRx4sSsOfSCAi1ld4ujhmJlmW/pFDJ82/VXLSJK65YRkJ2fxeItVQPe+ip9RJluoo7ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722952191; c=relaxed/simple;
	bh=7Fj6iXQavHEBQ/OXyI4nQyRBkFHbAOtHSNw+coO/Jmc=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=cgs9J29Z55PIoSL6Ovw2sxPt2kOauQkbUIBlrKxiBEerLMPK/drOEWAO/K9xPZkJ4exARiTAZ4uN3vWKLPdkaO+cFtjbx5e7CH25nN0ACdQyOfBU5Ks3umYvNT3YuQA6EYkUkJRaN6SgwojgPlu/m39sFI8KeZ5RpgnovT4+ALk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6IosOej; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EB49C4AF0C;
	Tue,  6 Aug 2024 13:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722952190;
	bh=7Fj6iXQavHEBQ/OXyI4nQyRBkFHbAOtHSNw+coO/Jmc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=C6IosOejvTp6hc/OZrROGAQTp+jAdCdCIsw30gY+ymjD+PCt8DbtESVODhAh4GBcH
	 OAhQsVd6fRSqlAUMwsLqOXa5I4H1W+qGP7BzkAD+cWFmTcoAaMo5pw2ut+HG55keoY
	 IiP7rmR6d2nrjZyRT8jJ2mbZlI8benIjuzAuZYo0oMH81P3wGyyk+g4JwfkDRYSyRZ
	 e8G0mYjXzpklmdieIdclzpZLNmwEqZwz5aNUJdoF8FmcQy3AIwcRmPIEVLXpxV/eUW
	 z6hBipsMB4w0DkmRRtcMET6DMBC7I9JzDhiO+gb4OOD1HSkm54akN6FOktGToXeEE8
	 X4Z9odB1Rj+MA==
Date: Tue, 06 Aug 2024 07:49:49 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Cc: Macpaul Lin <macpaul@gmail.com>, linux-mediatek@lists.infradead.org, 
 Sen Chu <sen.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chris-qj chen <chris-qj.chen@mediatek.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Bear Wang <bear.wang@mediatek.com>, 
 Chen-Yu Tsai <wenst@chromium.org>, Conor Dooley <conor+dt@kernel.org>, 
 Jason-ch Chen <Jason-ch.Chen@mediatek.com>, devicetree@vger.kernel.org, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 MediaTek Chromebook Upstream <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
 Pablo Sun <pablo.sun@mediatek.com>
In-Reply-To: <20240806122507.2766-1-macpaul.lin@mediatek.com>
References: <20240806122507.2766-1-macpaul.lin@mediatek.com>
Message-Id: <172295218959.1231449.7916299490960765265.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: regulator: mediatek,mt6397-regulator:
 convert to YAML


On Tue, 06 Aug 2024 20:25:07 +0800, Macpaul Lin wrote:
> Convert the MediaTek MT6397 regulator bindings to DT schema.
> 
> Signed-off-by: Sen Chu <sen.chu@mediatek.com>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  .../regulator/mediatek,mt6397-regulator.yaml  | 275 ++++++++++++++++++
>  .../bindings/regulator/mt6397-regulator.txt   | 220 --------------
>  2 files changed, 275 insertions(+), 220 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mediatek,mt6397-regulator.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/regulator/mediatek,mt6397-regulator.example.dtb: /example-0/pwrap/pmic: failed to match any schema with compatible: ['mediatek,mt6397']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240806122507.2766-1-macpaul.lin@mediatek.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


