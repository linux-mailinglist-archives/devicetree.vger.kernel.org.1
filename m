Return-Path: <devicetree+bounces-163007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4826EA7AE51
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 22:25:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF39A189A534
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 20:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1073A2046B8;
	Thu,  3 Apr 2025 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dA+tqKgx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98412201258
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 19:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743707793; cv=none; b=fkidI8KmYXTsgM60EHuwV39mQ5JVOO4e+UexSJiJA99QPoySj77/a8rNzqUecz5lVgdeidkAuG6xgRVh2hYcOoQBNhZL0N2kg2bw/Q8BLZexjhtdE+ShTmlYeG4kC8jfscPHl3eNddNneKqkSFoK2HDRePZGj/xgzJ6RAHiHzfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743707793; c=relaxed/simple;
	bh=rQ2v20Ddln+4BwZ1YiM0h0pDo1Qau2cCuH+bpTFZT9w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WxTi+ql8NmyIm3qMJbELhI4C976Lf9D64VpsT03uOjK2ZtuUN6zpOhqK+gpC8tINZ0lRMdnfeuDC06HNR9lCZAJFdG9To8EOtDWCNdLXQljKwnySnLIKeatCNQ7wcyDYsO5gfT9rBrEocf8rHL14utCsIhb/eH9o29RUV9AR8+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dA+tqKgx; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54b166fa41bso1343873e87.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 12:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743707788; x=1744312588; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XTsIlDstX0o+Mbqya+IkMyfr6mBLbjzx0t4rQvZShfQ=;
        b=dA+tqKgxMEyaBrWTZ+T7TXv+rs/eoD44/x4t7aWao13O3Gd7wAUFM4j25zZwpfUHFu
         ZQXUUs0mPlvA5pz1LwM3Ua+rHXzFoZH4XJ2e1gHhsQ7izxa1P3QgR3MdVLokoebMRP0f
         vCvsIUMwhvQWEHM5tPZl/sRAGTwB51FeYmlvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743707788; x=1744312588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XTsIlDstX0o+Mbqya+IkMyfr6mBLbjzx0t4rQvZShfQ=;
        b=j/jbx1I0U8LwmI4KMGlk3zTst9oA5xi+O0zEvELFoLmYL3f0GIYthCVl8Hv5dFb344
         T60Gu/LVOu/DESRr3kM4juiPl9fdyesnEJwAqPcaZJBjHIudwu+ewT5CzBA5H5r+BcpP
         wR2BOvn5bDgRycssH5DhdS9ztwE79gMPbHtCTgmmO5SizEn0eN0nbmgBmMx84Hz0WhFm
         b4xKgqibEPWMAb+9yb8PTZPwUufgTj+/rMN/6d8fnPW22v/skJK1h2BCZ8ZqBSO1+I5G
         aMsWupYCdCpRSZ5Vo20tZuYMLSFy9XNA2hnDOB3LD1ZwotPcDR7TbAa7cZ7WHQPfOWM+
         w01w==
X-Forwarded-Encrypted: i=1; AJvYcCW/7IIlCpOY3CT78EmsGPW8GGJ2M2S7LX33p2IZATbZEhx56x8B8XjLGGJyFSmIXoL6ZzbYljKEO8wv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1L8jvWv2LQhm3DbfbsqNBYt/cJmYlQHXUt4/jatiCqEpGo5DE
	hTUFUyL2oKOzGbJUrkdopPkkMAIa94gXu+LfRGGYmNug5YAfAFTBoU2PE1IkFQ==
X-Gm-Gg: ASbGnctmLUGClnemfLbfbeWpmdtIgSW7qfTk5y2i1pVxXaGSuEflhRW+XgDzCWkitby
	3eNgSTEMY6izUyczgABcxoYthqqCWBi2Hd2tTpPrEz1JV8ub9EQXL/Wb6pSvkg0Mlj0HwkgVBle
	2sycdRDN3woqNmP8eCfffayvl6cKj7PAD8MwPRu8X97tW3Bo7d7F0uMpVrUb6bASyB02cZdyj/T
	JTtOjoK7Pbj4spfc3jxO2xZSmMfrUUlz5Tj+CAK62fyJbpkRWuatiGrTY3J8MesYqvhgzj84x+U
	vZgWjB6F7bdacuyGYqspOpWRuMd8NHsMFmr00Xaw9nQstzwQ3udJcj+o2MZc+VBiGr978dWHegi
	AGthpwLxBLeO7szAjFrUr05ji
X-Google-Smtp-Source: AGHT+IHCXI3V2p507FEESs4oxanJZZsNHxyB6fAQHEoPMaOLxvmQtP8ckbT8u/hI65VR8pFcvY0x2A==
X-Received: by 2002:a05:6512:2253:b0:549:7c13:e88f with SMTP id 2adb3069b0e04-54c22795803mr113406e87.30.1743707787714;
        Thu, 03 Apr 2025 12:16:27 -0700 (PDT)
Received: from ribalda.c.googlers.com (216.148.88.34.bc.googleusercontent.com. [34.88.148.216])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65d6b1sm230142e87.194.2025.04.03.12.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 12:16:27 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 03 Apr 2025 19:16:16 +0000
Subject: [PATCH 5/8] dt-bindings: usb: usb-device: Add orientation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250403-uvc-orientation-v1-5-1a0cc595a62d@chromium.org>
References: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
In-Reply-To: <20250403-uvc-orientation-v1-0-1a0cc595a62d@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans de Goede <hdegoede@redhat.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

For some devices, such as cameras, the OS needs to know where they are
mounted.

ACPI has a property for this purpose, which is parsed by
acpi_get_physical_device_location():
https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/06_Device_Configuration/Device_Configuration.html#pld-physical-location-of-device

In DT we have similar property for video-interface-devices called
orientation:
Documentation/devicetree/bindings/media/video-interface-devices.yaml

Add a new property orientation for usb-devices that matches the already
existing orientation property of video-interface-devices.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 Documentation/devicetree/bindings/usb/usb-device.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml b/Documentation/devicetree/bindings/usb/usb-device.yaml
index da890ee60ce6e71a11910c565b6f805470782e4f..bbcda28ec7d5695307efa797f57180044afda77f 100644
--- a/Documentation/devicetree/bindings/usb/usb-device.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
@@ -42,6 +42,10 @@ properties:
       port to which this device is attached. The range is 1-255.
     maxItems: 1
 
+  orientation:
+    description: If present, specifies the orientation of the usb device.
+    $ref: /schemas/media/video-interface-devices.yaml#/properties/orientation
+
   "#address-cells":
     description: should be 1 for hub nodes with device nodes,
       should be 2 for device nodes with interface nodes.
@@ -101,6 +105,7 @@ examples:
         device@2 {
             compatible = "usb123,4567";
             reg = <2>;
+            orientation = <0>;
         };
 
         device@3 {

-- 
2.49.0.504.g3bcea36a83-goog


