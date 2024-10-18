Return-Path: <devicetree+bounces-112947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9158A9A3F47
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 15:14:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06CFAB2415F
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 13:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FABD1F4293;
	Fri, 18 Oct 2024 13:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YYL7tBC0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B3A1EE031
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 13:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729257242; cv=none; b=M6SxNiq73W5YKRYfuil02gwPWCSobtREM4Jf4/C40PFCe5r7ofAOjJW9ojmEntZt+lRwQLzWy8BDsmt4pXMoMWXXhnb1e1jipMnB1rrvSqFG4O+oQTpjmEGO0MwnCw40RljVaN/kWrWJusY84vUIWfEA54CzgfEE6Tb31Q7dlvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729257242; c=relaxed/simple;
	bh=YMf/xRzS/Y3j/aHXTSjQMBlm1ofFG5WOuYM/Y/hnRaI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XDiimwv59yS9/CEiw102UY5ODj7GO7dieA5OW9xLeHPCTz1KsMmpfAf5JvAK2ytdQ1RRnAdhAXe8YFRFTKvMVvLZ2TkO7V+Sg2DsVh0pkDpB/mWjdakAx81oVTBlEkmVTUnPmRDlxb3iwBafNn9WyCRf7rKpdLTs/1wPJ5UQYU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YYL7tBC0; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71e6f085715so1619749b3a.2
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 06:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729257240; x=1729862040; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MP8TMQ/gJDNNcW5cvIQHPqEbDAINygwMqDzh7j0WvTc=;
        b=YYL7tBC0hauIN6aF4QW8Lu02oyHugU0uGtw0zGfuVkzFdw1r/mezASfiji/qfFKJRh
         DmwUTFIXx1P74ic9SDIO/pfqx/rlirmUM3/76C/xW4SnP2opyP/zBnFWMLOz007VSAIP
         2DoAbghQErjW4i0ZbXmTX/Czcw1keNqRu3+4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729257240; x=1729862040;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MP8TMQ/gJDNNcW5cvIQHPqEbDAINygwMqDzh7j0WvTc=;
        b=ZYaDlqtgFpiU/nrXhdKiGvCDhst6KdvCOzyiAsogY2yFfXctapdgAaEPdNUoPWjY76
         0aRi5YBK+aRvf2cva2dyXXroS2RcjsPjIvRwy8gabiJEPS/1a2Ka0l0gLdQLfsVgHQyS
         9o4TXw7fELl3te3z2SlE/VHuOjOA2O985/b2SxWLOjIt46QFbiFPCudtblP02RrO6Bmp
         gGSqQMoWlQOXfIGSnxJemc1Odtd3cc1g0a3kaVapWuVgCLQ9IbexiPD5faVuQotOM4GA
         rvVOhvg74Dd3c7KbyZjKDUqOzjgGnG09rG1cmGgJNDi5nW1Ig10+g/mQF3AxnPYp5ZAX
         QWiA==
X-Gm-Message-State: AOJu0Yzc0vI1jSjTVuYH6OcxppNEJOhV5vqUDotsd3aHeWqHUKb0YkhG
	U9JiQMI4ypVOfzvCD5i08BFn2HiaEIz1Von4A8BhBp6W09JFNdCXR7N5EBkl4w==
X-Google-Smtp-Source: AGHT+IGet2bY2MWfssxOfbEhS0VJ9OTuNI5+X2G2o3nzQ6wMgbpufEiy5menDVmJwJJAbGvW4570bg==
X-Received: by 2002:a05:6a21:6e41:b0:1d8:a208:f309 with SMTP id adf61e73a8af0-1d92c51fab0mr3397932637.27.1729257239635;
        Fri, 18 Oct 2024 06:13:59 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eacc256cc8sm1120222a12.56.2024.10.18.06.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 06:13:59 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 18 Oct 2024 13:13:44 +0000
Subject: [PATCH v2 4/4] arm64: dts: mediatek: mt8183: willow: Support
 second source touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-post-reset-v2-4-28d539d79e18@chromium.org>
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
2.47.0.rc1.288.g06298d1525-goog


