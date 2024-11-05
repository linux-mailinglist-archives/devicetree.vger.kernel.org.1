Return-Path: <devicetree+bounces-118890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2D99BC39B
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 04:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6275E283039
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 03:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D311459EA;
	Tue,  5 Nov 2024 03:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ONmqnyOe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2B513D601
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 03:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730776109; cv=none; b=eNxMEXi4iG8XJ+L+sMiPE0RMrj6XNS8iBq72wSfBF3UCbS0NIy5WckbHMvnK+Bi9qCBr8RcY5WC0vWbqPTBoDZ/mYCxMSO1qzc6zjkr/6F3bYOgvVht4SgEShZgxsCFM/y0nagR95PTHSLa8WsDkUJBKFzFkIglN4qD7MV46KH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730776109; c=relaxed/simple;
	bh=LegS2qPNA21GD4AcjtZ5CBXXSgyiE2Fv9FQCHVrVb8Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KD6raqTVF3iE+xpOV2vu+qG1Zl42fy0sad2HDjnOUUeNG6WupsPjUaaGd9z7bByywOmt9veV18ta+L5iXUPl8f6Vnrkh8Z/xpqA6xiuRQiQdK6iqNR8bYlDVSqKLPmWqHswm/nKGZy1Y0r0NOJUGuJm7OGVSJdKJw40OMCLx3eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ONmqnyOe; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20c805a0753so45977785ad.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 19:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730776107; x=1731380907; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=euPhqg7viIx2XTAkn9Q5AvVF/uGDGrDQK80Z56OHLio=;
        b=ONmqnyOepE9VT9V9t4RhQprAYGSYJpRj5DXKs16NQglORyzPxc87N0SAEnGjWI8eIp
         jNHVHEbfSpWXH2Z0i+toeOIbmzsX5zDaMbRBJJ2tJQU9d0HcGKrz6yZOymZxULySN9ZB
         g9YJLprudjZyNEqyh/zqtyKtKJynxbz/1h8Mo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730776107; x=1731380907;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=euPhqg7viIx2XTAkn9Q5AvVF/uGDGrDQK80Z56OHLio=;
        b=nsdHN8HwApDtUdT4ilT9IuYxd7lWZIV9TRQzNhv6ipA3krEAssZy5xzZDr/DOUMydw
         /TWEtaXwHafrQr9V2VMydKf1DupW/m/PIjaE5C1VmC5puTFsXwu9jrJFDx/cBBZP8UPY
         gHkFKPNicVfvc749N+nFI6+xS4szLo1ZHNa7Qpyn3UoRq5pSZa1GkZw7yF9qBTXiijWl
         Wh0TljA1gSZTg7g/H8Pb+FDNrgKihg4s24Gw6kbfUD6bQEmDNstUhiT0LnMIa2dMv72U
         l5MLP153DyKnECbKp1MveJcMBKl9BxIU+plh0DiAEHGdFnz7AMlvkO1IAD5kpthaYrim
         GaGw==
X-Gm-Message-State: AOJu0Yzrm0UbQmzsqUoDZ6vS48wCFWRqQ5SXkFDLBVx3MRt/MfbWNApK
	G1OgGULJnk2tvJKaNzCFNyyphxfNnVlHOu1m9L7AHgPqXSQ9lfGXp+4FjrtAag==
X-Google-Smtp-Source: AGHT+IGBp3c1Lhzc3e6+qTBBRkT4mBZaYjen82U0w7kAh09SHgIN3F5lnKg4nHiKKOQv7zPeWuvL8A==
X-Received: by 2002:a17:902:cec4:b0:20c:c834:b107 with SMTP id d9443c01a7336-210c68cc81bmr425323355ad.22.1730776107551;
        Mon, 04 Nov 2024 19:08:27 -0800 (PST)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211057d8d4dsm67497885ad.270.2024.11.04.19.08.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2024 19:08:27 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Tue, 05 Nov 2024 03:08:14 +0000
Subject: [PATCH RESEND v2 4/4] arm64: dts: mediatek: mt8183: willow:
 Support second source touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241105-post-reset-v2-4-c1dc94b65017@chromium.org>
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

Some willow devices use second source touchscreen.

Fixes: f006bcf1c972 ("arm64: dts: mt8183: Add kukui-jacuzzi-willow board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
index 813e6bf65b62ee6742e52133f9adf7e83a6078c5..e8241587949b2bc238ffa85f8fa6b6ca78b1d6f5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-kenzo.dts
@@ -12,15 +12,3 @@ / {
 	chassis-type = "laptop";
 	compatible = "google,juniper-sku17", "google,juniper", "mediatek,mt8183";
 };
-
-&i2c0 {
-	touchscreen@40 {
-		compatible = "hid-over-i2c";
-		reg = <0x40>;
-
-		interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
-
-		post-power-on-delay-ms = <70>;
-		hid-descr-addr = <0x0001>;
-	};
-};

-- 
2.47.0.199.ga7371fff76-goog


