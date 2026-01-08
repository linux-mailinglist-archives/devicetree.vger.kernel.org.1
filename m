Return-Path: <devicetree+bounces-252855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6374ED035AB
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 98333300285F
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A97C44CF3D;
	Thu,  8 Jan 2026 14:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="2on3GKlU"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4B543786F;
	Thu,  8 Jan 2026 14:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767882106; cv=none; b=YNM6wIDSWIBZAwelO5rg20e5CgoAH8hNjAk3BW/EVTwfkO5FlMX1MGkQ4HQb4rl6Rp964hIe7CPNASlFMntvUtFCrOr3UuDDMutbzlox3DHCUfLtDhHxdRWqM8cea4wrjYq9TNnkrs8wvLjmkohLnKoRZd+WIYpgFOfRuLhWhy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767882106; c=relaxed/simple;
	bh=wfPMOYriordxM8qJAcGuj+vPoEVC/2VkM9+aUEVxS3Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AdZR6BL18UB/Nae3w1GTRMuGDRRpIVIldVl6f4zoP8MqyfqKFLJ5fA/KonLdV+xlGsvLOasfJv/1T/bx0pyzoQa3VRCtuzVEEgOFFL7uFV9U4/fC4Eu6pHNaOt5KulGdYuHI8P3tnQ+d9MerMSiTuozN/NgP2qMzIc45Gi6HzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=2on3GKlU; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=G8UJ8c/YdbF7K7cam1fQP7rJ2G+VG0sxNQemUdaEvgE=; b=2on3GKlU5bki7VzOeETLHDYUaP
	ArDx0fY+yaTtcnAfKuUrhHZ83nAt2SQF2TeOydKhWAtMhKL5uAFfRhkC755kz9HxjEPKg+BNZnaNf
	FX2tvJth+t2V/a0kOHN0xrBMlQxb6OxCqqJOJpu4dI4BWTNgVq58AochQdbDQ58HjrX+EFMSRbI5y
	UoN8chwJvjg5rehokBF6XGEcML0GbPeR+hr1scJo5Hdg6mpLkAkLHIoMkvSPDWEbFOSFKh04DzaHt
	nU8A36wOBr1f4fR8Ba30gDnIh7N7N22cWqG7rJit5FtfuXC4pjSSA2K3iEHiMfsePKwfzlM5DSFOu
	EAO6E2Rg==;
Received: from i53875a63.versanet.de ([83.135.90.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdqTa-001VS8-9b; Thu, 08 Jan 2026 14:54:58 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: naoki@radxa.com, Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: remove RTC for Radxa E52C
Date: Thu, 08 Jan 2026 14:54:57 +0100
Message-ID: <2090167.kXSN5OTJKJ@diego>
In-Reply-To: <20260108123008.134323-1-amadeus@jmu.edu.cn>
References:
 <6547200DD4E67155+b1fb1848-2f11-4b3e-b556-9386373d23f1@radxa.com>
 <20260108123008.134323-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Donnerstag, 8. Januar 2026, 13:30:08 Mitteleurop=C3=A4ische Normalzeit s=
chrieb Chukun Pan:
> > V1.209 and later should have RTC. What version do you have?
>=20
> # hexdump -C /sys/bus/i2c/devices/0-0050/eeprom
> 00000070  0c 00 00 00 01 00 56 31  2e 32 30 38 00 00 89 0b  |......V1.208=
=2E...|
>=20
> How should we handle the older versions?

I think we might want an dt-overlay for this.

As the value can be read from the eeprom, you could even add code to the
board in u-boot to set the "fdtoverlay" variable automatically for extlinux.


Heiko



