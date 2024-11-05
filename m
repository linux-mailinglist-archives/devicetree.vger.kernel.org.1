Return-Path: <devicetree+bounces-118889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BF09BC399
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 04:09:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 953BFB2204E
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 03:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4EDF13C3CD;
	Tue,  5 Nov 2024 03:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cVr+BscP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5185B13A86C
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 03:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730776106; cv=none; b=eVuIUxR0vUSO7XUFwBKlQPAmbQRfBW4k3mI4ljCi3tEUx5zlyYE5X4vVjYIBaMEnL79+MwNlo4mM/F9jGUppMQY54xN/ibGeo5Sw23EgizE5I1VpaBF3zPZl75ZtK9A7F4DJnUp91YjFixJopNmDJvb/lnVoATiB/WF891SVDug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730776106; c=relaxed/simple;
	bh=RF7UJXnVaHEsJfC1ISRqxrKgzyE0SA8QVcPURG3tS1k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vAYHtI68SMvyK8tq/e6cCM8bXhm36EZBN3qVfy5Ss+0P6BL5CTxBsVHOqDNyBCrR5tpMBomYa/gX/x/pBs9epffor77luq+wVsrBAkVqml3CaetshXcBO6oSoJVgd8UlP5WSytIZUuFRJFQIEwWNVtK1yGbvGsd+77r+fgFNSk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cVr+BscP; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-656d8b346d2so3224144a12.2
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 19:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730776105; x=1731380905; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jVNKfz2t6zEgtE6p7hSHFZ+86J0/BrsT2sCmnVgjQCw=;
        b=cVr+BscPgHHJNOQ1ie6nVVy3tMRidDnCL50Sfkesz9Y46bDtXPY8lbuuOn3kqRAyN7
         Cb//LBIvx7DS13HAFkfuYNtvs5Mm6bl8szLk2Qgb+OHlWssnkv4ZOXcpYu6VDjq/MyLd
         72u1/zHip7s+sK6auAoITqL2Zu12TE78oxtq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730776105; x=1731380905;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jVNKfz2t6zEgtE6p7hSHFZ+86J0/BrsT2sCmnVgjQCw=;
        b=L+Oo1yi2u05XSm53jjYbQNNiW6eseVs2JMi50CP4mMTQljRMOFJWDufVbwIrh39dnQ
         GA7ZdSj+yY4fSNVGwCX5ikd8kFQrHb+Wr3qD0FglKLMpkVGwbTKahUALJnrxDjNfyqKD
         s/2ENABbTlxfR2+hEzPKNjOkyY8cBcvLcpA4abcyMWxHnMubjGKZhcy1oTY6tB9AdcGw
         8didux7wvUrDUVkcLvkU4Q9yCWs5VOdFirV73w+NAyJZhtC9rPDWhrKBQn4+gqo7OIZB
         A1UBqWvSwsej+QGDLRNEJFt2iyAPLhkAZjacAP5dRtJIL0iVRyxbYVIESYAzfln1oZG+
         mMLQ==
X-Gm-Message-State: AOJu0YyQpjSn99B2O/ac7gZDj5Xz5nJHVCuWY4oe1atD4gjGg4+oFUiE
	ePMVJBsTo2GAGhCw0G9UAqDbtKU5LqGagCjQvHmeRzs+eXz+4wPd1r7tDlljlg==
X-Google-Smtp-Source: AGHT+IHIrNO0VoT73VkYM3UKR4zs5Ym7OnU1LxK7zSs0kR7UH9l8Gsq3xPWPJiw3R+H/jGdnosVuAQ==
X-Received: by 2002:a17:90b:3901:b0:2e2:af52:a7b7 with SMTP id 98e67ed59e1d1-2e94c52f395mr19754083a91.34.1730776104667;
        Mon, 04 Nov 2024 19:08:24 -0800 (PST)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211057d8d4dsm67497885ad.270.2024.11.04.19.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 19:08:24 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Tue, 05 Nov 2024 03:08:13 +0000
Subject: [PATCH RESEND v2 3/4] arm64: dts: mediatek: mt8183: kenzo: Support
 second source touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241105-post-reset-v2-3-c1dc94b65017@chromium.org>
References: <20241105-post-reset-v2-0-c1dc94b65017@chromium.org>
In-Reply-To: <20241105-post-reset-v2-0-c1dc94b65017@chromium.org>
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
2.47.0.199.ga7371fff76-goog


