Return-Path: <devicetree+bounces-246376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0762DCBC59B
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 04:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C74E3006F74
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 03:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4D02749DC;
	Mon, 15 Dec 2025 03:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="NCG8GO46"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499D8227B95
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765770477; cv=none; b=ZJ8XZGk+i/mK8HpISwnX3DAOkgYj6MDH+THfHX9gaVdisUe4yxtcF+Z3EtU2QTj/fESQ5VnoS9uAl/9GljIoNyI3USmN83BEv0Ku7aASRlNix7aOOGw58Nec9qI7HSFfyNlXKERHJz6MAgBVWLYBWUURP3SxXhyIMREyzHuv0ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765770477; c=relaxed/simple;
	bh=OtKDT+T/M1dVnVm4OGgKuKtouLqd6fFQ5hJIA3DyJxc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=IhQ3qVKX3jHbvhBd02ALvBhNChrkNlOh+GYrGE4sZtFQjhQH0e+XRjWpbqu9j//Oh36lcUoFbNsh1umAGtKlZq1QF5z+WuBzlyNOzEiZFVBRJywdslQipQfAO7lImsa9Jj+k5HJm3FosoWVEfs3TujTWoTc6eaibooLwYCq6g/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=NCG8GO46; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-type:content-transfer-encoding; s=k1; bh=o
	VqFujpp5K4ESQx8qmu1PaJRDfadOAPmXO4OMuYurTI=; b=NCG8GO46XCyWi1ROl
	3S27l5w0yHgBWSXi7TeVkoEall0Yi1E4IXAmMt7i1oOlJC0juJHR7vfu6Bibdf1J
	OUBebHyMvTq8LS2Y3DrQ03o/0/RDLV3WHD/N5c6TnEEJVIPaluc/Ajafo+/Y+tvp
	cZeNRMSzQXcFM3quU6Veo5gUr6QiasNyXEtd/ETeUvJPFUWh6a3YWkWZqbz9xV0k
	BCh5/DAVBPgLssBUEBHRMQqLmrh0dx0iy5joLiwmY0yjc+HXgZGxPrN77eyn+W4E
	GPwPzIwByCNSqZ+MdbMrqh4H/gt6mdzjPne3UCN9qHdhsRNI1lkSMjxyUGA15Qfv
	zd4Iw==
Received: (qmail 821150 invoked from network); 15 Dec 2025 04:47:50 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 15 Dec 2025 04:47:50 +0100
X-UD-Smtp-Session: l3s3148p1@xefQePVF5KXN3IHs
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/6] arm64: dts: renesas: Add WWDT nodes
Date: Mon, 15 Dec 2025 12:47:14 +0900
Message-ID: <20251215034715.3406-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The driver and binding for WWDT are upstream as of 6.19-rc1. Add the DT
nodes for the SoCs having it included. A branch with some additions for
testing will be here once I get internet with enough bandwidth:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git renesas/v4h/wwdt

All instances were tested with this script (R-Car V3U Falcon board by
Niklas, thank you!) which needs the busybox 'watchdog' command:

===
 #!/bin/sh
 i=0
 while [ -w "/dev/watchdog$i" ]; do
 	dev="/dev/watchdog$i"
 	ident="$(cat /sys/class/watchdog/watchdog$i/identity)"
 
 	if [ "$ident" = "Renesas Window Watchdog" ]; then
 		echo "* Start pinging $dev: no output expected"
 		watchdog -t 1 $dev
 		sleep 10
 		echo "* Stop pinging  $dev: output expected ([nowayout] + pretimeout + overflow)"
 		killall watchdog
 		sleep 3
 	else
 		echo "* Skipping non-WWDT $dev"
 	fi
 	echo "------------------------------------------------------------------------------------"
 	let i++
 done
===

Happy hacking,

   Wolfram

Wolfram Sang (6):
  arm64: dts: renesas: r8a77970: Add WWDT nodes
  arm64: dts: renesas: r8a77980: Add WWDT nodes
  arm64: dts: renesas: r8a779a0: Add WWDT nodes
  arm64: dts: renesas: r8a779f0: Add WWDT nodes
  arm64: dts: renesas: r8a779g0: Add WWDT nodes
  arm64: dts: renesas: r8a779h0: Add WWDT nodes

 arch/arm64/boot/dts/renesas/r8a77970.dtsi |  32 +++++
 arch/arm64/boot/dts/renesas/r8a77980.dtsi |  80 +++++++++++
 arch/arm64/boot/dts/renesas/r8a779a0.dtsi | 160 ++++++++++++++++++++++
 arch/arm64/boot/dts/renesas/r8a779f0.dtsi | 160 ++++++++++++++++++++++
 arch/arm64/boot/dts/renesas/r8a779g0.dtsi | 112 +++++++++++++++
 arch/arm64/boot/dts/renesas/r8a779h0.dtsi | 112 +++++++++++++++
 6 files changed, 656 insertions(+)

-- 
2.47.3


