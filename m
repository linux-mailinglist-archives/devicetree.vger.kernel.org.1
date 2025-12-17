Return-Path: <devicetree+bounces-247344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 717BCCC73ED
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:09:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7A08313C02A
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D4636CDE5;
	Wed, 17 Dec 2025 10:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OntNhfF7"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF6936C0CD;
	Wed, 17 Dec 2025 10:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966786; cv=none; b=EVDFhEo0H2ZwDLRE35gtkbdlAgVfHFhaYKNzio2puPX38/TfPHblXhoIXvJ22C2Q4T7Rj8P7k1m740T5cUqtjuKUPX5+osXpiCj4lU4V0jKetkoKEIEUenlPDlO9oLaQoT2z+LEicHcwsMyBfuOr6vX+meUByU63oORrEAYoQGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966786; c=relaxed/simple;
	bh=2xZJiA/e2yEWce3nDQEQ2ahixaohi3k6n/fEjJnLDVQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ullLB7lrJiJBLbiLLYXkvzCjbmCHECwnHDf5GuI+WP0fNLveAz7hZFF4CMvDbEN66fM0PBZfmKMpe/0ul2oeOrcpfHBqfAz9bj1QxDoNzc0BM7XnrgqjbzQf34cSFZ1VmQy5/6I2OR6rX6elQ0APt1TZzpzx+SHPgbdIypfY6Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OntNhfF7; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765966782;
	bh=2xZJiA/e2yEWce3nDQEQ2ahixaohi3k6n/fEjJnLDVQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=OntNhfF7d9lV2N8GLUJ/sKPfqS18zk1FNNbdcsr3NaP4B/eskj4Zg/Hizy617XaGK
	 cjdiFqWj8euh3B2en13vjdHrYf6u2HazSNAhuUs9aGjgNkYz4ScxsTlWpvVcRRnJ5Q
	 aK+nwrcXdHPHCUAUG1H3Jv/WrIi8VtZ9F4SmSrYGdQuKACZj0ZkYKeJeIZ21fm0Ujz
	 IifuSDv+j5ghFc+1P0adzxZRPxYhHEXa2NlCRFo9Q1g3tZWAbJIFmrEeT83jd9HFdv
	 t2WYmpHXWO8cN4SlZ/OO31QbMN1fxzo76MQsvUu9iujHBpi0WwHJqV8sVwZdfCKMLA
	 TzjXL9FomjBHg==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 207F517E1520;
	Wed, 17 Dec 2025 11:19:42 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Wed, 17 Dec 2025 11:19:06 +0100
Subject: [PATCH v2 07/12] arm64: dts: mediatek: mt8390-genio-common: Add
 HDMI sound output support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-mtk-genio-evk-hdmi-support-v2-7-a994976bb39a@collabora.com>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Guillaume Ranquet <granquet@baylibre.com>
Cc: kernel@collabora.com, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966775; l=863;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=2xZJiA/e2yEWce3nDQEQ2ahixaohi3k6n/fEjJnLDVQ=;
 b=5oLNUsgnudzEFOCOy/+7qSe/udDuBy0OSLq5nT64aFW/Rov1ttaxPA8DSnJ3n1tZC05S5cNnh
 2eruY8CsG8zB2GStAjB7GtX516pwXIA7N2h6kGUgbxkFKIAdEERXZet
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

Add in the sound node a new dai-link for ETDM3_OUT_BE to add the sound
output support through the HDMI connector.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
index 5fa1f5fbad18f2bf9b153ae9a029829641e43023..2062506f6cc523d7797adc8b7e74732be9320201 100644
--- a/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi
@@ -1344,6 +1344,15 @@ codec {
 			sound-dai = <&dmic_codec>;
 		};
 	};
+
+	dai-link-2 {
+		link-name = "ETDM3_OUT_BE";
+
+		codec {
+			sound-dai = <&hdmi 0>;
+		};
+	};
+
 };
 
 &spi2 {

-- 
2.52.0


