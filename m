Return-Path: <devicetree+bounces-86675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A85BC937317
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 06:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1C13AB217C5
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 04:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14462383A3;
	Fri, 19 Jul 2024 04:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cUMJnpS/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5A21B86F8
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 04:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721365118; cv=none; b=eqdaICZMDUIRQ8skqSSBbZmxgBpEmno8jPEr+qgan1n163LbWr/wF2KVLX4gSWS8NH3Z8KmiGl+dALEBBl6vvcc+wlMSXfH+75xMPb+gmPFB/47ycjg9FACsZXE1egMx7ewLjHyDRJYfgDIMMX/SGS701x4dV+5ktNiPL6C0co8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721365118; c=relaxed/simple;
	bh=5grUOfL+eh719ngtKJNkvdJNeKiogylOPeMvpQawcDY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CFplK5i+OupcsNLCrPFW0e9LhAmM7m2vW3J284ez6eCdE3uHLVEfNOBn0urgEeFQv0TL6t6tCaNjYSTgLKApA8ryafeYbL83C+xnmAmcRGaHd43fkLmVCKHw3qmBCKoETVrtuOYyi9kbJfKCs4d1VfNbHD4G1RExTvqHqxC8KIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cUMJnpS/; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3d9400a1ad9so890750b6e.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 21:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721365114; x=1721969914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HvPAyIWQtNqLx7WUlcX5/vDSF7IPzDdVVmoFWrTiQJU=;
        b=cUMJnpS/0gWmzD4Q3+mcgCwiOGe9Dc1OtOhIjXRYovVCCUY7I3VYCn+gnm7Xno/JV9
         1wu7acjXYpSCJIUDO+2nf91MHKhP7xhX9wET0uzUXQDejeGWMENYsV8HkIcpL91msBdO
         NkEvDrI2guvRGI6sFod2e/+1kAGYYBB2fdvkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721365114; x=1721969914;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HvPAyIWQtNqLx7WUlcX5/vDSF7IPzDdVVmoFWrTiQJU=;
        b=fZF025Ab1jJs1HNAhlyJGaELJqb9GVELobfP5IjVkkaYlUy9O+T5ji6+MiF7kNXHWu
         5pD8TmV+NcWwPal9WdN12oSGzUhHncvz4Pq7tIQEB0lrWm1b70alNFcfsaT6wbTlQDRX
         6d4CzCqx+NkyJYXeZOtUj/Xcs99PtYhD9Z/NcEUXbLUPDS4XqErIXJT1S71VvAOKk+ce
         csMZXts+eH0h5jdDd3M88KeEZVfgkVEUj5w6ggmV6QTMU/AYwLM1B4PzWAh/Ucn3935P
         LvjemCB2yPZwaaXwmbPXm0b+IHZBSSx6k7rqJ9mdtKZXdR0t+Tv61W6+EoG02gxf6DWM
         YPpA==
X-Forwarded-Encrypted: i=1; AJvYcCUcsVi7V4DgGadVbtsK99oRwUYROvJaOvqk+Z5qZOzw0++JnOPJbSdNdHjZrysXpr3INrz45o2w8qOcXN+4HfoXKHRNDESjex2lRQ==
X-Gm-Message-State: AOJu0YzCgCyqTRW0g6iDddKqjd4es76nW9kRWcSX98m+Xfo5SHYsHXuT
	PPIOYWxnS9TjeK0wXP/+c0YbBEDwXPfeLhnVZixSBhABwC0iQsCaD+8g+5Cubw==
X-Google-Smtp-Source: AGHT+IGpiUr+CwP2dyLNoFMb2Gyi+iGSCs3Az6ihXhSH1HtJoGXSvzeVXRwA6MyZOfyivrJ/f6qmBA==
X-Received: by 2002:a05:6808:300f:b0:3d9:dd2c:f1e3 with SMTP id 5614622812f47-3dad521abd7mr7316927b6e.25.1721365114323;
        Thu, 18 Jul 2024 21:58:34 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:4760:1d59:4f13:7c6f])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-79db9fc1dd8sm422310a12.84.2024.07.18.21.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 21:58:33 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt8186-corsola: Update ADSP reserved memory region
Date: Fri, 19 Jul 2024 12:58:04 +0800
Message-ID: <20240719045823.3264974-1-fshao@chromium.org>
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Corsola firmware reserves the memory region of [0x60000000, 0x61100000)
exclusively for ADSP usage.
But in fact, a 6 MB "hole" of [0x60A00000, 0x61000000) didn't get
assigned to the ADSP node in the Corsola device tree, meaning no audio
tasks can access and utilize that memory section.

Update the reserved ADSP memory region to fill the gap.

Fixes: 8855d01fb81f ("arm64: dts: mediatek: Add MT8186 Krabby platform based Tentacruel / Tentacool")
Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index afdab5724eaa..0c4a26117428 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -169,7 +169,7 @@ adsp_dma_mem: memory@61000000 {
 
 		adsp_mem: memory@60000000 {
 			compatible = "shared-dma-pool";
-			reg = <0 0x60000000 0 0xA00000>;
+			reg = <0 0x60000000 0 0x1000000>;
 			no-map;
 		};
 
-- 
2.45.2.1089.g2a221341d9-goog


