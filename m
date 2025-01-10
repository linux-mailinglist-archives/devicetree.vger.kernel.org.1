Return-Path: <devicetree+bounces-137479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECDCA09298
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E78CB188DDAB
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4947420FAA6;
	Fri, 10 Jan 2025 13:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrEHq1aY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201A720FA94;
	Fri, 10 Jan 2025 13:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736517260; cv=none; b=W1JzguNa3HiHmnM1EXl2UqSTC7W1rolgjK4gxzwzs2giqco4fNmr+xq3uieeFuFQUjzNiXHfACWKPCXaIilwrostnjlqBly8aLAHMrZF/KOsqQhcGB2WU7twHXkhoFiguNOcF61cVcn8uPR2eoC5BfV9CG6t3Xwxwm2SrDKoU9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736517260; c=relaxed/simple;
	bh=NBTIZIQ0O8n49LLcohw3ZpYmgZsM/wfukba/u1zNx2g=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=mRxYTsu7/nKJ9z6P5uab5Xn+rdf8/umPpPmNtdDyk8uMNrUSyWep3IxTye9Zy13Ud9dhsXfS2LkHacBvS+MRdF5CpQXy8A3ALfQPMLIRoxq1T4RhioZ3QEEOhXEN/24dBU6xHe0rgOjxbXt+c0Nfb8ZPRqfQOmSK9fM7blwodEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrEHq1aY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CE1BC4CEE0;
	Fri, 10 Jan 2025 13:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736517259;
	bh=NBTIZIQ0O8n49LLcohw3ZpYmgZsM/wfukba/u1zNx2g=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=jrEHq1aYppMBXRT4k44Tx7XWe+sLU2aKhaiDX/HF1l+MTSrATFzayIePg7vLaDIT3
	 yW8Uu/cBxhuUynb7dl+6VsE9ZXzQ+6EQaKeuB3Bsn6NeSh3+1xXoOLgw+EBQSTT3N0
	 vNRQ+xiCX503ypXSFQTOVbtnE9e/9Aw/6vbkCObxtORB5VHXfAa5tAKwuE2ts+x6lI
	 fsQ3/L+Mj6v9QsRhjNprjqhdwKYe2WidYwaYjvQv/RXmhVEV/3kTdfUn91Anf/JJ7C
	 +huh9DYFOVdbk7VDJMJbXthDr1RanUSjT9xC4nr1SF97g4f57hDPgU0gKgSkU0AIbc
	 gmH3/3UDj2W4g==
Date: Fri, 10 Jan 2025 07:54:18 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: p.zabel@pengutronix.de, 
 Project_Global_Chrome_Upstream_Group@mediatek.com, 
 linux-arm-kernel@lists.infradead.org, xiandong.wang@mediatek.com, 
 linux-mediatek@lists.infradead.org, singo.chang@mediatek.com, 
 chunkuang.hu@kernel.org, sirius.wang@mediatek.com, matthias.bgg@gmail.com, 
 treapking@chromium.org, angelogioacchino.delregno@collabora.com, 
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, sunny.shen@mediatek.com, 
 jason-jh.lin@mediatek.com, nancy.lin@mediatek.com, 
 dri-devel@lists.freedesktop.org, fshao@chromium.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org
To: "paul-pl.chen" <paul-pl.chen@mediatek.com>
In-Reply-To: <20250110123835.2719824-6-paul-pl.chen@mediatek.com>
References: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
 <20250110123835.2719824-6-paul-pl.chen@mediatek.com>
Message-Id: <173651725426.2671695.7661340219497308695.robh@kernel.org>
Subject: Re: [PATCH 04/12] dt-bindings: display: mediatek: add BLENDER yaml
 for MT8196


On Fri, 10 Jan 2025 20:34:00 +0800, paul-pl.chen wrote:
> From: "Paul-pl.Chen" <paul-pl.chen@mediatek.com>
> 
> Add mediatek,blender.yaml to support BLENDER for MT8196.
> 
> Signed-off-by: Paul-pl.Chen <paul-pl.chen@mediatek.com>
> ---
> The header used in examples:
> #include <dt-bindings/clock/mt8196-clk.h>
> is not upstreamed yet.
> It will be sent by related owner soon.
> ---
>  .../display/mediatek/mediatek,blender.yaml    | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,blender.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250110123835.2719824-6-paul-pl.chen@mediatek.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


