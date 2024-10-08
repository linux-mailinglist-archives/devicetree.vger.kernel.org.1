Return-Path: <devicetree+bounces-109179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D15C3995878
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:31:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55AC31F24A86
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 20:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A7B216426;
	Tue,  8 Oct 2024 20:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="BixWLAyS"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3AB215F55
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 20:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728419374; cv=none; b=jY15PKcp7B/7L8eq+i/qwaNrkpwJeNgBWzc8U1+MBvxCSwVEGzaQUssGp2SUTIEnnqkS5BN7+Gp3g8WZIl9NqXammATRrCzC4QY4LjXGB/R9Bn7HfRbHJOrolEW923K8wHCnwAowkQ5ApGKd6h6o7QXOf4+/k542l3E6XY40WUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728419374; c=relaxed/simple;
	bh=YcJDQ2oBCx30OncY0agy2bnGSXpDQC7HkPruKdanRdk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z4zHu1t0nEy0m8YiI7yznoc+FDHHrDRMu4cRuXIa336FdIWE+tuiBCO9p+ZQ2LSBQ614XLUz/2W6kC0jH0YEaeBvMi5xGtsCshDxVR8SMQLMrXWAbtx9B7pjURXySUNS9nBtxhAqnYnlYJpTY7saQiXxZ2Lc7ahtKGW+qDN1ZkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=BixWLAyS; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KS4o+17xhu6mrVWg8kWTI9/MLiyd9G3yVbErNjjrH9E=; b=BixWLAySjOPWp51uUSeJAufbjy
	B3RKUwTg6SYM8w+lXtmKxz7WNm61pcZErkqagElxL9cEeWBEGokCiE+3XjM1fcGIFqGnBhpdR5vnT
	C3NqxF7Vglt4FM+i9RSE+j8qAscsSsKEcRfqPbzS8YX0FYRzfDPwUydYtvTPmcV1ulPXarYX9HfHZ
	dMxZmHMyqhM8454JHgJawNw47rX3Xh6SNlSBbiw9YfVxU3MqwZceoWYYhF/QqeG1mB6+aPkYZ4mPr
	/a+n3IH23D0pS5GjDlBm3s8+Pm9ICLWnNM6TofemEPnkUgB9rDVoI5k7PFOJyYPI6CxnWxjN5YQdF
	Fq9h45gQ==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGpk-0007i6-I8; Tue, 08 Oct 2024 22:29:28 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject:
 Re: [PATCH 7/8] arm64: dts: rockchip: Remove undocumented emmc property from
 PX30-Ringneck
Date: Tue, 08 Oct 2024 22:29:27 +0200
Message-ID: <2008626.usQuhbGJ8B@diego>
In-Reply-To: <79b0bf90-556b-4076-bdf3-8b3d8aec80f0@cherry.de>
References:
 <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-8-heiko@sntech.de>
 <79b0bf90-556b-4076-bdf3-8b3d8aec80f0@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Dienstag, 1. Oktober 2024, 12:04:00 CEST schrieb Quentin Schulz:
> Hi Heiko,
>=20
> On 9/30/24 11:01 PM, Heiko Stuebner wrote:
> > supports-emmc is an undocumented property that slipped into the mainline
> > kernel devicetree for the board. Drop it.
> >=20
> > Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-=B5Q7 (Ringneck) S=
oM with Haikou baseboard")
> > Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>=20
> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
>=20
> FYI:
>=20
> $ git grep supports-emmc arch/arm64/boot/dts/rockchip
> arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi:        supports-emmc;
> arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts:=20
> supports-emmc;
> arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts:        supports-emmc;
> arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts:        supports-emmc;
>=20
> So there's a few more to remove it seems :)

I've now amended the patch to remove all of them :-)



