Return-Path: <devicetree+bounces-290082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MG7lHMd562npNAAAu9opvQ
	(envelope-from <devicetree+bounces-290082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 16:10:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 760F146006C
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 16:10:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D01603003BCE
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 14:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC64B386C0A;
	Fri, 24 Apr 2026 14:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="n5MH/1v5"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD5A3644A2;
	Fri, 24 Apr 2026 14:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777039797; cv=none; b=ZVurE/Uoua5EO2XCpOy8LKnCFkaoDlNpbZZucmw7Jy7ciwRKZ9JX01VsaFrHXEXUlL8XRpE6hRmWGBOxgmPTTTo8JVLg0G5w21moNm7ZJlV4K2GTM1Wh0/F0owVIobltResZFLz3Ppa/kKtlOcmyrTiYjXFWNtkwareHpjrmF6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777039797; c=relaxed/simple;
	bh=CXW/N769EENkYazHiZUEH9F4WWwQnrYKB/iViMQHhk4=;
	h=From:Date:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=IgKP4ArIZ1TxxjG6E/eAuOugiZJnl220kOZ+nMAV8wqcpV/ViHsO+QPzHkT0/sSki032LztDhr4IfQII8g0WYkErW3c2LLtszEuMMnFU6DBfVkG+P6m5zKbpKcHl2auIWXWw7Xk2jSKl+KeNgxDAqci3YJwfu4aCP+hNQiuX/bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=n5MH/1v5; arc=none smtp.client-ip=192.198.163.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777039796; x=1808575796;
  h=from:date:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=CXW/N769EENkYazHiZUEH9F4WWwQnrYKB/iViMQHhk4=;
  b=n5MH/1v5bN3SZLFhMu1Joj8kN00LGjLlzLz01WJlR297/tAdazbjGsRs
   7Rtn5w/EhWVNux22H5UhjLmeLaY3bTGRzrB0eDkedPGnxMgBJPV+88eie
   5eXpBy9sqgiDJ85RMOqqvulmlc1cvS8VeAqyc+brwKHBL659DoZ2+wkqN
   HZVAqfWujoB5K2NMh1pwtxr99wUBHjP8b0KFQbFepz9/m5ExFoeiM5M2F
   9ZdjLHdFBkolLgeQbia5vPjMDxD2Hn49NwAXkoNWsbuAaAKNEVgO8aHbi
   sRnu/1KROaFfDSBx8g9MYqK+eWakJaviJVdGsufrqa9G4Z+L4x76eEMy0
   Q==;
X-CSE-ConnectionGUID: GNoI1CaZR3axmbi+WIG+ew==
X-CSE-MsgGUID: uFbX3veSRTerdN2WRYdmEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="103482503"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; 
   d="scan'208";a="103482503"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2026 07:09:55 -0700
X-CSE-ConnectionGUID: EcNEermSRsqeTayQSmKK5w==
X-CSE-MsgGUID: EDkeemBFRn2yA3w5F4NG/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; 
   d="scan'208";a="263368955"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.120])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Apr 2026 07:09:50 -0700
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Date: Fri, 24 Apr 2026 17:09:46 +0300 (EEST)
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
Subject: Re: [PATCH v4 2/4] serial: 8250_dw: build Renesas RZN1 CPR value
 from DW_UART_CPR_* definitions
In-Reply-To: <aetv2ljDOpH_Hs4s@ashevche-desk.local>
Message-ID: <363a636d-f014-cc29-6be4-ec3041f43855@linux.intel.com>
References: <20260424-ultrarisc-serial-v4-0-1765a0b4c4a0@ultrarisc.com> <20260424-ultrarisc-serial-v4-2-1765a0b4c4a0@ultrarisc.com> <4548483c-cbba-899e-6b1a-1290d36b59cd@linux.intel.com> <aetv2ljDOpH_Hs4s@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-2024444435-1777039786=:958"
X-Rspamd-Queue-Id: 760F146006C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	CTYPE_MIXED_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290082-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linux.intel.com:mid,intel.com:dkim]

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-2024444435-1777039786=:958
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Fri, 24 Apr 2026, Andy Shevchenko wrote:

> On Fri, Apr 24, 2026 at 02:38:56PM +0300, Ilpo J=E4rvinen wrote:
> > On Fri, 24 Apr 2026, Jia Wang wrote:
>=20
> ...
>=20
> > Hmm, maybe there should also be macro also for this one which takes the=
=20
> > fifosize as input and converts it to CPR field vlaue (effectively, the=
=20
> > macro is an inverse of DW_UART_CPR_FIFO_SIZE()). It would be more reada=
ble=20
> > than the literal.
>=20
> But this can be done separately, right?

It's logically part of the cpr_value literal to defines conversion (of=20
course one could introduce it in own patch without users but I don't see=20
much benefit from that).

> > Also include BUILD_BUG_ON(!IS_ALIGNED(fifosize, 16) + bounds checks)=20
> > inside that macro to catch invalid fifo sizes (+ don't forget the=20
> > necessary headers for those two new things).
>=20
> Hmm... Some devices may have FIFO =3D 8 or 4 bytes (Intel Quark IIRC has =
less
> than 16 and it's DW IP).

Perhaps but according the DW databook I've at hand, there are no values in=
=20
FIFO_MODE field for such FIFO sizes. So what would CPR contain in those
cases for FIFO_MODE field?

--=20
 i.

--8323328-2024444435-1777039786=:958--

