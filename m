Return-Path: <devicetree+bounces-223926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67661BBF39F
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 22:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BB6F189A8D0
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 20:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6EE2DC764;
	Mon,  6 Oct 2025 20:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="AFeQ2oWX"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130C52D592F
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 20:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759783471; cv=none; b=nPnT8/mP1pnKI+xQPRdri2ixZPT30YOSQzXig7g7VJKJbVvUWwCmKCEt4M9AD56fxaBdsUV+Fdtr5TuJQaTiQZEyX+vngnNWt6uTUIfwiyEWM3moRh8ftefwBVTqTmf/2kXuZENkFttOhSeVyVXOlhTP7lt+a7YwWuzj12bIYGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759783471; c=relaxed/simple;
	bh=QAbf8X36aPDRfLP6OAz+rPPolYsLhmCrJbChrkSk9LE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FmohPoRmoINexjBuIZTv1YyS6B3+pki6sgkMF5+9NjJ4z3AUPfHPEzj8JzAitT+EiW7iY0/q76fTXeHmGr9LWwpD9kwQZGJutm+Cs5WihmFu2W4otIY/Qtp2Viuawbb7pyQzcSIoVDY4aQJb82YnMGikZjgfftE98EaWpstwS3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=AFeQ2oWX; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 80112C000C8F;
	Mon,  6 Oct 2025 13:35:10 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 80112C000C8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1759782910;
	bh=QAbf8X36aPDRfLP6OAz+rPPolYsLhmCrJbChrkSk9LE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AFeQ2oWXgXZ/MW6Jyiv1pse8hNq2AVExj2Br1J5LnX4lO1ZjTxRmd+pPhx1GAGT45
	 snoIatZmdthSyX0L2IwkFL/nni/6ZpsCQHunsPsJAmcNvgARqrmFxWC2bnQjlShZ1f
	 +GWQ90pIbyWI0h8eX/0LK895EALGEfVkp5C4FH1I=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 12E6318000530;
	Mon,  6 Oct 2025 13:35:10 -0700 (PDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Melissa Wen <mwen@igalia.com>,
	=?iso-8859-1?b?TWHtcmE=?= Canal <mcanal@igalia.com>,
	Maxime Ripard <mripard@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>,
	kernel-dev@igalia.com,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
Date: Mon,  6 Oct 2025 13:35:09 -0700
Message-ID: <20251006203509.2056322-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251005113816.6721-1-wahrenst@gmx.net>
References: <20251005113816.6721-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sun,  5 Oct 2025 13:38:16 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> Until commit 919d6924ae9b ("clk: bcm: rpi: Turn firmware clock on/off
> when preparing/unpreparing") the clk-raspberrypi driver wasn't able
> to change the state of the V3D clock. Only the clk-bcm2835 was able
> to do this before. After this commit both drivers were able to work
> against each other, which could result in a system freeze. One step
> to avoid this conflict is to switch all V3D consumer to the firmware
> clock.
> 
> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Closes: https://lore.kernel.org/linux-arm-kernel/727aa0c8-2981-4662-adf3-69cac2da956d@samsung.com/
> Fixes: 919d6924ae9b ("clk: bcm: rpi: Turn firmware clock on/off when preparing/unpreparing")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Co-developed-by: Melissa Wen <mwen@igalia.com>
> Signed-off-by: Melissa Wen <mwen@igalia.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/fixes, thanks!
--
Florian

