Return-Path: <devicetree+bounces-242942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 27350C91984
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:19:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 43E5E34631E
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7E430BB89;
	Fri, 28 Nov 2025 10:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJtCBMc2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E78F30B521;
	Fri, 28 Nov 2025 10:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764325111; cv=none; b=Q58mI34yu28KQb+5+b2pa86YxgduKxpecf5SPpfsmrRsxbQDrPx/90vvRxgfmWLdMybw/Agvn/Mp/QeNIX4T4USuZTqY7meKwrvvN56fF8U5dxPL5z00d54KMHMYuqzopEhrKSyEa+y+qhAcP4fCjmQFn8GgNcQ1lGnz7xT/PIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764325111; c=relaxed/simple;
	bh=MIRw/XQDzki0yYk9yy1qFYTV+4LJdxp2n7mtv2S6cJE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=TD9Wynhj+vQ02vRF8WyNYO0ufDW1s/SHhW/8EliRwoB6ElaFzGQfUYpzKcZl87qszK/8KHJW5I2Qai1ExmRbd6w+5z5i7QMB4IGAWYcLbRUMBJEKRTHBZsfq4kh8b9C4FLBiLUwqOIuJethEp1+CasQZTpYI8qtiS1kertvCgMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJtCBMc2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B46EBC4CEF1;
	Fri, 28 Nov 2025 10:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764325110;
	bh=MIRw/XQDzki0yYk9yy1qFYTV+4LJdxp2n7mtv2S6cJE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=VJtCBMc2puZK2SPkOBZugVaKh3d/nnUAb7qHqvNxAXOWa6wj3Puvkzimrf+NZv9Rn
	 9vCOWwDm+XFqxXpWCEXkL/TcIdLa3/UBCUsDgP0Do2rM52L4R5xhFB2+HnHv1kReW5
	 TlzaDl+Ua+Ag19kX0JhlsavflsPsdfgYZFyFdqn3OoAPbwcWfRe/OAZpSEl5INjm/A
	 +P5s0kKx64+c6x6xD8EFq2bE4G4QCrlzyyKwLaSN7TGSmOKWWwLYdi7F9v0ZobNrGd
	 JnC9koZoG64iFFQ2RYZnVTPtHmZgaWAP7v79PpYU/szDsRFXYcJWTFRABfMlfhCY3w
	 BwchZ9RkC+8ew==
Date: Fri, 28 Nov 2025 04:18:28 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: james.tai@realtek.com, cy.huang@realtek.com, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, 
 devicetree@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 linux-realtek-soc@lists.infradead.org, stanley_chang@realtek.com, 
 linux-arm-kernel@lists.infradead.org, afaerber@suse.de, lee@kernel.org
To: Yu-Chun Lin <eleanor.lin@realtek.com>
In-Reply-To: <20251128090825.27365-2-eleanor.lin@realtek.com>
References: <20251128090825.27365-1-eleanor.lin@realtek.com>
 <20251128090825.27365-2-eleanor.lin@realtek.com>
Message-Id: <176432510804.1675441.8031317541737023322.robh@kernel.org>
Subject: Re: [PATCH v3 1/2 RESEND] dt-bindings: arm: realtek: Add Kent Soc
 family compatibles


On Fri, 28 Nov 2025 17:08:24 +0800, Yu-Chun Lin wrote:
> Define compatible strings for Realtek RTD1501s, RTD1861b and RTD1920s.
> 
> Additionally, convert legacy DTS-style comments to YAML description
> properties, following the pattern from the ARM bindings conversion series
> [1].
> 
> [1] https://lore.kernel.org/lkml/20200622125527.24207-2-afaerber@suse.de/
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> ---
>  .../devicetree/bindings/arm/realtek.yaml      | 42 +++++++++++++------
>  1 file changed, 30 insertions(+), 12 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251128090825.27365-2-eleanor.lin@realtek.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


