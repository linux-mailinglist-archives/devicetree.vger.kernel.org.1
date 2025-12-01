Return-Path: <devicetree+bounces-243283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C46C96596
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 10:18:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BF71F34079A
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 09:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC5A21765B;
	Mon,  1 Dec 2025 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMh9w0N6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417421C5D72;
	Mon,  1 Dec 2025 09:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764580713; cv=none; b=WjZblz+KxC5NXAznffSvDTxQzgJ3h1dRGTCB09pbbNTRaOKMWxkDUNKt6F0pAHPvvZp4UARlJhpVpPOeK8tcZRS2T4LXxCOGnDrV2jcu0iNcKfJRBPbmD3Dedajzc34+g6ZEHuZ2qZLkO6Jkk4cnSzKG8fwdIWLbuWlunADpG8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764580713; c=relaxed/simple;
	bh=0Zqtlj0hA/RG41hc9tgzKQYiuOnCrhAHK7oTRiFyuG8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=myRHD51SLxAYKuE4ISehPI3+YgP3E3RG0T3gJhhgbQMjqcFw9THsThF5F6y2efEEMpvicEY1atgP3fArSCteasMIps7TzJhZomhi7l0lhTWkjxgh4MOZS5GrcdU21Q8hKg+50m484P/Uxoe6wx/9eSPEaWWAerogaFNhXCNYfJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMh9w0N6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83074C4CEF1;
	Mon,  1 Dec 2025 09:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764580712;
	bh=0Zqtlj0hA/RG41hc9tgzKQYiuOnCrhAHK7oTRiFyuG8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=gMh9w0N6YiLvFrXymf5nb0oS8UxZo5B8fkAvQWYN0Q3U8j20rslyOcv2ib0tgzJTB
	 KUllD62g8OudNDwRwMW1hFxpB21qbZf1+josr71+hKKdRoA8OjVGl0G0WTR7A1n14S
	 LmM8mttp75yt/LMvAF0nMp46n9Ybt+WzLi87EFrCDMz45YshlMsvG5dKj94+L5R+1T
	 CWXHTpcz3xPcQe0L/4/nHSGeggbARky0xPYhuQdUb5pKZownvfyk1W7KpyJuXQBqUO
	 EbgvRdGyKT/nckFglFIEX19EdDNmrW4ywzH307O6ac/VYZ+LBMRKyDUtMMo6eNQE2H
	 DlYls8ndrohDA==
Date: Mon, 01 Dec 2025 03:18:30 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev, 
 wsa+renesas@sang-engineering.com, nicolas.ferre@microchip.com, 
 romain.sioen@microchip.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org
To: Horatiu Vultur <horatiu.vultur@microchip.com>
In-Reply-To: <20251201082629.2326339-2-horatiu.vultur@microchip.com>
References: <20251201082629.2326339-1-horatiu.vultur@microchip.com>
 <20251201082629.2326339-2-horatiu.vultur@microchip.com>
Message-Id: <176458071087.2473678.8963589050190334759.robh@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: at91: add lan966 pcb8385
 board


On Mon, 01 Dec 2025 09:26:28 +0100, Horatiu Vultur wrote:
> Add documentation for Microchip LAN9668 PCB8385
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251201082629.2326339-2-horatiu.vultur@microchip.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


