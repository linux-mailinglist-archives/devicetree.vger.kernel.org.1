Return-Path: <devicetree+bounces-111928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 627969A052B
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 11:15:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 236BC281828
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FFE1205125;
	Wed, 16 Oct 2024 09:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="le/WnUTV";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="PzzQ29+T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41D017D378
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729070096; cv=none; b=tj1BQD7LK2D43SaPTKcPHKAce/D95rkmCvKaxr3zUFsTu175vIIEXIbveEJJ4GhNArvI/11YQJsJJwyUPqYWPWg/pteYWjqgzK6kvQc59KrxDWAPWdL+4D3R5Hvgbvblg/NmtB4E7aafCvfjefp6Ep+PzTHxvGgK6CE/YjQ8VM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729070096; c=relaxed/simple;
	bh=K0DdLxqzMXEeIJwuFEywSGZj1w08FAmCpwHxSWbUI04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XAj2VAW94tACFWqQmkisD//SgculOJsipqf5gGl/OZnhyrIEZ8G1ipA3V0IpErHN1QI6zS12Ro5FgAMdDl34gVcY1uaL7peqqH0DhS+CXPHQhuFMUsdEmrjMXQzHoUOx3BR8e4s7d5ieqjoHwnEkjma23g42d2o6kr9LvNmzD7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=le/WnUTV; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=PzzQ29+T reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1729070093; x=1760606093;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=K0DdLxqzMXEeIJwuFEywSGZj1w08FAmCpwHxSWbUI04=;
  b=le/WnUTVX3IsUBZyDi6fGCwFG4iEvDN6NIaRLAM7Is1VCLT097SgHOYU
   X6suw60hrUV7keenC6p/3skAockGz5XHZjp+pUK41ADquYQMgRr0I5lqF
   5fGsz3bHCkKgybRilMuLExMSxOVj18NDuJC9OHpWVyTbFMDxop0sw5e2A
   ZaUo560fa89Xuwi9hvfNOYEr8t40WW6c4Kb4QBTpEiiuzzPM0BYBHnD+Z
   otjpiBSU8jPx9dZna/zPtvrJjCxyJNKLTMm9Gb9/RloaiZ9ZpUPZA5ZTT
   l/ALDB7my2maSEQkfNIGtCAV6pyIxitNanB1zVsc003sk9OZ+OB+/qeIv
   g==;
X-CSE-ConnectionGUID: INFAS49ySNmLzSPjpwAsww==
X-CSE-MsgGUID: 9HFBAj1IQhmjsUoNEVgAqA==
X-IronPort-AV: E=Sophos;i="6.11,207,1725314400"; 
   d="scan'208";a="39489075"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 16 Oct 2024 11:14:49 +0200
X-CheckPoint: {670F8408-1-21611FC3-DAD22B0C}
X-MAIL-CPID: 68CE6C78B6B96BAD462B1EB7727DD5E1_4
X-Control-Analysis: str=0001.0A682F1F.670F8409.00FE,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CAF03167AC7;
	Wed, 16 Oct 2024 11:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1729070083;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=K0DdLxqzMXEeIJwuFEywSGZj1w08FAmCpwHxSWbUI04=;
	b=PzzQ29+TE19oHCPUkR1COZylhOHkEqeZb4HSN6jIRYrnA8r4ZmpbRIKg+YFzNsOHBTtjuR
	V4FCl7D+KzcxEFQw66rFpRWPbpuLNl2hr80Kjnsa353BMKlOB8Ps57e4Za7P94kHpw3rSv
	P5FiEEzrMNw5H2/eDoeB2f6jqc1o2XlWUyGVIxSY5StH6b6luYgQ0FvWc2/SbMnomA8snm
	crBHmK0rh4p3fWeYlFT5F+vql0ZneCsDpPMc6bueGc1HfhhJUYdwQuazWEhJuLbzXDQ+ui
	Oef1mn5Ww5pwdbp5E2IIzu3KmyeUZKTBITiyjkS+5kbd3bgo7vMj8pEp5wNavQ==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc: Marek Vasut <marex@denx.de>, Christoph Niedermaier <cniedermaier@dh-electronics.com>, Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, Gregor Herburger <gregor.herburger@ew.tq-group.com>, Hiago De Franco <hiago.franco@toradex.com>, Hugo Villeneuve <hvilleneuve@dimonoff.com>, Joao Paulo Goncalves <joao.goncalves@toradex.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mathieu Othacehe <m.othacehe@gmail.com>, Max Merchel <Max.Merchel@ew.tq-group.com>, Michael Walle <mwalle@kernel.org>, Parthiban Nallathambi <parthiban@linumiz.com>, Peng Fan <peng.fan@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, imx@lists.linux.dev, kernel@dh-electronics.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Document i.MX6DL DHCOM SoM on PDK2 carrier board
Date: Wed, 16 Oct 2024 11:14:39 +0200
Message-ID: <3842801.kQq0lBPeGt@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20241015235926.168582-1-marex@denx.de>
References: <20241015235926.168582-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Am Mittwoch, 16. Oktober 2024, 01:58:35 CEST schrieb Marek Vasut:
> Document the DH electronics i.MX6DL DHCOM SoM and a PDK2 evaluation board.
> The evaluation board features three serial ports, USB OTG, USB host with
> an USB hub, Fast or Gigabit ethernet, eMMC, uSD, SD, analog audio, PCIe
> and HDMI video output.
>=20
> All of the aforementioned features except for mSATA are supported, mSATA
> is not available on i.MX6DL and is only available on DHCOM populated with
> i.MX6Q SoC which is already supported upstream.
>=20
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



