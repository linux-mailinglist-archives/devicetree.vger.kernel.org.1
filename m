Return-Path: <devicetree+bounces-252947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D434D050D3
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:36:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CD2D03009F65
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C3AE2D0C7B;
	Thu,  8 Jan 2026 17:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MIZiGTQ8"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.231])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A25D1E572F;
	Thu,  8 Jan 2026 17:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.231
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893699; cv=none; b=GPqTWsMYQY3SkzNgFxuA8ziCUYnOkn/WkbgeUTBPVhGZqoWZSVx14aOyQIqNZXIpx4oZyC8TvRA05kZTB0hdtYo6BoqdTtd/q/vqOonROZIf4Zws+ycdM6e9Pshx9RNZOt1rc9cBgO4dAiF3tNdjAysjnJ07Kqz+QGhCdmgiPrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893699; c=relaxed/simple;
	bh=ihvn7pI+5tVjcR2/rIz78L6ZLWmGOBZvDq6UmtxDWTY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F90TicGEdb+KBNfEu0FPmsdXPWG8ea1ZulsOeqPucmHAG07JHQtqoWFy4qeJivIyiYO9pbytI/Wpt6LSBQaZQ9XDwuPgigKaGoZZpBs8A79CyvP6DYBge0Ea02all0Ot55DwQfedNWnuug5yd1+HZTHRedWWXL+SDwyENj4jJvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MIZiGTQ8; arc=none smtp.client-ip=192.19.166.231
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 87822C0187D0;
	Thu,  8 Jan 2026 09:34:57 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 87822C0187D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893697;
	bh=ihvn7pI+5tVjcR2/rIz78L6ZLWmGOBZvDq6UmtxDWTY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MIZiGTQ8NUe+ilgD9G+nM78ZYgLQXzgAQSElAZKk1w64U0Qq+iiTJaW8loKUzTAVl
	 5uMaNHOqDEM/sp/ZMFZ/qGqNg7J2dcLAUhfYtjZWPevdGkBNfYEtguqNt3NiZ/s9eN
	 7QHB3RotWrGU/21UzD+VctaV6X7GI3n4I/smO3/0=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 5AD921CAF2;
	Thu,  8 Jan 2026 09:34:57 -0800 (PST)
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
Subject: Re: [PATCH 07/13] arm64: dts: broadcom: stingray: Move raid nodes out of bus
Date: Thu,  8 Jan 2026 09:34:57 -0800
Message-ID: <20260108173457.3784678-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-7-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-7-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:46 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The 'raid' nodes are not MMIO devices and are not part of a bus, so move
> them to the root level. Drop the unit-addresses as they don't have any
> address.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian

