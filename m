Return-Path: <devicetree+bounces-292698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IXaEt2/+Gnh0AIAu9opvQ
	(envelope-from <devicetree+bounces-292698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 17:48:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AC74C0DDA
	for <lists+devicetree@lfdr.de>; Mon, 04 May 2026 17:48:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B073F301A737
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2026 15:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30443D413D;
	Mon,  4 May 2026 15:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="BBpDiTI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF70A3914EB;
	Mon,  4 May 2026 15:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777909720; cv=none; b=WFnyoQU3XY2+ioZGoayo6JXyygD9R/KjmKUr9tXyb9kDZNaWhKiExxTjRysDdkVgpZBYjLHsEyVGEQV4hh17yScmansSeqM/iD8yNrj9RJxdXlGIhmzWg4lfVPGgoZSyyekUrIiGNCzgpqG5pfGZWfwnQF1gS+KqCYKSSNVZqJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777909720; c=relaxed/simple;
	bh=Mk8T5pIF3vT2o9AbfXbpeGqOrNPZcu4vlw82xyIjqXA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X7IU91E4GMIsdfLEPIewHYpOBEbDYp/cb6w64atXEBhCJY+9rRjwGcQmoZEVtjPif72xuseRZ7CPjuFyfy+TGuo8x5yDPzxP4oIHnR/oTsh8yNmLO42ANGWAguozIwszKiax4k1XX3yUGO53LE4etMHYX3KaiPbEbyX7tbynqTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=BBpDiTI7; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777909719; x=1809445719;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Mk8T5pIF3vT2o9AbfXbpeGqOrNPZcu4vlw82xyIjqXA=;
  b=BBpDiTI7jL3xULnXcnTfT0SOkdXDYbN6ZWYEWNc02uXlQ6wywQfydakY
   TpltfVwKOxCLe37b0Jv5xQH3eu5jBs21yoapXcvw+MpLLLYnOuS6o+VwZ
   yZwa1GUS0lPY9UjyNZcKFn7fNNys7jpZ/KQgiO3tl0BuCXBWw+hllnQFz
   ewltvUk3RIAHnqrjlLgM9tQapb9DigNe6O+SnD1oYnUfkWQtm0yrUbjT3
   q2ucWQuGJFBdP6lnv9Q13Q8hSIlmV6oXmKqjNAw7PwnD75+btEUmcxxtP
   iNPo9Du0hIrDz/0n/7zaIRrgiEkOLR+2VQRI5rjvEjwtgf31G6uDUO4JI
   w==;
X-CSE-ConnectionGUID: ZsKjfaPwScOVyLTsgdO61A==
X-CSE-MsgGUID: 78RSSQLYTCyKfg7u5xXrcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="77787590"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="77787590"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2026 08:48:38 -0700
X-CSE-ConnectionGUID: RwIWtUZSRkuLXjOEq9435w==
X-CSE-MsgGUID: VVxNfLa0TQedN7Qmgv6Vng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="259202073"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.198])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2026 08:48:35 -0700
Date: Mon, 4 May 2026 18:48:33 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: Andreas Klinger <ak@it-klinger.de>, Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 09/11] iio: adc: hx711: localize loop iterators in
 hx711_read
Message-ID: <afi_0YdKgVA6f5uz@ashevche-desk.local>
References: <20260503120949.80292-1-piyushpatle228@gmail.com>
 <20260503120949.80292-10-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260503120949.80292-10-piyushpatle228@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 92AC74C0DDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-292698-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:dkim,ashevche-desk.local:mid]

On Sun, May 03, 2026 at 05:39:38PM +0530, Piyush Patle wrote:
> Tighten the scope of the loop variables in hx711_read() now that
> trailing-pulse selection is already handled by the callers.
> 
> Also replace the 24-bit loop bound with a named constant while touching
> the same code.

...

>  /* gain to pulse and scale conversion */

Does the comment stay for the _DATA_BITS? I am not sure it's semantically
correct to put the new definition under the same comment.

> +#define HX711_DATA_BITS		24
>  #define HX711_GAIN_MAX		3
>  #define HX711_RESET_GAIN	128

-- 
With Best Regards,
Andy Shevchenko



