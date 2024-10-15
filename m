Return-Path: <devicetree+bounces-111709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9F199FBAC
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 00:48:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43E532849C0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 22:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216411E1A0C;
	Tue, 15 Oct 2024 22:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="CLcTQAXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF821B6CEE
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 22:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729032505; cv=none; b=a3Rsq5OO4h+tCmRVEWiim/Hxbi73n2hlMWzjYXZtBqdceyBJzfqJU38rbsDNaKAc1XkdmsJ6aUR/2iuybK/SkDhbuPZbXnsyqTI9zgX5UQmxJcHkENwzT/hNwNJe26p5e+2U/UgsHrkb022VypR41+K/0MT5jWj51NfsUa8lLPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729032505; c=relaxed/simple;
	bh=5OWm1ESXfuTgWbEeZNMScug/6ToTuJ9Ns98iHAexnI0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=h4r+Rgg7ML4kq/j2wS9KMe9FBJPUm18bvmKKN29hLgc/ygfpy3yiW6oqta8AKIp20c/jM1bm+6mbIeevgnvdPOT1klGq+gVunkSC9/bO6NctaFR1tvcKxqMXSoO4nGRNUvMEdu0POgmNS5Ul3IeIa/s8512ZjzzDbOZHXB7FDn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=CLcTQAXq; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=+GbmbIChsY4kB0
	0LBWSR3AoclZrf9Upz8iPH0udnEic=; b=CLcTQAXqaWZyi7p4upyKz9cf7GgyT9
	vO8RQdqhNw9/FHuNXl6UXZ9no/myuC/5Ub37Jqb/PvrJPnpI/lhLjfMui3AvoDfV
	uHV0zI8x4HsrpTbeC2HVaXIIapB9pgfLmIQGFwzJnvEX5iVqBSuipfKVGaOS9W0U
	pFdIPhMjvElyNG/U3SGN4BxMZiZcvAnh9XPmEL9Y+BSsRiqhs8vBq0YGXtfM2FT3
	T9a7D35j7B+bqOKjg5INRr2/sKFVL8KNlknae/9ASoK+kOsqWXeqgaVuWus98S37
	3wJO9qSYrKJkqJEysumX5HdU8KMDxRU0sc/qV0zHqg/FR/PZKUPdj0gw==
Received: (qmail 2861113 invoked from network); 16 Oct 2024 00:48:17 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 16 Oct 2024 00:48:17 +0200
X-UD-Smtp-Session: l3s3148p1@7ynLv4sktrIujnvF
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 0/2] ARM: dts: renesas: r7s72100: add DMA for MMCIF
Date: Wed, 16 Oct 2024 00:48:01 +0200
Message-ID: <20241015224801.2535-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As the DMA enablement patches for RZA1 are now in linux-next, the DTS
DMA additions for that SoC can now go upstream as well. Tested with a
Renesas Genmai board. Let me know if you have comments.

Happy hacking...

Wolfram Sang (2):
  ARM: dts: renesas: r7s72100: add DMAC node
  ARM: dts: renesas: r7s72100: add dma entries for MMCIF

 arch/arm/boot/dts/renesas/r7s72100.dtsi | 33 +++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

-- 
2.45.2


