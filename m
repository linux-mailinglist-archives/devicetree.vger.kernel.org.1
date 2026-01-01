Return-Path: <devicetree+bounces-250888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EF191CECCE4
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 05:33:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0882C3007C53
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 04:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19EB81DFF0;
	Thu,  1 Jan 2026 04:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEXGRbjE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09F44C6C;
	Thu,  1 Jan 2026 04:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767242016; cv=none; b=iDbVsi9QGdLA5gNJplSVyPkjFSO8CL0Yn3YH1UA/JLtJX8/YfFZILhwdM0BScuzhQim71osYkOxZbh911BYfOGz7LcjrM1B4X+bQrKn4rNtlc2MRNPIglSCz9FuY0iEaeKptYOBWgtSUksUpLK3EeiBOqBt8uFOCZy7KdpWJEFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767242016; c=relaxed/simple;
	bh=XZ4w/Kc4FdOkvCsMtWFzbaRmcHB4OD88H5KpnhVaOYw=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=TYDj82acLuT8W1p+6USU6iMYvtpvVYU4kgj2vG5ly2m9kkq5bUgX+FlCINGLJwaYmBuokx9vv5KlckFJ/+A922Tl4xgvp6r3DQsOPJNJwUFYo2x7b4C8JOpgqPZ8LMYsfGBi4OazWe5DTbUVcJ5Ltml5NZBwtJmq7FyMBeBpMTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEXGRbjE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AEBBC4CEF7;
	Thu,  1 Jan 2026 04:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767242015;
	bh=XZ4w/Kc4FdOkvCsMtWFzbaRmcHB4OD88H5KpnhVaOYw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=sEXGRbjEzJuzOSLiBY6qmgBCMLQ6SFDPiPZaz9zGsgOuKgcPCKujTIRLWorxTzKtO
	 VX0adwldf3LVg6Pc7s+68dQskDzy5BEwnFkpd22iwDh50V/yPGp4pVdyoT+uEjB+P/
	 cXQPFp/DPHpNk6mLLl86aH7kSx7CCLZP+1nTWFwKfmOKAYFL1kGvjji4Y1JzSV6cWt
	 FzSrXyn9y53qZ1RYWze+O1jN0AuKBBLoygH6rpWh8zzbqTqH9oGrlqNemdkw7YJtj1
	 OluV9hr7jkAg22h3opa0ClAU/lN/ZdCF8jWHh+4g3sIi9heMmxUuXv3dHxdrr+eAaM
	 hYNah7CqOzgZg==
Date: Wed, 31 Dec 2025 22:33:34 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 romain.perier@gmail.com
To: Daniel Palmer <daniel@0x0f.com>
In-Reply-To: <20260101034306.1233091-2-daniel@0x0f.com>
References: <20260101034306.1233091-1-daniel@0x0f.com>
 <20260101034306.1233091-2-daniel@0x0f.com>
Message-Id: <176724201428.245927.50135278414047771.robh@kernel.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: clk: mstar msc313 cpupll: Correct
 clock-cells value


On Thu, 01 Jan 2026 12:42:59 +0900, Daniel Palmer wrote:
> clock-cells should have been 0 and causes warnings when
> validating devicetrees.
> 
> Fix the value and fix the binding example.
> 
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>
> ---
>  .../devicetree/bindings/clock/mstar,msc313-cpupll.yaml       | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Lexical error: Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.example.dts:22.29-51 Unexpected 'MSTAR_MSC313_MPLL_DIV2'
FATAL ERROR: Syntax error parsing input tree
make[2]: *** [scripts/Makefile.dtbs:145: Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1565: dt_binding_check] Error 2
make: *** [Makefile:248: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260101034306.1233091-2-daniel@0x0f.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


