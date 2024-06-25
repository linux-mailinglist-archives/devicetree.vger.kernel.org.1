Return-Path: <devicetree+bounces-79659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2FA91646D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 11:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFDC91C236A6
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 09:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9134214A08B;
	Tue, 25 Jun 2024 09:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q8BwNeJi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B151465A8
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 09:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719309433; cv=none; b=UNdOtBUBDqoBFuX0MDLo1gqSOJAOucfTDmW60p8BkI+BJXTeuKPSCNWfoMvg76DG5lkFHiOa528LkNBGRj2D6/ND62yfYx3Kyibrb92gXymOa/cHot9w/nkkQ8Nytks+BpPi7y6oKQOjudYL7vZDL4DAmJmTmkJsHWsAhfI9e8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719309433; c=relaxed/simple;
	bh=7OhOcEoC2/OIsLcMb4NkqN+LajE+kQwwBjp6vqC8DeY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RUSlGZBebBcx+wLsC1Uh0bkQPBK1VAqEv5l7LDJTqas7ucX01ubIsve/myEGwlPuwoLU82ZYlTYzXJFbbxF3X/jkEFihXdssAPhOEO1z2et96AzdFfL6KRNu6/KIjAMyupilIj5Rx3fJGLbkmZ/Ej+3wTq3dWrpCgC3aPjKLsaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q8BwNeJi; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-70667943931so1961655b3a.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 02:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1719309431; x=1719914231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qF1YJYptXWfDBxwzTIeTgvB7dEj4RfJtD5/KNTKFabM=;
        b=Q8BwNeJiHBqZ7W5KiMVBs4DrEUaG4ht77jVeIBojyiaIo+WluUncdxFfrrG9Qylelv
         XrXifIyk+KifNFuK8Xhi22C7fH+7d9KKvOyXGkgAEDwjG0GdeBy7iLpxLGJ6y2R1wfeM
         SpvFwYU0yy6PGjv4Key5pnc5JiFjJQdxxeqFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719309431; x=1719914231;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qF1YJYptXWfDBxwzTIeTgvB7dEj4RfJtD5/KNTKFabM=;
        b=BIv4SQTGYPmldXj32erGYAXkwY1k7aBaIV9tAEfLo8MCH0mkwXZKpSsmz6lagdc3Qv
         U95rrYkHcWstizRaPNZm9PuMS5evwhJVzi3tzYKHEmK53EFgvI0DY/sQi1uoATxRqDiK
         sPCQUVt086DA/SDdHKDfN0F2HGQuxjlkBxu5O4/PnpdvCfQ+itFHjKhjgOYyYD9yEoI6
         9pE7lqVs9ghqZcL/mlKwqQGkZdY24+7ukjKkIl5pFWqwpCAk+CVJloIV/xaqiFsUeiPS
         gT4NKRqYxJWZ2nhC8OW0WFv3QY0C33Vu3aKa0aQylrHp7m5uGA/wrpTORHrhmWTyYg/5
         B8Sw==
X-Forwarded-Encrypted: i=1; AJvYcCUPDFfyg0oxvqMEyOncU04FwAtWYGhsSOKpbIEo+avAhslXledS+6SC1yXF6DAN5UjajsmD1ucfFYmeBqKYwZnu3YofAF+A5eZZUg==
X-Gm-Message-State: AOJu0YywSeHsh63asiPaqd7sib0Gg7HD/OPNfMgoBYPzWplPvKGUCkii
	PPJBnZwPM83r89/rk5o2zZT5sOa++ydG1gQJEzFZlqZjRpowVovw7g2e6Oac8g==
X-Google-Smtp-Source: AGHT+IHpPnnOVZu547p/nqZZHcdZDYKUwYH9Z0EG/miyFDAKG8tkNavHDYu9ST2rn8SZoZX4/BKRwQ==
X-Received: by 2002:a05:6a20:b906:b0:1b6:6d41:7bd5 with SMTP id adf61e73a8af0-1bcf7e7664dmr5586707637.15.1719309431324;
        Tue, 25 Jun 2024 02:57:11 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:ea5a:67dd:bd1e:edef])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb32b8absm77094295ad.117.2024.06.25.02.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 02:57:10 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Simplify DSI endpoint replacement
Date: Tue, 25 Jun 2024 17:57:04 +0800
Message-ID: <20240625095705.3474713-1-wenst@chromium.org>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently the Jacuzzi dtsi file redeclares the full DSI endpoint tree
from the DSI controller just to replace the remote endpoint. This is
not necessary since the local endpoint already has a label that can be
referenced. This will also confusion when the inherited layout is
changed.

Replace the redeclared DSI endpoint tree with a label reference.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi     | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index fa4ab4d2899f..783c333107bc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -91,16 +91,11 @@ cros_ec_pwm: pwm {
 
 &dsi0 {
 	status = "okay";
-	/delete-property/#size-cells;
-	/delete-property/#address-cells;
 	/delete-node/panel@0;
-	ports {
-		port {
-			dsi_out: endpoint {
-				remote-endpoint = <&anx7625_in>;
-			};
-		};
-	};
+};
+
+&dsi_out {
+	remote-endpoint = <&anx7625_in>;
 };
 
 &i2c0 {
-- 
2.45.2.741.gdbec12cfda-goog


