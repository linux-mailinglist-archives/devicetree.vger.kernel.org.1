Return-Path: <devicetree+bounces-265957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFQzONO/k2m48AEAu9opvQ
	(envelope-from <devicetree+bounces-265957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 02:09:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 819E714862A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 02:09:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 45DD4300832C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 01:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0568F22A1D4;
	Tue, 17 Feb 2026 01:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="d9bDnz0+";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="WYVPQFqk"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C239118A956
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771290573; cv=none; b=RdFbUatMno4k7MmBrdEeVon1g+97K1t2FhKaCpJA00uptkcaUJDdtKO18mLgxdGr13haHPTscIaQEiexe0txjgumYM0FBmlpQVFYNGjDyJ7bGA960hS6o3cR+B0tsmbglTjYzrg1vtH3mrch/ioMI87J85MLooIGPST2Y06Aix0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771290573; c=relaxed/simple;
	bh=YnXGBxQb2yQTIsJPsA76f33oYDBAi82tICtV3X+cWVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mpxUVe5zrc8VZjZjDEVB2eSGFrPNzmqxmP3sxohhN1FJbIYvqcJf3EWMSWX0tl3jk32j5MThH9b8GHIHpC+6i2EY2ZOjXNKoVmk9I1y4BsL0sFpISGhbgiiZpkWeOZfXvRA/c6tRsoPh6E2mT1frI5XnPf2VAb1NFsT+JaUhCdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=d9bDnz0+; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=WYVPQFqk; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771290571;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xPKbRNPHyosMAfxhwpYDOU+GJ6u5P872HLfNECxcQQY=;
	b=d9bDnz0+9APiqMHcBCRwu9iiry3fYKLN+uZwaBXshHXfr8Kz7yLFqcw5/m7L6X0PsYY00O
	QC48O45XLjZdUYm3JT0tdGXQS/LY9zxL6mE0jGhtnm5EgimokRG4PIlCsXLfWNH7yRbp+c
	4k13sFK7XxS8iCpkKr0sVJ4U1XBNwkw=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-260-QfA4XxZpPTC2RFF4rJXy4w-1; Mon, 16 Feb 2026 20:09:29 -0500
X-MC-Unique: QfA4XxZpPTC2RFF4rJXy4w-1
X-Mimecast-MFC-AGG-ID: QfA4XxZpPTC2RFF4rJXy4w_1771290569
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-896f8dde688so294090926d6.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 17:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1771290569; x=1771895369; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xPKbRNPHyosMAfxhwpYDOU+GJ6u5P872HLfNECxcQQY=;
        b=WYVPQFqkCtQD77+HoZVUn9/eVBLgfupSqGiX1m2hU+p7lKvmRwY/+ImtWFhad3n22l
         Zi1Hzjjx6QRytsLGCjxYEJOhnjVs1WrQRFDSXmdF57/nvLiknpcw0lQCRJlt8kiI7RIW
         cbKsiOhgzApyGPCEHZgj92uT1Gpaq42r4pkmowtGcz4AeA1/Z0TwddNSHQegqon5F/vR
         w1KIr33bBvOJ3VYt8DgLrSrvDHdh+uNpni+FslWGvNF3RDeleyxypG+4Z6oL+Cu1f/Mz
         4ms+E9IR3A58PSQwzGnn5OnfJ8V9bH7W3FrSwGyMomfAY54NFJOJQo4kla3Ci7VtVoHN
         d6Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771290569; x=1771895369;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xPKbRNPHyosMAfxhwpYDOU+GJ6u5P872HLfNECxcQQY=;
        b=p4e/4Bb6Ga09NZ+ylToipVlzhJ5rLqoVRPBSZVPQOEZ3ah3FNILIKAXRd2yxi0E+nH
         rDP85/ygHhMAZz5qGFJu6K5URkpDpdhoz63nGr53gJZKQyVQ2m/2y3RUNmyBDZoHPsYf
         ij8HGKFmjP8OosNnbIxBBdOF2X2iQRHHyDG+vXx0XsIysztwHpTIKmNz2H4IWq4lwwev
         PKr9+O/pxOFuS+H0UMT0szIZjLGvOgLcuVRVLazU+m1lCyfOHr28jpqs4HpjWUJwa0Y3
         X87GvUWmCNhfjwBHdd9BW8HdRKYGs5sLGVetrBzqFleIxx5qT/KcgwLb4YPUaqNyUmUj
         s5sQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1qPu9boSJTbuhYARij3dOYdKEQrfJ9Ai3IuDmSW9qrL6BAh8GgacsUbYILXxEFtP4z2jy4D63wOzA@vger.kernel.org
X-Gm-Message-State: AOJu0YyMBm0YbR7M2ytn/nedpClItn085DNwavc0VvuxyBOz3CF5koJH
	8O0sd1WsvYZzn6MiDUjEe5tWqiIQdp3P8J+kSGkhKAYdX3RT6pK0sU/1OYdsDW87i1k9DrWEKbi
	01SVy/hcYbZYnq2bWj9pg4dqMRB9znBrknVkzg97CmJCKt2wNoRhs8XI7hIMc9VU=
X-Gm-Gg: AZuq6aKJrnE9ohVH33t3bWcxBj5c/qohrQ5WDq31eghwdVOwyIL5iO6q1PuQPYsorV4
	i7mzAlBhq43vOZ3LBmfRxTzqX3tyIJqd67tJ8gQt2XQsUJJu3RzsWkBLNnEW0BQMVvPTyYTLXFH
	yFSc8T9K9Oz8ZXINlRUu79PrFtMqOaZwr7iKfT+hJ8ekdPcKlO2lzVaCzp2C8qrejqwm44QUcSa
	PDAKciFEKPm/GUyBL9+Ii+gA32Ee6O2g+aTzkJLyLrcujQfy7WXM3pa2dWuIRa8fj1Zt4PS/pdo
	W4DjB7CnuljwCof2/mt/84YYRYze1Ocw9qprXchVrIjjFQnuW7WIsAyhIXS/ZSTdr1WbQyGZ022
	e/eTCq+ylGNTxy8S6fCmZRDrW1lqyuw0POOApi8g4TE50eqVmgt1zzL/p
X-Received: by 2002:a05:6214:2588:b0:88f:d216:6fef with SMTP id 6a1803df08f44-8973621458bmr165774806d6.50.1771290569128;
        Mon, 16 Feb 2026 17:09:29 -0800 (PST)
X-Received: by 2002:a05:6214:2588:b0:88f:d216:6fef with SMTP id 6a1803df08f44-8973621458bmr165774616d6.50.1771290568801;
        Mon, 16 Feb 2026 17:09:28 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cd8a5ccsm151660686d6.25.2026.02.16.17.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 17:09:28 -0800 (PST)
Date: Mon, 16 Feb 2026 20:09:26 -0500
From: Brian Masney <bmasney@redhat.com>
To: dongxuyang@eswincomputing.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	troy.mitchell@linux.dev, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, ganboing@gmail.com,
	marcel@ziswiler.com
Subject: Re: [PATCH v13 2/3] clk: eswin: Add eic7700 clock driver
Message-ID: <aZO_xgoix_SvJRxb@redhat.com>
References: <20260214101421.228-1-dongxuyang@eswincomputing.com>
 <20260214101519.341-1-dongxuyang@eswincomputing.com>
 <aZNRFYs_QuGRI8PV@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZNRFYs_QuGRI8PV@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,vger.kernel.org,linux.dev,eswincomputing.com,einfochips.com,gmail.com,ziswiler.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265957-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bmasney@redhat.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,eswincomputing.com:email]
X-Rspamd-Queue-Id: 819E714862A
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 12:17:09PM -0500, Brian Masney wrote:
> On Sat, Feb 14, 2026 at 06:15:19PM +0800, dongxuyang@eswincomputing.com wrote:
> > +static const struct of_device_id eic7700_clock_dt_ids[] = {
> > +	{ .compatible = "eswin,eic7700-clock", },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, eic7700_clock_dt_ids);
> > +
> > +static struct platform_driver eic7700_clock_driver = {
> > +	.probe	= eic7700_clk_probe,
> > +	.driver = {
> > +		.name	= "eic7700-clock",
> > +		.of_match_table	= eic7700_clock_dt_ids,
> > +	},
> > +};
> > +module_platform_driver(eic7700_clock_driver);
> > +
> > +MODULE_LICENSE("GPL");
> > +MODULE_AUTHOR("Yifeng Huang<huangyifeng@eswincomputing.com>");
> > +MODULE_AUTHOR("Xuyang Dong<dongxuyang@eswincomputing.com>");
> > +MODULE_DESCRIPTION("ESWIN EIC7700 clock controller driver");
> 
> MODULE_ALIAS("platform:eic7700-clk")

Ignore the MODULE_ALIAS suggestion from me. The list of aliases will be
automatically generated based on what's in MODULE_DEVICE_TABLE(). I
verified this with modinfo.

Brian


