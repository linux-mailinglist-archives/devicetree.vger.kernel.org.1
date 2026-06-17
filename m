Return-Path: <devicetree+bounces-312894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gsq6AcB0MmoJ0QUAu9opvQ
	(envelope-from <devicetree+bounces-312894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 12:19:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A81B6986A9
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 12:19:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XG7cpH0R;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312894-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312894-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F414C308C3F6
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14CCB3D171B;
	Wed, 17 Jun 2026 10:06:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFA42EEE68;
	Wed, 17 Jun 2026 10:05:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781690760; cv=none; b=PCFQlRfzzKiK2l5rQyvqw+Y/Yg59UI4o1KuKoNWDUrxkXGi8iKpb0mqAXpC8l7hMzpSOESHSBtWo7mv0r0gDkU5phhfltgEUbp2gcOG3yT0UYvn1KrqmFPPQnxKlNvlduGFEmNfjrmje8UIWhLMfZfh/7VeJQ4+NUqc9R4+HSbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781690760; c=relaxed/simple;
	bh=OLeVBB6qlE0iZ/ufAhTpyQ+OClTsi9u7Xc5hNVrjvek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NVcUBYWwZZ0AXLX61IEu0+9qED6zaagZHDZv0s9bifqYycYZw02YOKpGZaV4Qn9OG/6QFWNcHFh1gFjjgBQriaWXipqkSPCvFA+impOtgGda/wf9mw5pv8NoTblCAeybgDWFMt1iqXe+in79hw5klvRwntyF05IDZ3kECGh+Ti4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=XG7cpH0R; arc=none smtp.client-ip=192.198.163.14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781690758; x=1813226758;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OLeVBB6qlE0iZ/ufAhTpyQ+OClTsi9u7Xc5hNVrjvek=;
  b=XG7cpH0RZh9SEFjfA/j0IjvIq+VhfOda3Y+7rNP+Xlq9jMo09g+XrNcR
   deZsj0EpaCXFR4dLqoFZZnYKbbWu1GXh88fn2UDXC0YKVLTen6CamZV8j
   cX/FFX4VOhfI4qY1ePWl1Ak/lK3hKJy9kWnpQHkanpPVHPTEizq2WRYXE
   GA+++yivQ1uw5rL1YJVR/raylqE3DPkRj6EX8bfY/6YRVjaIxWw5QHIP+
   AV3+BMhb3mrk5+dUr3fuV7HtRX4ZuwJqJs2AB5W2KBV/+HKl9yeD5Xhnr
   qkhUrd3m5qFjSJNdfQZA/GhBYomP6PkdRt+a3U+mDhiSTgHONMZurQ+H6
   w==;
X-CSE-ConnectionGUID: qIDIFzr9TWW0396XXP3KxA==
X-CSE-MsgGUID: hlU4DowpSx6hw/z8W6BfCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82536029"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; 
   d="scan'208";a="82536029"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 03:05:58 -0700
X-CSE-ConnectionGUID: PTAcu+LyS7iF1NphgD7NBw==
X-CSE-MsgGUID: Z8Ar9FZWS++0ppbBrttrWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; 
   d="scan'208";a="252328680"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.245.69])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 03:05:53 -0700
Date: Wed, 17 Jun 2026 13:05:50 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: Jonathan Cameron <jic23@kernel.org>,
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
Message-ID: <ajJxfi3V-EGz4KTF@ashevche-desk.local>
References: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-0-063edcf74e60@herrie.org>
 <20260616-submit-iio-lsm303dlh-magn-fixes-v2-3-063edcf74e60@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260616-submit-iio-lsm303dlh-magn-fixes-v2-3-063edcf74e60@herrie.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312894-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:denis.ciocca@gmail.com,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:denis.ciocca@st.com,m:linusw@kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:llvm@lists.linux.dev,m:devicetree@vger.kernel.org,m:nickdesaulniers@gmail.com,m:denisciocca@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,google.com,metafoo.de,st.com,vger.kernel.org,lists.linux.dev];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,lkml,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A81B6986A9

On Tue, Jun 16, 2026 at 03:02:06PM +0200, Herman van Hazendonk wrote:
> The ST magnetometer core's common probe hardcodes fs_avl[0] -- the
> highest-sensitivity full-scale supported by the chip -- as the
> starting range. For the LSM303DLH that is +/-1.3 G; for the
> LSM303DLHC and LSM303DLM it is +/-2 G; for the LIS3MDL it is +/-4 G.
> 
> That is the right default for "minimal noise floor at a desk", but
> it leaves no margin for boards that pick up appreciable DC bias from
> nearby PCB structures. On the HP TouchPad (apq8060 / tenderloin) the
> LSM303DLH magnetometer is mounted close enough to the surrounding
> power planes that X reads back as the chip's 0xF000 overflow
> sentinel (== -4096 raw, the value the chip publishes when the ADC
> saturates) on every sample at the chip-default range, while Y and Z
> fall well within the +/-1.3 G window.
> 
> Parse the st,fullscale-milligauss device-tree property (documented
> separately in dt-bindings/iio/st,st-sensors.yaml) in the
> magnetometer common probe to select the initial fs_avl entry by its
> mg value. The DT binding pins the accepted value set per compatible
> via allOf/if-then enum clauses, so a malformed mg value fails
> dt_binding_check rather than reaching the driver. Sensors with a
> fixed full-scale (fs.addr == 0: LSM303AGR, LIS2MDL, IIS2MDC) have no
> register to switch and the property is rejected outright for them
> in the binding; the parse block is additionally gated on fs.addr as
> defence in depth against stale DTBs.
> 
> Per-sensor mg ranges are listed in st_magn_sensors_settings[]. For
> LSM303DLH and LSM303DLHC/DLM the valid values are 1300, 1900, 2500,
> 4000, 4700, 5600 and 8100; for LIS3MDL, LSM9DS1-magn and LSM303C-magn
> they are 4000, 8000, 12000, 16000.
> 
> Empirical scale sweep on the HP TouchPad confirmed that on this
> board any fs_avl >= 1 produces non-saturated X readings:
> 
>     scale (0.001 G/LSB)  | X raw    Y raw    Z raw
>     --------------------+-------------------------------
>             1.100        | -4096    44       46    (X saturated)
>             0.855        |  -547    37       37    (clean)
>             0.670        |  -433    94      103    (clean)
>             0.450        |  -266    44       71    (clean)
>             0.400        |  -235    34       65    (clean)
>             0.330        |  -196    27       56    (clean)
>             0.230        |  -145    15       40    (clean)
> 
> 2500 mg is the natural choice for tenderloin: comfortably outside
> the saturation regime while keeping useful precision for compass
> applications.

Not sure if we need that big commit message, better to move to the point.

> +	propname = "st,fullscale-milligauss";
> +	if (mdata->sensor_settings->fs.addr &&
> +	    device_property_present(parent, propname)) {
> +		struct st_sensor_fullscale *fs = &mdata->sensor_settings->fs;
> +		u32 fs_mg;

> +		int i;

Instead...

> +		err = device_property_read_u32(parent, propname, &fs_mg);
> +		if (err)
> +			return err;

> +		for (i = 0; i < ST_SENSORS_FULLSCALE_AVL_MAX; i++) {

		for (unsigned int i = 0; i < ST_SENSORS_FULLSCALE_AVL_MAX; i++) {

> +			if (!fs->fs_avl[i].num)
> +				break;
> +			if (fs->fs_avl[i].num == fs_mg) {
> +				mdata->current_fullscale = &fs->fs_avl[i];
> +				break;
> +			}
> +		}
> +		if (mdata->current_fullscale->num != fs_mg)
> +			dev_warn(parent, "%s=%u not supported, using %u\n",
> +				 propname, fs_mg,
> +				 mdata->current_fullscale->num);
> +	}

-- 
With Best Regards,
Andy Shevchenko



