Return-Path: <devicetree+bounces-243287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C01C6C9662D
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 10:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1A7453422BD
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 09:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CFB630277E;
	Mon,  1 Dec 2025 09:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="es2pCRly"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E037F30149E;
	Mon,  1 Dec 2025 09:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764581626; cv=none; b=XgYuyd2In2zCwGJ+hwn3QKY4Zw5GtuJCDfq0gnSzGY8mjef5RUzxu9Tfsc114k+0cdmtPO3PqzaE+E62TQWzigoJs5hIUlTuVFfL5vhJ9IIJq3NwNsLFFOFmfufjFYgsrkcPaPIlu7jesiyXZyvx/54ObwW2VlDzxuF3mM5CiHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764581626; c=relaxed/simple;
	bh=tBkKEMuW8ICQGDPwq1PKcDrajbLvvxTth+P4EEwAMzk=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=hrYf1tcttbUH8iUM7wI8DWPqYRmwqnIsUKZHFErvxeUQVwcpSf2D7yrjK9/frHe5yEZsLtZWw3GHv3XWupdXj+m8/6vd3zivGcmjXHxglTlGe/toHf9kqa/HCLNneidJNzVegDjjyiZQ/4OHBzPfMjzqpFxzOY95aPfOYA2ulC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=es2pCRly; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 119A6C113D0;
	Mon,  1 Dec 2025 09:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764581625;
	bh=tBkKEMuW8ICQGDPwq1PKcDrajbLvvxTth+P4EEwAMzk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=es2pCRlyHdmpd42IrlWVKynzqri79MdnPA9dxm4mgH5V4vQY7XXD8okdLkHXmi9Xm
	 7K/ISbLkuKcqcUaIzIekrzQ+462GY3AXDqhp+Pvxwp9qNwOm2BDS+LbNFVlhFzA5s1
	 Aq9aHgHTZGQu0jNGg2QLlpPidXLCe/Fehhnddh61abNYVd3UV7cShoy29O2Yht+UvU
	 Gu003uCdg6LxQUkgv5BLGKSV1VlYRsMyEOcn33V4WPUQJRKLa9SLjh2O3tIG38G+Qq
	 OKtCipmFG1eLSJ0JsGBeG3MjdfJWyNIKKlsrU/Y8VgUzDbv4Ej4NH3nWrlp0yB45Dx
	 WYfDl0gc4evVA==
Date: Mon, 01 Dec 2025 03:33:44 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
To: Gary Bisson <bisson.gary@gmail.com>
In-Reply-To: <20251201084140.376058-4-bisson.gary@gmail.com>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
 <20251201084140.376058-4-bisson.gary@gmail.com>
Message-Id: <176458162056.2489271.8926442564760324805.robh@kernel.org>
Subject: Re: [PATCH 3/5] dt-bindings: arm: mediatek: Add
 ezurio,mt8390-tungsten-smarc


On Mon, 01 Dec 2025 09:41:38 +0100, Gary Bisson wrote:
> Add device tree bindings support for the Ezurio Tungsten 700 (MT8390)
> SMARC SOM [1] + Universal SMARC carrier board [2].
> 
> [1] https://www.ezurio.com/product/tungsten700-smarc
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

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251201084140.376058-4-bisson.gary@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


