Return-Path: <devicetree+bounces-152584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7704BA4984D
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 12:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 550723B8066
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121DE26157C;
	Fri, 28 Feb 2025 11:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/UiyC8I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1FEF849C
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 11:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740742139; cv=none; b=aHMhFIuntG+UFf6ZZKzgxXbmUFqiENCx+qHaKdS3nALZ7d97+rK7s6T82hPuJjyfsinE1lzj17YSAgbet/69Y6nO+3CoxYe+WDxV9j7oCamHsKzeS7MYJZO+YVlaDc7cDpzX+cGqSMYm0YDtLHnvsCnXKuaH/3mgkST9UUS+bcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740742139; c=relaxed/simple;
	bh=Vo30DD4pY8YPkUDhWQg3FdmNH9GHokRq9KUBwZ3GWZI=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=cEX5iQOmMA2ed145yRerSzFTUXsSNITDxkK1m5+pRITlNP8FHf9GjDu9eBwFpk45nuw3ImIu+ccjhhm+0sUS7NIAev0GZZ/7hgd0dAY8l3EPksixTKwYZGk3G6bdV0pPYD7TkCvnEpRfukFeAVXyn6KRmerYC9Zq0pLV9JA1Bqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/UiyC8I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 478CCC4CED6;
	Fri, 28 Feb 2025 11:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740742138;
	bh=Vo30DD4pY8YPkUDhWQg3FdmNH9GHokRq9KUBwZ3GWZI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Q/UiyC8I5o25GJhuifBKQN7hUIMDk2lhqSUl9PL/URjCl7UXx+JnF6sjod6ICmhmD
	 GZdSpigsLxCM195Qfl6SyLpS/41iIrCmIFnv/BQpD61hnMbq50/PnD61szy5pHMCtq
	 7LNYvN2rK9ZQ5rByE4Dv0qiBLMiPGqy04z4rEbHaDxbgZJUvGVNSb2GjD+F9H4JZe4
	 h0XbC+mncon8WasEZRsVA8xKteL4Xvpc12ejZLmGLwbqNmu3AJrJhrsCXy4vCIuanT
	 8jVbOupuW66KQFtJfeohARExsWFIKBDbIxaALIepLE5tdz5k8O7kMcmCtISFt+kRiE
	 4IiVWrNlqPamg==
Date: Fri, 28 Feb 2025 05:28:56 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, 
 amadeuszx.slawinski@linux.intel.com, tiwai@suse.com, broonie@kernel.org
To: Zhang Yi <zhangyi@everest-semi.com>
In-Reply-To: <20250228100245.127413-3-zhangyi@everest-semi.com>
References: <20250228100245.127413-1-zhangyi@everest-semi.com>
 <20250228100245.127413-3-zhangyi@everest-semi.com>
Message-Id: <174074213662.2140279.11045433782077147517.robh@kernel.org>
Subject: Re: [PATCH v1 2/2] ASoC: dt-bindings: Add Everest ES8389 audio
 CODEC


On Fri, 28 Feb 2025 18:02:45 +0800, Zhang Yi wrote:
> Add device tree binding documentation for Everest ES8389
> 
> Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
> ---
>  .../bindings/sound/everest,es8389.yaml        | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/sound/everest,es8389.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/everest,es8389.yaml:98:7: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/everest,es8389.yaml: 'examples for single codec' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'dependentRequired', 'dependentSchemas', 'patternProperties', 'properties', 'not', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/everest,es8389.yaml: 'examples for multi codecs' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'dependentRequired', 'dependentSchemas', 'patternProperties', 'properties', 'not', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select', '$ref']
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250228100245.127413-3-zhangyi@everest-semi.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


