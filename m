Return-Path: <devicetree+bounces-240378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA05C708CC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 18:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 28D9C29D88
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BCBD30DEA9;
	Wed, 19 Nov 2025 17:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="cffJuY7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout3.routing.net (mxout3.routing.net [134.0.28.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FF026158B;
	Wed, 19 Nov 2025 17:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763575050; cv=none; b=OpR13kB2YhO+oleJKnLEA9/hO6UZ8MY+6gHb3SygPdCHoj90iav4h2pqdYSffoTVM8fz01wpSjr9jhqliIADaDokwf3UPaA4/MigyYQHegYrJ9jvUVk1jO9KKXs+1CKHiV+DSiUgQpapaLDb6YqDtA0dfjX0EpC6YyV0/7OD1Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763575050; c=relaxed/simple;
	bh=/mTfEV4da543b/NvA1TqdxrDcIHmvC4tp4S3kd4Gm/k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Bw6kNufCSowScGTI1adliHhtY3cUBVBXCj5auCNxMmVZb28T6yJ33G3h2kGsPYe8niEXp7nkuB7LWkYS5/7rQR47vi/ABx0sWfDYP/omCqZsXXOtnCfdKtFWuh8LyRz3hIF4AMehD3hBiUQX4LpNuS5AAA4vZWg8A5sWVNTeVIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=cffJuY7J; arc=none smtp.client-ip=134.0.28.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbulk.masterlogin.de (unknown [192.168.10.85])
	by mxout3.routing.net (Postfix) with ESMTP id AF7DB6065C;
	Wed, 19 Nov 2025 17:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=routing; t=1763574699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=HaqPbwPGuRmXKfIOb4hglSygm5f+Q8V0KzyqESLUXrc=;
	b=cffJuY7Jhdmcq9qm/a2zBGBo6pB+9HHg7dIgRCjs/8Mv+pZeODwEPxbt6TqLVKx+q0OdDG
	EWsav4+Bgmg9q9SBmtvgP02sTGrRfcixX38yUCaCfWFOQKUzTuYdQdhr4aq4eSaH9FLUFi
	X/DdZnLN2fAPAkRxElXC5iHc2OP5wiI=
Received: from frank-u24.. (fttx-pool-194.15.82.239.bambit.de [194.15.82.239])
	by mxbulk.masterlogin.de (Postfix) with ESMTPSA id 7C1741225D8;
	Wed, 19 Nov 2025 17:51:39 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 0/2] build full dtbs for BananaPi R3/R4(Pro)
Date: Wed, 19 Nov 2025 18:51:21 +0100
Message-ID: <20251119175124.48947-1-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Frank Wunderlich <frank-w@public-files.de>

Build devicetree binaries for testing overlays and providing users
full dtb without using overlays for Bananapi R4 (pro) variants.

It is not required to build all possible combinations, only for
common usecases and to test if all overlays can be applied.

This series is based on
https://git.kernel.org/pub/scm/linux/kernel/git/mediatek/linux.git/log/?h=v6.18-next/dts64

Frank Wunderlich (2):
  arm64: dts: mediatek: mt7986: add dtbs with applied overlays for
    bpi-r3
  arm64: dts: mediatek: mt7988: add dtbs with applied overlays for
    bpi-r4 (pro)

 arch/arm64/boot/dts/mediatek/Makefile | 53 +++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

-- 
2.43.0


