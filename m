Return-Path: <devicetree+bounces-184161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1C7AD322A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:34:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52A1A3B7121
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 09:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013CF28BA8E;
	Tue, 10 Jun 2025 09:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNzhA+Zi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BCE28BA87
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749548013; cv=none; b=Pa1PqNkttOGTrglcYk97TAAFtl6QwFYueQlwDZ18CF7p6cDH39vgGUovkYaI8GpV9lX3qr5TR2h7xTdPJ9IdTvnhvE6iEfgp20GMgN6YZgRNqG3dayBLVlg449RNfsM6JNBRf3YCeNnUrVmeCXH+QILgUj+tu1VCtZAdTBxmaVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749548013; c=relaxed/simple;
	bh=QGnPa3Z7SpDhjktnuB63HwtWDax7NynI9XYqUNDUvXk=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=fJ2Np9bfxPRuM3CO8NI1BTxHQiN3EQNUmOun/4MnI8RsB5cU7/uWDfwR2QRxLX7cNrQEMV9D6yks9RxdLI8aagS2UuDV6AR9Ys4PcUyQkwgM1f0EHiMaH0NTTUnioyyl6m+qofyqm6c9IKdpqoe8l855nPsynYR0SFtQxTCPAtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNzhA+Zi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53DC6C4CEED;
	Tue, 10 Jun 2025 09:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749548013;
	bh=QGnPa3Z7SpDhjktnuB63HwtWDax7NynI9XYqUNDUvXk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=PNzhA+ZiUHmjCYuUZtYrJCj/rvruSM0eO53WAPTuBiFZNgk5xX96GP655Ix5fldpT
	 SxAxP17olCCmnfSr4+U0XXgxyeogWNJuNeWE6nZQCB/wntJrKff+YPAkn5i1DTaflN
	 M5pq+SLqHh2qscOOrPxI0MPSTdEYXn6JHh1Mf9KVgamL0aVCBDdidg3k7HlYishJfm
	 nQm0u5zFmBJ+Q5fkhKXIC3poFDBtWxgKtqC5mQ/ByTwk6vczeXp6NhvGPWXX36XGHt
	 MDzi/9TI1IJybKuPKaQt+OH7Gz23RsaT/q7k8HrFbCq31+VHgmcgH9L5es3hFslzf1
	 sJs99cMF0NXyQ==
Date: Tue, 10 Jun 2025 04:33:30 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, 
 skhan@linuxfoundation.org, krzk+dt@kernel.org
To: Shankari Anand <shankari.ak0208@gmail.com>
In-Reply-To: <20250610082220.273518-1-shankari.ak0208@gmail.com>
References: <08b51022-b65d-4c33-9f01-d5e6f5bcffe9@kernel.org>
 <20250610082220.273518-1-shankari.ak0208@gmail.com>
Message-Id: <174954801086.147754.9306389006765920749.robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to
 YAML


On Tue, 10 Jun 2025 13:52:20 +0530, Shankari Anand wrote:
> Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> .txt format to a YAML schema.
> 
> Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> ---
>  .../arm/altera/socfpga-sdram-edac.txt         | 15 ----
>  .../arm/altera/socfpga-sdram-edac.yaml        | 76 +++++++++++++++++++
>  2 files changed, 76 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml:5:10: [error] string value is redundantly quoted with any quotes (quoted-strings)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml: properties:compatible:oneOf: [{'const': 'altr,sdram-edac'}, {'const': 'altr,sdram-edac-a10'}, {'const': 'altr,sdram-edac-s10'}] should not be valid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['const']}}
	hint: Use 'enum' rather than 'oneOf' + 'const' entries
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml: maintainers:0: {'name': 'Dinh Nguyen', 'email': 'dinguyen@kernel.org'} is not of type 'string'
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml: '$nodename' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'dependentRequired', 'dependentSchemas', 'patternProperties', 'properties', 'not', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/edac/altr,sdram-edac.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.example.dts:27.16-32.11: Warning (unit_address_vs_reg): /example-0/edac@0: node has a unit name, but no reg or ranges property
Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.example.dts:59.16-63.11: Warning (unit_address_vs_reg): /example-1/edac@0: node has a unit name, but no reg or ranges property
Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.example.dts:90.16-94.11: Warning (unit_address_vs_reg): /example-2/edac@0: node has a unit name, but no reg or ranges property

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250610082220.273518-1-shankari.ak0208@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


