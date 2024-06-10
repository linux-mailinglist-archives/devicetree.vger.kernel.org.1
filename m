Return-Path: <devicetree+bounces-74112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D83902031
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 13:16:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB7BA1F222D9
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 11:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2881C6BFCA;
	Mon, 10 Jun 2024 11:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="hWbkzu+i"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C085E1B80F
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 11:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718018215; cv=none; b=M6YxHISbPLR7SdJ/P9TQstvy+H6jPRV5d2SclGCAMd3esvqf0Uh21eRueod4EN+LJiwz2ic4eBYMxt4/jMD9Pf/+UlZuScc1xEeoouJBz+6ucIw9j0U5qYJ+SrZrGBpOHLpSQYW8/agIxo9LrUNSZXBdJUQkhovhUE0Zi5DItao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718018215; c=relaxed/simple;
	bh=dtvBZszD4/Vqs6KPzqFYXCBmOXS3fGEk+Thu0tP+ric=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LvNJhrzFWezy+egNH0mj/pLSG0H45HwtMrdjr28DXZ9VC4zQJGoty7juAkp/vFNwrsTpYr/tl3z+ApNqrRciq63gBjTZE57Wq1ItaEec9wZsazFbER2417LTzBYPnBo/LG+U3aMKPmkU2pwOtFmWl01LNBXspiW/PbLd33oPjPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=hWbkzu+i; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1718018213; x=1749554213;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=dtvBZszD4/Vqs6KPzqFYXCBmOXS3fGEk+Thu0tP+ric=;
  b=hWbkzu+isQDqLf5a4oj7nMGA+HZYQZpyrFeVEDpl+kfQaAHGMh22MF+3
   qd+IU//dhyaelLbKng4f3FwGL+jFITeJSVAnor7+9Hha1wd4/Nr11uOTN
   k2W3LDFp1TFwhYNHL0VTm+tfiY8yI3tYpRJpbJoUDzyVdD1g3Mbi379hn
   Px/iGqKdNoOgLVnVEhC3QhZDvO+iRSmXhYgGldoOfga2QcCOLQYKiAue0
   pglwX77jxEgByY1PyNYoo/dsHkmaM4EMZuN3NXG+vp8idaJTW9/RR1Ckh
   J193K572cLfLd8JRI4wrEEuW6fpJRFgRRXydFYHadN1yajF2zU70ynm9B
   w==;
X-CSE-ConnectionGUID: lmrGKgelSzewyKo77auReg==
X-CSE-MsgGUID: wVROv9NETh6+h7n3FpQBFQ==
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; 
   d="asc'?scan'208";a="29624183"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Jun 2024 04:16:52 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 10 Jun 2024 04:16:51 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Mon, 10 Jun 2024 04:16:50 -0700
Date: Mon, 10 Jun 2024 12:16:33 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: <linux-riscv@lists.infradead.org>
CC: <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, "Palmer
 Dabbelt" <palmer@dabbelt.com>, Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH v1 0/5] PolarFire SoC Icicle Reference Design PCIe
 ?support?/fixes
Message-ID: <20240610-gatherer-chitchat-8923cf476bfd@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qlGHyB8ctu6mxznk"
Content-Disposition: inline
In-Reply-To: <20240610-vertical-frugally-a92a55427dd9@wendy>

--qlGHyB8ctu6mxznk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 10, 2024 at 12:09:12PM +0100, Conor Dooley wrote:
> Hey all,
>=20
> Here's some patches that add an Erratum to enable non-coherent DMA
> support for PolarFire SoC...

My local mail client shows that I sent two copies of this series, but I
only see one on lore. I accidentally ran the wrong command, and didn't
set an stmp server in `git send-email`, so I think that only one copy
actually went out and my mail client is confused.

--qlGHyB8ctu6mxznk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmbgkQAKCRB4tDGHoIJi
0jswAQC4PxTtQ7QAEWyZowxZCrKpu20AE5f3tI0HFvrAF9vUwgD/TXusMzotMGdA
mg/3/I+upXJ31HMLjfX2xJDspWfO3ws=
=LUEj
-----END PGP SIGNATURE-----

--qlGHyB8ctu6mxznk--

