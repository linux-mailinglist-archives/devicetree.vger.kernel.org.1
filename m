Return-Path: <devicetree+bounces-314797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fGneHb5qOmpV8gcAu9opvQ
	(envelope-from <devicetree+bounces-314797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:15:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 268D26B69C1
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:15:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jGsTbYGj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314797-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314797-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5666E300ECBB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBF23644CF;
	Tue, 23 Jun 2026 11:15:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCA13D3CF6;
	Tue, 23 Jun 2026 11:15:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782213306; cv=none; b=Eddyq3wYYpqXn1OaCoCXHp0lYIHbJvdyg+0VGW3wx7wS+4GNZUQiam6FIOPe4SEZKoaNlZVFEkyqeZ7Y7fYCCm5W5v5myH/nqyPK31ZjdyO6A7naLp+9FUGCu9u5NHtTqt+H6fMvzzpfM3bpUPL4kYng1Xe5oI+/cBed2tAhz7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782213306; c=relaxed/simple;
	bh=wqZcMJLGjMPoiWwScIX3RQTLxDspyOYcDem9+jhHz7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BtFjfKNezduMcrzVfMm6UadP+y0ZFXXNnl5MGLqHi6/mrGekol3mpClF7jrmlEfzwwKP3UAHfum+QjFTUTkCRstOilq2KYahndhsi9BFf5qQ59o8KohGkJXlaVQQ5BKqXjzCYUDDaTfZqmfqskcPIxrIzL3ssxO5kUlk+jlFqOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jGsTbYGj; arc=none smtp.client-ip=192.198.163.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782213305; x=1813749305;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wqZcMJLGjMPoiWwScIX3RQTLxDspyOYcDem9+jhHz7s=;
  b=jGsTbYGjCxKG67UEuwK9qk3xYZhfoE8kwTKu1i25THzGZBpTprKtpHW/
   8l23Osa8roMIFmZcYEd0WggpDvuvRpJDRwj6TctmHx2v395ZDG0ehsH6l
   A7/9TQy5Hzb9DfglaOD2zqeU7853PoFdPTv7IIU1RXI0oFHeC5W70VFwX
   kaGFPY1pUaFek+i/4+8xnyYSPbVPAZm0f2zs/wgB1r7qYJuMLQDHQOWol
   21hWM8pP1qAp49AEWmsn7PviORKZf2e4LkG7ywlUAeA6W8RKD8oMwy8Ie
   aoJFwdTmvO6i9iKR/IUSWCn9WnqfJc4BWGm1EJIHxFrMUYXFZcRBr6SWa
   g==;
X-CSE-ConnectionGUID: M6i4SxsLSGyyKfWDw7k/5w==
X-CSE-MsgGUID: Y8lt22vrQIaIlTwhboIQWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="81933215"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="81933215"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 04:15:04 -0700
X-CSE-ConnectionGUID: UAwfnSysS7aXCPhA5d5nTg==
X-CSE-MsgGUID: 1DtfOqIaSNy8/gFadyNbvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="245136985"
Received: from igk-lkp-server01.igk.intel.com (HELO 892db79562d4) ([10.211.93.152])
  by fmviesa006.fm.intel.com with ESMTP; 23 Jun 2026 04:15:00 -0700
Received: from kbuild by 892db79562d4 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1wbz5m-000000006Bt-0oIR;
	Tue, 23 Jun 2026 11:14:58 +0000
Date: Tue, 23 Jun 2026 13:14:01 +0200
From: kernel test robot <lkp@intel.com>
To: Bhargav Joshi <j.bhargav.u@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com,
	simona.toaca@nxp.com, j.bhargav.u@gmail.com
Subject: Re: [PATCH] dt-bindings: clock: ti,clockdomain: Convert to DT schema
Message-ID: <202606231306.COGVL9ZT-lkp@intel.com>
References: <20260621-ti-clockdomain-v1-1-e99a56af98ea@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260621-ti-clockdomain-v1-1-e99a56af98ea@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314797-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:j.bhargav.u@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk@kernel.org,m:conor+dt@kernel.org,m:kristo@kernel.org,m:oe-kbuild-all@lists.linux.dev,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:daniel.baluta@gmail.com,m:simona.toaca@nxp.com,m:jbhargavu@gmail.com,m:conor@kernel.org,m:danielbaluta@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,baylibre.com,kernel.org,redhat.com];
	FORGED_SENDER(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,vger.kernel.org,gmail.com,ti.com,nxp.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,01.org:url,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 268D26B69C1

Hi Bhargav,

kernel test robot noticed the following build warnings:

[auto build test WARNING on acb7500801e98639f6d8c2d796ed9f64cba83d3a]

url:    https://github.com/intel-lab-lkp/linux/commits/Bhargav-Joshi/dt-bindings-clock-ti-clockdomain-Convert-to-DT-schema/20260623-022037
base:   acb7500801e98639f6d8c2d796ed9f64cba83d3a
patch link:    https://lore.kernel.org/r/20260621-ti-clockdomain-v1-1-e99a56af98ea%40gmail.com
patch subject: [PATCH] dt-bindings: clock: ti,clockdomain: Convert to DT schema
compiler: clang version 22.1.8 (https://github.com/llvm/llvm-project ca7933e47d3a3451d81e72ac174dcb5aa28b59d1)
docutils: docutils (Docutils 0.21.2, Python 3.13.5, on linux)
reproduce: (https://download.01.org/0day-ci/archive/20260623/202606231306.COGVL9ZT-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202606231306.COGVL9ZT-lkp@intel.com/

All warnings (new ones prefixed by >>):

   from /zdci/src/kernel-tests/common.sh:210: redirect_command_errors
   from /zdci/src/kernel-tests/lib/builder/htmldocs.sh:86: builder_execute_build
   from /zdci/src/kernel-tests/lib/kbuild.sh:6419: compile_one_config
   from /zdci/src/kernel-tests/lib/builder/base.sh:88: builder_compile
   from /zdci/src/kernel-tests/bisect-test-build-error.sh:102: main
>> Warning: Documentation/devicetree/bindings/clock/ti/ti,gate-clock.yaml references a file that doesn't exist: Documentation/devicetree/bindings/clock/ti/clockdomain.txt
   Warning: Documentation/devicetree/bindings/mfd/motorola-cpcap.txt references a file that doesn't exist: Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
   Warning: Documentation/devicetree/bindings/mfd/motorola-cpcap.txt references a file that doesn't exist: Documentation/devicetree/bindings/rtc/cpcap-rtc.txt
   Warning: Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml references a file that doesn't exist: Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
   Warning: Documentation/devicetree/bindings/regulator/siliconmitus,sm5703-regulator.yaml references a file that doesn't exist: Documentation/devicetree/bindings/mfd/siliconmitus,sm5703.yaml
   Warning: Documentation/devicetree/bindings/rtc/motorola,cpcap-rtc.yaml references a file that doesn't exist: Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

