Return-Path: <devicetree+bounces-252944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFDBD052D7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0D08D31A7C15
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6B3293C42;
	Thu,  8 Jan 2026 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UqrRO7lY"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.166.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033FC500962;
	Thu,  8 Jan 2026 17:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.166.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893573; cv=none; b=KVBUw8PK/2kFW7pQ1Vibyaws+/VocMGN5CStFgnWALQ0wnYmNJGDeJDt52Lp0QgIko8hUf3B4ENDpnvwTMRxeUUyizgH9cdFl1/QACiQTyJmes0HgY6Wu2Ef3PC2EoZpMk1MPEd7KgoFDMWmbcuzD/0T8T4u+n8Qbf4eEl4awEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893573; c=relaxed/simple;
	bh=+6LJw45byJ0D4Sf6IB/oExgAext8Z4a2RyMcQDJnNx0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=igJDzCDH7m7bm1nBTKNTIPpV6EtCpst68iM9GaU1FVFnm7WwH609RefAhQ7f02Ic5A8+olxhLLd9ZJhsQAkyXKlMXltaaOW7+BMkcGNzed297i/zbIlvapJhYBWnuyEymzaldVjL4Q4AcihDeHN2adKryfmZFnkBKPSoCQ6/vpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UqrRO7lY; arc=none smtp.client-ip=192.19.166.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 6E560C01B58D;
	Thu,  8 Jan 2026 09:32:51 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 6E560C01B58D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1767893571;
	bh=+6LJw45byJ0D4Sf6IB/oExgAext8Z4a2RyMcQDJnNx0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UqrRO7lYSq5avlNSLayX4oBtLA5GlldPFKILHAsuxwuHZv+c/BzTAxFpbKLqgOEtZ
	 wd7eKUFjs6H2pqb/i90Etz9uzdZSx35S5nHqr81c2d8Zs7xs8ktgm3ZaCtN3Z/Uogd
	 lAUWBnGVJ6YtR8AHQM2tn2FXReKvEFMgyldL0/QE=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 428531CAF3;
	Thu,  8 Jan 2026 09:32:51 -0800 (PST)
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
Subject: Re: [PATCH 02/13] ARM: dts: broadcom: bcm2835-rpi: Move non simple-bus nodes to root level
Date: Thu,  8 Jan 2026 09:32:51 -0800
Message-ID: <20260108173251.3783878-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-2-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org> <20260106-dt-dtbs-broadcom-fixes-v1-2-ba45874e4553@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Tue, 06 Jan 2026 20:09:41 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
> The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not be
> under a 'simple-bus'. Additionally, the "raspberrypi,bcm2835-power" node
> is part of the firmware, so move it under the /firmware node.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

