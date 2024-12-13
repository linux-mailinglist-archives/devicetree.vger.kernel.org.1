Return-Path: <devicetree+bounces-130519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 420E29F0470
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 06:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 555AD1685F5
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 05:56:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 433D5188CA9;
	Fri, 13 Dec 2024 05:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="QBnzq0Qb"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BADF6F30F
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 05:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734069408; cv=none; b=YZwPwmk0dmYQlUlaJdEjoqNmr9rCGxLDboL25iCbjdEqy/IYPAl7e3ofyZt+tpNDObktko3TtRsaw4q5f7zTeWovqeTMs63dSc3ta6tI6fyL9ZhC2kGbjpIv0cxxkeku0fqLOVGytHbvU9DQ1FKTm2jTgC4I7zv/gm6IlFnQC7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734069408; c=relaxed/simple;
	bh=yxUvnmKNxzrWjr3Jm4oauLnvQZG9zdZGkrntW4HFBRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LiUi87TOQYSX+jrreqHgeq7MwFmgiTyGT1zQYJqi7g4jjn3QKrHNdYLLOJsa0taBzzih7TFAIr9NmKekMAz9l77orbo1tqdnNIKrJ5otqGdVICXWa0KeUZJMm86eu8ZY681kBz8PopVR4EwLbL5CEv0UDbEP2jmFzMEsdmylKLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=QBnzq0Qb; arc=none smtp.client-ip=198.175.65.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1734069407; x=1765605407;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=yxUvnmKNxzrWjr3Jm4oauLnvQZG9zdZGkrntW4HFBRs=;
  b=QBnzq0Qb/tcJJHuY/gh70sHollGYvt/R7UnEXT5j/vfYXFpJiLcTUiQM
   eWCSxaBareTfsdixLlaSXXV3YOZsnO/TxnPbUgDkp8M4i1PoBUbo6pWcx
   szjlDr0/SI3icsUs24eWjkVZ98pNzTBP8/0LuwarqEYu6Qxs2zZGYMt/F
   tmirnfvQw3Fx1ZZ4Bthc2XXVKZdLy6o8yobXns1ZuOm46z25Sk0BKAGbe
   rDbUpWuPBxXKxXXHkMrLVaQ+sqAgt5ZJA0FPy6NZwSOnS1ebLRkFVKeLj
   TB9aS8pczYiSmsjbogpb/W1Gpes+gQK3IRg+QLDGLY/tHDsvT1oASrAko
   w==;
X-CSE-ConnectionGUID: guTtf67kTh2RCoT3ELv3Jw==
X-CSE-MsgGUID: IhHz1I3mSLSaQ13UIr2LTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34429682"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; 
   d="scan'208";a="34429682"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2024 21:56:46 -0800
X-CSE-ConnectionGUID: 436+uUh1SbmBaY5yx4btkw==
X-CSE-MsgGUID: aLp/JNHRTvujjHPyBB2hcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; 
   d="scan'208";a="101471245"
Received: from smile.fi.intel.com ([10.237.72.154])
  by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2024 21:56:45 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1tLyfK-00000007DbX-1Df3;
	Fri, 13 Dec 2024 07:56:42 +0200
Date: Fri, 13 Dec 2024 07:56:42 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: How to check (an updated) schema if make dt_binding_check fails
 already?
Message-ID: <Z1vMmlr1l7hcTEWA@smile.fi.intel.com>
References: <Z1skz3Dmz3mPIskX@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1skz3Dmz3mPIskX@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

On Thu, Dec 12, 2024 at 08:00:47PM +0200, Andy Shevchenko wrote:
> 
> Hi!
> 
> I would like to extend an existing schema, the checker currently (on Debian
> unstable) fails with the recent in-kernel schema. What should I do?
> 
> $ make dt_binding_check DT_SCHEMA_FILES=/usb/snps,dwc3.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   Traceback (most recent call last):
>     File "/usr/bin/dt-mk-schema", line 8, in <module>
>         sys.exit(main())
>                  ^^^^^^
>       File "/usr/lib/python3/dist-packages/dtschema/mk_schema.py", line 28, in main
>         schemas = dtschema.DTValidator(args.schemas).schemas
>                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>       File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 363, in __init__
>         self.make_property_type_cache()
>       File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 420, in make_property_type_cache
>         self.props, self.pat_props = get_prop_types(self.schemas)
>                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>       File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 187, in get_prop_types
>         del props[r'^[a-z][a-z0-9\-]*$']
>             ~~~~~^^^^^^^^^^^^^^^^^^^^^^^
>     KeyError: '^[a-z][a-z0-9\\-]*$'
>     make[2]: *** [Documentation/devicetree/bindings/Makefile:63: Documentation/devicetree/bindings/processed-schema.json] Error 1
>     make[2]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema.json'
>     make[1]: *** Makefile:1509: dt_binding_schemas] Error 2
>     make: *** [Makefile:251: __sub-make] Error 2

FWIW, this traceback happens independently on presence or content of
the DT_SCHEMA_FILE variable.

So, any suggestions, please? Can this be fixed rather sooner than later?

> Tree: Linux Next next-20241212
> 
> DT schema:
> $ apt list dt-schema*
> dt-schema/unstable,unstable,now 2023.11-3 all [installed]
> 
> Library:
> $ apt list python3-libfdt*
> python3-libfdt/testing,testing,unstable,now 1.7.0-2+b2 amd64 [installed]

-- 
With Best Regards,
Andy Shevchenko



