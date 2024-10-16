Return-Path: <devicetree+bounces-111801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3020D9A00F1
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:49:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 627C31C21FA6
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 05:49:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023ED18C02B;
	Wed, 16 Oct 2024 05:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="ABag9x+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA75218C009
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 05:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729057762; cv=none; b=o9Pd00gGx7tkFnkG1RAurC7V5GpT3WWtVko4cxK8mU99b7x3OWAe3nMPU9hDv4ZsL4a5LcGb+zyaaHi2xRBRKNvTWUf+FCBYD/daF2Unc+wuAHQzJIW+ZVJ7GNaKVlXOk3/6lmQWHvGw1BbbfUH8pbwnURlZ2PvHL5tnDlaxJK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729057762; c=relaxed/simple;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KOWhjykV+I3eP+sKbfeB4cKW27Vcm+o+CqtNo78jY8BmigfZTitB9PI0gSj80LjicZZ2UXIeL/TI9Ff6U1GA+5NHYGsKzT1vBlVGUyJH+NAKSQvWTOOe/ycykSjt2iN71qJj7WUvNdZQ6x2U2g2QfXQmk9tHDnVTg0WcJce92P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=ABag9x+z; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729057726; x=1729662526;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=ABag9x+zf0HxHkXhJAEIBSVvlfEY1svZhLbmfZnbP56Lvx50hpHLoiuwfEDI4pIi
	 gka40Pf9qy0jdHQe0+wFfmTEb0/Wf9tu9MMixoxHA8nUF3aZz3BbMP4Dmr8tbUkRq
	 Farwza57e3ATiaNiitL9qZiPkQ2eG9SoM8dRnipUfG/VevUoF3iUQI+gB+r2VTIZN
	 +Jd/7JwUn2I2NJ8y6OKZaomzx3Uh7LULcWexzQz01N2J14JKebWoxLjL9QeWX7VEa
	 BBOV9bG5Vah5RMLg+HNDqaVqlZjDIePB/AGQuYFBc7bKUw/fFOZvEbMxCzcqRqgun
	 sFLkgtU60iYVbBTDrQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MOzOw-1tJZhq1U3o-00VDRI; Wed, 16
 Oct 2024 07:48:46 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v4 0/2] phy: Realtek Otto SerDes: add new driver
Date: Wed, 16 Oct 2024 01:48:40 -0400
Message-ID: <20241016054842.3435609-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:J8KaY2G/hIfd7t+TpqhOnpjZtP498PtwTFhOFOubkcwZ8to2//s
 ptpPCvtBKsJmTynDnFkJiRUpvlBB/k2Sq6ayjC+Qj/CMwjnhzHmgAteta+Vn+Om8keFMdln
 VOxxzYVs3ro5L8+aDxIEPgzWSTtbTHax4KI1wVRUFVryDd0lXzLzpZ/S7Rk0rWG7pblA0I0
 cPZQu3ZGoLkQzuFWsRAYA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:5/2lUkaS7BY=;Cpigq1h47R+3hOk7nLUW3bsS0YI
 ig7DAqIp0d2pPaIM/WppOTk4Txgw4CpoUb0yA1O4YLBfH9b28i2ckoE2Vb3f1cWSpjkmEFKJ7
 p02GIynjHvR/Aybwm1SCGMKytcNJKyML0fCJfSjLAuq3RlbvkZwgZpvUm4W9IbKsaoUwzmAXp
 29fkMr0s3Sd5Y9EExsgQNKeC63Aa3PYxR+KCTbcVCOhpTdzffWabDp7e2p8KcMZNYbtzJcgYy
 E0GLk9MXmybBC+tcUhXEFCXJ1dgPz2FPYeVq31dFWf0q1ixcmOp+AtkeeXEtexFWZQe7U+cLY
 cdhwoZXHxqQnGFBlA3w4vr4RVI81XGGcBXSBC5JzWNfQqcDmFn7D+bfTTVwZ39oa+4G1DeMrO
 hY4xmiC0vglPKc3RQBBs9yDZwIVTlTIQfkhK2UxWK6pHEqD7KP73dF/fv3tVoNlbaSFmpNTFk
 kauXvfw4vshIaBV+0YLacVgs4zAh7anQ98Zt0Lrdh4U0PrkkCdPfflBp80tvBr6Jeda0aX0rO
 qeCs+AS07aKHFlg78RRIlDmSEQLtfDz52eDpwjqJoq4dNB0lYDnrDuxLb5SS/21fgq4uTtM26
 5Cevl5faBu6YhrnQcexsNMuAPLMSezyulXJ5mlsqqEyvqyJiYbEbSnG6poYn4sikxRNaQP+iM
 vzZn4UNAbX7VhwAKKDBqKY+UUqzIXih8UwFrQpPRFmH+0s4/MOzDlV0eBKREbY2GKuwtNi5lz
 ickWWiml8RQ6Bmy4/TRcve8GRNJmVF4QB/eD/PyxPQQWp8ZntpdESynryzpzmnEhRw7rfShVL
 qbnVUz2uPU6MWz/Us6tJmE5A==

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


