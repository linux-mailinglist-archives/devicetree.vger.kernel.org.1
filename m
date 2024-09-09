Return-Path: <devicetree+bounces-101370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A038097166E
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A2DD1F22610
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A671B86D3;
	Mon,  9 Sep 2024 11:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EEA3mK3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B210E1B81DF
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880685; cv=none; b=LUjYJKB9TPF8z3lGXLx/+wZc1rrTDs26AsiYMMzZZTiNPNr6lsCU7cX9CHf3bV8PImqXg4T7FKawDIon7tQA7s/b4iGfQaPPtqlYTeOMWKF0mmnDKOTqezJRUSl7K8ecL6g7uJ+MDX/4mOIpkgFbm4BAH07fNYBD9teEjG/DOtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880685; c=relaxed/simple;
	bh=pqX/r+DMu5XaHfD3/QRbdq8TiYhqynvHf5Xm5EJpyjY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M7j5GTs1UquFQ0n7a/McYubYWjyipmXmlCijFq2XkSKtBQc3y8eRCcO8l2YGamm0bMcvQ9VV/HvHlWqW8wrZc4IqJR75jbOy4SQbJ3R3ZNJijreQEAilIQHvHqCaTwNF8T6sLBWi7VlQSG7lyF50zmkwCYbe52N/XYS+ijnbkaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EEA3mK3+; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-206aee40676so34288945ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880683; x=1726485483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QUOItIdN4CuqJ3bySYoQipdxuI7Z/Vcroiw20gsxaUE=;
        b=EEA3mK3+LIzdDznfnr6fBztuMQ7iRAgRy3KwCyTQFQSKpqU2SRozTYKYWMRf52ub8k
         TBzw1HB/NFebMwn4wC+Snr546vIVe6N0iP9K4R5tiC7FKGS+EZ18I0hJCTTMmV2SKugJ
         alKvG2XPyQ5C/VLpsEic2muogyJbFtqAQBh9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880683; x=1726485483;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QUOItIdN4CuqJ3bySYoQipdxuI7Z/Vcroiw20gsxaUE=;
        b=aKvkODw5vzRer8zyb+AXtQ39HpmYQVySggQzmi90k8V3SxWErO620whbDyJ/X1U/wP
         aocF+QaqPHSw/aD0Mk9DT7tGtxLxd7ImyYNBAlQPP3FphP18tCcQkdVdFnaj5VFyjC8Y
         y4Vs6fBWJKKTcKZtSjphMXS/WPA7LfkpQVQkBaSmL+g0UwN4HbaYRlgZ6sme9mFC66bj
         kZZ9SwQqWWn19Dgc8A6kUrllN79PNlTIqKPGJnsa7kHkM/1bQrj8AurZy78OpCmlIKLN
         BCMCo16z09eHs5G4wCdRBGbtWKeHgTq/fzhoL42J4nhAukCUd5KTDUw0sBRWvwMEXnDn
         uafw==
X-Forwarded-Encrypted: i=1; AJvYcCWRfh9/5oHgGc3ocEk8IZo363jJUwqiXAnJXSqCzaMCs4QGPDO7H5QYTIaglEtA2RLhXSVys5iQDr0R@vger.kernel.org
X-Gm-Message-State: AOJu0YzSSoYMHe0gMe4/sorvpo87cLspvp467PJp/TN888Oq4C+8VDcJ
	r8gD4z2NWWYxwXYOcOgJhZd5X0Un1yf/HuIFvjzGdOUcB3neMWbKjSGdvG0kDw==
X-Google-Smtp-Source: AGHT+IG2C9XNJ4DI2nFoNmA76+SiA1/BQlCYF1MYXDlROT/zJMV16eihIHNxUAdcFdrNF1d3RzLl+w==
X-Received: by 2002:a17:902:d489:b0:206:9399:5dd7 with SMTP id d9443c01a7336-2070701f2dfmr72449825ad.56.1725880683061;
        Mon, 09 Sep 2024 04:18:03 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.18.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:18:02 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 06/13] arm64: dts: mediatek: mt8188: Update VPPSYS node name and compatible
Date: Mon,  9 Sep 2024 19:14:19 +0800
Message-ID: <20240909111535.528624-7-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240909111535.528624-1-fshao@chromium.org>
References: <20240909111535.528624-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use and add "syscon" in VPPSYS node names and compatible to fix errors
from `make CHECK_DTBS=y mediatek/mt8188-evb.dtb`.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 2900d78b7ceb..14e51a11f688 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1799,8 +1799,8 @@ mfgcfg: clock-controller@13fbf000 {
 			#clock-cells = <1>;
 		};
 
-		vppsys0: clock-controller@14000000 {
-			compatible = "mediatek,mt8188-vppsys0";
+		vppsys0: syscon@14000000 {
+			compatible = "mediatek,mt8188-vppsys0", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
@@ -1817,8 +1817,8 @@ wpesys_vpp0: clock-controller@14e02000 {
 			#clock-cells = <1>;
 		};
 
-		vppsys1: clock-controller@14f00000 {
-			compatible = "mediatek,mt8188-vppsys1";
+		vppsys1: syscon@14f00000 {
+			compatible = "mediatek,mt8188-vppsys1", "syscon";
 			reg = <0 0x14f00000 0 0x1000>;
 			#clock-cells = <1>;
 		};
-- 
2.46.0.469.g59c65b2a67-goog


