Return-Path: <devicetree+bounces-133154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEE39F96B4
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:39:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB7071693CD
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 16:39:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75C9521A453;
	Fri, 20 Dec 2024 16:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b="BAHTSbKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout3.routing.net (mxout3.routing.net [134.0.28.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE24121A428;
	Fri, 20 Dec 2024 16:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.0.28.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734712740; cv=none; b=OizhPXua0uaH1ZAAKzPeBqZsZE7PWz15/UIgRxQLVNvZB4UkZ1jGctzimqkZEjPQ3k9FM4QZDLiaCeeSl+m5DWEr3FE0rHtCC76lDeJhDKV5eDCtcjwH46f1FMzASCSE82bdST2RErlQf2CUZ5EX8o1rRsKUaU/btSVO8KTYlKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734712740; c=relaxed/simple;
	bh=UAG49n0poROrbxq4X9Zd6nLmHNNn29/SwyYKpwzMmWs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hOtetkjaD49E+JQ1ZHQ29e07wa2PXrsexytUmF3abUWxEAvBsq7j2nF1zJAZ0Uf/GhTpq6SflqP8DvhbI5nL9eRyHa+0fntZXFVgd0zLDGzgjL6gv9WYM6FC1gJhVhcXqbItXRFEZz7McV7IAeYVvk4MVMkyAWyGoWkhHTvZo/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de; spf=pass smtp.mailfrom=fw-web.de; dkim=pass (1024-bit key) header.d=mailerdienst.de header.i=@mailerdienst.de header.b=BAHTSbKQ; arc=none smtp.client-ip=134.0.28.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fw-web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fw-web.de
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id 1367B605B2;
	Fri, 20 Dec 2024 16:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1734712730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=tjYgt1CQw58XuCylkrFISW4zKmVrf7CMBS76y+ruTbI=;
	b=BAHTSbKQK4W3U7BmKkj8afDyFnIaqJf7+r6MPsHSB3CRwE90axCkmOQYML8uijPZkVXFZO
	axEdZyiSb4qQscOdGCFAaTiaaU/UkrieED8xCeyuC0bQhpnUaCks7PQHU8BlH0cWkJ3o7f
	YAB5tMeO9/bfHZyFjBfy5xvuj8ZhOJ0=
Received: from frank-u24.. (fttx-pool-157.180.224.233.bambit.de [157.180.224.233])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 35BDD10009B;
	Fri, 20 Dec 2024 16:38:49 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v8 0/2] Add Pmic to Bpi-R4
Date: Fri, 20 Dec 2024 17:38:34 +0100
Message-ID: <20241220163838.114786-1-linux@fw-web.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mail-ID: e374b4db-7a48-4573-966d-86f79ee2b1a8

From: Frank Wunderlich <frank-w@public-files.de>

After these 2 Patches are dropped from my dts-series [1] i verified these
with mtk and changed based on this.

The problem was that voltages from BUCK4 and LDO were not matching the
voltages from schematic.

These 2 are not software-controlled, but should show the right voltage
in regulator overview.

[1] https://patchwork.kernel.org/project/linux-mediatek/list/?series=918585

Frank Wunderlich (2):
  arm64: dts: mediatek: mt7988a-bpi-r4: Add MediaTek MT6682A/RT5190A
    PMIC
  arm64: dts: mediatek: mt7988a-bpi-r4: Add proc-supply for cpus

 .../dts/mediatek/mt7988a-bananapi-bpi-r4.dts  | 66 +++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt7988a.dtsi     |  8 +--
 2 files changed, 70 insertions(+), 4 deletions(-)

-- 
2.43.0


