Return-Path: <devicetree+bounces-314966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7B0wAGPjOmq9KAgAu9opvQ
	(envelope-from <devicetree+bounces-314966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:49:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A116B9C5C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 21:49:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mVuhfkHh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314966-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314966-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34C983038AF9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:49:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C0E393DD3;
	Tue, 23 Jun 2026 19:49:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032DA3939B6;
	Tue, 23 Jun 2026 19:49:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782244173; cv=none; b=K+krIIWnDHSpGL2GqYa/9/h/9bMXnoY2aFGJMPAjOAR+EjMJDX90JLnJD2T5iC80UOkzF8EBKCrrukm5p72Eg0FFeD+zDH5Gj0R3mDffYrNgvMQ5MgGCgAkggLaOcwEU4xeZeVhhbXJ4r2bmPc4OZmd5t31ZqmDfLKyXeT0oPAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782244173; c=relaxed/simple;
	bh=qcon5+R6+cPHD8fqy2227hLiKWbL/IUAQhjdLRQ66/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GWelUy55BuDC02E1TBbs5QF7jre+VQKp6jdFCiYpIjbGavEUcbeQGu0ngr24VzygC//1HihPmoVMYgK+qFnM16dCkOJ/PNaW/te2VK84n3BL+ubCvxvhpycOoQ9B27HvCDCHPhOh0H/KmtAEU3nhU6Qdf5CF8I2YJ39Dh4mq6M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=mVuhfkHh; arc=none smtp.client-ip=192.198.163.14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782244172; x=1813780172;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=qcon5+R6+cPHD8fqy2227hLiKWbL/IUAQhjdLRQ66/c=;
  b=mVuhfkHhG5edR4fcvuXYj+Z5R9WTq7J2vsjbhforhOQxUiIQO+HeoNZr
   1yyQkuOpgVJ4R9Q/6LxCA4wiY7JgUX901Qu5smPKBokQaEcWoudcb0YvH
   KovoGSUjXGVN+s5IVtCawi73j6LSl4qUpTdBmlfNFgju2JxusejfjZE8J
   jOrUFxzuLpe3IkPuBldPX0MI2pnBtxF2ztfIHZYwE/b9r7jx3tm+Kxb2o
   TsuOyAhSRr8JMSI8IgYVWCgBczIZItbbhALdUE33HDBg0/R44DswaPNSs
   TGyrpZLW7cgQAOo6YJGevb+AwLQtczEUuCECKPgaLW+tm4bmLyY3ZPTtC
   w==;
X-CSE-ConnectionGUID: Ug3roN8fSkyeFxFPMPuoZA==
X-CSE-MsgGUID: q3eKK8KwSoGhDkLESrZ6TQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="83039470"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="83039470"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 12:49:31 -0700
X-CSE-ConnectionGUID: zOngNvU+Qv+N4oFIXlhjyQ==
X-CSE-MsgGUID: 2JN4giLWSdyQl3iLBxjwyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; 
   d="scan'208";a="246692114"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.7])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2026 12:49:27 -0700
Date: Tue, 23 Jun 2026 22:49:25 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Herman van Hazendonk <github.com@herrie.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	Denis Ciocca <denis.ciocca@gmail.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Denis Ciocca <denis.ciocca@st.com>,
	Linus Walleij <linusw@kernel.org>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] iio: magnetometer: st_magn: honour
 st,fullscale-milligauss DT property
Message-ID: <ajrjRdEkZAho8h1E@ashevche-desk.local>
References: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-0-063edcf74e60@herrie.org>
 <20260616-submit-iio-lsm303dlh-magn-fixes-v2-3-063edcf74e60@herrie.org>
 <20260623202916.5f5d520e@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260623202916.5f5d520e@jic23-huawei>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314966-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:github.com@herrie.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:denis.ciocca@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:denis.ciocca@st.com,m:linusw@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:llvm@lists.linux.dev,m:devicetree@vger.kernel.org,m:nickdesaulniers@gmail.com,m:denisciocca@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[herrie.org,baylibre.com,analog.com,kernel.org,gmail.com,google.com,metafoo.de,st.com,vger.kernel.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,lkml,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:dkim,intel.com:from_mime,herrie.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58A116B9C5C

On Tue, Jun 23, 2026 at 08:29:16PM +0100, Jonathan Cameron wrote:
> On Tue, 16 Jun 2026 15:02:06 +0200
> Herman van Hazendonk <github.com@herrie.org> wrote:
> 
> > The ST magnetometer core's common probe hardcodes fs_avl[0] -- the
> > highest-sensitivity full-scale supported by the chip -- as the
> > starting range. For the LSM303DLH that is +/-1.3 G; for the
> > LSM303DLHC and LSM303DLM it is +/-2 G; for the LIS3MDL it is +/-4 G.
> > 
> > That is the right default for "minimal noise floor at a desk", but
> > it leaves no margin for boards that pick up appreciable DC bias from
> > nearby PCB structures. On the HP TouchPad (apq8060 / tenderloin) the
> > LSM303DLH magnetometer is mounted close enough to the surrounding
> > power planes that X reads back as the chip's 0xF000 overflow
> > sentinel (== -4096 raw, the value the chip publishes when the ADC
> > saturates) on every sample at the chip-default range, while Y and Z
> > fall well within the +/-1.3 G window.
> > 
> > Parse the st,fullscale-milligauss device-tree property (documented
> > separately in dt-bindings/iio/st,st-sensors.yaml) in the
> > magnetometer common probe to select the initial fs_avl entry by its
> > mg value. The DT binding pins the accepted value set per compatible
> > via allOf/if-then enum clauses, so a malformed mg value fails
> > dt_binding_check rather than reaching the driver. Sensors with a
> > fixed full-scale (fs.addr == 0: LSM303AGR, LIS2MDL, IIS2MDC) have no
> > register to switch and the property is rejected outright for them
> > in the binding; the parse block is additionally gated on fs.addr as
> > defence in depth against stale DTBs.
> > 
> > Per-sensor mg ranges are listed in st_magn_sensors_settings[]. For
> > LSM303DLH and LSM303DLHC/DLM the valid values are 1300, 1900, 2500,
> > 4000, 4700, 5600 and 8100; for LIS3MDL, LSM9DS1-magn and LSM303C-magn
> > they are 4000, 8000, 12000, 16000.
> > 
> > Empirical scale sweep on the HP TouchPad confirmed that on this
> > board any fs_avl >= 1 produces non-saturated X readings:
> > 
> >     scale (0.001 G/LSB)  | X raw    Y raw    Z raw
> >     --------------------+-------------------------------
> >             1.100        | -4096    44       46    (X saturated)
> >             0.855        |  -547    37       37    (clean)
> >             0.670        |  -433    94      103    (clean)
> >             0.450        |  -266    44       71    (clean)
> >             0.400        |  -235    34       65    (clean)
> >             0.330        |  -196    27       56    (clean)
> >             0.230        |  -145    15       40    (clean)
> > 
> > 2500 mg is the natural choice for tenderloin: comfortably outside
> > the saturation regime while keeping useful precision for compass
> > applications.
> > 
> > Assisted-by: Claude:claude-opus-4-7 sparse smatch clang-analyzer coccinelle checkpatch
> > Assisted-by: Sashiko:claude-opus-4-7
> Hmm. First time I remember seeing Sashiko credited like this. Seems like pretty much
> every patch series of any complexity would end up crediting sashiko.
> Out of curiosity were you just looking at reports, or were you running it locally to
> help with development?

I believe it's the second one, because LKML version uses Gemini (as far as I
understand the case). At least that's why I haven't commented on this tag.

-- 
With Best Regards,
Andy Shevchenko



