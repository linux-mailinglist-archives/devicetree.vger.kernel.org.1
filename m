Return-Path: <devicetree+bounces-93612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF249519F2
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 13:33:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36E561F23555
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 11:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F961AED4E;
	Wed, 14 Aug 2024 11:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Gmf22vrF"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029F73A29C
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 11:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723635164; cv=none; b=B3kFcgxWWpQ3JRIs7E552xNgdenOxrsKlQ0GX8DIRpsdMmaVvUqM1lT+Or1Ra/wYzEUiA1CWLF0IlE2XyA/UKsxilTBeH9ZXzB/arFJWsj7at7hIgp5aM1YoC5UqQCHId43aAiss/tMm9anefNLxLWS8Yfkp5YGqGcgovnrnBZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723635164; c=relaxed/simple;
	bh=8V4ZQiQwYGtpR6R9TUSYK1k/6Q0d4bJxIlyiUfnI+3U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pKzU6WyPky5s5Ow48gDYJ/x66l2eDCn4/n0gpUONrBkciJYuqPXDsBjIXUqPygpz9qFr67Ew6bNxoKmp0hujwjokTAnSl2B46klopI1O5JhbncVj/8s6dTc8/Z56xsAGbI6MFExknSs/bdBHSX7JbsA/DYWxm0v+gvZjsaatyQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Gmf22vrF; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sOVvFlHrAg9KDMCVJRh3goR+VCE/fL2weWP62/Msblo=; b=Gmf22vrFYBIz9eDFozqNDL9A3i
	RkAVYQ7WG7Pf/Jvm+mI6UOr9DYAXmlX5jF+06CL9/mIm44pU1ZQLcVMXFtLCM/0hnDrsQ6oR63ENm
	RQ479ITAf8c4uNMMCkiu5ciLUHclubGq3mzip2iUzY0qcv48MOJ3lK6rucIWARvOBDXix6UWt9kw4
	iPs6LSDMbYtY2XnuTNScWGbd4NT9dNNxASPYb5TWPKcX7JlUTM+Grc8pFkb2sU95AZdviMfy8OV/h
	2l/SYqobyCRetQyx8FvNhan4lT33l0I+TkUff9WOKIzRs1Jmu17UvZfFL8Jn+g48/JvfaYn4y8iLT
	hbby+WpA==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seCF3-0002kT-O0; Wed, 14 Aug 2024 13:32:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject:
 Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi
 E v3.0
Date: Wed, 14 Aug 2024 13:32:36 +0200
Message-ID: <10385642.ICPdZLu4VQ@diego>
In-Reply-To: <8FF4228B18A1DFEE+d359188b-64e9-4ce6-8796-f3fecd6a0781@radxa.com>
References:
 <20240814095727.1662908-1-naoki@radxa.com>
 <8FF4228B18A1DFEE+d359188b-64e9-4ce6-8796-f3fecd6a0781@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 14. August 2024, 12:25:54 CEST schrieb FUKAUMI Naoki:
> Hi,
> 
> On 8/14/24 18:57, FUKAUMI Naoki wrote:
> > Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> > RK3328 chip.
> > 
> > [1] https://radxa.com/products/rockpi/pie
> > 
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> > Changes in v4:
> > - update compatible string for OpenWrt
> 
> this is for https://github.com/openwrt/openwrt/issues/16168

I this because openwrt used some out-of-tree devicetree?

For people reading along, all the other rockpi devices follow a

	radxa,rockpi-foo

naming scheme in their compatibles while _this_ new entry uses

	 radxa,rock-pi-e-v3


Heiko



