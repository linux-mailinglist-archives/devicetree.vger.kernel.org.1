Return-Path: <devicetree+bounces-254894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A98C0D1D872
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 587BA3067DF9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3499236D4FB;
	Wed, 14 Jan 2026 09:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NpAPFGoW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22BA37B407
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768382773; cv=none; b=BTXeXnDJ14jGPslvPkihx80PCuHn2Aj+oeaFRasQ1ypcICt8Oa1emgDqET18krYx6CN3NeENxMs9ee7cKvB2o6nqOX6Q9LS8O3Gj+9ohvkJ2XgtlSKgoOFwyRdvxJ+unpTKGunh3aNDciEwnbTjNR1P/jKAAJHubUkiEjWfa0Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768382773; c=relaxed/simple;
	bh=r+cuZssMagFzK0iH88eB9iFaVESJI1W3dmvehwmdp8g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NUoVSgcrHAI1Meo49xxGGj1iIiJv7vT7VkFhy3hlg+E05BlmBzC3m5TkUgWh5OtI/h1QDr45926bVVXNejb/98U059wvbz1ILnc5u9rXi5c/kIc7tfUxPOHkZuupnGtIW/jcVBQhGcIyZTbx7f3cRgc7+IZqVA3znbEL/nfuV4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NpAPFGoW; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-bc274b8b15bso5460701a12.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768382771; x=1768987571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=raSq7QGEUhVHtaVWgQ9mKoAQ+G0ozyI9AkFxNN8FvA4=;
        b=NpAPFGoWoZCJAj8gdRpMyHJzAEbTxEsh9x8RUIOKt6OoWFsqkJaBQKAANjimzswlgR
         Te65NZ96EB8cCkhQzIxMZeASCnPwQl9i2THB+KfSaQEWSg2sKp3AzsyIgBSwZ3R2NjdO
         VRA/XkYyXTcDkyK3t5EuZakn4lGQKkZo4vd5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768382771; x=1768987571;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=raSq7QGEUhVHtaVWgQ9mKoAQ+G0ozyI9AkFxNN8FvA4=;
        b=bZPduTaQtljbcj0YlEZzLCHJS++fvLS64OAVUqts+czIEXw5Wxp0hbgFhLUopPHFX2
         masQzZUYDnSuRd9935quZxxUaPytXw1ZE0FfdO4H5kimguGUyagHh26SjgO61Xvy0Mlx
         yx0NeaBj0HjR3AQJnNb5MiacA5tkqKZoAUI3CAmpzHvtZpilKAsgHJNyvqjw0X48JHCL
         0jZ6gtR4t+h1gr7hGtFV2isqBqXBoy8AcHXl0pcxFIV2hBAynv4zRaM1BFXAXzgh+xaD
         yik0TraV7s1RhXYRk5iPndfHo4NF4cGzaG4Ywa68LuNyx9wQKd/LqY8Pce27oKoGwiI2
         afYw==
X-Forwarded-Encrypted: i=1; AJvYcCUG3FeHaloFL4Invkekh4i3/a6joaVMSeOLqMMsEC1evj+0F1+Z4fgpSZo3ZMzu6ctvj/BiNV0B4Ml1@vger.kernel.org
X-Gm-Message-State: AOJu0YwTO6sJpQwOXm934ZmVKWSmBd10sIAoNmpn1XA2NEefmsS/zB1D
	eAB55hwBPh7V9ihjoUOGsF90kvLNidhWJP3hbYzudidsggPyN3PxvGdWRRhBLDCd4Q==
X-Gm-Gg: AY/fxX6KIdutVa/vqCsD01ZwSuFoXlh17Hwmuj7PEk239TGloVlSrROC+Ea6Cr/J7lk
	GTPmDVnyWl2rRnpipKXneCkmwCOaDMGnJVB7SYYjeE/8n3GLB2iBdYytYxVvFUbi373Vh5C8tGt
	oKa5brsXdHBSLOAAYkQmbtybWmHbJ9/6jLnGXnrG247MFAM0O/8/zKI2N18dVFxaM3wuk/XzJdD
	2xNYLBdA6WZMWZaikxvnVi1+abJHdVvPv3RnJdGAaV4CaKgZvbY4CvNEI9Qj53n4Wz9Li5BNuyI
	MNmYAqRQHQp49WtrYbPZGf2aRcmzArXyJEn9+g9xoIzqm6UuQHMD9EOpm19zGd9DQh7zyhzdDdJ
	+dhboapEmLxIxBjkAGJd7E6wAtGtHMylFo+LyROwY91GTbJU49K5hsKtZps8cDkdKNicwNn6f+a
	npBzTEAS190kog2Nt4sHesEjp/rHa6/ysjAfRTCh/WS0cWiZHMJjkH+ikxndrm52xozjmU
X-Received: by 2002:a05:6a20:3c8e:b0:387:5daf:b302 with SMTP id adf61e73a8af0-38bed1f4c9dmr2354200637.65.1768382771115;
        Wed, 14 Jan 2026 01:26:11 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:c346:2298:451a:a3f3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b2edsm22131136a12.32.2026.01.14.01.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 01:26:10 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt8183-kukui: Clean up IT6505 regulator supply
Date: Wed, 14 Jan 2026 17:26:04 +0800
Message-ID: <20260114092605.3916367-1-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align the name of the regulator with the design schematic. Also fix up
the gpio property to the new "gpios" property name, and add the
GPIO_ACTIVE_HIGH flag. The flag is actively ignored in Linux in favor of
the old "enable-active-high" property; nevertheless it is the correct
description.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Just a small cleanup. Not sure if you want the regulator node name also
fixed?

 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 4b87d4940c8c..a8e257b21a88 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -44,10 +44,10 @@ clk32k: oscillator1 {
 		clock-output-names = "clk32k";
 	};
 
-	it6505_pp18_reg: regulator0 {
+	pp1800_it6505: regulator0 {
 		compatible = "regulator-fixed";
-		regulator-name = "it6505_pp18";
-		gpio = <&pio 178 0>;
+		regulator-name = "pp1800_it6505";
+		gpios = <&pio 178 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		vin-supply = <&pp1800_alw>;
 	};
-- 
2.52.0.457.g6b5491de43-goog


