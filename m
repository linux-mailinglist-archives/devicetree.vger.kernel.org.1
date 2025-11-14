Return-Path: <devicetree+bounces-238441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D22F1C5B428
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 920093AD8B0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47D0F18D636;
	Fri, 14 Nov 2025 04:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="WspfHvZc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C905B1E2834
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763092824; cv=none; b=GgvcVvQU2Ul73rZjEyJZVghY5pGI7GCmRU7WTysq0D1vf1iQWAI2XrxHgUi9ZH0+IP9j5TZJR54kIuL12yb6v0B3kDlYAeOYX5ijvSlsoW3FuKmBzDfPFECnw1JvpmAVa28PYtwJJW3dQZmWuov31a24n6w4qQtMdCqCsgMQK60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763092824; c=relaxed/simple;
	bh=U/NXDqrmlTxJAN5LCpuqajttaw8Aw19Jseo/aqqidS4=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=ripycvKQqHe18dzf83FYnTj0BNqSijVHSQTmAxEARyRgU/rQoUy+kb+c7tH3mnE1/3NRpM1N1g5TRjmzRiTvW3t5i/DeNTBUsz/oAsqgkc9y4t8PBt0flE69ZTfIsUVBZ89xRIegVOj/Be97Kpu6xxATqEf0XuCxNPHAYnDMeoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=WspfHvZc; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 1222140ECE;
	Fri, 14 Nov 2025 05:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763092818; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=9/8XmcpVQphc5dDgFybboRJQnLNpfLDi8NoWEM3kTPY=;
	b=WspfHvZcwKEBzzIhnKt1ORupe5QziflyhEsb+/jmcm2fEieJyGHZ+o4Ymv4klPBknZcQ3w
	1Lorpd0BohQ6rZeRpHFYmwI0NUO0F1maOhbpG3B9957zlb1ur6ORWzBWuhdssf5J1Asvrg
	R6fuPbWqva8O5l30MCM/cZcnWQaRO+sieNCorCQRfoD3JzGASceDgs4x9y/Xk8BtQ3ud/i
	FhHqe7cI8EjPO4V/OfMwHWwHTOTcR7I8mNAMCafEzSVg8zvBifz5TRJQ8bCQfSRFFHr6Wm
	i1ulR0fB8KiRZrtXOJisuD31KesJ1z8UFq3QRCM+qo5kKjr2oO6HCZgwjbHYEA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251113124222.4691-2-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251113124222.4691-1-naoki@radxa.com> <20251113124222.4691-2-naoki@radxa.com>
Date: Fri, 14 Nov 2025 05:00:07 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <b394e1a7-a53f-9303-495f-776da0ad3118@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Use default-state for power LED for Radxa boards
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Thursday, November 13, 2025 13:42 CET, FUKAUMI Naoki <naoki@radxa.co=
m> wrote:
> Currently, on Radxa boards, the power LED is turned on immediately
> after power-up, independent of software control. The heartbeat LED an=
d
> other available LEDs are subsequently turned on by the initial
> software, such as U-Boot, to indicate software is running.
>=20
> However, the device tree description for this behavior is inconsisten=
t
> and fragmented, with definitions split between the main Linux DTS
> files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).
>=20
> This patch addresses the inconsistency for the power LED by using
> default-state =3D "on" instead of linux,default-trigger =3D "default-=
on".
>=20
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
>  arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 2 +-
>  6 files changed, 4 insertions(+), 6 deletions(-)

[snip]

Thanks for this patch.  The introduces changes look consistent
to me, so please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


