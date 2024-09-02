Return-Path: <devicetree+bounces-99050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08702968804
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 14:55:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F8AE1C21EA0
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 12:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6132B200134;
	Mon,  2 Sep 2024 12:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="TC6XCvdT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6D819C54C
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 12:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725281724; cv=none; b=r/lncmD3Ki5nWVnOzUkqxTALj4OJsO7b5NX9F3xGxkZqlGKOT4MSYHhEGIW4jxc4gz9zWxxkTPIIYexJDEf9MdnKFn2J47mAsl2xhpcKEd6no2U4RBYFtVjbLqTJuVpEeYOFv38a+lDHsDG6/TWAgCm5jp19CyvDZ0IPJw6+7yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725281724; c=relaxed/simple;
	bh=FSNthSYGg/mTlF3NCel24I5a57tx9nphyh0ico4wjNs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TrNcYOC9Mpe/lbITFQAw9EkdSznYQu6sBgNuqRxYlWPPSYvf5yLbNvq2D4on/cvpmOPEWMqRTzrvWOWujRqfkAuuGiTybAbr949XHhkx9h0tEeGr0at3acDgA0qvnkIMsoAt84JcRC/2AYD0UyxfkLtl40Z2PXGNkm5+SBurcmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=TC6XCvdT; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5d5f24d9df8so2354210eaf.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 05:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725281722; x=1725886522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPpt6ERaV9w0t5on/zQBb5NLjkmrrGxBn+wH2mAAexM=;
        b=TC6XCvdTEbgZqPQrP6oQJUdt+4Nnd/c0FESdMUmscX2XaJjrbh7iFBpOJ1QS/IT3ni
         VOac4XAAWMg39P9Q9nQkSQAFDn/ENUoQoa1oU8XWoiCykHApBvYru3LMnCL95uG2Vvnq
         c5a71Ji+biqadZtzvRZCa3Zq96U1bXQ1HMm4rCDEgFAabC5hZRA+1ooEHtFRpu/lAIVi
         avax+W8mIPiLOLph14HWXRo02e9E+E0kL0AWO9Z3U6nH/oeDtuUETe9aM30OOMkXfw5n
         20m6ZTZCMByy9fqiA0Ksgzb3ro/1Ub8hBj6bJFHPX7ID/aTkoJN6V7rvmFvodqbNIW1O
         PhZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725281722; x=1725886522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPpt6ERaV9w0t5on/zQBb5NLjkmrrGxBn+wH2mAAexM=;
        b=Qgey3ygM4ZJTL2zsTKUyDLGtGbv+isBGHKcIsQDyDBC4cDrdV0x9Yd792TgFbQNjMY
         zD5NEYdPedNNH7JYdgvn17eXb9a8nsswSySiItdeNJ0Z/yDaAe6eurl8ZeQQ5UTxYwey
         zjQUbmqxXbrCJnVc/hneA+1C2+mrh4QlN9uGFlBgOpmCcSU0Ert9y/B+9kf3wDaTdoc6
         L0ota8Q7Oz53qrUQh/4RFyZtU7XR81YJW/4wSTi9BUlpNmBE+rlM22s+uGDYZAc9+aFD
         L70WdU+ux57hPzJIQltS8/+bx+5tdtvEn2xSfoxfqUGebdHMJaWtmwcUP/dvjuxHK1nl
         mpPA==
X-Forwarded-Encrypted: i=1; AJvYcCUeC8QZZKn9Mb7uQfU7W0zITVD2C5ahYMCZ9lMP523KZ0pUMrqpxcZ8vTEMpl3TQ0OMOw4fup9R+Isn@vger.kernel.org
X-Gm-Message-State: AOJu0YzI2L2Hh5E3wKfR0o2wuO/nIIEL7wu6uYoBW7GY0OGa6wD9M1u5
	G8FofeS3Dhmf5k4s8pnqo8W2fq8aYqM77EJnHYy5TFH6//Afxpf5kw2HBXU8f6k=
X-Google-Smtp-Source: AGHT+IGr00NuDQhakxmJAzU0K4ojhOQayR1MHWGLdctFGDN+ZUiOb8N4gaCw9OaVLmU7bGwt9lpj8Q==
X-Received: by 2002:a05:6870:808c:b0:261:21e9:1f0f with SMTP id 586e51a60fabf-277c81eceb5mr7979247fac.36.1725281721745;
        Mon, 02 Sep 2024 05:55:21 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-715e55a99eesm6773955b3a.50.2024.09.02.05.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 05:55:21 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Mon,  2 Sep 2024 20:55:01 +0800
Message-Id: <20240902125502.1844374-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240902125502.1844374-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20240902125502.1844374-1-cengjianeng@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for the MT8186 based Ponyta Chromebook (custom lable).

Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..410145976272 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -257,6 +257,17 @@ properties:
           - const: google,steelix-sku393218
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Ponyta (Custom lable)
+        items:
+          - const: google,ponyta-sku0
+          - const: google,ponyta-sku2147483647
+          - const: google,ponyta
+          - const: mediatek,mt8186
+      - description: Google Ponyta (Custom lable)
+        items:
+          - const: google,ponyta-sku1
+          - const: google,ponyta
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196609
-- 
2.34.1


