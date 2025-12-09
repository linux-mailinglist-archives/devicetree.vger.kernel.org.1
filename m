Return-Path: <devicetree+bounces-245422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CABCB0974
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:36:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BD65C3023166
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05426328B54;
	Tue,  9 Dec 2025 16:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="NN8/y9M2"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBDC32E15C;
	Tue,  9 Dec 2025 16:34:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765298099; cv=none; b=fbH8j2dmZWDW29mEswkjwWSsdGVFrWYBFjE7ZkwMASJgJY8+jfZNw7ouc/0nsjCmN35cNkPBs4AJPMQf+9KC2Zvhc9Z1doEXEzD6Cl2rxTJ3EQHRAGit6Q8jyQtbpkogBU4wGlGx98lR05iHL2bqIiaRhWeJ8eIrFDnY4uP8s/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765298099; c=relaxed/simple;
	bh=rasd2yBAbbleQLS5uLsgb/aOApXHNV+JTG3/osBNvzs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cIuVzBiL5ycLAuuOgLdV0hzX+BsQRZsaG48H3lfs+QxRD3kD4J9ZlUPqj17V+iyR1FCe9KcwR5uhE0gUza0BfSI7igEj84v7xWSqn7AGqrK1617r8Kk/15FkimqyICYh+QFmyiiVJCYf6b/fcmbXu4c8rZnfj3RtRS3GNDB8Sl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=NN8/y9M2; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1765298094;
	bh=rasd2yBAbbleQLS5uLsgb/aOApXHNV+JTG3/osBNvzs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=NN8/y9M28vW2NknSKoW1j4B5FqUTsP+kOxrmZD4l+4Eunp7qDUQJuPB+sFLDWJKZg
	 SHYXS6VRdfbbkCuyopKm5kVXiCCfuCbSgzi+KCfuSguRuPKUmC6a9Rmuc1y/AgxWqt
	 28vctTtqGXwfAWcDJCgGrb3HzHQYifKhWRzilLAJr+iCQDwd3Hn0hrV4KmR/cQRRSd
	 Ky/rXeZplxrz/PMZJ6Ah5SuOO6+TnCciL5EjOXGzoA7Nh2yR7jj8trzF5ATKCYPyDR
	 nq8u6SZgqyuvDDiN2HlBxAeBNKG5M8vBgYi9QhU3jE8h2N/T0w3xWdCebO4+OPOPPI
	 6lKGdLOwH5tEQ==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A882917E153D;
	Tue,  9 Dec 2025 17:34:53 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 09 Dec 2025 17:34:41 +0100
Subject: [PATCH 11/12] arm64: dts: mediatek: mt8395-genio-common: Add HDMI
 sound output support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-mtk-genio-evk-hdmi-support-v1-11-9a6106effba6@collabora.com>
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
 bh=rasd2yBAbbleQLS5uLsgb/aOApXHNV+JTG3/osBNvzs=;
 b=+2VnhI1Z4qTwcY1U11ptFHKqka4ogIdJY+xGfKzKxWkhI0/yaeVHYZJTC2FkTk3x3okTYViFn
 XOjyqEfy1PFDmaqb3WFHjzw9QAZXrCjWqxcnK9ANLo+va1wJEo9Wm7O
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

Add in the sound node a new dai-link for ETDM3_OUT_BE to add the sound
output support through the HDMI TX connector.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi b/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
index 345fc5ac9e039de8660ae325f36ae6265ef3a7c8..d849af4d36134df6a7b9f7967efd0db13c372d7a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi
@@ -1189,6 +1189,14 @@ codec {
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


