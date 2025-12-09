Return-Path: <devicetree+bounces-245420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C1308CB0959
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ED22E301764F
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72DE132E69F;
	Tue,  9 Dec 2025 16:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ISpgg3mI"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E875328638;
	Tue,  9 Dec 2025 16:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298097; cv=none; b=HB0k/iwSOGY6oSKuCqjIdhwOOa/q20HMk0ySvQqYLsf/g4wHxEUiZPqnWQ3iQa2WVpmWufxw7SzvyoWkFBtwM/TZDeeHkV5FYa13ErpqOfZJ+KIlNv+fJTRXMg4R2+OGYPasgYpc2diVUJriMqpDxjek/MIE6TInt3IBdfeLCz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298097; c=relaxed/simple;
	bh=GKcOSBIVFDnp+GUxDrITE/MDL4om5/OvUq+7HaEF0uc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P7/FzBpGU9toMFZ+bnT4udPhK54o63wLHVzCPszfj6fSzSbgZhdYxe+f3zo7RhWkGvXl8VjMwdDw7doov+m+A0+MqAFuNEShvJmODIh580nXCrnNrrJ6WILqJzSmVyc90dFHadw//qmqYWEW+GT/dcopaRhJa49rtOqZgGrFuNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ISpgg3mI; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298092;
	bh=GKcOSBIVFDnp+GUxDrITE/MDL4om5/OvUq+7HaEF0uc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ISpgg3mIxI6mnE36Vy8Z1cYPMIQc4Hdygxp9kHJdDq3sBqfEberI46Autv5Mjmcfu
	 YwjpSd56VoZ/eOuJzMzpCX8ryEO5rprwDyDPWsvTd31p2SgOIQlpOmT3u39gFB/ubs
	 c1vaIkHs5Yk7+oiLNJLioRbEiTyEP6DlrMsIu6jaIUr/Xg+p9TLkoZvTYqYoYVIEyg
	 nGoxAgKFTDU1T4QHF/9Fjts7jZWEQCowNOwl9q4XG8xQF44dGZVt4gBDhjlzYWBoj1
	 7swDMlGGn5bn0nohZYEU/3s/SkOruQ2JTaHgs8f0K6yBmHy5xpJ2FK5IlyOuvlLFQE
	 GpEhRcQGR8Beg==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E6D4F17E13CD;
	Tue,  9 Dec 2025 17:34:51 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:39 +0100
Subject: [PATCH 09/12] arm64: dts: mediatek: mt8395-radxa-nio-12l: Add HDMI
 sound output support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-9-9a6106effba6@collabora.com>
References: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
In-Reply-To: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765298083; l=861;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=GKcOSBIVFDnp+GUxDrITE/MDL4om5/OvUq+7HaEF0uc=;
 b=rrmm0qHNwHdTm/aW+yZazeF7J3LgIjWtXHF8w93CGmE4Mi6ozvcZU/F4yZTeVzon9j57pjJ7L
 EyYnCMi0TqLABHSjPYIofSxAWCtJWfqSQ//oe9/Jvpkf5NCQpGjmzTg
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

Add in the sound node a new dai-link for ETDM3_OUT_BE to add the sound
output support through the HDMI TX connector.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
index b0e18876bd5d2341c6f17f47e9f11433be807ccd..1cd4b84e98615be6c5cb13d01b7baed0e017c3be 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -1072,6 +1072,14 @@ codec {
 			sound-dai = <&pmic 0>;
 		};
 	};
+
+	hdmi-dai-link {
+		link-name = "ETDM3_OUT_BE";
+
+		codec {
+			sound-dai = <&hdmi 0>;
+		};
+	};
 };
 
 &spi1 {

-- 
2.52.0


