Return-Path: <devicetree+bounces-189150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C128AAE6EA5
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 20:32:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 478C21BC2DB9
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 18:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D90A233704;
	Tue, 24 Jun 2025 18:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QakKmDK2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781F1226CF1
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 18:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750789948; cv=none; b=TNJfG8jqRu2iqEPbBfg1CJYjbIDL9dN84xiCp9ROXWljFzQ6cJQ/8W5U98Er8ljqXV1nLR5VRok6UsmNzQwugNvP/puRxFtLCY+IS9Bo3+CKl/xrEnAnQ1ehu0p/T1CTuDd+/1DCb+ZFhvQ28MUoNsmM/lTiY4dQErbltUNVYAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750789948; c=relaxed/simple;
	bh=IuFCkq1BSswU/AHy6n+6ABvL64aoJmsoX423vaHMgXE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=EEfuGwG13x3me34EKOOlTGrfjKwRbG8yE/ICsHlZDukvTICYMHmx19WMTBaBHzKtNTx0+CEoWDmB3mHr8EKtTk61vj3amGL8SiK3ROKHx7N+qfB/Br9KpEw6k2oFB87czhshCTPkGNioGZbMBervl4aWQV99sCLBtudpsio3J+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QakKmDK2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BE0CC4CEE3;
	Tue, 24 Jun 2025 18:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750789948;
	bh=IuFCkq1BSswU/AHy6n+6ABvL64aoJmsoX423vaHMgXE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QakKmDK2CZjqNZ4yibkEGqh0fggK2tDjgIZ8hjhR1whfSIZdrn981XI/gXchO13GB
	 vLPPdLQMNgvqrE8csDTEUslRczlvEBtXr209rvR7T0sQhjgUcywQtAmibujL0MN+SC
	 CAJo9B+5V62XbwF52AprJPWbtLslwGepahOYE5BqHh8tp5yQwqX2qnbiSpivTJWCUp
	 XmeKhEsMDM+t8p9pzC1o+1SlmvBGlyOwfyWPWrS80Z9DpEU9jCCfBpHUwr2L5V1vV8
	 TgwVB8m+8uYIcgsXqg4MJB49F0K0uS0gUc+4xkd3IyLBKNWIvit1iJHEAUVsfDdR6A
	 211ohIkEdHjbA==
Date: Tue, 24 Jun 2025 13:32:25 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org, 
 robh+dt@kernel.org, devicetree@vger.kernel.org
To: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20250624171924.433301-1-dinguyen@kernel.org>
References: <20250624171924.433301-1-dinguyen@kernel.org>
Message-Id: <175078994591.554532.10829310357985016445.robh@kernel.org>
Subject: Re: [PATCHv3] dt-bindings: net: convert socfpga-dwmac.txt to DT
 schema


On Tue, 24 Jun 2025 12:19:24 -0500, Dinh Nguyen wrote:
> Convert the socfpga-dwmac.txt to yaml.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v3: Address all of Rob Herring's comments
> v2: Add allOf to include the base dmac yaml
>     fix Rob Herring's dt_binding_check warnings
> ---
>  .../bindings/net/altr,dwmac-socfpga.yaml      | 139 ++++++++++++++++++
>  .../devicetree/bindings/net/socfpga-dwmac.txt |  57 -------
>  2 files changed, 139 insertions(+), 57 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/socfpga-dwmac.txt
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/altr,dwmac-socfpga.yaml: properties:clock-names: {'minItems': 1, 'maxItems': 2, 'items': [{'const': 'stmmaceth'}, {'const': 'ptp_ref'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#

doc reference errors (make refcheckdocs):
Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/net/socfpga-dwmac.txt
MAINTAINERS: Documentation/devicetree/bindings/net/socfpga-dwmac.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250624171924.433301-1-dinguyen@kernel.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


