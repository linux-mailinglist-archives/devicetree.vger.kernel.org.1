Return-Path: <devicetree+bounces-61751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C42978AE093
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 11:07:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6BD9BB23826
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 09:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E46785644F;
	Tue, 23 Apr 2024 09:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="tBJblzsJ"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BCF55E48
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 09:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713863179; cv=none; b=WdjaZGQ4G0yxwEmKEXMUqqImvfsKHskVkrvxfTTpEOlB8+oyoW6bhA2dahgCxmfc+hh6mapV7hjsiD6Fen375ACXLjKC4Zf1eT6GMtGG0e7HYaRjpMrjOtxBk9BNz9beAY6I6H8qWGmLZmKeKnDUZMtFVM2QBVf7RL4HloUAJ3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713863179; c=relaxed/simple;
	bh=XMn7M08VAzGCI53VtoGQoqVtWefSLc/r2dxdCOixMlg=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BxdpqA6D8MjfYLzkfOHvkVs7E/mAPDRdsyDUZHwAJgPe2K3yMvMqeKo7crB04ajXaftU3AwTOIi22CaLa/yU6ZjIK0hV1QILGwv3T2fom4fq/DH66HvnVmFCrqxWcSuW45F2Qq/28aPJRaVlwdQAFmnZhZTMa5faZ82P7saYSwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=tBJblzsJ; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1713863177; x=1745399177;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=XMn7M08VAzGCI53VtoGQoqVtWefSLc/r2dxdCOixMlg=;
  b=tBJblzsJhyDF4VlPWGSTUDsS8GLShFoLKDL9CC98IRcF6hWNnE0iwJI5
   fHMjfbYQGOtR3hPtGnXvpPIxXQL9kM+QWBCP3DGuvzYTvHN8IhTnxgIMT
   XDWGzjCQm2u3AJaKo2SUmI+kfgf/W7xKZ+K+bxksLQHOVSEYzwuiMPtUE
   ltnYRQ1KMv0lyg+2VsTJnFKys+yjWauTo5pC4SoLHTGHkZW+SKOVSryME
   vda7PzAvXw2deI6flY5uLGuqFuzOaVzXGveOBHu7i/vnXYjpbuSZa5sVY
   Mf8RwmQT2a8+ajuSQqXpwn8HK99Kfyd0yy43X64Ad6ac2zz+1Q6gKt/G0
   w==;
X-CSE-ConnectionGUID: yLK00K/sTo+kTWIrIYKswA==
X-CSE-MsgGUID: ojhUeRPgSNOFyMORz/qOQw==
X-IronPort-AV: E=Sophos;i="6.07,222,1708412400"; 
   d="asc'?scan'208";a="22226831"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 23 Apr 2024 02:06:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 02:06:00 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex04.mchp-main.com (10.10.85.152)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Tue, 23 Apr 2024 02:05:57 -0700
Date: Tue, 23 Apr 2024 10:05:41 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Andrew Jones <ajones@ventanamicro.com>
CC: Charlie Jenkins <charlie@rivosinc.com>, Conor Dooley <conor@kernel.org>,
	<linux-riscv@lists.infradead.org>, <kvm-riscv@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <paul.walmsley@sifive.com>,
	<palmer@dabbelt.com>, <aou@eecs.berkeley.edu>, <anup@brainfault.org>,
	<atishp@atishpatra.org>, <robh@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<christoph.muellner@vrull.eu>, <heiko@sntech.de>, <David.Laight@aculab.com>,
	<parri.andrea@gmail.com>, <luxu.kernel@bytedance.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Add Zawrs ISA extension
 description
Message-ID: <20240423-bulldog-mace-400ace9e7bde@wendy>
References: <20240419135321.70781-8-ajones@ventanamicro.com>
 <20240419135321.70781-10-ajones@ventanamicro.com>
 <20240419-chafe-leotard-e5daee19b1c8@spud>
 <20240419-8c6af6a169a7aa0b9aa5cac5@orel>
 <20240419-disdain-litmus-82874cc4872e@spud>
 <ZiKeYRnXxtLUtkkW@ghost>
 <20240421-f63f90c2146deb0695b84441@orel>
 <ZibmfbLnGCb9gmow@ghost>
 <20240423-ed9ddb701be1df4a25e29f31@orel>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oEfHuumaEi7etN6s"
Content-Disposition: inline
In-Reply-To: <20240423-ed9ddb701be1df4a25e29f31@orel>

--oEfHuumaEi7etN6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 23, 2024 at 10:46:01AM +0200, Andrew Jones wrote:
> Maybe I'm attempting to document it in the wrong place though. Maybe this
> is more of a Documentation/arch/riscv/boot.rst type of thing.

It might be good to document it there also, but I'd like to avoid being
unable to rely on what firmware tells us is supported because we have a
stricter requirement.

--oEfHuumaEi7etN6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZid55QAKCRB4tDGHoIJi
0ubLAQCfajys3aX4THyXKluE7/jtW8pkxRCwLx2RfN61L243GQEAjF/xlRCeiW6q
3gUVqOwFCcfHQK4ZftTZJvSz3Y0QzwQ=
=bNT1
-----END PGP SIGNATURE-----

--oEfHuumaEi7etN6s--

