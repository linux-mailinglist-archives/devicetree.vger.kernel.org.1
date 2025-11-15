Return-Path: <devicetree+bounces-239026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 49917C60A86
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 20:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AC9C3355441
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 19:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56563283FF0;
	Sat, 15 Nov 2025 19:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="PlMCL/QM"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88E1155326;
	Sat, 15 Nov 2025 19:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763236400; cv=none; b=QFIo9Chr+CjQP3fa+TkWxb6d+y+eDsszjTOTmRR5UCoLRaJxJSWZ6aLhex4T4Njwdpx+68RMEotSwxevfDNiaUUm2BbdK1NjUjX7OGd/8GvSSetkejnDOqBy2I1xkFtH300fJhWu15eB9/RI7LoMv8sL1+4MEkC6w1WPBsWjY6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763236400; c=relaxed/simple;
	bh=T0fdgJFk8lsoCr8gZ+6S5yDIjMT2JuijohBd/lHkE6g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nltjra7/F8cmzKYTLeCGCDi78FXSCWZ7wjvyVKDbIROTaGj0SO8uA6TGNNRIP1ShTR3KVlE9X7FXg51WIhbMJb0e4ir7nth0HAoFhwBYINcsW2nBfvVrkIetUieXVCYL0GrACCic5Snxk5A+HQieZOPqv+fUYHN8xkrpt953/zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=PlMCL/QM; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rCnLinFSCuqBJDyfqX+tMbAqkI3HnLPnZBm6nawq29I=; b=PlMCL/QMATDToyk283lXVcUG4b
	dg+oiL5O+e164xittfMKOqOLXsDOV7rVdOi8R4/OqDeIqWxu1kwFuNvLTZBzyvDuzwhMbvePqHLsd
	FJWRlOuR9JPf7q4E2j/dPE+1Qn6bcCcLjWyxh5QRU2fhMDQr29apUYxBOM+qkFmAC1tSl9hjUbouJ
	L7GSsjr3MmakPY100yy6ybzhGJKkJyll8iDT8YgXxG/lbkINjlFCHLG0N+N8xxSHi1bZ25ASWFjOR
	tZEH2yWUPSVe3Ysli+SEtYm+fJLX1X+QC3nn9C9M7dOccrpaejKhFPHleaBXiP+osr8py2gJiyPVP
	YS4RezbA==;
Received: from i53875bd0.versanet.de ([83.135.91.208] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vKMKf-0000BN-5F; Sat, 15 Nov 2025 20:53:13 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
Subject:
 Re: (subset) [PATCH 1/6] arm64: dts: rockchip: add mmc aliases for 100ASK
 DshanPi A1
Date: Sat, 15 Nov 2025 20:53:12 +0100
Message-ID: <2251982.Mh6RI2rZIc@diego>
In-Reply-To: <20251115150010.1052575-1-amadeus@jmu.edu.cn>
References:
 <176307502906.495066.9339764118786240746.b4-ty@sntech.de>
 <20251115150010.1052575-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Am Samstag, 15. November 2025, 16:00:10 Mitteleurop=C3=A4ische Normalzeit s=
chrieb Chukun Pan:
> > Applied, thanks!
>=20
> > [4/6] arm64: dts: rockchip: fixes supply for 100ASK DshanPi A1
> >       commit: 621bb09a76fa12a9e61c9d745ae524db86abf781
>=20
> Sorry, I don't know if this is a problem:
>=20
> The commit message started with an extra ">".
>=20
> >From the schematic, the supply of ES8388 chip and the vmmc-supply
> of SD card both originate from the VCC3V3_S0 regulator, fix it.
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/=
commit/?id=3D621bb09a76fa12a9e61c9d745ae524db86abf781

thanks for noticing this. I've now edited the commit message in place
to fix that.

Heiko



