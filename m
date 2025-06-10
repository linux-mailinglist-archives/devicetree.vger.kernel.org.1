Return-Path: <devicetree+bounces-184428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB7FAD3F84
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:52:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC98A18866B9
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA022405E1;
	Tue, 10 Jun 2025 16:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbiSkOJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0999D8BF8
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 16:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749574334; cv=none; b=XTNOBnOHyIi+rqzoBJOOWgEHXIWjHl3ee8rRvAeyg/nloabcXHJuPcD/Ksl23wrYM08jtuVmfj+b2ih5GZXy8pD1TEcHCSIm36FUyuxFKIywU/F1YufYp0GYXvFKfOqmZj0pSS4M2cJwL27GpfbkNJJsKXzq949PkqBT7NO7aZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749574334; c=relaxed/simple;
	bh=ZoAmY8ETAJao+HJznb7tYjwtWC3G2pwVbrcEaVm/tXI=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=fs3y/586khvA/tiyM1V4eRc/X8jqVNTOt4Q5cJbOXKIkFIdzuxlraUvka9d21BGvJAozheiuv7QUpi1Kt1HL8LfwMfPSFhUE6nbYAgKK6A8k1ifWyDeyMUXYJfoieMy3Esr5NwMuHVQXfms4zsaH/9esqbPZGjS+vWwQcrHByCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbiSkOJZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0099C4CEF0;
	Tue, 10 Jun 2025 16:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749574333;
	bh=ZoAmY8ETAJao+HJznb7tYjwtWC3G2pwVbrcEaVm/tXI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=FbiSkOJZ3sLT3MmxoXPafqV/5ZtQhlzOCakhGDqA4ZReMHJ4Tulixvouig1TfCc1a
	 V/YPquPVyV7HR4gByQ5g4Z1AMWVBlDE6nHQRX8Q3QAxqfeKtJLsV8eDP4lAGtL3g+n
	 XruoAyR9PcA5skBRzvJgA66jtxRhY7mCRT2fY9yXctJ8+Jk7y7PDdFLx1QqlRbv0jW
	 EH/RaqpCKQSrNd/hiWRCcjwyGRkSfrZHkdLHqmNSvAyFs7jRuX51BD2pho2LxeMvrp
	 8VK2f/ECHDG2qQO985WC+28ZGRxpJKbR4gy1TzBTehgfzv2rh/QWZOSNp9b3X7c7t7
	 ZSHOV4sFm7fzA==
Date: Tue, 10 Jun 2025 11:52:12 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, 
 skhan@linuxfoundation.org, conor+dt@kernel.org
To: Shankari Anand <shankari.ak0208@gmail.com>
In-Reply-To: <20250610151105.393011-1-shankari.ak0208@gmail.com>
References: <174954801086.147754.9306389006765920749.robh@kernel.org>
 <20250610151105.393011-1-shankari.ak0208@gmail.com>
Message-Id: <174957433232.1948621.146243109364629093.robh@kernel.org>
Subject: Re: [PATCH v4] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to
 YAML


On Tue, 10 Jun 2025 20:41:05 +0530, Shankari Anand wrote:
> Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> .txt format to a YAML schema.
> 
> Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> ---
>  .../arm/altera/socfpga-sdram-edac.txt         | 15 ----
>  .../arm/altera/socfpga-sdram-edac.yaml        | 79 +++++++++++++++++++
>  2 files changed, 79 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/edac/altr,socfpga-ecc-manager.example.dtb: sdramedac (altr,sdram-edac-s10): 'reg' is a required property
	from schema $id: http://devicetree.org/schemas/arm/altera/socfpga-sdram-edac.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250610151105.393011-1-shankari.ak0208@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


