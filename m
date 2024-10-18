Return-Path: <devicetree+bounces-112945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B80629A3F42
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 15:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E724F1C2494C
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 13:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 688AD1E3DE3;
	Fri, 18 Oct 2024 13:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zb0EOaKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934701DAC86
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 13:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729257239; cv=none; b=MMrZKsMFSX/Nlc6xQ4aHSCDl1CeUXXzx4GMY6gR1VXKGG6e1JSrsrYAT2/5QL1VDv58z5ywRJlMx9FL8nOwCjgikvpakVGJRKaKcfBd0GykW1CREO0bM/kbUT1vJMq+ENalrHDSdxJYTucu49wK4heuOtP+3+i8DY3v2JJ9sH9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729257239; c=relaxed/simple;
	bh=HhRR5d4jmo6CPi9lmPJR+0DOtFhzhX6gLm+pS79kY3w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fFu8vjDsQ65xD0olUK9vD7i8Sxvmzwn5seT1n/MbfOD1y3BnFvYBmqPl5og5h4hzrtHYQVByVIsrf75rIOphfhWXLK3e84A8VoF1ejSDSLTs764RwZvp7Lq4rHwbfkSTcIVsoG8oI2J4MNfcz+yyKgdEd+WvoE9TshNApu6dLHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zb0EOaKF; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-71e4e481692so1791336b3a.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 06:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729257237; x=1729862037; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+dRN7sp9adnaf0gmX/kygO9824Q5cpdY3njPLrCdXXs=;
        b=Zb0EOaKFmWMpx8WMK7/vLylbP+tm7aSyralHrUSUugw5szUh56lYJUe/LNj2H4WPI+
         GdvUIguxW4/ZYaNAtKIj5geeQKX0jlI9oCtEil2wsQ0qY3DWvjuZXJS8WdkVZJ2l4SK6
         M1ebimFl7JDSmrDI4AXQFzJuOukime4t3IWio=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729257237; x=1729862037;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+dRN7sp9adnaf0gmX/kygO9824Q5cpdY3njPLrCdXXs=;
        b=HlYFy5me4f7Ddmv+tFMVpjUZYW8q8sLFQe/+HUcsa7RJu4wtzhp+8KO7GgFU8NPKsx
         zqIyU5q+f0ttnV2Kl6FE2jp7FEI9MxXv3T6ktbtDvv6HpdI7XlEPN7MtCx8e66OdTshm
         UlLe10+I/1Hdrn/VX/n/B2It7J7XS/T8WO1br+zmc8KQ+OCEtBnaJHzepW1+9zFKPTcH
         oy7Z37yNDvVdFXOaf7/eFWe9fasniy5HiC5WZVWXpktXmiBCW4p9mxT3gEa2ze6sGU8/
         xUws0/qOQEOijvnxjZCrru0DwikPhc3w9y7/HST0ARJADfBcFFNCw9+kc2EBDVGj7NgP
         XHZQ==
X-Gm-Message-State: AOJu0YwacgJ+fEpQC5lMoOFMpYf2BSt/DGEE3tUU4Ghhpo+2+4WssBam
	b592Odc8yQOZvYwx3p4Uc/wqJL7W/9zx+E3FW+kcC6bVplbAlobCAlpbLa6q9Q==
X-Google-Smtp-Source: AGHT+IG28NlyG5rPtxLjr3QMID39Dq27Ev7Stc0ZZoqqQfbQBGFdiwKlYI1AT/T18xmyW3UlwwjAkA==
X-Received: by 2002:a05:6a21:4a4c:b0:1d8:fd01:52b7 with SMTP id adf61e73a8af0-1d92c4bac01mr3296386637.2.1729257236906;
        Fri, 18 Oct 2024 06:13:56 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eacc256cc8sm1120222a12.56.2024.10.18.06.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 06:13:56 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 18 Oct 2024 13:13:43 +0000
Subject: [PATCH v2 3/4] arm64: dts: mediatek: mt8183: kenzo: Support second
 source touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-post-reset-v2-3-28d539d79e18@chromium.org>
References: <20241018-post-reset-v2-0-28d539d79e18@chromium.org>
In-Reply-To: <20241018-post-reset-v2-0-28d539d79e18@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Benjamin Tissoires <bentiss@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

Some kenzo devices use second source touchscreen.

Fixes: 0a9cefe21aec ("arm64: dts: mt8183: Add kukui-jacuzzi-kenzo board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
index e8241587949b2bc238ffa85f8fa6b6ca78b1d6f5..813e6bf65b62ee6742e52133f9adf7e83a6078c5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
@@ -12,3 +12,15 @@ / {
 	chassis-type = "laptop";
 	compatible = "google,juniper-sku17", "google,juniper", "mediatek,mt8183";
 };
+
+&i2c0 {
+	touchscreen@40 {
+		compatible = "hid-over-i2c";
+		reg = <0x40>;
+
+		interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
+
+		post-power-on-delay-ms = <70>;
+		hid-descr-addr = <0x0001>;
+	};
+};

-- 
2.47.0.rc1.288.g06298d1525-goog


