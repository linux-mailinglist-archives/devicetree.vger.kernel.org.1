Return-Path: <devicetree+bounces-168204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3986BA91CCC
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:49:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3C353B65ED
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D433B188CDB;
	Thu, 17 Apr 2025 12:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="G/Yb7oau"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB4928E37
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 12:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744894089; cv=none; b=GiOiN4qtMd4wdTqR7LwP7lsLsPtlNXTFm2ZOaYESgs2IJY26GG9hYO01QZ0F3IZJ1TJeAeQmD8jAhwCekFMFDzOYFD+LBfFj+3nRiOzKOfABM4Lbs62G/xYTAFJZogjikUd70dlDAO5JHN27SeuVzwKxfuVEBE9ObOJLsbng6u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744894089; c=relaxed/simple;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=JP1+yEuR/6Tpk/9egYBESMfDFPOYKn+znDExlupNpbooMuJfYpifVMuCEqxUi2eUBIghbSpG0smosQHPIuSSucsoNiZXSSxERVXNGVsa9xmS3tXKbym1oE4Ck4+l/qDapRbNqvcrIVqYvXpihNyT1lM6Jxf0dG/a4ZPHK86hqO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=G/Yb7oau; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1744894084; x=1745498884;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=G/Yb7oaumPdM/8qQ0kugyO+iwx2YrBHRD3y/tjzR7wqJuiVBnFvzIVCYhRuxJhLM
	 AsNGNbUqWbA9lDEJITMHwgX6hLth9yN+lBUL6Hy8IsWtLFkF0hpJUNjz1neNOHcVn
	 xZNQ8P9qTV2A1Axm0mCnoDnHGBJHHklNM7kWC8MPwXkhgstjNp3U4k3j446pCWUYS
	 gK/pSpbO4+b9HKaWS+5iauza/O3uDtas3LHzIb88uoOKq0uDSgmuurg6eHm9pISm5
	 TcoLjk3c0OVpPksibFWjZcmx5kdOktkrsWkV15IzsdigmA3uLDbPokHWgMl/NDn9Z
	 Fuez0DXAVAiqubxfAA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MKKZ3-1uR3DH0o6J-00WwfS; Thu, 17
 Apr 2025 14:48:04 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: markus.stockhausen@gmx.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz,
	daniel@makrotopia.org
Subject: [PATCH v6 0/2] phy: Realtek Otto SerDes: add new driver
Date: Thu, 17 Apr 2025 08:47:41 -0400
Message-ID: <20250417124741.2405981-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:z1q87PWrzmA+wZ6MmSuAOPAUk3WHPvHPmJ2WcsqhdyvaTUUkS6x
 d11KF+Bs/HBSKNKvH8yRtX0tlCemiijrwTa7D5IU+VsQxy/TEhpOR75hwjjfWWPtC9TGMBd
 6XF+Eb8LN9IWmtaeeAupn0aP5J0PmWDnosnCIsfY6ozXVLqJQh4Rayqqw65/rG8tDgEslaJ
 TbbwSO6lytqaW3Wb/6EsQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:6c0dz2ZZ/uU=;BvYxgyYjX3fK4VnXuNW5l3ye3ag
 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
 UUV5S4uJ9HNamEOLzvFwJ4=

This patch series adds support for the SerDes in the Realtek Otto platform.
These are 8-52 port switch SoCs of the RTL83xx and RTL93xx series with MIPS
cores. The ports are based on 1-8 port PHYs (e.g. RTL8218D) that are connected
via multiple SerDes.

The driver is based on the GPL source drops from the different switch vendors.
It supports all 4 SoC series and was developed and tested on the following
devices:

RTL838x - codename maple - Linksys LGS310C
RTL839x - codename cypress - Zyxel GS1920-24
RTL930x - codename langon - Zyxel XGS1210-10
RTL931x - codename mango - Linksys LGS352C

Due to very little information and fundamentally different I/O handling and
port ranges of the devices the driver assumes and translates some handling
to provide a common consistent interface.

Currently only provide the most basic operations for mode set and device
reset as well as some debugging information if enabled. The strength lies in
the fact that the driver can run patch sequences for the SerDes registers at
certain events, e.g. during setup. This allows to run configuration
operations to get the SerDes up and running.

For more information see:

https://svanheule.net/switches/gpl_source_drops
https://svanheule.net/realtek/


