Return-Path: <devicetree+bounces-243285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0DFC96643
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 10:35:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3F0244E3099
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 09:34:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D5D30147D;
	Mon,  1 Dec 2025 09:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGkSVe+T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFCF30146B;
	Mon,  1 Dec 2025 09:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764581623; cv=none; b=F1vBAaQnFp5ujNYcx4FkIL/VAtk/2uyP5uGybiBRwuzd8TUUkIJtMTIZyayf1Ir4GTdlheClLRnJVU+UGKW6EVIhJvZb4L+Clv2hr/vhQJKhBCa/VDJ5huBZtsrvBYNFayppaXgdnKSzXI5sqxAdAuWR+ChBxveP060l+Vc/hMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764581623; c=relaxed/simple;
	bh=hCB+h8upvH20oKb6hCw5kz2C86FqOUOLpfO3S1y1r/E=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=CuB42An5+4unvtrnJgKY62rR97/ixFydqzDtZXNk53Tsg9o29CKTVVRmiCrdDcK2FTBaihP3QC2QBPXxFahS92hjSZQm6+WO8/Xatb9sDAvMxAr/1IqS4c+so5DA1OmYohEOnPtjPsC6KIOxRJPj5FSvrhX6rI3yBpwlzGcODhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGkSVe+T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36891C113D0;
	Mon,  1 Dec 2025 09:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764581622;
	bh=hCB+h8upvH20oKb6hCw5kz2C86FqOUOLpfO3S1y1r/E=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=bGkSVe+TqazC8R/C2V9gcTpqyhh9E17IB3PgcK50OaJNOEx5Da9ziui3rK/+d2Ki9
	 4I2uZ+c9Xy04uQ9NbD1YPjZIW/tvNmZs7OXBFMWL2CiB3M2xJPwpw4Wa4ZuBqw5N04
	 ZG+E4ic4f+AQsKzw/XlC/NedmXUbELPP6RxpPvUJJgw508g22O2ggGs5ijlZtTQh1N
	 sJwNSd9udYCXRKnSPa4ipmzmfXjQDgSi436q/SA7KoD5trDUEGpUDWP+qfri+fWU5H
	 J4nmmqNGuS7BPE+bv8NFB8jeRflASYMF7FwpFqDwlmfbDryjtc5bJwp8Jgz4sXEE33
	 qjzopgWM+EoEA==
Date: Mon, 01 Dec 2025 03:33:40 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, linux-mediatek@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org
To: Gary Bisson <bisson.gary@gmail.com>
In-Reply-To: <20251201084140.376058-2-bisson.gary@gmail.com>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
 <20251201084140.376058-2-bisson.gary@gmail.com>
Message-Id: <176458161856.2489196.6170126310129033736.robh@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefixes: Add Ezurio LLC


On Mon, 01 Dec 2025 09:41:36 +0100, Gary Bisson wrote:
> Ezurio is the new name of Laird Connectivity after it acquired Boundary
> Devices.
> 
> Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
> ---
> Cc: robh@kernel.org
> Cc: krzk+dt@kernel.org
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 428, in get_or_retrieve
    resource = registry._retrieve(uri)
  File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 426, in retrieve
    return DRAFT201909.create_resource(self.schemas[uri])
                                       ~~~~~~~~~~~~^^^^^
KeyError: 'http://devicetree.org/schemas/thermal/qcom-tsens.yaml'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 682, in lookup
    retrieved = self._registry.get_or_retrieve(uri)
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 435, in get_or_retrieve
    raise exceptions.Unretrievable(ref=uri) from error
referencing.exceptions.Unretrievable: 'http://devicetree.org/schemas/thermal/qcom-tsens.yaml'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 463, in _validate_reference
    resolved = self._resolver.lookup(ref)
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 686, in lookup
    raise exceptions.Unresolvable(ref=ref) from error
referencing.exceptions.Unresolvable: /schemas/thermal/qcom-tsens.yaml#

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/bin/dt-validate", line 8, in <module>
    sys.exit(main())
             ~~~~^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 158, in main
    sg.check_dtb(filename)
    ~~~~~~~~~~~~^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 95, in check_dtb
    self.check_subtree(dt, subtree, False, "/", "/", filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
    self.check_subtree(tree, value, disabled, name, fullname + name, filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
    self.check_subtree(tree, value, disabled, name, fullname + name, filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 83, in check_subtree
    self.check_node(tree, subtree, disabled, nodename, fullname, filename)
    ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 34, in check_node
    for error in self.validator.iter_errors(node, filter=match_schema_file,
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                                            compatible_match=compatible_match):
                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 448, in iter_errors
    for error in self.DtValidator(schema, registry=self.registry).iter_errors(instance):
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 384, in iter_errors
    for error in errors:
                 ^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 296, in properties
    yield from validator.descend(
    ...<4 lines>...
    )
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 432, in descend
    for error in errors:
                 ^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 275, in ref
    yield from validator._validate_reference(ref=ref, instance=instance)
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 465, in _validate_reference
    raise exceptions._WrappedReferencingError(err) from err
jsonschema.exceptions._WrappedReferencingError: Unresolvable: /schemas/thermal/qcom-tsens.yaml#
Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 428, in get_or_retrieve
    resource = registry._retrieve(uri)
  File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 426, in retrieve
    return DRAFT201909.create_resource(self.schemas[uri])
                                       ~~~~~~~~~~~~^^^^^
KeyError: 'http://devicetree.org/schemas/thermal/qcom-tsens.yaml'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 682, in lookup
    retrieved = self._registry.get_or_retrieve(uri)
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 435, in get_or_retrieve
    raise exceptions.Unretrievable(ref=uri) from error
referencing.exceptions.Unretrievable: 'http://devicetree.org/schemas/thermal/qcom-tsens.yaml'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 463, in _validate_reference
    resolved = self._resolver.lookup(ref)
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 686, in lookup
    raise exceptions.Unresolvable(ref=ref) from error
referencing.exceptions.Unresolvable: /schemas/thermal/qcom-tsens.yaml#

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/bin/dt-validate", line 8, in <module>
    sys.exit(main())
             ~~~~^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 158, in main
    sg.check_dtb(filename)
    ~~~~~~~~~~~~^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 95, in check_dtb
    self.check_subtree(dt, subtree, False, "/", "/", filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
    self.check_subtree(tree, value, disabled, name, fullname + name, filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
    self.check_subtree(tree, value, disabled, name, fullname + name, filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 83, in check_subtree
    self.check_node(tree, subtree, disabled, nodename, fullname, filename)
    ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 34, in check_node
    for error in self.validator.iter_errors(node, filter=match_schema_file,
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                                            compatible_match=compatible_match):
                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 448, in iter_errors
    for error in self.DtValidator(schema, registry=self.registry).iter_errors(instance):
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 384, in iter_errors
    for error in errors:
                 ^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 296, in properties
    yield from validator.descend(
    ...<4 lines>...
    )
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 432, in descend
    for error in errors:
                 ^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 334, in allOf
    yield from validator.descend(instance, subschema, schema_path=index)
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 432, in descend
    for error in errors:
                 ^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 275, in ref
    yield from validator._validate_reference(ref=ref, instance=instance)
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 465, in _validate_reference
    raise exceptions._WrappedReferencingError(err) from err
jsonschema.exceptions._WrappedReferencingError: Unresolvable: /schemas/thermal/qcom-tsens.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251201084140.376058-2-bisson.gary@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


