Return-Path: <devicetree+bounces-130635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A84579F08DA
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:58:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5ACEA28320E
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 09:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7381B5EBC;
	Fri, 13 Dec 2024 09:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfFF/lV3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976791B415F
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 09:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734083828; cv=none; b=X0iMrSFkVE03wvdg7eQwiuNliU1leixZTn0T0qrtblIbr88C28G364FmOuMY+FvMV4ToW7TeTSbTo214U6A69Aru4UjdrOBY2DOgcp4mo/aJkzIcXUoS2sUNmTclDFxuCY+o4/PkWTG5tpR+557Htjz6UZ45DuzY7XwLh9hylkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734083828; c=relaxed/simple;
	bh=YO+n7MU+2RrIu0W3P8KTbdPkEDXVBp1+wV8pfB3/vmY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t1dVkV6CyAmnRPnqlFsG+7mOy6XcRdk6NzW/coHpmIjkU7RwcLPsDIsJJWyZGTZFjNSGEcAKl2/DdT0IbkWj/LHbV1MW5V2FdUWCQDAWSIy7KuSTKAUrdEhr/ONJOE67zT1I8VCnFeyCJZDX2Uzz6MHrl6uM0gpgAD/DHdsVL1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfFF/lV3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5299C4CED0;
	Fri, 13 Dec 2024 09:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734083828;
	bh=YO+n7MU+2RrIu0W3P8KTbdPkEDXVBp1+wV8pfB3/vmY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lfFF/lV3jMn5IZmBjfw2DdXbPyKhmR7LojbJD+U3vMhinHAchlngazi6gVNLZKo5H
	 3c/vw5bDPzKXFCeIgt9XnZcJaQx/2IGi/Y+HPw5MRsfsH46kWp37FmrBLHTmx+JV1c
	 HTAFZgT95bUGtdc9KBg0i8y181+/yaLdNrPL0ZOCwEeqL0yQY0hTY2qFMuPq09/3CQ
	 3SrkYeJ74FvL/00qeak04gvPF2Q+zVJh/tEkZgDGm7XbOGrsFIBqEkJp9RDbQRCDWP
	 5AN1Sv6bmFVlx6zNicHsSF4mVYpmYI8AMGTvfsDrWhg7y9ri1Bt8n9HLP3TR6qj7nE
	 DybA3SJKZAQ8A==
Message-ID: <03ceb5ac-e83b-4aed-b435-18f02391aa66@kernel.org>
Date: Fri, 13 Dec 2024 10:57:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: How to check (an updated) schema if make dt_binding_check fails
 already?
To: Andy Shevchenko <andriy.shevchenko@intel.com>, devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <Z1skz3Dmz3mPIskX@smile.fi.intel.com>
 <Z1vMmlr1l7hcTEWA@smile.fi.intel.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <Z1vMmlr1l7hcTEWA@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/12/2024 06:56, Andy Shevchenko wrote:
> On Thu, Dec 12, 2024 at 08:00:47PM +0200, Andy Shevchenko wrote:
>>
>> Hi!
>>
>> I would like to extend an existing schema, the checker currently (on Debian
>> unstable) fails with the recent in-kernel schema. What should I do?
>>
>> $ make dt_binding_check DT_SCHEMA_FILES=/usb/snps,dwc3.yaml
>>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>>   Traceback (most recent call last):
>>     File "/usr/bin/dt-mk-schema", line 8, in <module>
>>         sys.exit(main())
>>                  ^^^^^^
>>       File "/usr/lib/python3/dist-packages/dtschema/mk_schema.py", line 28, in main
>>         schemas = dtschema.DTValidator(args.schemas).schemas
>>                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>       File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 363, in __init__
>>         self.make_property_type_cache()
>>       File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 420, in make_property_type_cache
>>         self.props, self.pat_props = get_prop_types(self.schemas)
>>                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>       File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 187, in get_prop_types
>>         del props[r'^[a-z][a-z0-9\-]*$']
>>             ~~~~~^^^^^^^^^^^^^^^^^^^^^^^
>>     KeyError: '^[a-z][a-z0-9\\-]*$'
>>     make[2]: *** [Documentation/devicetree/bindings/Makefile:63: Documentation/devicetree/bindings/processed-schema.json] Error 1
>>     make[2]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema.json'
>>     make[1]: *** Makefile:1509: dt_binding_schemas] Error 2
>>     make: *** [Makefile:251: __sub-make] Error 2
> 
> FWIW, this traceback happens independently on presence or content of
> the DT_SCHEMA_FILE variable.
> 
> So, any suggestions, please? Can this be fixed rather sooner than later?
dtschema is kind of developers tool, still being actively changing, not
a stable product, so we expect people running moderately recent
releases. Recent could mean, one or two months old. Not year old, that's
like ancient world for us. Sorry.

And it is not only because of changes in the tool itself, but also
because dtschema contains the core schema. If you use something from
2023, you miss entire new schema and new bindings. There is no way
recent kernel will pass such checks because of that missing bindings,
regardless of actual tool issues like above.

We all use and *only* recommend pip (or pipx mentioned earlier for some
distros).

Best regards,
Krzysztof

