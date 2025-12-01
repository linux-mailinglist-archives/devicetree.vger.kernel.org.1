Return-Path: <devicetree+bounces-243296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B917C968D5
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04C9D3A1455
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1972FCC17;
	Mon,  1 Dec 2025 10:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cbDQuYMG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176BF2E4279
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583496; cv=none; b=I2rrTTZIAJlOxvgXkNGhw8HNWy+23TvT34XNfB2M0c+WDIn1NLGXpYyVBDHGUZKQi54zxutAI/bUAKLYthHw9tdqhTkFT7YIgG1mjrLBSw4yCXo1DfJSETGLjSigR5iRY1eplh0oQMxstEfCGz5YIk26dTavwCNaoYvn6ikuTrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583496; c=relaxed/simple;
	bh=6rKFiaVGECYHL+8XWp6ClZQhtUMNAEoov3QwfQjMlAg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y0P72T4KthO49vqgkg8IlNXTcIFWevYDvQQbecQ6SjSxFkJICKmt3IMmkp4TFBXO6uyAD/lM2NSaZL400qGx2u34aUEviCTRLN8Cr5AO+P93kuGcw8Sv3YT9BAxW6tncqOj7uwqyY7igu/0YXo62eBLDR6Ba2825+npox1UCJPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cbDQuYMG; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47798ded6fcso21169445e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764583492; x=1765188292; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xd04XdmAGe70xw02O+BseE6+4n3YbnX/7asIzkdBhqk=;
        b=cbDQuYMGmEXH1L+eFPJVxkYT1QFPrWuiHUgDJeDXP/mUoK/zf+Ur2f63ARcYAZNt83
         HkVs3pVNAKAZbRAc+k9buxzxUxjpwwdTAwhtH1QnlzbXGbMnwPIQ/kUpv0KLGHBkkIyP
         40MthCeTztP69wsZqXs+82G/bvq/uBTgkpyDfja5MfqmHQgFtSf1n0Nbdw8g8x8c4/P6
         CKhb+4TiYNEGDX/+CrLGq531q2n4AbTDM2TNurirmHg/zhvi7oCZXY3SY49kwPtpZiKG
         PxZ5KTy/usZJ6pavYnsO3SLvQgfw0QjAP0yYFe14ciOd/5daftbX4YXAu9esBL+6+BB3
         Scmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764583492; x=1765188292;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xd04XdmAGe70xw02O+BseE6+4n3YbnX/7asIzkdBhqk=;
        b=JVvDn+N0UnQdfVWWqzZGYjhd7kuXu+iDkdltEN7ilVGRUw5Yo3fw8Y8nRR5owGM4WH
         yPBTFI1KC+uRmzydz/qxTN10HRMBqRhFnDOVRjCO2plnnQ76/yXWedxd81f0Tb4b5eSe
         uURD90gP17JHOkU0YnOjSTQQYe/9paI+2WPRKnX9Xdf07c4smIXeQrPi3AuzYSg62MVg
         aRwMgBom9fx/6mhCSnIyuxIvCiieJb2OwXiS3/eMoXGzA8jSk8p8XiM6hy9HGDv6lXGB
         VVejGRRabgyltrv7V1zzWIVKi2p6elsoji7T6VY/N1cANTWIxF1zqWs0946MY6ZuYG6/
         h5Hg==
X-Forwarded-Encrypted: i=1; AJvYcCVWCys0Vgi0Y8Rf6JTKEkXIiuBRVt9z0yQkBjty1rQsIBHIDhSFdil1d/D9uSStWkD4uDIoIh4pW62m@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3zLE1wIMTFSC2nsryYgenWfYkZUd7AMOjmeOX8wcS5ric2fFV
	ybldZ2oGCzMyK66EVSzTV9upOT7MmjF/6iMGxOWvmDMY73raOkr9CmSF
X-Gm-Gg: ASbGnct9YiaWQ1fTVLxhb7GHTDdqN6keo2mkWwSmW1DLNjRRpLLf7hjv2Z2hdEId/X2
	s0cSBFGKPTO4YMabHr5EqUsSUE2Dw/h3ecj8BXQYhD4ysAQzOqKj4P/AUWxnPSPCh7sXOEeBx5g
	dxvEb70N/uXJRQZLy2/+opzNFifhi9lXqfWhfaznHawfojHN7vZocYx1aLmihzTPmI4NtcvuUAx
	bVvyGyauRQxuQj9M7uAu8L1v5r99tRlBuOGKhWK4HiRgOaJ7KsXSFNtBMk8u+2rY55AzosiQMpm
	bNN/D9HDxxxxXCZen1pidtcPDIvALYRXIfaHjBnmVRoxElA0XoGoADcj8iMMeLLmt0A787G5r7B
	xl6V2hsvnRJztFiRECUvlJgXbwwhoBjwaqm+M4Wgq6UZ3EEmgFbnUxiW0dPJh/O4CC1pUcYN+c4
	NtV+UC2PA/IvWj7YH0
X-Google-Smtp-Source: AGHT+IHo5bI1IRZ9DJRFKm5suWsmADqZbLqR/rj8bQ8rERwyjgO7HPxMN1i7xosry+PHVlL5KsnDVQ==
X-Received: by 2002:a05:600c:1f0f:b0:477:8b2e:aa7d with SMTP id 5b1f17b1804b1-477c1132bf2mr369712165e9.30.1764583491941;
        Mon, 01 Dec 2025 02:04:51 -0800 (PST)
Received: from owl5 ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4791163e36csm224508325e9.9.2025.12.01.02.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:04:51 -0800 (PST)
Date: Mon, 1 Dec 2025 11:04:50 +0100
From: Gary Bisson <bisson.gary@gmail.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: krzk+dt@kernel.org, linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefixes: Add Ezurio LLC
Message-ID: <aS1oQonkuFpyqSI2@owl5>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
 <20251201084140.376058-2-bisson.gary@gmail.com>
 <176458161856.2489196.6170126310129033736.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <176458161856.2489196.6170126310129033736.robh@kernel.org>

Hi,

On Mon, Dec 01, 2025 at 03:33:40AM -0600, Rob Herring (Arm) wrote:
> 
> On Mon, 01 Dec 2025 09:41:36 +0100, Gary Bisson wrote:
> > Ezurio is the new name of Laird Connectivity after it acquired Boundary
> > Devices.
> > 
> > Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
> > ---
> > Cc: robh@kernel.org
> > Cc: krzk+dt@kernel.org
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Traceback (most recent call last):
>   File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 428, in get_or_retrieve
>     resource = registry._retrieve(uri)
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 426, in retrieve
>     return DRAFT201909.create_resource(self.schemas[uri])
>                                        ~~~~~~~~~~~~^^^^^
> KeyError: 'http://devicetree.org/schemas/thermal/qcom-tsens.yaml'
> 
> The above exception was the direct cause of the following exception:
> 
> Traceback (most recent call last):
>   File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 682, in lookup
>     retrieved = self._registry.get_or_retrieve(uri)
>   File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 435, in get_or_retrieve
>     raise exceptions.Unretrievable(ref=uri) from error
> referencing.exceptions.Unretrievable: 'http://devicetree.org/schemas/thermal/qcom-tsens.yaml'
> 
> The above exception was the direct cause of the following exception:
> 
> Traceback (most recent call last):
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 463, in _validate_reference
>     resolved = self._resolver.lookup(ref)
>   File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 686, in lookup
>     raise exceptions.Unresolvable(ref=ref) from error
> referencing.exceptions.Unresolvable: /schemas/thermal/qcom-tsens.yaml#
> 
> The above exception was the direct cause of the following exception:
> 
> Traceback (most recent call last):
>   File "/usr/local/bin/dt-validate", line 8, in <module>
>     sys.exit(main())
>              ~~~~^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 158, in main
>     sg.check_dtb(filename)
>     ~~~~~~~~~~~~^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 95, in check_dtb
>     self.check_subtree(dt, subtree, False, "/", "/", filename)
>     ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
>     self.check_subtree(tree, value, disabled, name, fullname + name, filename)
>     ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
>     self.check_subtree(tree, value, disabled, name, fullname + name, filename)
>     ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 83, in check_subtree
>     self.check_node(tree, subtree, disabled, nodename, fullname, filename)
>     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 34, in check_node
>     for error in self.validator.iter_errors(node, filter=match_schema_file,
>                  ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>                                             compatible_match=compatible_match):
>                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 448, in iter_errors
>     for error in self.DtValidator(schema, registry=self.registry).iter_errors(instance):
>                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 384, in iter_errors
>     for error in errors:
>                  ^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 296, in properties
>     yield from validator.descend(
>     ...<4 lines>...
>     )
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 432, in descend
>     for error in errors:
>                  ^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 275, in ref
>     yield from validator._validate_reference(ref=ref, instance=instance)
>                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 465, in _validate_reference
>     raise exceptions._WrappedReferencingError(err) from err
> jsonschema.exceptions._WrappedReferencingError: Unresolvable: /schemas/thermal/qcom-tsens.yaml#
> Traceback (most recent call last):
>   File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 428, in get_or_retrieve
>     resource = registry._retrieve(uri)
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 426, in retrieve
>     return DRAFT201909.create_resource(self.schemas[uri])
>                                        ~~~~~~~~~~~~^^^^^
> KeyError: 'http://devicetree.org/schemas/thermal/qcom-tsens.yaml'
> 
> The above exception was the direct cause of the following exception:
> 
> Traceback (most recent call last):
>   File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 682, in lookup
>     retrieved = self._registry.get_or_retrieve(uri)
>   File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 435, in get_or_retrieve
>     raise exceptions.Unretrievable(ref=uri) from error
> referencing.exceptions.Unretrievable: 'http://devicetree.org/schemas/thermal/qcom-tsens.yaml'
> 
> The above exception was the direct cause of the following exception:
> 
> Traceback (most recent call last):
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 463, in _validate_reference
>     resolved = self._resolver.lookup(ref)
>   File "/usr/local/lib/python3.13/dist-packages/referencing/_core.py", line 686, in lookup
>     raise exceptions.Unresolvable(ref=ref) from error
> referencing.exceptions.Unresolvable: /schemas/thermal/qcom-tsens.yaml#
> 
> The above exception was the direct cause of the following exception:
> 
> Traceback (most recent call last):
>   File "/usr/local/bin/dt-validate", line 8, in <module>
>     sys.exit(main())
>              ~~~~^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 158, in main
>     sg.check_dtb(filename)
>     ~~~~~~~~~~~~^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 95, in check_dtb
>     self.check_subtree(dt, subtree, False, "/", "/", filename)
>     ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
>     self.check_subtree(tree, value, disabled, name, fullname + name, filename)
>     ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
>     self.check_subtree(tree, value, disabled, name, fullname + name, filename)
>     ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 83, in check_subtree
>     self.check_node(tree, subtree, disabled, nodename, fullname, filename)
>     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/dtb_validate.py", line 34, in check_node
>     for error in self.validator.iter_errors(node, filter=match_schema_file,
>                  ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>                                             compatible_match=compatible_match):
>                                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/dtschema/validator.py", line 448, in iter_errors
>     for error in self.DtValidator(schema, registry=self.registry).iter_errors(instance):
>                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 384, in iter_errors
>     for error in errors:
>                  ^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 296, in properties
>     yield from validator.descend(
>     ...<4 lines>...
>     )
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 432, in descend
>     for error in errors:
>                  ^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 334, in allOf
>     yield from validator.descend(instance, subschema, schema_path=index)
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 432, in descend
>     for error in errors:
>                  ^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/_keywords.py", line 275, in ref
>     yield from validator._validate_reference(ref=ref, instance=instance)
>                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/local/lib/python3.13/dist-packages/jsonschema/validators.py", line 465, in _validate_reference
>     raise exceptions._WrappedReferencingError(err) from err
> jsonschema.exceptions._WrappedReferencingError: Unresolvable: /schemas/thermal/qcom-tsens.yaml#
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251201084140.376058-2-bisson.gary@gmail.com

This link gives me a 404 error, is it expected?

> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.

Couldn't reproduce, I can't seem to see any error/warning that would be
introduced by this patch, can the above be discarded then?

Regards,
Gary

