Return-Path: <devicetree+bounces-134710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A372C9FE598
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:22:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9AA93A22AB
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 11:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 609AE146A69;
	Mon, 30 Dec 2024 11:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnDHvsEc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3313E2594BB;
	Mon, 30 Dec 2024 11:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735557770; cv=none; b=HD1u1l9InCvV4xGOJC0oS0Sj7fro7M6PK3PjzFGMtW7r4DHFJAvwToOkV8MHwEIxrh2w2CUuo9CIJQgyt4s+xEfB5H9TZNTTbsDDHaP7DSDzEIeEIfW88Zwlq6HtOxgy3WUa2xaWHwwj1cxoJ3X9EqqpeLjZE841FIyQqRi3fDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735557770; c=relaxed/simple;
	bh=Nju+bFzbPMzGhnsNbSRelgZNr5kB+pNCjav9H3akEQ8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=XyftBovHCZi1QGrvaBrgaNbmzVCFazdz1gg3Oxi2leNb61Xk6Ms/qTgjDtkF28wUe4WCMJUBhHEicC8H/0lWJOLbytLnV/ryj8QXyjXn9aBuVtAm/XpHSoD6a3KdGEjoVaxGNCvEhiT/MfpUt9dlfTKILnoyzTGnMuYrywckzWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnDHvsEc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 633F2C4CED0;
	Mon, 30 Dec 2024 11:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735557769;
	bh=Nju+bFzbPMzGhnsNbSRelgZNr5kB+pNCjav9H3akEQ8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=WnDHvsEcgIkx/Tto+yvwabNa0n5ltRAc1v3SreOIEj4+a20GwcwQvBx1pXYKX2FZz
	 5DtaAtLGAXrhXtdlZT1zgb1OTk35Ttf7pK9avLvzB0qgoKqXPb/htJOkXDpe4vSBPt
	 chkvfBkzUZNj7TCrx9rcEZAVBfWgCC3SBuiGoLIRKO3KBqbF5WWu8WTuGn362VFieB
	 0njA34XMf+J6ow7PC749l4olrgEHZX2vOLr90U04syoIeDBiyXvMWdvkLgCAO8rQGb
	 RCShwkwqzfitpw8sgVMFO3LLO3l/jepMETD6yQRcxK29VPs6pdyaiQgNG1IJl67SFD
	 9Sa3c3yOtNR3g==
Date: Mon, 30 Dec 2024 05:22:47 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 Troy Mitchell <TroyMitchell988@gmail.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>
To: Troy Mitchell <troymitchell988@gmail.com>
In-Reply-To: <20241230-k1-p1-v1-1-aa4e02b9f993@gmail.com>
References: <20241230-k1-p1-v1-0-aa4e02b9f993@gmail.com>
 <20241230-k1-p1-v1-1-aa4e02b9f993@gmail.com>
Message-Id: <173555776786.1678743.4819553384691470955.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: add support for P1 from SpacemiT


On Mon, 30 Dec 2024 18:02:05 +0800, Troy Mitchell wrote:
> P1 PMIC contains of regulator, pinctrl, pwrkey and rtc.
> 
> P1 contains a load switch, which allows you to control
> whether a device is powered on (such as a MIPI screen)
> 
> Signed-off-by: Troy Mitchell <TroyMitchell988@gmail.com>
> ---
>  .../devicetree/bindings/mfd/spacemit,p1.yaml       | 153 +++++++++++++++++++++
>  1 file changed, 153 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/mfd/spacemit,p1.example.dtb: /example-0/i2c/pmic@41: failed to match any schema with compatible: ['spacemit,p1']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241230-k1-p1-v1-1-aa4e02b9f993@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


