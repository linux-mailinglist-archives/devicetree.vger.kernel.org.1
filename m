Return-Path: <devicetree+bounces-195818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 894F9B03248
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 19:28:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 027933B97B2
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 17:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12D4927877D;
	Sun, 13 Jul 2025 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azFdOneN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3799278142
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752427714; cv=none; b=k9VhsrkAvDPvbjI2yWJxHeJgctluNUk/JeJKSwfA21hIea4mWH2+Pmp5OuQ2ZCtd2W5l6egDLfnnPTHg6F+9PqFfGF1s/I+CY6I+Bv4ryZiKgk78mljaaonXyjL/JdXmPnj+uBrMGcgkvrFXlcrPjCnGbtrq5mB+2CKH012Nqgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752427714; c=relaxed/simple;
	bh=edVLvKXLku8AzoLHs3//yeBJLHTnb8ffMj79O9ITrPE=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=o/StbRVomGFSm8EQB1Y3ERneX9nKaL/efZXCADu1CtTdgzOeAdg0w8U+iUswhvYNH5Wb2KdLn0qSQRIExRJKrINBJ2lm1sBO/+bLNrudhbs5sG4Mq3itHWf0ZLre9bX71TgDK0vJ2Xlmzh21Ifu86PPZ/DfVSV9aASZFhG/DZuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azFdOneN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D4A6C4CEE3;
	Sun, 13 Jul 2025 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752427713;
	bh=edVLvKXLku8AzoLHs3//yeBJLHTnb8ffMj79O9ITrPE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=azFdOneNcEqorhUiBpnudttXl7MMIFA0txH1bU29PeZOzlQ66foHezu/CS0XR4TUa
	 hPWUkYZrYC87PyzvFNM+5NE98UkEEQ0KHxqwWdsEeG1xdFz7UDx+2aFHVxLTk3MbUC
	 m5bs+BTeOaDogK0hivr+5fpjbZ1k2DTPN+/G0/AFr3OIudA5VeWybN1iQvu4mIl60j
	 dcXMxptXreplBFerTRtYOZz8k3l3Z1TcbUF/UcKu5QkL5Rjg4A4sGbScoJprkVzRiB
	 rd7B8gSYP0cKAxw0GnBcjDXZcorQ36Pw2VMtBS8xW4fZewuMQ+iEinLGfYB0ju3gyZ
	 WCuJcgxOMfLqg==
Date: Sun, 13 Jul 2025 12:28:32 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, heiko@sntech.de, naoki@radxa.com, 
 quentin.schulz@cherry.de, dsimic@manjaro.org
To: Jun Yan <jerrysteve1101@gmail.com>
In-Reply-To: <20250713163255.163669-2-jerrysteve1101@gmail.com>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
 <20250713163255.163669-2-jerrysteve1101@gmail.com>
Message-Id: <175242771243.3659205.1009205477863284849.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Shenzhen
 OneThing Technologies Co., Ltd.


On Mon, 14 Jul 2025 00:32:53 +0800, Jun Yan wrote:
> OneThing is a company engaged in edge computing.
> 
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/vendor-prefixes.yaml: patternProperties:^onething,.*: 'anyOf' conditional failed, one must be fixed:
	'descriotion' is not one of ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'dependentRequired', 'dependentSchemas', 'deprecated', 'description', 'else', 'enum', 'exclusiveMaximum', 'exclusiveMinimum', 'items', 'if', 'minItems', 'minimum', 'maxItems', 'maximum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'required', 'then', 'typeSize', 'unevaluatedProperties', 'uniqueItems']
	'type' was expected
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250713163255.163669-2-jerrysteve1101@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


