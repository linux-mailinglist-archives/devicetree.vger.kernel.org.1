Return-Path: <devicetree+bounces-130588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8569F07E5
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:29:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E81B28099A
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 09:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04AC01B218D;
	Fri, 13 Dec 2024 09:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C3JRJagG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720BA1AF0BD
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 09:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734082169; cv=none; b=MVvu3/yztUcEyluYKJZhy8HlADrPzBthMz9XnkwdzcqISs9ww+vjavEX3WWc1NQjTzPFpGeYVpszXHeenmLuHnlha3WhBxjAAgb4CLY1F6HgtopNGmVso6V99r2qHpIcP6UJzl87HBn43swLhd85EgnOE48PAXz2SuFvz3qOZzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734082169; c=relaxed/simple;
	bh=yinIFd+zq5HjBKuCQsnbuc+tRxeEenFe+BW3v3K1hpA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=d0SPROLMyBWiNc3c1ZqKaTiSPo5cKOa950P7Kd4O+MRWuoNjje3Ur1nR2PvyYmpn6etvXm4gokxgcDub9T4mf09j9LOxKETSFRcn/j29tEHSrDfSksi0qwr2G8CoLR3qnRccDfcWo2AP5t/wwmYmZF/OmgA/C89F/HB+XhUZYq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=C3JRJagG; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-8019338c2b2so1158397a12.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 01:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734082166; x=1734686966; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6t03VSo/NkHlsh+FX0CoPxMU4wWbqRd5I1nezIlvOp4=;
        b=C3JRJagGi/OicZQiR4r7xyLtoGI/ms5ORQyntlP8Fif4JpGA9CxGL575JZVBOlpuyn
         sNMqXUnO+kWrvdyOsrbYKK7/Z/IXCZC3g8w15K7fhOxIuYEzQ/telo23imrobB/YfGFd
         QL6oqjIIsDKRN/xnpT+WaUGSZfDq0qB3raj7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734082166; x=1734686966;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6t03VSo/NkHlsh+FX0CoPxMU4wWbqRd5I1nezIlvOp4=;
        b=SwOoLqMT5tJvNMk2H8eca2SWx7gcvmmV/hcZJgWouQhMbyjtPgikwVEtUpDWB2a1Sp
         Oqei9CcIBCsENnmteHyJUGjsC8mPikcCpfTN03BxNq34E5uv1AFkZHK9nWNOk50E3ShQ
         SN0gE3OY7hanGdUECy2z5I6HCFf/a3OOQLYngOFD91RaqmdXRp/O0lwdkTK9EItpD5bF
         A9YCyWeAZJHG5vhz+WNyPPIBEikQ87VT/ted4mUC9861ER2t41PX024jqWFx1v9p+oin
         tF/jPLtn4sGa2Ez1ha5EPbmiiIYYaU57ywroGh2X0xLDKVoybiD5AtEkWYA1089hea2l
         gGwg==
X-Gm-Message-State: AOJu0Yx7xpp8gFAxZ+pek0trzujZsUmtpwtwG4eyiPohigIXW5H0FsRZ
	1UQRofiorAd+u10jbr4oymFWZwo5R4QpPgDN9ZLhV8bx55hs4oFVAKkcvsX7gw==
X-Gm-Gg: ASbGnctexXIwR2ma/UojRpCXnzP0mZw8jt+AMQ3Ljrw1+frfAo7gBCMsOw3JjFhDhfs
	cSy/EGnXxsGmMKFXJKv+t3PK3SsBPpbXEHhBiwdkG/HL8jFLc1SHnVFE7xJ4Ry3Wn/VSmLW6PM5
	sVtxq/FEAZRozbFb4LDbJ3VN1aelMa2jY2DJVH0msCOyNyl38nal0NRA5aNdb+BCF6uVgqxeau5
	/1g8bb/Pry9KGox0hYhhYJDOK6BPh3EUI+XiknslPAjj7xrp0K3ldB1I/WwDdqMhYACNShN8lz8
	XFVs740FYBmD7D1QIm8BBJlup0SS1tbgG0O6PkDh1no12Kw=
X-Google-Smtp-Source: AGHT+IFVvckKPZkGAO6T5Pb8DWTggJU8BHRz85vU+mCYNsL0QexjIl0XaTItdT0xzRVlKw/f7tvSpw==
X-Received: by 2002:a17:90b:3b52:b0:2ee:9cd2:a589 with SMTP id 98e67ed59e1d1-2f28fd6b4b1mr3333710a91.20.1734082166620;
        Fri, 13 Dec 2024 01:29:26 -0800 (PST)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f142e0ac42sm2733070a91.36.2024.12.13.01.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 01:29:26 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 13 Dec 2024 09:29:22 +0000
Subject: [PATCH] arm64: dts: mediatek: mt8188: Add GPU speed bin NVMEM
 cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-speedbin-v1-1-a0053ead9477@chromium.org>
X-B4-Tracking: v=1; b=H4sIAHH+W2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDI0Nj3eKC1NSUpMw83TRjY8tkIzMTi7Q0AyWg8oKi1LTMCrBR0bG1tQD
 317s+WgAAAA==
X-Change-ID: 20241213-speedbin-f339c2648ff0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

On the MT8188, the chip is binned for different GPU voltages at the
highest OPPs. The binning value is stored in the efuse.

Add the NVMEM cell, and tie it to the GPU.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index cd27966d2e3c05833f11294cfa8f6a984d4e0dbc..0e865f5083b475c6e33cf6a0ce51d2b615af7850 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1752,6 +1752,11 @@ efuse: efuse@11f20000 {
 			lvts_efuse_data1: lvts1-calib@1ac {
 				reg = <0x1ac 0x40>;
 			};
+
+			gpu_speedbin: gpu-speedbin@581 {
+				reg = <0x581 0x1>;
+				bits = <0 3>;
+			};
 		};
 
 		gpu: gpu@13000000 {
@@ -1763,6 +1768,8 @@ gpu: gpu@13000000 {
 				     <GIC_SPI 382 IRQ_TYPE_LEVEL_HIGH 0>,
 				     <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>;
 			interrupt-names = "job", "mmu", "gpu";
+			nvmem-cells = <&gpu_speedbin>;
+			nvmem-cell-names = "speed-bin";
 			operating-points-v2 = <&gpu_opp_table>;
 			power-domains = <&spm MT8188_POWER_DOMAIN_MFG2>,
 					<&spm MT8188_POWER_DOMAIN_MFG3>,

---
base-commit: 1488143f901e04e132722cb093613e8d019a4ec6
change-id: 20241213-speedbin-f339c2648ff0

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


