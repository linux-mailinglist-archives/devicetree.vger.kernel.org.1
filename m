Return-Path: <devicetree+bounces-70139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B18D68D28B0
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 01:22:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 217B7B243FD
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 23:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7274B13E040;
	Tue, 28 May 2024 23:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9C4zxLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC6E53802
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 23:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716938551; cv=none; b=b0K7VRTvJA67kgq1s1K6wKZ3AXDBZsB0f2yeyp1oOwTMKBZFd4OLSphTgkYEdfwDFSAgIpWxCGfpxMcW0dEy+0o7VBOptydWCqY4FlOSTZiiPvmvBwSlDKeB+HHmwNgqAOONCH51gC/yV+DkYmoZWSryKRHArxP+3/9f1Yk6ib8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716938551; c=relaxed/simple;
	bh=eqKyeVDrvjD1u18mPQxXjc2bwyvY86GSv5YfWk0pa70=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=pzHr7skPYJGx1hQj6FOkk3mVl7/U7FGNaxBzcGjLK7N/lMvSroaytnq/qlMH50AS8FNEVyQ3j3hruX3DLo33jgnQ4ybqFUtjlmVXrX4cBrBZGVwbXizjD2X3B63eTO1iKZAO6PUV6A2Ajv3Ae2Ebx3XG6Xz5Y6wsjlHOPKETPWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9C4zxLQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98767C32786;
	Tue, 28 May 2024 23:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716938550;
	bh=eqKyeVDrvjD1u18mPQxXjc2bwyvY86GSv5YfWk0pa70=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=n9C4zxLQYkVCjAarZsyV7sqCckaomZprjslGX1UBFumvPb5di09jIbR9/qTRY7UPD
	 z4IQBvj1Sffta4QYmD43tzxOm2OsEt/ALJa6efdkDMwosPtV13/+HkrKhJxmCjioYY
	 e2W8m/+DY7i8fTTxYQPjjZ4Fx2eN7ClgJpFtw9Z+MWZCW/xO0sqOJfqBq4H9KNgL2O
	 B4M6urxRTvNlIm79DqzCtp0PTXzEZD1enj/GejlF+H3qBFtQhKHC27EDl/VTf+siaE
	 LppNyMjdR2wYFakkwdpKwRaB4XQ4J4zVN3SFFZiZJjb9vf6zA5HBbNnFULSKL/gdFd
	 Af4v8Tb5lwsqA==
Date: Tue, 28 May 2024 18:22:29 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org, 
 Fabio Estevam <festevam@denx.de>, krzk+dt@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20240528211846.1403524-1-festevam@gmail.com>
References: <20240528211846.1403524-1-festevam@gmail.com>
Message-Id: <171693854964.2465919.6650248020871920176.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Document Compulab
 IOT-GATE-iMX8


On Tue, 28 May 2024 18:18:45 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Document Compulab's IOT-GATE-iMX8 board, which is based on Compulab's
> UCM-iMX8M-Mini SoM.
> 
> Board URL:
> https://www.compulab.com/products/iot-gateways/iot-gate-imx8-industrial-arm-iot-gateway/
> 
> SoM URL:
> https://www.compulab.com/products/computer-on-modules/ucm-imx8m-mini-nxp-i-mx-8m-mini-som-system-on-module-computer/
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/fsl.yaml:944:45: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240528211846.1403524-1-festevam@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


