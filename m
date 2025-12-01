Return-Path: <devicetree+bounces-243286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 21007C9663F
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 10:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E80B63A4EEC
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 09:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 754BC302179;
	Mon,  1 Dec 2025 09:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z06CjSCx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA7A302177;
	Mon,  1 Dec 2025 09:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764581624; cv=none; b=cbBSaLBV6vkp2w4L2RFHUHS/Wc7vJGKbaCUPT5BZYLxDq05C105AvSlVOSmJ+SpHL+ffpC9iHVPkWnrw9l3kVPFPlkv4l4xF5XgpdBIqxz6XWo/okI6IpKcZZGKedtiZM0JIB/bfq3LXTPjJZ1DTEXjHjul/P1s7b/3f0+9LF+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764581624; c=relaxed/simple;
	bh=0c3sOzXam8HtK2ztSwza5Qgcr0iR6X3PAGBLVoCko0s=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=n7XeUj3PSN3sugnl/nL+spel950U4rbgGZDgIoN5h321dRGecA9aH65yGiPSIjQKXulu0KETblx5Tum/imfFSFtPnUDhtTvrCts9hjSh2cueATjFkr4M9ohF0I6mzkAkFG1chMdxoifWWvnh3nQ0/O8pdbflsC3isX6CpHTWSsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z06CjSCx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2B41C116D0;
	Mon,  1 Dec 2025 09:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764581623;
	bh=0c3sOzXam8HtK2ztSwza5Qgcr0iR6X3PAGBLVoCko0s=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Z06CjSCxfBIW/9TNFXeotXUIm1zU9YjDpuc9jQoje+3bQhkBEEg6R3HGabIfscjzN
	 8DPzPvsWlesCINA01UkOcbUunafdpQ8BEAjp3zixxj4mMvMD9TPfo8ds0mcbgCVd3B
	 dRQ0XWc/huRxQuRIZZMgPxRsT9PNwhT2UEXE5bSSGUvSW8cjeZ1ghCBSYNLoQ+cM6Q
	 Kr8/PXIPMPYQ1ooUvFHNbIUaovkttj/U1vnKPr5WBBqbM0hxSZTLX1Fl5N/9rBE2WF
	 Kk3oZ+VNMd9ZluzMP61AecPo2P4gV+C20qAd/E3y30q7edss4wZ4YAjRacPhQp2WUT
	 KJ2UUJN9XofRA==
Date: Mon, 01 Dec 2025 03:33:42 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 matthias.bgg@gmail.com, linux-kernel@vger.kernel.org
To: Gary Bisson <bisson.gary@gmail.com>
In-Reply-To: <20251201084140.376058-3-bisson.gary@gmail.com>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
 <20251201084140.376058-3-bisson.gary@gmail.com>
Message-Id: <176458161959.2489238.15712230014248139528.robh@kernel.org>
Subject: Re: [PATCH 2/5] dt-bindings: arm: mediatek: Add
 ezurio,mt8370-tungsten-smarc


On Mon, 01 Dec 2025 09:41:37 +0100, Gary Bisson wrote:
> Add device tree bindings support for the Ezurio Tungsten 510 (MT8370)
> SMARC SOM [1] + Universal SMARC carrier board [2].
> 
> [1] https://www.ezurio.com/product/tungsten510-smarc
> [2]
> https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier
> 
> Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
> ---
> Cc: robh@kernel.org
> Cc: krzk+dt@kernel.org
> Cc: conor+dt@kernel.org
> Cc: matthias.bgg@gmail.com
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251201084140.376058-3-bisson.gary@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


