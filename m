Return-Path: <devicetree+bounces-291490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mG2bBNTi8WlZlAEAu9opvQ
	(envelope-from <devicetree+bounces-291490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 12:52:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 895AF4932C5
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 12:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEE9730AC4EE
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 10:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BEE63EDAC6;
	Wed, 29 Apr 2026 10:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="DxHOJlSr"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190403EE1DB;
	Wed, 29 Apr 2026 10:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777459595; cv=none; b=KUJPZ5jFa1rwWk5QOyDoC+X6Zg7UhGlqYoxYB2TC4levzm5GoLJBXgHBIPE2dkeNExd0zLCTBteEkgITQAY9JoolNEpZcM60FVu3ULyi2omQn82plXMAVzQX/OjiAt8C1sge4UV2sfR/SyZBwULT11VM4LdpN0jnh01Ivx218L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777459595; c=relaxed/simple;
	bh=wd/2/KFO33JJStZgsK3RDk9O9BrgsdbZeW3OR0gOtow=;
	h=From:Date:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=S17eQAblTvd5KS3pBMbtO37Xv+dDCWT+UlDLe3OaAyhEjdH1HklPUWsqmPeJtD1IQpTyV/Lv2l7hQH6AzcVRRWLdnU77DDgyLkpXJZEqNmoHL05eesQU7AW0u3bXhaNi0vJlFQG3LabE7gtgexpSp0odoQ3mTOsGueZc1sE9Zxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=DxHOJlSr; arc=none smtp.client-ip=192.198.163.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777459594; x=1808995594;
  h=from:date:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=wd/2/KFO33JJStZgsK3RDk9O9BrgsdbZeW3OR0gOtow=;
  b=DxHOJlSrDwXqlLFw8RrJnjSnztGlr6At3Y4YRtrgNmT30GmTane1DMTm
   IiIIPEwKr3ut8VfQ16B/gUKjop2KdxmzNKZoFb9d+/EzrYIG81Whb2/LZ
   aX3era2IzCPrm0tjPMSmV1sd+Sc3mB+kjv0Lbs/Uq6WCZYtE/1X9/b29Z
   uRHxO6hAS8Xw7bD8Ph9mGuBs0/5sNqFy14Bs10eC9374CWOVItImZI9I6
   /nO/WgJmDGtaidtgp8XEMLDPyT4HNeSFo5TrFg5si0MKVEQxtIz1YOYfq
   3vFb21guA+5f+bkUhXD1FcY177+YM239rSTV4MH0qCEiv2dzvlyGpb8Yf
   g==;
X-CSE-ConnectionGUID: BQ+hXBe6TOWU8wc+S9e5IQ==
X-CSE-MsgGUID: ff3pizTRTVS9djIAXmDdWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="65915601"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; 
   d="scan'208";a="65915601"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2026 03:46:33 -0700
X-CSE-ConnectionGUID: UKCSV2x/Tz6ZNijoqecDCQ==
X-CSE-MsgGUID: Ei7E94x+SlKd918mYzTYeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; 
   d="scan'208";a="257551066"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.212])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2026 03:46:29 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Date: Wed, 29 Apr 2026 13:46:21 +0300 (EEST)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
cc: Jia Wang <wangjia@ultrarisc.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
    Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
    Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>, 
    Krzysztof Kozlowski <krzk+dt@kernel.org>, 
    Conor Dooley <conor+dt@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
    linux-serial <linux-serial@vger.kernel.org>, 
    linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/4] serial: 8250_dwlib: move DesignWare register
 definitions to header
In-Reply-To: <afHgcBOV-CveGNTG@ashevche-desk.local>
Message-ID: <6febdf7e-e74b-12f9-699b-4276f68053a2@linux.intel.com>
References: <20260429-ultrarisc-serial-v6-0-b2c852e0c4c3@ultrarisc.com> <20260429-ultrarisc-serial-v6-1-b2c852e0c4c3@ultrarisc.com> <36efd2f5-d050-c613-77bf-dc651a94a586@linux.intel.com> <afHgcBOV-CveGNTG@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-2113021380-1777459581=:966"
X-Rspamd-Queue-Id: 895AF4932C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	CTYPE_MIXED_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291490-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ilpo.jarvinen@linux.intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-2113021380-1777459581=:966
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Wed, 29 Apr 2026, Andy Shevchenko wrote:

> On Wed, Apr 29, 2026 at 01:38:44PM +0300, Ilpo J=E4rvinen wrote:
> > On Wed, 29 Apr 2026, Jia Wang wrote:
>=20
> > Reviewed-by: Ilpo J=E4rvinen <ilpo.jarvinen@linux.intel.com>
>=20
> There is v7 already...

I noticed it after sending the message out. For sport, I also reviewed v7=
=20
1/4 now as the diff-of-diffs command was still fresh in the shell history. =
:-)

--=20
 i.

--8323328-2113021380-1777459581=:966--

