Return-Path: <devicetree+bounces-130403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D32629EFA34
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:01:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ECD228980F
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B929158D80;
	Thu, 12 Dec 2024 18:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="hRze/1sD"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B47D223C46
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734026457; cv=none; b=oVLYUApmZp0B0UNtYogoKzLw+EGsddeqoA9SvFNPxUE27KOXs+1JfVcT75X+BmCg5wzNhTCMTeJg8PldVOWgxSG5EIGnogCI40NPmPeeHCzHOnSZomHTt9V129/4P6iGTx+HnNn1mLnVr/IGC+cYLpCUTOXu9x0w9/az5s41DlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734026457; c=relaxed/simple;
	bh=Qc3v4Fk3wUtjL5mSWnDYqU936f0ZUlFlnKAhG4vVhww=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=tXBlq9Qq8yyDcOw+oAtAMUUEJ8cK1HZAEsy8TvnckcYgqTQ/ZPK2utfRcE0Q/PyrqYem4Hfdxl1m4bMpelwaskRqEAJhtdA2wHGjfm5ljECIpt9LWRXDaIVX+++DwDsT6+Mltpsh2XwOp/NBWFM/03jFlbRQagPTc1ZR3CzqQqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=hRze/1sD; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1734026454; x=1765562454;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=Qc3v4Fk3wUtjL5mSWnDYqU936f0ZUlFlnKAhG4vVhww=;
  b=hRze/1sDtUqeUgO3leyVtRZwWuP2rwnxwtnVIXYLiN6nFOAdThRkIlbF
   63soucCaBXUUAswKL1+1IT26Bmaz20ht4iGUGjJatPstb6NFBap3NyEHN
   cUSUWGXMqwBGUfsTWZNXi2LI7IGguPAcrjY93fnj6gHz/brRU1lJdsm0Y
   KaS3DBEVtmlnTUAaIHNQ02DuebWeG58G/kvWMOR7DaiVkbDW9l24wpApx
   5UObWrSXKYOovlhsojfV42plj0NlxqI92IGBwfl8LQdut9bAOnecWxSUx
   /LpKb/xlr1tGbHO00ttU6adl9H2sdHwz3efIbS1xx6asUaRxt6dsC3sg6
   w==;
X-CSE-ConnectionGUID: fNF9T3bqR/a357deMElICg==
X-CSE-MsgGUID: qhN8ymGVRbWalHgSGlmHpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34701495"
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; 
   d="scan'208";a="34701495"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2024 10:00:54 -0800
X-CSE-ConnectionGUID: 6l7A9lYkT3StjSxRWue5xg==
X-CSE-MsgGUID: Rbo2cfPeRqikNwCat8hYTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,229,1728975600"; 
   d="scan'208";a="96708301"
Received: from smile.fi.intel.com ([10.237.72.154])
  by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2024 10:00:50 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1tLnUV-000000070Ht-2AkU;
	Thu, 12 Dec 2024 20:00:47 +0200
Date: Thu, 12 Dec 2024 20:00:47 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: How to check (an updated) schema if make dt_binding_check fails
 already?
Message-ID: <Z1skz3Dmz3mPIskX@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo


Hi!

I would like to extend an existing schema, the checker currently (on Debian
unstable) fails with the recent in-kernel schema. What should I do?

$ make dt_binding_check DT_SCHEMA_FILES=/usb/snps,dwc3.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  Traceback (most recent call last):
    File "/usr/bin/dt-mk-schema", line 8, in <module>
        sys.exit(main())
                 ^^^^^^
      File "/usr/lib/python3/dist-packages/dtschema/mk_schema.py", line 28, in main
        schemas = dtschema.DTValidator(args.schemas).schemas
                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
      File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 363, in __init__
        self.make_property_type_cache()
      File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 420, in make_property_type_cache
        self.props, self.pat_props = get_prop_types(self.schemas)
                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
      File "/usr/lib/python3/dist-packages/dtschema/validator.py", line 187, in get_prop_types
        del props[r'^[a-z][a-z0-9\-]*$']
            ~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    KeyError: '^[a-z][a-z0-9\\-]*$'
    make[2]: *** [Documentation/devicetree/bindings/Makefile:63: Documentation/devicetree/bindings/processed-schema.json] Error 1
    make[2]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema.json'
    make[1]: *** Makefile:1509: dt_binding_schemas] Error 2
    make: *** [Makefile:251: __sub-make] Error 2

Tree: Linux Next next-20241212

DT schema:
$ apt list dt-schema*
dt-schema/unstable,unstable,now 2023.11-3 all [installed]

Library:
$ apt list python3-libfdt*
python3-libfdt/testing,testing,unstable,now 1.7.0-2+b2 amd64 [installed]

-- 
With Best Regards,
Andy Shevchenko



