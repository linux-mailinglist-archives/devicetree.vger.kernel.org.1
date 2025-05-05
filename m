Return-Path: <devicetree+bounces-173706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0533DAA94C6
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:45:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7333E176A9E
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A829918DF80;
	Mon,  5 May 2025 13:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="m68hHy0e"
X-Original-To: devicetree@vger.kernel.org
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com [192.19.144.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168F1EAC7
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.19.144.205
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746452729; cv=none; b=TjSQY91eoU5tkaNsDE0j0ZhSfsIzEkdhbnPSCnfgQ/z1MRtDBKm4ENCgwDJvWihNfRIJ5CVy5eXBAU56mENpZqOwWWX/g7AIsyOnHpDUW7CMQTVNAUzMBY12Afxu0ioOg/WQNRRgVNwJpYu6nu6EgGwDfL6ohW7jCxPZt3aP17I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746452729; c=relaxed/simple;
	bh=Y02v5bYxenlB869PlIG1Dt7fc3hTw8UXdBFKM/hXjHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=koMbyG6iJfZICodhrO7TaLQN4F8CbjdnCcvAs9lh0pzRTsVV4+kWpLBeag+dPPA23BmXepzZQ7JVqXcmQOzcUpVl3b9ppK85e8mFsj8q0Sgicv2zgFYJXTJPFnj72fc07fXO5DLq3H2ShCIrZgvXtZJTi5JJ0vzjbRcaU+UxzNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=m68hHy0e; arc=none smtp.client-ip=192.19.144.205
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: from mail-lvn-it-01.broadcom.com (mail-lvn-it-01.lvn.broadcom.net [10.36.132.253])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 01F27C003AA6;
	Mon,  5 May 2025 06:38:43 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 01F27C003AA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1746452323;
	bh=Y02v5bYxenlB869PlIG1Dt7fc3hTw8UXdBFKM/hXjHM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m68hHy0eZqLEutbdL47gj9Oi0Sy77lOaPdRNrqNmAAeSJW8sAYNzf+MAGu287mgEt
	 HBgt1cMb9R388l0JlemdtXAewCCSGIi3ptiTOmhr1hexrbYpQYWk9Q6GiebKbUZ9eq
	 VYD9byfL1htrLqQPMcHO10FhvrWV1Yuab8acdk7Q=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-lvn-it-01.broadcom.com (Postfix) with ESMTPSA id 8FAB618000847;
	Mon,  5 May 2025 06:38:42 -0700 (PDT)
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
	Andrea della Porta <andrea.porta@suse.com>,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] ARM: dts: bcm: Add support for Raspberry Pi 2 (2nd rev)
Date: Mon,  5 May 2025 06:38:42 -0700
Message-ID: <20250505133842.1140765-1-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250418143307.59235-3-wahrenst@gmx.net>
References: <20250418143307.59235-1-wahrenst@gmx.net> <20250418143307.59235-3-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Florian Fainelli <f.fainelli@gmail.com>

On Fri, 18 Apr 2025 16:33:06 +0200, Stefan Wahren <wahrenst@gmx.net> wrote:
> The Raspberry Pi 2 (2nd rev) has the BCM2837 SoC instead of the
> BCM2836. Except of this the configuration of the board is same
> as the predecessor (no WLAN, no BT).
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

