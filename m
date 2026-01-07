Return-Path: <devicetree+bounces-252474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 51574CFF369
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ADD123018332
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA0B7345CC0;
	Wed,  7 Jan 2026 17:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="khYkqjF8"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FC31DE8BB;
	Wed,  7 Jan 2026 17:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767807678; cv=none; b=rBGGXa9MicMOnF25m9ctDwh29Zan/jJYHwM3Uay/Cc3edv2cFn68byQhtzMa6un8tQVW2cu7J0/mM8C5K2y+GCWlaPenVDBewYD5LZMO3VLHt3OU1/iA7IBniQRsbfArBTs67FkXlGZe6saHgze+vFUbNa73TbZOmqvhezBilUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767807678; c=relaxed/simple;
	bh=Wcj9oyksv0AfhKPvgwfB+MoR9ygh2XljwAbXfabFu6k=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=u2F44FrGhvKVPMzDSssbIzzram8OZ9/Dxo4q7WUDB2fN5DnDhBHyUx9Cy9tw9FIHA/2cCvhJD4PL4QW0f6AOWMFxwR8QdXlimVfgRC6c1+V3hXdwgLp3kFlAS/s+zlVNsiclCrwQTt7nPS5kUejU2r0chCNqUpqABVMX+X5Mxso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=khYkqjF8; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 697237790C5A;
	Wed,  7 Jan 2026 11:41:11 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id lCj4ikhknSmi; Wed,  7 Jan 2026 11:41:09 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 132CB7790EB7;
	Wed,  7 Jan 2026 11:41:09 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 132CB7790EB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1767807669; bh=4fgwi1EtckkgD9SU3bWHRJT2/h+xYH2qnpiCidta+4I=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=khYkqjF8AzRRCXc5BgEn0rcF3j0kAvO+6O6YjYgrORyTn8Bzci3QL+dLKpLJgjwTl
	 gnZ3VBpPt6IcEgzyf+WQloQB1ZW/HHDNGW/Wvr368MiaGHPihKvMXFHO634fDcph2f
	 AelIyf03ZA3GssTIhuXKu17X3tXqiBKKCbCq8Rck=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id QYorJIg0ivnK; Wed,  7 Jan 2026 11:41:08 -0600 (CST)
Received: from vali.starlink.edu (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id DBB297790C5A;
	Wed,  7 Jan 2026 11:41:08 -0600 (CST)
Date: Wed, 7 Jan 2026 11:41:05 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>
Message-ID: <2068648185.192779.1767807665985.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <24a1839d-5c5d-4e59-bc42-403dbc8134a4@kernel.org>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com> <20260107002136.3121607-2-tpearson@raptorengineering.com> <20260107-spotted-swan-of-sufficiency-1bfc03@quoll> <887779054.192722.1767805783381.JavaMail.zimbra@raptorengineeringinc.com> <24a1839d-5c5d-4e59-bc42-403dbc8134a4@kernel.org>
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 8.5.0_GA_3042 (ZimbraWebClient - GC143 (Linux)/8.5.0_GA_3042)
Thread-Topic: dt-bindings: mfd: Add sony,cronos-smc
Thread-Index: /Xdp7dt/iGZWNOZeWVIn20UmJs9jPQ==



----- Original Message -----
> From: "Krzysztof Kozlowski" <krzk@kernel.org>
> To: "Timothy Pearson" <tpearson@raptorengineering.com>
> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel" <linux-kernel@vger.kernel.org>, "Rob Herring"
> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn Anastasio"
> <sanastasio@raptorengineering.com>
> Sent: Wednesday, January 7, 2026 11:18:09 AM
> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc

> On 07/01/2026 18:09, Timothy Pearson wrote:
>> 
>> 
>> ----- Original Message -----
>>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
>>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
>>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
>>> <linux-kernel@vger.kernel.org>, "Rob Herring"
>>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof
>>> Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
>>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>,
>>> "Shawn Anastasio"
>>> <sanastasio@raptorengineering.com>
>>> Sent: Wednesday, January 7, 2026 1:25:10 AM
>>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>> 
>>> On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
>>>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
>>>>
>>>> The Sony Cronos Platform Controller is a multi-purpose platform controller
>>>> that provides both a watchdog timer and an LED controller for the Sony
>>>> Interactive Entertainment Cronos x86 server platform. As both functions
>>>> are provided by the same CPLD, a multi-function device is exposed as the
>>>> parent of both functions.
>>>>
>>>> Add a DT binding for this device.
>>>>
>>>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
>>>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
>>>> ---
>>>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
>>>
>>> How this can be a v6 with no changelog at all and still not tested?
>>>
>>> What happened with this patchset? Where is it explained?
>> 
>> Changes have only been to fix issues identified in review and any posted
>> autotest failures.
> 
> And where is this explained? Please always provide detailed changelog in
> the cover letter or individual patch.
> 
>> 
>> Please note that the tooling to check the DT bindings does NOT appear work
>> properly, we've wasted a lot of time and effort attempting to get it running
>> only to find that it's spitting out internal Python errors even for other
>> drivers that are *already* in the kernel source tree.  This obviously creates a
>> situation where it's difficult to pre-check the patch set for compliance; if
>> you want to see this first hand, spin up a Debian Sid VM (which has a very
>> recent version of the DT tooling from late 2025) and try to check any of the
>> in-tree MFD drivers using the documented methods.
> 
> I am using DT schema on multiple distros, including Debian but not Sid
> but Trixie
> (https://krzk.eu/#/builders/91/builds/116/steps/13/logs/stdio). Works
> without problem...

Good to know.  There is next to no documentation on the required software versions to make this work, which complicates

> On regular Debian based distro this is just few commands - pix install
> and them make dt_binding_check - so I am surprised you spent a lot of
> time on setting this up.
> 
> What is the problem exactly?

Good to know.  There is next to no documentation on the required software
versions to make this work, which complicates setup.  Bookworm's DT package was
too old when it was tried pre-Trixie release, and at the time Sid didn't work
either for some other reason.  The assumption was that the kernel needed a very
recent version of the DT tooling, so Sid was tried again this year.  Will try
Trixie before the next patch update.

Here is example output against an in-tree driver, using an up to date Sid system
(word wrap not applied so as to make the errors easier to read):

dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/silergy,sy7636a.yaml

  CHKDT   ./Documentation/devicetree/bindings
Traceback (most recent call last):
  File "/usr/bin/dt-doc-validate", line 8, in <module>
    sys.exit(main())
             ~~~~^^
  File "/usr/lib/python3/dist-packages/dtschema/doc_validate.py", line 66, in main
    ret |= check_doc(f)
           ~~~~~~~~~^^^
  File "/usr/lib/python3/dist-packages/dtschema/doc_validate.py", line 29, in check_doc
    for error in sorted(dtsch.iter_errors(), key=lambda e: e.linecol):
                 ~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/dtschema/schema.py", line 167, in iter_errors
    self.validator = self.DtValidator(registry.contents(meta_schema_id), registry=registry)
                                      ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/referencing/_core.py", line 488, in contents
    return self[uri].contents
           ~~~~^^^^^
  File "/usr/lib/python3/dist-packages/referencing/_core.py", line 338, in __getitem__
    raise exceptions.NoSuchResource(ref=uri) from None
referencing.exceptions.NoSuchResource: 'http://devicetree.org/meta-schemas/core.yaml'
  LINT    ./Documentation/devicetree/bindings
  DTC [C] Documentation/devicetree/bindings/mfd/silergy,sy7636a.example.dtb
/home/test/linux/Documentation/devicetree/bindings/mfd/silergy,sy7636a.example.dtb: pmic@62 (silergy,sy7636a): #thermal-sensor-cells: 0 was expected
        from schema $id: http://devicetree.org/schemas/mfd/silergy,sy7636a.yaml
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/referencing/_core.py", line 428, in get_or_retrieve
    resource = registry._retrieve(uri)
  File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 426, in retrieve
    return DRAFT201909.create_resource(self.schemas[uri])
                                       ~~~~~~~~~~~~^^^^^
KeyError: 'http://devicetree.org/schemas/types.yaml'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/referencing/_core.py", line 682, in lookup
    retrieved = self._registry.get_or_retrieve(uri)
  File "/usr/lib/python3/dist-packages/referencing/_core.py", line 435, in get_or_retrieve
    raise exceptions.Unretrievable(ref=uri) from error
referencing.exceptions.Unretrievable: 'http://devicetree.org/schemas/types.yaml'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/jsonschema/validators.py", line 463, in _validate_reference
    resolved = self._resolver.lookup(ref)
  File "/usr/lib/python3/dist-packages/referencing/_core.py", line 686, in lookup
    raise exceptions.Unresolvable(ref=ref) from error
referencing.exceptions.Unresolvable: /schemas/types.yaml#/definitions/string

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/bin/dt-validate", line 8, in <module>
    sys.exit(main())
             ~~~~^^
  File "/usr/lib/python3/dist-packages/dtschema/dtb_validate.py", line 158, in main
    sg.check_dtb(filename)
    ~~~~~~~~~~~~^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/dtschema/dtb_validate.py", line 95, in check_dtb
    self.check_subtree(dt, subtree, False, "/", "/", filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
    self.check_subtree(tree, value, disabled, name, fullname + name, filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
    self.check_subtree(tree, value, disabled, name, fullname + name, filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/dtschema/dtb_validate.py", line 88, in check_subtree
    self.check_subtree(tree, value, disabled, name, fullname + name, filename)
    ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/dtschema/dtb_validate.py", line 83, in check_subtree
    self.check_node(tree, subtree, disabled, nodename, fullname, filename)
    ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/dtschema/dtb_validate.py", line 34, in check_node
    for error in self.validator.iter_errors(node, filter=match_schema_file,
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                                            compatible_match=compatible_match):
                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 448, in iter_errors
    for error in self.DtValidator(schema, registry=self.registry).iter_errors(instance):
                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/jsonschema/validators.py", line 384, in iter_errors
    for error in errors:
                 ^^^^^^
  File "/usr/lib/python3/dist-packages/jsonschema/_keywords.py", line 296, in properties
    yield from validator.descend(
    ...<4 lines>...
    )
  File "/usr/lib/python3/dist-packages/jsonschema/validators.py", line 432, in descend
    for error in errors:
                 ^^^^^^
  File "/usr/lib/python3/dist-packages/jsonschema/_keywords.py", line 296, in properties
    yield from validator.descend(
    ...<4 lines>...
    )
  File "/usr/lib/python3/dist-packages/jsonschema/validators.py", line 432, in descend
    for error in errors:
                 ^^^^^^
  File "/usr/lib/python3/dist-packages/jsonschema/_keywords.py", line 275, in ref
    yield from validator._validate_reference(ref=ref, instance=instance)
  File "/usr/lib/python3/dist-packages/jsonschema/validators.py", line 432, in descend
    for error in errors:
                 ^^^^^^
  File "/usr/lib/python3/dist-packages/jsonschema/_keywords.py", line 296, in properties
    yield from validator.descend(
    ...<4 lines>...
    )
  File "/usr/lib/python3/dist-packages/jsonschema/validators.py", line 432, in descend
    for error in errors:
                 ^^^^^^
  File "/usr/lib/python3/dist-packages/jsonschema/_keywords.py", line 275, in ref
    yield from validator._validate_reference(ref=ref, instance=instance)
               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3/dist-packages/jsonschema/validators.py", line 465, in _validate_reference
    raise exceptions._WrappedReferencingError(err) from err
jsonschema.exceptions._WrappedReferencingError: Unresolvable: /schemas/types.yaml#/definitions/string

