Return-Path: <devicetree+bounces-238450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D957BC5B514
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:30:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 24BD4353F78
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB56D2BD013;
	Fri, 14 Nov 2025 04:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="h+dsdhag"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0310028D83D
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763094549; cv=none; b=oDEhWOzaJshsiH9mk+EL80/R9edTn8gybnioEKnUKf7w5urm//U1GH9kTRnXIsj42V/P9y0/UH4TfDFQeS2ZgGst7O4A9R2vZfAFZxtrI3RxiPuS7Uv9VxMdO6sGfzHcm95zdPYrkD9RZL7OHAjQAhrPRjFYYR+xkE06CD1NgYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763094549; c=relaxed/simple;
	bh=JXNS2lj9vXp6+A4+SRh+s9StrTH5fszOw4xwsTKLDlw=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=JLomz4BTTndiKlSRvQb0nfMDmUCd1qdyTgtj+vTh5Yxdl/QPXaYqgEGu1RETqV9BNThYSPl3O91fQmoMxOC/Vam7sZ7qS9P04OlASANjWCE9ZLIK+S8Wsat0WnH/1s2OUlHBgklzdqzEygR3Fe2weLFvfrxptt7vFqa/g1IUrKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=h+dsdhag; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C48034109A;
	Fri, 14 Nov 2025 05:28:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763094543; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=JXNS2lj9vXp6+A4+SRh+s9StrTH5fszOw4xwsTKLDlw=;
	b=h+dsdhagY49hGVaTuKwdvu+Gfzy6AeClZfHAo2SsXWkRbkgZvKkvUK16Hm8JBlYC5xretB
	k7dVeKS3H73hMu7JBTsuIAUIoDGvpYrXiUyTcylKb36/3YqIHaHimBT0jT88ijRXCtVb0P
	UgP3C5dEXOSLuw8Ig0O4U/osdtM62algjhEvRgisy+2p01RxdbvhEabnOxCFdJKz+jICtn
	D8U96PAs9mx/A542505wZ6pkssMYsHP9TPRUcBgt/6gcIZxFc2Nh/+3NMeHdT1vNfeK/3F
	GFvKuy2l8KDJQeAs0vH6FqpcZMdh5bdHMjwF022B6UrxFK19Q532KtlyJBDoNQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <7b668c0b-f685-d909-4b05-02778a688839@manjaro.org>
Content-Type: text/plain; charset="utf-8"
References: <20251113124222.4691-1-naoki@radxa.com> <20251113124222.4691-4-naoki@radxa.com> <7b668c0b-f685-d909-4b05-02778a688839@manjaro.org>
Date: Fri, 14 Nov 2025 05:28:59 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Dragan Simic" <dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <4d94f91f-b399-2808-6ffb-719e688cd9e3@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Remove default-state =?utf-8?q?=3D?=
 =?utf-8?q?_=22off=22?= from LEDs for Radxa boards
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

On Friday, November 14, 2025 05:20 CET, "Dragan Simic" <dsimic@manjaro.=
org> wrote:
> Removing the properties that introduce the default values is fine,
> so with the remarks above addressed, please feel free to include
>=20
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Though, applying this patch might mess up the current behavior
of U-Boot, which doesn't auto-probe and configure the LEDs that
have no "default-state" defined, so perhaps addressing this patch
should be left for after the patch 2/3 is resolved.


