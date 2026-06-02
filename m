Return-Path: <devicetree+bounces-305880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Cw+fD6JiH2rJlQAAu9opvQ
	(envelope-from <devicetree+bounces-305880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:09:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C775632C17
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:09:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FrHynRdg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305880-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305880-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D6B03007CAF
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 23:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363063C8719;
	Tue,  2 Jun 2026 23:07:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16803806D5;
	Tue,  2 Jun 2026 23:07:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780441665; cv=none; b=uQlyZbf4Kri3XsdwJUEI2RuLxTg5sTb82SizlF7san9Zi0gKD3m+k3bNEKKOj+2JswEFke+Di9+V2A5x8eRjkmT6kLBOPR4pgGInk8VY19DWmO88rNr+3fnuXfBPiMhvCHZV9T6pJs2fLBfFAR49/WHtUntiZBsXbGVBYg/VI9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780441665; c=relaxed/simple;
	bh=jNTwgEfJn0Krge+rJ80oGgi7nITBPlSkLBHlfbqDoaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qZz2LMc7t22rrorBxb5yvqJj/2BqFgTERJ5QV7Gy3x4GxInv+LtwwHpSeBX/z02eEV4mQ96kJW+gYSuUXZpeafBEI3VYlfj4iPIdnK+6X7cNeaaKSvf6QvdBLSbDqRpr9faS+1IbgbABqnckaWaofhTF+BY+amMEvDQ3AxinETQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=FrHynRdg; arc=none smtp.client-ip=198.175.65.12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1780441665; x=1811977665;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jNTwgEfJn0Krge+rJ80oGgi7nITBPlSkLBHlfbqDoaU=;
  b=FrHynRdgKuz0SW1C6KmEueu+d8noe3qLSXeawBZn26FOYeZtienE2Vcy
   A+Ln6RIk1ChHFB19ZHRRs8/WwdWo9j/TvQ54ksrkQWmtttampl+/WO934
   PryLWXP7MUhbR/g0cgBW8lfMBvBnTvHbWpzg2y8VRK3yTrn1hYvOMtkaV
   fPyLbzANjqy51wrmt3lOz1Sqnldvnbhi3qQwpcbFiD1PjS3mz2DkkzmVH
   8AkA2H7ZQIOQwCnOSj1bdDF6N1n2WEJKNTU/L7aR0dqlRDjzQ69inrjap
   5TD3kajzHypkdz15yTF2sv2Ylo9oWZ4ZZgluJn/N2AIGRceg+RQbKLxXP
   w==;
X-CSE-ConnectionGUID: dhUn5BuiTNqaJ9m3AIGepw==
X-CSE-MsgGUID: HJ5TRZ0DSGeKwK/7SqBl7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="92724646"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="92724646"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:07:44 -0700
X-CSE-ConnectionGUID: qoSNqjJcRGWVDBlYak/iDg==
X-CSE-MsgGUID: IOMgFuRjSdeWmIALETiVpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; 
   d="scan'208";a="247994467"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.116])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2026 16:07:40 -0700
Date: Wed, 3 Jun 2026 02:07:38 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Jinseob Kim <kimjinseob88@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>, Nuno Sa <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v3 3/6] iio: osf: add protocol v0 decoding
Message-ID: <ah9iOlsELRUGNLxv@ashevche-desk.local>
References: <20260529121005.1470-1-kimjinseob88@gmail.com>
 <20260529121005.1470-4-kimjinseob88@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260529121005.1470-4-kimjinseob88@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305880-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:kimjinseob88@gmail.com,m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ashevche-desk.local:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C775632C17

On Fri, May 29, 2026 at 09:10:02PM +0900, Jinseob Kim wrote:
> Add OSF0 frame validation and payload decoders.

> Extend MAINTAINERS to cover the protocol decoder.

Unneeded detail in the commit message. It's implied that MAINTAINERS is updated
accordingly.

...

> +int osf_protocol_decode_frame(const u8 *buf, size_t len,
> +			      struct osf_frame *frame, size_t *frame_len)
> +{
> +	u32 expected_crc;
> +	u32 actual_crc;
> +	u32 payload_len;
> +	size_t total_len;
> +	u8 major;
> +
> +	if (!buf || !frame || !frame_len)
> +		return -EINVAL;
> +
> +	if (len < OSF_FRAME_MIN_LEN)
> +		return -EMSGSIZE;

> +	if (buf[0] != 'O' || buf[1] != 'S' || buf[2] != 'F' || buf[3] != '0')
> +		return -EPROTO;

It's FourCC, define it as integer and compare as integer

#define ..._MAGIC	0xhhhhhhhh	/* OSF0 */

	if (get_unaligned_le32() != _MAGIC)


> +	major = buf[4];
> +	if (major != OSF_PROTOCOL_MAJOR)
> +		return -EPROTO;
> +
> +	if (get_unaligned_le16(buf + 6) != OSF_FRAME_HEADER_LEN)
> +		return -EPROTO;
> +
> +	payload_len = get_unaligned_le32(buf + 10);
> +	if (payload_len > len - OSF_FRAME_MIN_LEN)
> +		return -EMSGSIZE;
> +
> +	if (get_unaligned_le32(buf + 34))
> +		return -EPROTO;
> +
> +	total_len = OSF_FRAME_HEADER_LEN + payload_len + OSF_FRAME_CRC_LEN;
> +	expected_crc = osf_crc32_ieee(buf, OSF_FRAME_HEADER_LEN + payload_len);
> +	actual_crc = get_unaligned_le32(buf + OSF_FRAME_HEADER_LEN + payload_len);
> +
> +	if (actual_crc != expected_crc)
> +		return -EBADMSG;
> +
> +	frame->protocol_minor = buf[5];
> +	frame->message_type = get_unaligned_le16(buf + 8);
> +	frame->payload_len = payload_len;
> +	frame->sequence = get_unaligned_le64(buf + 14);
> +	frame->timestamp_us = get_unaligned_le64(buf + 22);
> +	frame->flags = get_unaligned_le32(buf + 30);
> +	frame->payload = buf + OSF_FRAME_HEADER_LEN;
> +	frame->crc = actual_crc;
> +	*frame_len = total_len;
> +
> +	return 0;
> +}

...

> +int osf_protocol_sensor_sample_value(const struct osf_sensor_sample *sample,
> +				     unsigned int index, s32 *value)
> +{
> +	if (!sample || !sample->samples || !value)
> +		return -EINVAL;
> +
> +	if (index >= sample->channel_count)
> +		return -ERANGE;
> +
> +	*value = (s32)get_unaligned_le32(sample->samples + index * sizeof(s32));

Why casting?

> +	return 0;
> +}

...

> +#define OSF_CAPABILITY_FLAGS_MASK	0x00000003U

GENMASK() ?


-- 
With Best Regards,
Andy Shevchenko



