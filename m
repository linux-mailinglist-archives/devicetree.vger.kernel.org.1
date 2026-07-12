Return-Path: <devicetree+bounces-325142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tn41E2wTVGr5hgMAu9opvQ
	(envelope-from <devicetree+bounces-325142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 00:21:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1E4746250
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 00:21:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=es9ZEdAx;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325142-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325142-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E50F30022CB
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F4937EFE4;
	Sun, 12 Jul 2026 22:21:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D8937BE93
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 22:21:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783894890; cv=none; b=TQzYlF8If44Emmj540sh0NTySXtP1LEKPtvMdMkEJQobrvXy1mTPbrpjcZ2Bdbbp62cS6kzDJMz4ni4qc1S1Ey3xvqrIa0+s7eZEgL8axkxHCZ5jF7zp5oI2fclhTXnEc0CVhqcALaRRHDwXnP2edNZjUXcSSqZtCgK5tXya/cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783894890; c=relaxed/simple;
	bh=yXFkHL5kLy0YmcSeIBWJ/pJv7FWST/0rD1sn/vpnnlo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S+c/fnzh2OhYubO5jDISMNt/almudaFcm+0oIo4octF6lEZS2uL2Z8cU1VJeJkmOnpvdoMdhDZaRsORVOgVKKsWPJimJJ91JUu3V2AvtpXNQGSowzjgF7XOxRiJHMAPoYuLRN1X36YOkdBUY6QVpV7gzXCB3yvbbAAvR26FOseI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=es9ZEdAx; arc=none smtp.client-ip=209.85.128.47
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-490cf322ed0so17879785e9.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 15:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783894887; x=1784499687; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yXFkHL5kLy0YmcSeIBWJ/pJv7FWST/0rD1sn/vpnnlo=;
        b=es9ZEdAxIcbFw1bX0rbFbs/J+Hem6iEGnVb3ZzpzC6RcVxDjUV+idFAKIpsFC46Bym
         A/NJGC+TpeGR9uTk1yl0cZhka+XaPP+4x/WdCcJiokP/wRe4i2mas4FhcRYPtdH8QVJs
         V7GDZ0OS1F8cBp81RmUxJEsc6UpLwZQSLvhpd8E6dy5KxXeOLZdyAJolQRvZNyEKSW1w
         RUbJsV7SWWKR71oOuu7yIRX91gqaRGW3imRr91cViZbhhGPRcJgN1gZRoli/a8HMzAwq
         AeDHppeB6kJ4VXUsBKiopTipGR5RjYeWx6PPQPAXjR4DpMD4kr80exOPMvKiY3ehJRdP
         Y6/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783894887; x=1784499687;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yXFkHL5kLy0YmcSeIBWJ/pJv7FWST/0rD1sn/vpnnlo=;
        b=n4PrN4LJWIYlPEgKvlysdBcPzUnj4RztR3bqt+MFiOloeGKnTNykD+K930jjaFNItF
         N9ta77B3Kq3+miuI9dDwyVLbwriqxLq2RP4E3Yz5xK2JkCdySOEPTh+DHc8HqyymkcDL
         3otuW8otJqRCU9O838Duz11ECRIAE43/A88MXOexIUxAifB9zktWgTqIFo4eH/nrjLLV
         korxX88R08CXRcnuDRIYJcHF95b6vjz6kXnan4D588H21Vw03yVf+EalSxKBPTgWHbb7
         258ROTsQV0bKs5Hjjmjhu/TQI+3KcdKLqvRum4fATnFZGU2TJ8k+95QBd4mAtQIwmkny
         uvqw==
X-Forwarded-Encrypted: i=1; AHgh+RrtvTcj6aEw9RxjuxB6huTopHEKZ16VJo9TPS+0KOKRCgpfWflLvWSCCm/Drt4B01NRe2grQqjfgFYp@vger.kernel.org
X-Gm-Message-State: AOJu0YyqQKtSrEgUHnj5cSPTlmbr/cS1bbc/lUDDn6gdqRUM2n+WI0w3
	yS8+kxP0ClMOpYoL2/cEeBuQ8c1ggd1NPBZd2aO6e+x80QaPPmLkM3iOqccOd/gKBwk=
X-Gm-Gg: AfdE7ckFKeDahWM1NCSXII9KQtpXey3XDkZrYOlQiVhtpErS6e6XsUZpLU8yaj5JpVZ
	a45DBxAG1qaS/xMFt2jl8z2QAktiT6KyRmKF9t3TD0iEL/x/iL2zSl79TOH7ru5Xp0coEGtfUeR
	57oRa5xWUh7G7IIDI1u7j3vMBcvgmvM7nGg4zUq/l0moTr7J6O0tJV8DbNlE1WpT/2m56WZIaI8
	RZ9M5H3vMynDoGflsdWaEMIZ5eQOVolJ9wahK0CLB/yLRl6LtoDItSfsjudtMJy5WLKA3xHPdYg
	DB55bH/3m0ku1YaLUzOODbfTb1JxfQADMGlJdSdh5o0dMdqRuyXMjy4jH4zqPBwQr2wGk4DorVy
	ZKMrQ8G3sesUE78biNeuuGZQDHn/Vq8LglFdAw4+2xR5E04I4lYK19mbMvU0pN+s1QRouyPV34h
	IxGCtl7AEd1wm0CXHsaw==
X-Received: by 2002:a05:600c:3543:b0:493:f6c1:2f09 with SMTP id 5b1f17b1804b1-493f87dc753mr64927015e9.6.1783894886966;
        Sun, 12 Jul 2026 15:21:26 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-493eb742a49sm296924145e9.12.2026.07.12.15.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 15:21:26 -0700 (PDT)
Date: Mon, 13 Jul 2026 00:21:24 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Ahmed Tiba <ahmed.tiba@arm.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, 
	Tony Luck <tony.luck@intel.com>, Borislav Petkov <bp@alien8.de>, 
	Hanjun Guo <guohanjun@huawei.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Shuai Xue <xueshuai@linux.alibaba.com>, Len Brown <lenb@kernel.org>, 
	Saket Dumbre <saket.dumbre@intel.com>, Davidlohr Bueso <dave@stgolabs.net>, 
	Jonathan Cameron <jic23@kernel.org>, Dave Jiang <dave.jiang@intel.com>, 
	Alison Schofield <alison.schofield@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, 
	Dan Williams <djbw@kernel.org>, Ira Weiny <iweiny@kernel.org>, Li Ming <ming.li@zohomail.com>, 
	Mahesh J Salgaonkar <mahesh@linux.ibm.com>, Oliver O'Halloran <oohall@gmail.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org, acpica-devel@lists.linux.dev, 
	linux-cxl@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-edac@vger.kernel.org, linux-doc@vger.kernel.org, 
	Dmitry.Lamerov@arm.com
Subject: Re: [PATCH v7 10/10] RAS: add firmware-first CPER provider
Message-ID: <alQTUuwze5ZjGabk@monoceros>
References: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-0-8b3a85216cef@arm.com>
 <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-10-8b3a85216cef@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o63zw6szpf3k5nqs"
Content-Disposition: inline
In-Reply-To: <20260708-topics-ahmtib01-ras_ffh_arm_internal_review-v7-10-8b3a85216cef@arm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:rafael@kernel.org,m:tony.luck@intel.com,m:bp@alien8.de,m:guohanjun@huawei.com,m:mchehab@kernel.org,m:xueshuai@linux.alibaba.com,m:lenb@kernel.org,m:saket.dumbre@intel.com,m:dave@stgolabs.net,m:jic23@kernel.org,m:dave.jiang@intel.com,m:alison.schofield@intel.com,m:vishal.l.verma@intel.com,m:djbw@kernel.org,m:iweiny@kernel.org,m:ming.li@zohomail.com,m:mahesh@linux.ibm.com,m:oohall@gmail.com,m:bhelgaas@google.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:linux-acpi@vger.kernel.org,m:acpica-devel@lists.linux.dev,m:linux-cxl@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-edac@vger.kernel.org,m:linux-doc@vger.kernel.org,m:Dmitry.Lamerov@arm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325142-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,alien8.de,huawei.com,linux.alibaba.com,stgolabs.net,zohomail.com,linux.ibm.com,gmail.com,google.com,lwn.net,linuxfoundation.org,vger.kernel.org,lists.linux.dev,lists.ozlabs.org,arm.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[monoceros:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:from_mime,baylibre.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DE1E4746250


--o63zw6szpf3k5nqs
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v7 10/10] RAS: add firmware-first CPER provider
MIME-Version: 1.0

Hello Ahmed,

On Wed, Jul 08, 2026 at 02:59:09PM +0100, Ahmed Tiba wrote:
> +#include <linux/mod_devicetable.h>

Please don't add new users for this header file. Only use those
<linux/device-id/*.h> that you actually need (if any).

Thanks
Uwe

--o63zw6szpf3k5nqs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpUE2IACgkQj4D7WH0S
/k5Aagf+IcCM3MbiQFXq44EFdGthF9zwEU47GU8P9/gSXah2GXOz59WKWZqRlJgo
j4mZ9uRbJqwLqZ7OtPIZj1IyEY9Bmeix2uL7sJuVUBcZ2qRaX3OxW/xi8zEaH0fi
1DgPWPB5MHOhvc5d5JJAeoqaV3TCXNxNEF8uvyiaGJWFIr7oGvWZVJCPTmjbqVt8
vzyFYzCac+qNGAzM6F6FhjNsegEgpsSAP2XIIruYv2+iPpHWzMbx+LpknKOq8Rws
N/Cmj3SBH5ULfApKqkL4QqeHk6RnfAclAjr/EdYS7nE6L5Bdot9DOOil56IDxCps
pX4u0VGI9OqUoeIeIDXaS9GJsG261A==
=Eag/
-----END PGP SIGNATURE-----

--o63zw6szpf3k5nqs--

