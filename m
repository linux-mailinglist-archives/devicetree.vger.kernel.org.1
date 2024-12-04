Return-Path: <devicetree+bounces-127058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE9D9E462B
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 21:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64C86B865E1
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 19:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFAC41E2306;
	Wed,  4 Dec 2024 19:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="d+3YpRfV"
X-Original-To: devicetree@vger.kernel.org
Received: from out-177.mta1.migadu.com (out-177.mta1.migadu.com [95.215.58.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D251C3C0E
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 19:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733339250; cv=none; b=YtFm1zQn4GSNCic7PiCf6igPmJHkHKHVsD8Zww0qUbTNncM/1FCoVnJmsrRej0HfWmfla/RhZNeIdOsOLAMqWhSOcVoa9JWX3xwxaW/EEBxXdY973EQ0p8yFqvurCd2PrmMhXY/umRbnEr7RSDsEUeekFwPgcdKlRV66BGOefPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733339250; c=relaxed/simple;
	bh=1lmPBAarauhw9fo2j79KXl1M8rrUv5gHBcEOuWC22RY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kcka/ilgyTtJrMYjShErX3lU9cLHID8xSXMPnBzTFLwbownbkCgx2iN/aIiPymP0EPNeDIdni7TRuIaAec/DxG7kPZ5sQwD6I6+W9kMAovm+aAYsr7BU+KqrA9JXZcJot8nwHt7Texoqb43/k2Bnqm8tNUN48Oy0R3irpvK4X/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=d+3YpRfV; arc=none smtp.client-ip=95.215.58.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1733339247;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2jDd4bBMDalT9ZxoYHLpyRHVnoZ11E0Z+zGVQfgaKds=;
	b=d+3YpRfV8bJMMNZ+zJ7Aciv82CZF5FknOjrbzQJEiv0QIw5G23aQHgIgEA8hM+bIACt5WJ
	ZqJUwW1T2jj9qqhl4F9djUU+lRrdQmJiXLEb7d6gUKxHe0QinqK54vOq2IW36p5XEyzPEl
	9QM7BPMlDWoVkesz0/ZjkDcw2txR10fETinlnQsXTV+IcoLc9puBfR9xJISNVzjy+msJuH
	bo8P3XQbyUR7+g3D6y6KwJGoLYcYywX+IRgFcyDEVIh6p6k97g9yo7uKd5C92lhAush/BV
	a3mV0jtdZPKZAChNlx00/sm8MWdeVuKLAEsUB5mvOdSL+biEZTWARGFhuxPVYQ==
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
Subject: [PATCH 4/5] arm64: dts: mediatek: mt8516: reserve 192 KiB for TF-A
Date: Wed,  4 Dec 2024 16:05:07 -0300
Message-ID: <20241204190524.21862-5-val@packett.cool>
In-Reply-To: <20241204190524.21862-1-val@packett.cool>
References: <20241204190524.21862-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The Android DTB for the related MT8167 reserves 0x30000. This is likely
correct for MT8516 Android devices as well, and there's never any harm
in reserving 64KiB more.

Fixes: 5236347bde42 ("arm64: dts: mediatek: add dtsi for MT8516")
Signed-off-by: Val Packett <val@packett.cool>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index dd17d8a88c19..e30623ebac0e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -144,10 +144,10 @@ reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		/* 128 KiB reserved for ARM Trusted Firmware (BL31) */
+		/* 192 KiB reserved for ARM Trusted Firmware (BL31) */
 		bl31_secmon_reserved: secmon@43000000 {
 			no-map;
-			reg = <0 0x43000000 0 0x20000>;
+			reg = <0 0x43000000 0 0x30000>;
 		};
 	};
 
-- 
2.47.1


