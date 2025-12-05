Return-Path: <devicetree+bounces-244655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D270CA7921
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 13:32:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C53E630C6A4C
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 12:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB1A432F770;
	Fri,  5 Dec 2025 12:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2aF1Utt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C0F42DF13A;
	Fri,  5 Dec 2025 12:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764937903; cv=none; b=TNA3w0QQ3pjyQI4dx/Staatv8nVrwEmaAPORemzscS22HSU3EtT03g1JQwG91NFzylDgTAzNRiSrpgOhIVyblg0rDjH9yEs7+q3NBepvJGAfXpmt8vMJJ07gmRfW7Wd2NQ0DuWcHEdpRtpfbArn5ypqg0l+ekceM/ioAYJCrFSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764937903; c=relaxed/simple;
	bh=QwV3QL0wFxzUc3jFA7W7pQywOAAELCvAXdlX0XxremQ=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=ja6UkgtEAYSKLh//Vt/s4/9tuayHAcM5txQ4OpeTY9miBbFEeWImpwTx6alPZqMrbwpA1uQwvITaclv20YHkgOXc/NsT3lExfjJORTQDV9AFZHZ4Qu8vy4efVZThemn/p0Y1hprPAfWjhfGEFFCPd/ZV7mrd6Q1LcnsEj1ruZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2aF1Utt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1049C4CEF1;
	Fri,  5 Dec 2025 12:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764937903;
	bh=QwV3QL0wFxzUc3jFA7W7pQywOAAELCvAXdlX0XxremQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=s2aF1UttlGzfB0mRECA+J+4e4PLo/cecKeL9OaOEJA7PtPkG1z5W/0TPGJigJSAY2
	 mkwEvC/Z/IogEca/y891jRxG+nnmfnF3W5DpV3ITM1ghqjPXN06xJRbhV9Nad+cwxz
	 ftRpdb45NJQmyiAvW2YN5vbDoGyCkWqPqdvsh9VmgywBbWjyrhD51co6Ilap4x0319
	 /jql3pzMY7WsHa1T26krw6eRDgeks1OpIdFtszlHs5z+YFD8eH9B4VGPIsK0zi0+R2
	 EbDKaWDTnrXz2L13HCor0BYZACsMofllB1X+Os6YLA+ENSGyhCqUfjiC4HJc47MDz1
	 6E53uhTmXuoPQ==
Date: Fri, 05 Dec 2025 06:31:40 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 Georgy.Yakovlev@sony.com, sanastasio@raptorengineering.com, lee@kernel.org, 
 conor+dt@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org
To: Timothy Pearson <tpearson@raptorengineering.com>
In-Reply-To: <20251204185015.1364439-2-tpearson@raptorengineering.com>
References: <20251204185015.1364439-1-tpearson@raptorengineering.com>
 <20251204185015.1364439-2-tpearson@raptorengineering.com>
Message-Id: <176493761149.3641021.4564195459068416142.robh@kernel.org>
Subject: Re: [PATCH v5 1/4] dt-bindings: mfd: Add sony,cronos-smc


On Thu, 04 Dec 2025 12:50:12 -0600, Timothy Pearson wrote:
> From: Shawn Anastasio <sanastasio@raptorengineering.com>
> 
> The Sony Cronos Platform Controller is a multi-purpose platform controller
> that provides both a watchdog timer and an LED controller for the Sony
> Interactive Entertainment Cronos x86 server platform. As both functions
> are provided by the same CPLD, a multi-function device is exposed as the
> parent of both functions.
> 
> Add a DT binding for this device.
> 
> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
> ---
>  .../bindings/mfd/sony,cronos-smc.yaml         | 115 ++++++++++++++++++
>  1 file changed, 115 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml:115:7: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/sony,cronos-smc.yaml: Unresolvable reference: leds-class-multicolor.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/sony,cronos-smc.example.dtb: smc@3f (sony,cronos-smc): $nodename:0: 'smc@3f' does not match '^(pmic|timer|watchdog)(@.*|-([0-9]|[1-9][0-9]+))?$'
	from schema $id: http://devicetree.org/schemas/mfd/sony,cronos-smc.yaml
Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 428, in get_or_retrieve
    resource = registry._retrieve(uri)
  File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 426, in retrieve
    return DRAFT201909.create_resource(self.schemas[uri])
                                       ~~~~~~~~~~~~^^^^^
KeyError: 'http://devicetree.org/schemas/mfd/leds-class-multicolor.yaml'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 682, in lookup
    retrieved = self._registry.get_or_retrieve(uri)
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 435, in get_or_retrieve
    raise exceptions.Unretrievable(ref=uri) from error
referencing.exceptions.Unretrievable: 'http://devicetree.org/schemas/mfd/leds-class-multicolor.yaml'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 463, in _validate_reference
    resolved = self._resolver.lookup(ref)
  File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 686, in lookup
    raise exceptions.Unresolvable(ref=ref) from error
referencing.exceptions.Unresolvable: leds-class-multicolor.yaml#

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
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 23, in patternProperties
    yield from validator.descend(
        v, subschema, path=k, schema_path=pattern,
    )
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 432, in descend
    for error in errors:
                 ^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 275, in ref
    yield from validator._validate_reference(ref=ref, instance=instance)
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 465, in _validate_reference
    raise exceptions._WrappedReferencingError(err) from err
jsonschema.exceptions._WrappedReferencingError: Unresolvable: leds-class-multicolor.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20251204185015.1364439-2-tpearson@raptorengineering.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


