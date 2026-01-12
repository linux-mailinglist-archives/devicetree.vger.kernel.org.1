Return-Path: <devicetree+bounces-253783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1905D11594
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:56:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 785AF300E154
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93D7346771;
	Mon, 12 Jan 2026 08:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cDkd4ehE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5293128A0
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768208160; cv=none; b=iz4D7MxiJwFrF8FKXUoqxbwcXh1VNNyOuBNR2iwWlJZM0V+Fuylklg03VjIdOfpBuDScW0N3rd8mBsc5CL61cx4H6DpGcroAAq6n7BukgLXEPOeWpSKIwVeAKB3wuTx9F9Vyq59+EyshFOlVUngNNuUKQpRfVoNvleYwIgdmF0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768208160; c=relaxed/simple;
	bh=jRGaMmxXI3uTP2Vva5lopXBfXq27vJVTo2belGBI/mI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZpId4QTNgoSQ4/bSVFtOz8Pu9FL1bSXRTVLvHA0ZQf2uRSVnsYSip+mqS+zvprtFJfhSqcnvAxnFTMhvFoSXzVMBgReVKbJ7SzyhOsZFOTlrSDggbiFhWQ+IwMEsxuRLc2BfV1tOsokEDULeJ58tKDXvwMa3hL3JA68tPdxvI0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cDkd4ehE; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a07f8dd9cdso43713675ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768208159; x=1768812959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QBSIQiFn1pJ8WxGR+6gHaHWmEyf1wSX1ElHds5zTP8w=;
        b=cDkd4ehEHo41X/J0dVX6vX0WXriPi098GP3mRA0PiRsIxCX3CdR1HjQzzLRGmi5saB
         VGxnxN4KVVTkv8i/KQFm3m8ftigyjblHpLn4QeaKxGguWHDqbzTOhzUWBo5BxGZ7f+Pk
         sLw6x5PNT1V/Hf6QL0EQRAFDPKvCL5Fs+NE0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768208159; x=1768812959;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QBSIQiFn1pJ8WxGR+6gHaHWmEyf1wSX1ElHds5zTP8w=;
        b=oJHejcpaWdH6sRZIkPMLIQ9djf7gnOEgVe1l4kfcZs06+fjrYeMV2Eu27y4fTVHtjo
         dsIOGuCzYk4zrB67lFYcTPLEx/CkvrMXvCkWEpgdheKreUPleZXriwn0N2AaRC5WeQEU
         D23uK3HGsCPFLCdcy5wZG/GKka4ggqEBiDBGPVGncCeomrXbhJymryl9OVV0ns35UviO
         pVknnQY11TzdxnSQDZlCRr59g/DZsjXgR7LxjNrsEjMe81F9pd9rROTv97vxfkYe/z/1
         qyp1gCY+0D3AKWod20PqolXL4DIBrPNsBBPPOHkD6Gc64vPv55iGgOXk36OsYS4Aa0Cq
         Hneg==
X-Forwarded-Encrypted: i=1; AJvYcCWTto+xY66Sy4hNf4U4dh0mWQgysnq1c9b27eWrJrhUWM0PKxizB7S5DHO0i05JAxKOKiMw8csQOnQ7@vger.kernel.org
X-Gm-Message-State: AOJu0YwcA41S+gfAZZXkX+YT+h1+cuEK5bgZuwuhISqDYsCG0RKkc0AB
	7YjLVumWvhqx5VZhPcBK127LcY16g7rqnG/9Hna0pMeEWfA6pzX+7vYFq+Mur9STKA==
X-Gm-Gg: AY/fxX767IHSn50AShHc73NOlg3GIqAz3dqiumJ2E4FtGpBhVoG9eCG9sZIjIQLT6rX
	oVBHXUT640M1zpISH4aAJygNIpuxUUVtzUydHA+/fRz126tmfiX2CjfUwjfvrQVWVc7VI/LMwh1
	xbQx33+2eE98BqtOu53/rdNZdDATq9RKVh6FcwksjrHuIdE+/5v89UkCkVTxISQxaUSoCfWNrkE
	Ea4h7AypbRKXYEjy34CUZf8CPCc/rFdLtnRws7MD3IenGk+oHTGGLZPDjhSrNM3TwkgBofLGXFD
	j6D/qxnL/nyQ+hn6tcaUQKcfwXNmjZgYDLmCNu+i47GyuyYfXlgOK/ybPJEfEV8zWtC+poZ6IKu
	pE08OBEqOcf2XrktZVV48bkDORqezSjJCzRg6akKqz/cvbn4/W8nLwlSycKldoqrLndzt8PXy50
	R02+INfr922QXQZcid2iFMfa0HppHuF5K6btJVhVKE6Y7T7IdFqFEB7wFnuggijC4k6q8=
X-Google-Smtp-Source: AGHT+IGtB+k7knNOCZZSJhn6Was/koQjz+fojMEFU4VcO+xFjd8RphFsKRaQZGCbTaB+WqAm20+R/w==
X-Received: by 2002:a17:903:2f8a:b0:29f:251b:c9d7 with SMTP id d9443c01a7336-2a3ee40d593mr149472035ad.12.1768208158695;
        Mon, 12 Jan 2026 00:55:58 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:aba6:4082:c9d:6c7a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c491e7sm170227935ad.38.2026.01.12.00.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 00:55:58 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Macpaul=20Lin=20=28=E6=9E=97=E6=99=BA=E6=96=8C=29?= <Macpaul.Lin@mediatek.com>
Subject: [PATCH v2] arm64: dts: mediatek: mt8188-geralt: drop firmware-name from first SCP core
Date: Mon, 12 Jan 2026 16:55:42 +0800
Message-ID: <20260112085544.2959250-1-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Arnd pointed out that having firmware-name in the device tree is wrong.
Drop it.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Drop fixes tag

 arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
index 7fedbacdac44..8e423504ec05 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
@@ -1166,7 +1166,6 @@ &scp_cluster {
 &scp_c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&scp_pins>;
-	firmware-name = "mediatek/mt8188/scp.img";
 	memory-region = <&scp_mem_reserved>;
 	status = "okay";
 };
-- 
2.52.0.457.g6b5491de43-goog


