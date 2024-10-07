Return-Path: <devicetree+bounces-108646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B13993395
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 18:39:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75A8B286B18
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 16:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 169861DC1A6;
	Mon,  7 Oct 2024 16:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="OANC80TN"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF93E1DB937
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 16:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728319032; cv=none; b=DmRiTLwjMsrt2kksubwnnu1AU9Kqhr05wOD6qPlG/HMwTkHVtL8uQoUIqztyDpjEKvMN1T+zMRoiiVBW11TxaFDSezE0Z8y0cnwIura4z3/hlSJy0V7tS6Mwwssw3OlyWyfLOeDC1P0DZkBflnz98UrzVCtkruq8OO0CiGSK8lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728319032; c=relaxed/simple;
	bh=6r1iyAW+MPhFfGdFNuxCvPOa/U2sdSRL3vxx58PITug=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HQLmARzz2g06Augl3DzJ8KejfuPMcCS20clvPLuTVngDelAjNPxzk5VoZpd6Iyauq9vFrAUfrF05dgBQyZlgzgAocSmqAJhIdTnvQImBStGW+7ZUpUHK8KkeZW883rJSjR715gE3UtrBah5D9T+8n48B18mijoOF4I3WQjz3Aog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=OANC80TN; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728318987; x=1728923787;
	i=markus.stockhausen@gmx.de;
	bh=6r1iyAW+MPhFfGdFNuxCvPOa/U2sdSRL3vxx58PITug=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=OANC80TN9GwFdZx8Y0bx/4HkErCdLp9BUUtVlyKIaWAiV1XqqCpxh6mlukkOoPYB
	 d7zSo4JUSe7QEphINGDPP8WkHOqzzM8LOnNXkRMtTDQ2iK7ck81hWG6TEHSO5E6nZ
	 y0Hsx1+74XkrE6iOoNKy+OEWuqBdkHBH177+7ZJXTynh+0zncETf5XA1GapG1wU4E
	 4T2qdZoKX1EgeEXuRfAKf4x1rglTPkeyNSzm4z0xIy9Hq6OujzNBPipk4xQGW5x8m
	 vdRCTBhQ5sjwFtJ/SQewC/TOaIF+9FT2m4ly/4SW78zkzSMih5rUc5y7n12/utCbr
	 4AuthbJl+6eokMBZ0w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.45]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MryT9-1tjbkU0TDR-00jwt5; Mon, 07
 Oct 2024 18:36:27 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org,
	krzk@kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v2 0/3] phy: Realtek Otto SerDes: add new driver
Date: Mon,  7 Oct 2024 12:36:20 -0400
Message-ID: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:E4SpbU9iI15qAgU3v7RQJepCA+KdFwRIFl9nTBXezQhJGOuVZ8A
 MEXBrP3W0HmM4d2QXdDAY/5oUmXZDGlt6fTdaJGro2zL3pxsGqaqSmYNM2sVb6tTx2io/mf
 cMQDVrUW7C2TAqJpnQ/v71O1j7DHvSdjW0FBi241wX72rbvsKTis9kWzH+tBZ1Z/jRKm5mR
 drU6WKgXWiT3uTNWi6/4A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:EDNWHl46oZE=;va7eUL8/jdUBp1M+ANuo8nulHHr
 S8b/oCuM8HdkEyqU/UXaDQ3PXqq+CeYj4sFdZORl6SooNkAwLLEeURRpl3hYv8jLU196J8plI
 0g0ATCelwpt35FHibVAOxnbjA3AwsEVbaO1VG2fVAZJoZfIW1plfkDvnZfC4pimMc5s2UK4QH
 AqxCBZytQFfeezJgXLFx9atkYlOSl7drl+O/K/MHboGtA1kfyuCKlEKM/Jiu7+wOJxqBWCBQU
 toSDjT8AJc3ePqP+5xBbvlhYlqQFlklyOpeDlQjadfjlho+MP+CmmOxAtumc+2irYZw1bW9uk
 cAMqJ6Xf5v9Agj8PSN5kWONA7a7B3XCqRs2V/LJq1woDXmNsa5iGt2PtWo8s4w1l8Ihdsl5ID
 s4+duZL+dZ5SDEGH6Beu9k8Ky8P5Jfh8uJ2c/TCZ3aFRzvNNyKMCepScyVr5wqAxMJeR2eW5D
 LrlzsV2Z2EWmGHTSbqMzWkPCcL76lhZauSQ3mYymDWmTjF6Ag+5z2zJkSxDk/PLUGRKryfKuI
 gbR8egRy0aQouPfyEf6FZooduco8TyWVMp+YzE3j6CPZ3QaeuhYgoFHipjeDs5pJlNx6678tG
 2ihYIM5xDwUrCGXiuubLy4kvnUwhtjzzeNRaKAoPvX1zk/85xgLKRqDPet9bDCg1Dg8vywq3y
 LFGlvYKVUu439FfK8aTjwiIi5Xhb+HBnNYVpEcCo4bDmbFBtFgY+c0I5l8yGPfN21fBMFi/Nj
 yfNnQPcTtaGi2CMHOpxahGAAHu+bpnYfv2tBmRV8b7Ka+aBfv05pCminxUer65DHetVNGhIi4
 WxtgLq4EsKZMoIQf4kNgk12Q==

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
operations to get the SerDes up and running. For now provide setup sequences
for RTL838x and RTL839x devices.

For more information see:

https://svanheule.net/switches/gpl_source_drops
https://svanheule.net/realtek/


