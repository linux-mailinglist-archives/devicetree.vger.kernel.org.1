Return-Path: <devicetree+bounces-252949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C29BBD05908
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 680D230EB3BD
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3793C2D662F;
	Thu,  8 Jan 2026 17:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="RE++dxZa"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEB82C11E3;
	Thu,  8 Jan 2026 17:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893724; cv=none; b=ZmpoULUuLFeepqIJc//G/arHwA2FVfWCI0AoYP/5Ng3Fy4ZjgWzqnyt+V4rkNL0vkuvP2EEECAleN84uyI0eQy8bXCtn7tqAYRXb8XECAJUB5R0ZBUtdCXtL1XJelvoekHuBL7qMdSHIVBadIG3cM3vRgymW63Z5K7Bs+HBFPWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893724; c=relaxed/simple;
	bh=6IRUQ4VrJOK9hh2AtecX8rTBLEv+hZNTsgrBT1wo9cw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tIddZYS27sFZN8/sXIB6udbarIlaGBQKGrMBXUQQvorkorm3+BgbVr6ckpt+EvG4SYwTsgBOECgJtxe9NYkTQzaW5i3f29VaKImDYzTNllVnfBTQAfInS35Utgw2SgG79KCTar2q93lyOjV3rSW/dSvSW5lcKpdM8EPVYybCDPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=RE++dxZa; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id E7F1FC000C61;
	Thu,  8 Jan 2026 09:35:21 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com E7F1FC000C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893722;
	bh=6IRUQ4VrJOK9hh2AtecX8rTBLEv+hZNTsgrBT1wo9cw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RE++dxZaZ6HMJDRAE0qcLqEhyjLntO9GcnDlNe+szWeSepsVMDOmpGINoSDwHtYqF
	 f31H3sFnfXehgvSz5hgZpEhyPS0z0dsDaAZUqF+yraxkyK6ho791kixEdL7AnbdbLk
	 ZcNVCYKrB8GM8RkAHWi3NpW3AGePUHGUoWVAFlOo=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 8720E1CAF5;
	Thu,  8 Jan 2026 09:35:21 -0800 (PST)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: bcm-kernel-feedback-list@broadcom.com,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/13] arm64: dts: broadcom: ns2-svk: Use non-deprecated at25 properties
Date: Thu,  8 Jan 2026 09:35:21 -0800
Message-ID: <20260108173521.3784904-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-9-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-9-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:48 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The at25,* properties have been deprecated since 2012. This board wasn't
> upstream until 2014, so it should be safe to switch over to the "new"
> properties.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

