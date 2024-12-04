Return-Path: <devicetree+bounces-127054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCADA9E4416
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 20:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96E4E281CFB
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 19:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B62811B4130;
	Wed,  4 Dec 2024 19:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="cg5XFyfW"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E683A1DB
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 19:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733339214; cv=none; b=NeyvuyOn371zY76pp83cb2kGGa2mKJrZPjlwoMMfJnH5eCGvQfC53ICYip6lF2YXYFtnD2KNANLXLbW6tNWOEkqPx/DlmjFUlfqEcGjhcUjM4MfesxVEBw5ibYaQgX4EqSZADn0kIVCSrk+FxgJ4wBi5O6alFkcg1zse63E4Oe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733339214; c=relaxed/simple;
	bh=eUKSN5vKrqhW8FK5cgPw/vpHyjEc3geIG/6GnQCVg7g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ah1l/aKP8OcSLKifdRHNhVzlSJIS8RhSOMmw5VPFopU+b0gd31hwuKprpoMhhWYZX5lBvNbnFyxQnU0CZFEaDoAv64eVvmDz9twmwsusGC4rV+gbUGB4QfG5mJ6lRAKNvT2kv2eYiP/YuSD0ATAMLh9sypN7FrV090JsrxxU4iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=cg5XFyfW; arc=none smtp.client-ip=95.215.58.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1733339209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mcTkKmanEr2PwIBSDfsP1SV1PVVrlfYHu7XxJmfmhzM=;
	b=cg5XFyfW8RsFUMmzJaSf3HHB/rVwd2UQLS2TVrGKys43akX+iFMEvIT32KNHIEU2QXtI3t
	8Zqmlyn8LehNz5qEwULhK2wAzaCnUCTskV+Cm5/+VpVs7uKbn4VXyGJV1TzxmUiBhnMew1
	Wbm9SHKk6CnfkRNSnkr9CEDHfBCQPR0NMknfEXi5BEgUpEcbelwcVaX0+xSgspFjvaFtT/
	y6MlJKRJe/rZO4z/gvY727A029id+Cy0mpmTi6PNXryvkyK8lzG7IGAOoOc/1xPKd7GpQS
	kQQKXPZ6wH1pp4Q5otv/O4x6w58mkWZVz8n43NGknj5ccJ5Omte4XdnHrqjPVA==
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Fabien Parent <fparent@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 0/5] MT8516/MT8167 dtsi fixes
Date: Wed,  4 Dec 2024 16:05:03 -0300
Message-ID: <20241204190524.21862-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Hi everyone,

I've been working on mainline bringup on an MT8167 tablet I found at a
junkyard sale (lenovo,tb7304f) for postmarketOS :3

This first series consists of basic device tree fixes for the MT8516
dtsi that the MT8167 one inherits from.

The changes that follow add support for the MT6392 PMIC, and that's
mostly been implemented by Fabien Parent back in 2020 and not merged:

<https://patchwork.kernel.org/project/linux-arm-kernel/patch/20201027181157.862927-3-fparent@baylibre.com/>
<https://patchwork.kernel.org/project/linux-arm-kernel/patch/20201024200304.1427864-2-fparent@baylibre.com/>

but I have a couple changes on top of those patches (like adding the
missing mt6392_set_buck_vosel_reg). I'm wondering what the best way to
get this in would be, should I squash my changes and submit the "final"
patches with a Co-developed-by tag?

(Similar situation with DRM nodes, not merged due to "concerns about
the driver architecture" in 2021, now missing GCE/CMDQ mailbox props:
<https://lore.kernel.org/df4c57f9-115b-c4da-e656-e4bdec62c2d7@gmail.com/>)

By the way, is anyone familiar with PSCI cpuidle/hot-unplug issues on
Mediatek Android devices from around this time? Specifically on this
tablet, I can't make the cores come back from suspend. I have
investigated local-timer-stop and arm,no-tick-in-suspend, Fabien pointed
me to the mediatek timer and its required clocks, but nothing helped.
Trying the psci_checker, I realized that it's not just suspend: they
do not come back from hot-unplug either. Initial CPU_ON on boot is fine,
but then after a CPU_OFF they do not actually come back when CPU_ON
supposedly turns them on. Now I can't help but notice that the only DTS
in mainline for a device that came with Android, mt6795-sony-xperia-m5,
does not have any cpuidle nodes in its SoC's dtsi either..

Val Packett (5):
  arm64: dts: mediatek: mt8516: fix GICv2 range
  arm64: dts: mediatek: mt8516: fix wdt irq type
  arm64: dts: mediatek: mt8516: add i2c clock-div property
  arm64: dts: mediatek: mt8516: reserve 192 KiB for TF-A
  arm64: dts: mediatek: mt8516: add keypad node

 arch/arm64/boot/dts/mediatek/mt8516.dtsi      | 21 +++++++++++++++----
 .../boot/dts/mediatek/pumpkin-common.dtsi     |  2 --
 2 files changed, 17 insertions(+), 6 deletions(-)

-- 
2.47.1


