Return-Path: <devicetree+bounces-236997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3D3C4B919
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 06:48:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 610D13A2528
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 05:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC487242D90;
	Tue, 11 Nov 2025 05:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Eh+ON1bn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3644724169A
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 05:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762840022; cv=none; b=D06vqhVGIcbSKWkpO4DTy0bMkDZIiSzDGhfecsqVlodUsE8SVeCz1eck+esv0SehQG4zallP0M82Xhj9X1X3Wv7MNYb3pnoiREEpF94Uhtc2Qx+naYVIrktdAg9CVWHDiZuqiR/SOQi39DjVpSy1Th7NHCEjQh4C9aa6Ubh6ewI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762840022; c=relaxed/simple;
	bh=DsQl2rmr3xYC+RsJF1DIKQ4/tjbrB4Ul2lAeFtm9wak=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=m2f25EhhS28qbxSCJTQnrpsjz6Qo1uKLeeTO8L28/J4Z7yQ8Ts+kpfqCFntb7WwJbK/kUZ/8/GtlK8a+MJUHh7/Cx7btscz0CkVo7MYFzAPEf6xOoS6UIOci60cCmnW3J5UBDdrUi/7nM5XXAcamXoo/vrmB5KWShiu/03wuPKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Eh+ON1bn; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C1E3041031;
	Tue, 11 Nov 2025 06:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762840018; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=iKiqwSW06C0YL3fzQsISj7cVq9bGNpdxxp5zAkSRu7o=;
	b=Eh+ON1bnzIwM4UCOaYkagBDysEpx9fmfiEYLL0gB5PtPtheSqdBbE3QBlZhb69KEtzXeGO
	yRQpyFxL6PAYE2GwUeHVjosJNXehHwwywKyniod60akgEqxTudY1FtsHP8589uGEfPnB/G
	ir/C9vJqdGBV+M99DXkmeYDeU2OM5npyS3aSmD4iKPfP+PEufNceROC7heLEyWC59YsRMq
	udK9qUCtnuhDPdtOW9jBq9FDa3axvHrzpPAHtHez7YV2qjE26Et7YDnv5WwwT0DRxZGkq0
	Wk2XWFQfVj0CuDc1Q/71V++gaY4O1OLwtRMrtUnlZyZcDhu+CjU7fa5HbPG1ew==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-1-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251111050924.54880-1-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:46:55 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <6355d076-9263-ad0d-6460-c51f03b0a45e@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 0/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Fix eeprom description for Radxa ROCK 3C/5A/5C
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com=
> wrote:
> This patch series fixes incorrect or missing entries related to the
> eeprom on the Radxa ROCK 3C, 5A, and 5C.

In general, there's no need for the standard prefixes in the
subjects of cover letters.  Thus, in this case the subject
could be reworded like this:

  Fix and improve EEPROM chip descriptions for Radxa ROCK 3C, 5A and 5C

> FUKAUMI Naoki (4):
>   arm64: dts: rockchip: Move eeprom correct bus for Radxa ROCK 5A
>   arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
>   arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
>   arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
>=20
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts  |  2 ++
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 16 +++++++++-----=
--
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts |  1 +
>  3 files changed, 12 insertions(+), 7 deletions(-)
>=20
> --=20
> 2.43.0
>


