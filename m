Return-Path: <devicetree+bounces-151189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80554A44B4B
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 20:26:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5A4D189F386
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 054221FBEAE;
	Tue, 25 Feb 2025 19:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="LUb93Xjt"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94403EC2
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 19:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740511506; cv=none; b=COhnKzBOsk+2juCyf/BKsNoosH1vnuCHv+NYt3aZO7KS5T4tddyD0OzLHffnzE0rv6qW4QtMigxP5XNFZOph2kPwUdDlP6lReN9TIT1rYRqrZl8QEu9pCW0imvLO6VY6HFL7zFJ2p0HJeQqhSr3CQnhHxaH7KwfTmH/IZywS4/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740511506; c=relaxed/simple;
	bh=LsAUNofXorXLRj5AB/bpcrLwxeeZplB7eZs0ofV2z2c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ooyl2xs7arKbInxQ4/2bcqsTqk/jKCfF3T+l57Bp4ULaZrkOR/A2tN9yLfx/TutYSuRLvh43bmvU1reVdXuP3O2hjUqUssTeVf0IQSsxwi8n9svAjOFAKruxmdXsOaHX4Qc52NyjKV4Te8AASutv0gOyIv8x4lSYGPcWI2YctMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=LUb93Xjt; arc=none smtp.client-ip=192.19.166.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.lvn.broadcom.net (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id B596FC0005A7;
	Tue, 25 Feb 2025 11:18:21 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com B596FC0005A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1740511101;
	bh=LsAUNofXorXLRj5AB/bpcrLwxeeZplB7eZs0ofV2z2c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LUb93Xjt/oc0FTDI+UQYI7HDL0zfXgn0lUrJ/0ZZlTx8aXivB0uAqS+tadcxe3ezJ
	 CEcTSkV4LqWcvYRc+YrCGMkHzXM9VyrtOmZDHd/OeggP9vL1nyY2mu1F2GRad2vlpd
	 +C00nK5YQeTqMkAO0q/U22cDM9z9GUYpXK3VStQY=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail-lvn-it-01.lvn.broadcom.net (Postfix) with ESMTPSA id 8733B18041CCB8;
	Tue, 25 Feb 2025 11:18:21 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	Stefan Wahren <wahrenst@gmx.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Phil Elwell <phil@raspberrypi.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Andrea della Porta <andrea.porta@suse.com>
Subject: Re: [PATCH 1/2] ARM: dts: bcm2711: PL011 UARTs are actually r1p5
Date: Tue, 25 Feb 2025 11:18:21 -0800
Message-ID: <20250225191821.1059923-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250223125614.3592-2-wahrenst@gmx.net>
References: <20250223125614.3592-1-wahrenst@gmx.net> <20250223125614.3592-2-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Sun, 23 Feb 2025 13:56:13 +0100, Stefan Wahren <wahrenst@gmx.net> wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> The ARM PL011 UART instances in BCM2711 are r1p5 spec, which means they
> have 32-entry FIFOs. The correct periphid value for this is 0x00341011.
> Thanks to N Buchwitz for pointing this out.
> 
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/fixes, thanks!
--
Florian

