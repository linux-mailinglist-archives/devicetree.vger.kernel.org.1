Return-Path: <devicetree+bounces-260157-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE9bJWk/eWkmwAEAu9opvQ
	(envelope-from <devicetree+bounces-260157-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:42:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F819B2EE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:42:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 555FB3005141
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 22:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FAFE2E11A6;
	Tue, 27 Jan 2026 22:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="HO5PmLVK"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D4421FF2E;
	Tue, 27 Jan 2026 22:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769553764; cv=none; b=Yij8z5YLJf3v8gLluVTSp+FSrSybCpqfP3GiWZ44l169hJyKal5LgjQkEAkM08es9vB+leGnJAne0VLcd6w2i0J7c3mXrfUh0uuum/z0GskDsTxK7indZmgO0g3NqW2mKCl4TcVpC1PYPY+CTQKM7TWsXRccULYMJ4WxSyLceAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769553764; c=relaxed/simple;
	bh=WegCnwwfSGmFUDGmIHHWKiorY5XXEnGLbJKRRJMRbTE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WhYa7CLZqnWJQhJ2CXeIyQJ+wIVSdqczAKTJ296X0VHFF5aty/0RLoy2fUDUP6e2h8Wh6Z9VCrwUj0d5cM6gUbEgLK3J4CTBrFOw/Z+1PgE0264FLNGGCuOiJ2Ybyo0fDe64kNTKQ+hUKo8Wz+FxvkQdc0emkVRgAPgkJk0rt+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=HO5PmLVK; arc=none smtp.client-ip=198.175.65.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769553763; x=1801089763;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=WegCnwwfSGmFUDGmIHHWKiorY5XXEnGLbJKRRJMRbTE=;
  b=HO5PmLVKcJ6V5VBF9HTrvmsFITCGbhXHwV5HLpQIiinieVj8AW1qkeGB
   5TwNob5bHbH6U4/wxaIT70gN0adLbWqPzqmeObL/kiO5IjvUZieZgUjci
   1cZiD+DB8FYIniaXy3X0H93Jf2EFWAMrOMuAMEWBs84UKFcbbFVMatogq
   3zIYfn5Kjl/vg89ffrveYm4t2z04ygjUFU0zw+AtQJK0LIKxIqYtUaISN
   jTuqicVig+CADVzVViwoJ1uhs1uKD1jZrfDdkllgygKapg9L090R2306F
   BYb7cKuP/Nyp7pgsyLbZfejLrx+9Lfb8HHl7kwRxDtK9RqaF/xRhfFb+6
   w==;
X-CSE-ConnectionGUID: BbxRBO0uSHe1c8uAyiprXQ==
X-CSE-MsgGUID: S86YpUblTTK98MyYhmNX6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="81072681"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="81072681"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 14:42:42 -0800
X-CSE-ConnectionGUID: kKcIGy8jRWWrDFK1YjcHLw==
X-CSE-MsgGUID: 9u1eQUZ9QuKhf53PbOOTMw==
X-ExtLoop1: 1
Received: from igk-lkp-server01.igk.intel.com (HELO afc5bfd7f602) ([10.211.93.152])
  by fmviesa003.fm.intel.com with ESMTP; 27 Jan 2026 14:42:40 -0800
Received: from kbuild by afc5bfd7f602 with local (Exim 4.98.2)
	(envelope-from <lkp@intel.com>)
	id 1vkrle-000000001wr-02Yr;
	Tue, 27 Jan 2026 22:42:38 +0000
Date: Tue, 27 Jan 2026 23:42:36 +0100
From: kernel test robot <lkp@intel.com>
To: Romain Gantois <romain.gantois@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Gazzillo <paul@pgazz.com>,
	Necip Fazil Yildiran <fazilyildiran@gmail.com>,
	oe-kbuild-all@lists.linux.dev,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Romain Gantois <romain.gantois@bootlin.com>
Subject: Re: [PATCH 2/2] misc: ti_fpc202: Support special-purpose GPIO lines
 with LED features
Message-ID: <202601272312.EmjoBjHO-lkp@intel.com>
References: <20260127-fpc202-leds-v1-2-ebd0cfb9f9a1@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-fpc202-leds-v1-2-ebd0cfb9f9a1@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[pgazz.com,gmail.com,lists.linux.dev,bootlin.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-260157-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,01.org:url]
X-Rspamd-Queue-Id: B2F819B2EE
X-Rspamd-Action: no action

Hi Romain,

kernel test robot noticed the following build warnings:

[auto build test WARNING on a8a6d9b4da001a84dd715d92f034d2bf777199c8]

url:    https://github.com/intel-lab-lkp/linux/commits/Romain-Gantois/dt-bindings-misc-Describe-FPC202-LED-features/20260127-215935
base:   a8a6d9b4da001a84dd715d92f034d2bf777199c8
patch link:    https://lore.kernel.org/r/20260127-fpc202-leds-v1-2-ebd0cfb9f9a1%40bootlin.com
patch subject: [PATCH 2/2] misc: ti_fpc202: Support special-purpose GPIO lines with LED features
config: parisc-kismet-CONFIG_LEDS_TRIGGERS-CONFIG_CHASSIS_LCD_LED-0-0 (https://download.01.org/0day-ci/archive/20260127/202601272312.EmjoBjHO-lkp@intel.com/config)
reproduce: (https://download.01.org/0day-ci/archive/20260127/202601272312.EmjoBjHO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601272312.EmjoBjHO-lkp@intel.com/

kismet warnings: (new ones prefixed by >>)
>> kismet: WARNING: unmet direct dependencies detected for LEDS_TRIGGERS when selected by CHASSIS_LCD_LED
   WARNING: unmet direct dependencies detected for LEDS_CLASS
     Depends on [n]: NEW_LEDS [=n]
     Selected by [y]:
     - TI_FPC202 [=y] && I2C [=y]
   
   WARNING: unmet direct dependencies detected for LEDS_TRIGGERS
     Depends on [n]: NEW_LEDS [=n] && LEDS_CLASS [=y]
     Selected by [y]:
     - CHASSIS_LCD_LED [=y] && LEDS_CLASS [=y]=y [=y]

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

