Return-Path: <devicetree+bounces-188106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1D2AE2B3F
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 20:44:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 07AD5189197B
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 18:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E10A31D5AB5;
	Sat, 21 Jun 2025 18:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ZexhGV+K"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7E11487ED
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750531466; cv=none; b=M38d0pl+7O4xOcDW1mVRR8JRsVAG1ra8wX1kWQrZUMAbQeVwexUnohlVW40dGxlYbPFOoIfb80ib8s8JNlMDs35/833iv8PMU/ZtvA0htC9a7brzUPw8uSBxH7/ITjpxnYdI2Ef7QX0f+G1pwTUnTjcStorfes+ooYALXe67fM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750531466; c=relaxed/simple;
	bh=VcuQnH3897lZRHh83zSVM6dh2Rt1HZ4V7YlniupD2Ww=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fz9jw4ardbeEIcMhwe7UB+t43gc/RI+JvmQc2zqRtnWkGBUf5cuphRCjwa82rAhHXFAvZXoppEqsy8JRcF5iHJa+zjfguCJjbaQOKI8ji1dmW5ALl4i6ENUb7T5vfQG/g6VMoz1AK9z86bKCxDRPcuS/anIfc81UrTXpq0hEuJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ZexhGV+K; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LOYzEFryhpWMDpLqFIhYynTTjYVsx1UHxgnT1pXFT10=; b=ZexhGV+Kmh5Mh87IfQxPw/qKeM
	+fdXdNKlpnNTm+8i0q+LJtC6zav6fJzLkR68ACvxRSodcWNdpVNvEW9MFpy70j066xUowmgXVxnsQ
	ZSSwlsozJKOtQQe4ZKbfXwCrR/8krp5IuANlkAHt7neAoy9ZnhVOOsuskxoYuv0XCH0acBk+O95vh
	aeJrv1AiXyAEtfMep6gkvtRT3oUQyQaRH507J4hzMZ/zAR3zvXZNPzNJNBO46zT84re2SYzZn63I4
	dTOnFN6/qg2r6dvxdaP+Fe+jzRvFsIFg6uiv9FW9qYyP4NsnBkPMSnPj6coiSnUeMWP4F3fq2OCLG
	OmE4qMyQ==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uT3CH-0002NJ-1N; Sat, 21 Jun 2025 20:44:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, ziyao@disroot.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] rockchip: Add GPU support for RK3528
Date: Sat, 21 Jun 2025 20:44:12 +0200
Message-ID: <2333578.IobQ9Gjlxr@phil>
In-Reply-To: <20250621090026.23293-1-amadeus@jmu.edu.cn>
References:
 <175045054807.1572438.8910024255365917623.b4-ty@sntech.de>
 <20250621090026.23293-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Samstag, 21. Juni 2025, 11:00:26 Mitteleurop=C3=A4ische Sommerzeit schri=
eb Chukun Pan:
> Hi,
>=20
> > Applied, thanks!
> >
> > [2/3] arm64: dts: rockchip: Add GPU node for RK3528
> >       commit: 6b88b8a640fa5d2169e0ce47b88dc30727fc1105
> > [3/3] arm64: dts: rockchip: Enable GPU on Radxa E20C
> >       commit: 669080eb7f7c4720aa4e640a49f7490cd928cfcc
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/=
commit/?id=3D6b88b8a640fa5d2169e0ce47b88dc30727fc1105
>=20
> Should the gpu_opp_table node be above the pinctrl node?

yes it should. "o" before "p" :-) .

As tht commit was just from yesterday, I've amended it to move the
table to its correct position now.

Thanks for catching that.
Heiko



