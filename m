Return-Path: <devicetree+bounces-134024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2729FC830
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 06:11:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ABB016262D
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 05:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3ADD1531D5;
	Thu, 26 Dec 2024 05:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="AIpwEMYN"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B9914A4E0
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 05:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735189855; cv=none; b=keBmpE3ouoZgi6BYl4jvEysT2xfR0CYl+JnhEcSQPIf8FbQ8XMNbar9BKUXyUnwwpohp4GnkPR5QV2/XCdT9S4hEh25FJ3CA5lj7WV++gKiOSe7hrOU1mACcbmNXyMEtovCH5OYyCE902ADQGES2vAbsKn1xhrH6AC6uM9adnPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735189855; c=relaxed/simple;
	bh=ijVMuBSFDdX5Z7CaqO5P/W2hBTKuTaL9cAf+OJqZpDo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WdnFRpVG+TqBMgDprVdLc1zxin/W9g1Xz+gFvs9O3iOqaDe0E5OhPfd1YRZgnIYa4RPeujzT8JVLbmo4rEnshBLOYeLFNEE3U7a20Zpps5+9gjxwbuz28s7AaTQ5Xpv/YHSpXgJ/XJN71yj1LpeS1wY5TFMnZAfinO9S3C5Y44o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=AIpwEMYN; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1735189852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FCtQxe3UgNrzJxC3+A7Z9vKRxu+sFJgDjgkXCte8ayo=;
	b=AIpwEMYNmwUWc7IACElrVCsrDkBXvGOVUA6Y/XlseKJ10jyMnKQVnOeDZ7PP8HHUKk3O7E
	GsQEo+oAJa2q+MAAlwM9AVAcO0VyIfGjGzw+2Q2F7PcEQkqavnrLeuLioE1KNLGuB1ZrLw
	c4BhT7EgRURwH9N6HoBJGbACifMOjoR05HntRCdJ5dDDWQ74qQUFsMatVra5/JInJfPy3b
	6ElOZS+Xn1W3EDlt/OytZUFlOZBONyyp3dAc7a3z8xZP+QsFY6hqPEcGhnCIjm/WYhWY6O
	yRZaVozrIQgIRhaTnC5cGQ4ZjHy3pb9TkHvjB1apOVSPqRYo+UVsIokr2NGtkA==
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Eddie Huang <eddie.huang@mediatek.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Javier Carrasco <javier.carrasco.cruz@gmail.com>,
	Fabien Parent <parent.f@gmail.com>,
	Yassine Oudjana <y.oudjana@protonmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 5/9] soc: mediatek: mtk-pmic-wrap: add compatible for MT6392 PMIC
Date: Thu, 26 Dec 2024 01:58:05 -0300
Message-ID: <20241226050205.30241-6-val@packett.cool>
In-Reply-To: <20241226050205.30241-1-val@packett.cool>
References: <20241226050205.30241-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The MT6392 PMIC is equivalent to the MT6323 in terms of pwrap.
Add the compatible to use the same configuration.

Signed-off-by: Val Packett <val@packett.cool>
---
 drivers/soc/mediatek/mtk-pmic-wrap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
index 9fdc0ef792026..59611ef0b144f 100644
--- a/drivers/soc/mediatek/mtk-pmic-wrap.c
+++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
@@ -2249,6 +2249,7 @@ static const struct pwrap_slv_type pmic_mt6397 = {
 
 static const struct of_device_id of_slave_match_tbl[] = {
 	{ .compatible = "mediatek,mt6323", .data = &pmic_mt6323 },
+	{ .compatible = "mediatek,mt6392", .data = &pmic_mt6323 },
 	{ .compatible = "mediatek,mt6331", .data = &pmic_mt6331 },
 	{ .compatible = "mediatek,mt6351", .data = &pmic_mt6351 },
 	{ .compatible = "mediatek,mt6357", .data = &pmic_mt6357 },
-- 
2.47.1


