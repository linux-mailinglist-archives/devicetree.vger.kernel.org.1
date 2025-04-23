Return-Path: <devicetree+bounces-169665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 05825A97DB0
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 06:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C5BE189350C
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 04:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4869A21504E;
	Wed, 23 Apr 2025 04:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Gsjzm51o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32C812E1CD
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 04:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745381042; cv=none; b=PAyfaUmgZINCOuam4oAfYr+NH8dCUSmBibGYnoyCQXW93PpF4Y0cLPQ4PGrPQj9dU0BYtGyCztNN5PLgB7dtWIdQH9L9rNDqTdi4tuhpzYOUn4NGMBmA4fobSBDfQ5aMLZAv1h0s2kY3QzMCSEH/PYGbI1mdK1fdN+5I27VnN/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745381042; c=relaxed/simple;
	bh=+j/hlJqo+Cr2NdAPkpmhUUZtSiMvuhpM0bAG7t2CnPM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cb+/g0SDS8bif9Q8Z74la2hD8HHW36BnL3W4do6qizJHjoMUIlpKzRvxLZNZ3xRnWZHjWsFYPpW78SAuFEUUBQat0LyDL0LALUTaAQ2adUZIrW+8Ya+xC5oxeJglmxGtHZJmn7H/LKqAzafILM9zDa4JQT4DpDi7fnzZtvAqNEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Gsjzm51o; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2295d78b433so69810465ad.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 21:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745381040; x=1745985840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=69P3nlnxBw2v6kIwtTKkT8ULduVaYQnRi8mlA610Ew4=;
        b=Gsjzm51ortokTs6VEJXt6JT4oTxQefmZpW7PQRcejm6WFrIQThxPI/+JgkxafOK7rW
         rpWu0pDAoYUQxSyVjbXbVFsYYUtiKxUHdbPBoFNPjfkBVlgSt1uvJdGMgyxQVTFbeCfH
         cq90psBl2B8xMbu1M+2mSel+W6KRPtQIFu2GY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745381040; x=1745985840;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=69P3nlnxBw2v6kIwtTKkT8ULduVaYQnRi8mlA610Ew4=;
        b=tF/Tli0uM2oUb24K28N2uNWGqv38ul2FPWiYQmn8wLJigNiO7eRO5eVDtXaECUq6Ug
         /xTIIjJesAtUFFml3k7vh/C85q5Jx8vcyG0OlcaVi1gpAsNpA4zyhMoX7nMjM/2IXwa8
         weTOh3i3+I/J1b0Y1RniD7ak4Xocm7FW4YIL0o6wh64XHyXoUktjNC5GRpnHipWuxj71
         O2Z8CkfIJvv1xLcITGeiKcQ6UCa9PmXvl9ZwgC11eleG9BFuBYQTe4u/ADhOuORDFNxL
         v2AO5A33mSUkODYibRn/CqUYoSNQSGwXsG8m6UZDJj2CIv9cZl7lS3Yg6CCFPNPmB6OZ
         /3UA==
X-Forwarded-Encrypted: i=1; AJvYcCU7TQ/QdW2OK3okolZgQ5VdVt0e0Fp+vE1JI2ZksSvGCXQgyd9Ri8uLiSsQrluuQ/O1Gw+E9criEpU0@vger.kernel.org
X-Gm-Message-State: AOJu0YxYMinrloX8+cmChhzc8A+0pRXD9NLDx+blQahKHLBfFLps9hta
	nSrezZwhdd8gN8vB90djbsuEJrZRk/uwongKDh6pF3EvhRMDtskiQ+JAUzkhkA==
X-Gm-Gg: ASbGnctEqIXie6mW32XfoDcvSJJ5EC5ZYo02mMAknFDnqqQHwIiS5vW3m3Bw0EKiSll
	u20EC46CfXfVEZzmV/zDBgQHSqXW7NDyULhhMdvP/SnpU4eeti5nPpy/Lv1EvBsdf6PPxQPemCL
	O2EEoULwi8OY3PYZXhmWsvUQDZDCJSWNQX0UdYtyt/2lF3dhC4sWss12CGnNORh80cmCDYGEy+R
	/t+zpcV3nKtPMOmlzIC2OlG4I/aa4gvYdFm9cCaPOu5HngIJbDtd00as0I2//GKhjdo/RPdTtye
	Zd+QEt7lMPCzaks4p+WsOSqVy5nAHp5vSCldwndBS8hX1jQUGnSvghB1xFfQBXYjFpuDTZJyOJg
	=
X-Google-Smtp-Source: AGHT+IFs37l1XCtk6TUjNGxDgTahK0TxvEQaxIjTsLH7CENRysCfaJj2nfs1pz+8IvfdUhEasSay/g==
X-Received: by 2002:a17:903:46c8:b0:224:584:6eef with SMTP id d9443c01a7336-22c53606ee5mr301444085ad.41.1745381040103;
        Tue, 22 Apr 2025 21:04:00 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:d4b1:49c5:60dd:89a7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbfa5828esm9512894b3a.112.2025.04.22.21.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 21:03:59 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Pin-yen Lin <treapking@chromium.org>,
	Enric Balletbo i Serra <eballetbo@kernel.org>,
	Hsin-Yi Wang <hsinyi@chromium.org>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Nicolas Boichat <drinkcat@chromium.org>
Subject: [PATCH v2] arm64: dts: mt8183: Add port node to mt8183.dtsi
Date: Wed, 23 Apr 2025 12:03:39 +0800
Message-ID: <20250423040354.2847447-1-treapking@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the port node to fix the binding schema check. Also update
mt8183-kukui to reference the new port node.

Fixes: 88ec840270e6 ("arm64: dts: mt8183: Add dsi node")
Fixes: 27eaf34df364 ("arm64: dts: mt8183: config dsi node")
Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v2:
- Rebase to v6.15-next/dts64

 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 10 +++-------
 arch/arm64/boot/dts/mediatek/mt8183.dtsi       |  4 ++++
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index e1495f1900a7b4..f9ca6b3720e915 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -259,14 +259,10 @@ panel_in: endpoint {
 			};
 		};
 	};
+};
 
-	ports {
-		port {
-			dsi_out: endpoint {
-				remote-endpoint = <&panel_in>;
-			};
-		};
-	};
+&dsi_out {
+	remote-endpoint = <&panel_in>;
 };
 
 &gic {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 0aa34e5bbaaa87..3c1fe80e64b9c5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1836,6 +1836,10 @@ dsi0: dsi@14014000 {
 			phys = <&mipi_tx0>;
 			phy-names = "dphy";
 			status = "disabled";
+
+			port {
+				dsi_out: endpoint { };
+			};
 		};
 
 		dpi0: dpi@14015000 {
-- 
2.49.0.805.g082f7c87e0-goog


