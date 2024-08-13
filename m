Return-Path: <devicetree+bounces-93437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8059950DD1
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 22:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86580284413
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 20:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC0F01A4F3F;
	Tue, 13 Aug 2024 20:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="E5zEn7xj"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (saphodev.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1E31A4F3B
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 20:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723580718; cv=none; b=G5d/GH9GwQMG6iJjKzy+bb1txfjQUvA0LP9Hq6C3m4VJ0jBlHR9Ivs1knZYCKb3MdAegUGU9bjmx4+EVmDOr8NlH8K2Y3FH03aeFuJXYRm2v3PiCySgEb+g85dMNinZndZ1Gi1vK98CMd9Q8TceMioSARg7+fR+BHZqPBVRBEug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723580718; c=relaxed/simple;
	bh=R9b1v6ocAjY1JSf1dsDHnLOLleLA8Dd0RAOaZCq27Ls=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jEIoSZQYedtnWLsE0/EkOiCv4Rb1YZPb44sBLg+ic9Ic/+IMtEivJ02Gyb3SSeAKyS36ljpC11HsQX7NKzQ39HJDcTVGPQNlgmCBVwH1VUOt2lBPlIuDzz6rU0qtgjtHNoko3OtneN+cmnWyuDRWNEGxCDJVrFcYQgIRAhzC9Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=E5zEn7xj; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 63095C002806;
	Tue, 13 Aug 2024 13:25:16 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 63095C002806
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1723580716;
	bh=R9b1v6ocAjY1JSf1dsDHnLOLleLA8Dd0RAOaZCq27Ls=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E5zEn7xjr7LxVD/17pRI3VSV6YT3pH0dyIcIZ4bX821jlMRG0NMIVeK2BKo+LuSZe
	 0z1xijAhPQW1rrhQ70PVWAklSCibiOrkxSM8cS4W6MtruD8VAiNYnWZ+hABU8LMYa6
	 eUlS5NOKyMZwqh87vIytc+0pFpwEJikhvzBohtlI=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 8FC6B18041CAC6;
	Tue, 13 Aug 2024 13:25:13 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 4/4] ARM: dts: bcm271x: add missing properties to local_intc
Date: Tue, 13 Aug 2024 13:25:15 -0700
Message-Id: <20240813202515.3857411-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812200358.4061-5-wahrenst@gmx.net>
References: <20240812200358.4061-1-wahrenst@gmx.net> <20240812200358.4061-5-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Mon, 12 Aug 2024 22:03:58 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> After converting the bcm2836-l1-intc DT binding to YAML, the DT schema
> checks gave warnings like:
> 
> interrupt-controller@40000000: 'interrupt-controller' is a required property
> interrupt-controller@40000000: '#interrupt-cells' is a required property
> 
> So add them accordingly.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

