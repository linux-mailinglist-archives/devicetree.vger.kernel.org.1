Return-Path: <devicetree+bounces-183128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6955ACF5D4
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 19:54:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 748BB188E02D
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 17:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D4327A102;
	Thu,  5 Jun 2025 17:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="I1VnEq3T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8776627A928
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 17:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749145992; cv=none; b=nVEZeop73EY3Y+iIBgupceYrTXDI9xRHnexm345WTThFnbH49isuDLatNDO+CKb09yIvXLWIFyRhT7QTboWqBs1Bdshg/sp8GtTFGfPRjmq5XBkQ9iyHjfkiDCOQxb4VQewgVxcQ8avzAFxlO1Yt2FeO6xvFBqLifWMxW5iY8II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749145992; c=relaxed/simple;
	bh=NngJ6Yx0t8C9t8P4XXbFrpgjfgvwAkcfBnBpT4lxGFs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GqBmuMmLpG/paEOLzCB5PqgLIh4XP0Wux5t/1asCgM/OH/4NaozchkK9oAkOpa7HZaKqbAkczAYNbnpvLw1CbBWAA2rJ4GBcOhgI/pD5gDbJfbzZu+NPvakxSdEj6+ebs/nE0l6a1klHazAT67HFGApw3yCahz2tM8n5c+Jue6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=I1VnEq3T; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-551fc6d4a76so1309720e87.0
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 10:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749145986; x=1749750786; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ar8+oEy28CepxnVsr2jEiRDXTfDok/weLPLs5Z9kVHA=;
        b=I1VnEq3T8ddqhvoQ5NQEukgf98kgl7JFV0+hJFR08RpOZNJJecr1c0dpbMFgc2cV05
         0qvwE/NiO1qE7Mp+j7Wh7nVnDoL2Ul0nM8dMnVCvPQiR8V5swuaCtKPfusjdb1M3GaMR
         wlX1GOuM584IpO1TFQgHjYERmMzoyas7NAhKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749145986; x=1749750786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ar8+oEy28CepxnVsr2jEiRDXTfDok/weLPLs5Z9kVHA=;
        b=GgYprqnz7qSZ98FdacJ6BN0Y6fCOYRUBGPo1wqAPyfC+vBY3A3Ke++UhDAZcZnyRGV
         W+MCGQ0vOt4NJtThURZFV99glmrZLgLflECl3PVqVnUBCILhxuuujWJjn0J5slmeVxBA
         3Oz9e7hRVvKfz2zfYMesEMklfrdLveXGuzQ1CuxRh1mMJ7MthjjxBmSe+cuWCPhHCcVn
         DyfVlgtkPx2yZYbIQK3DMFY8F986Nofs5cULJ7JPwwGNniPU7utpFGMJlz3DDeJ2/Ir3
         /zM3QzyXS3C3LKdyPfTvfOc50KqWLGjhgOXnWX9IDsTjIMOBXIEa54YnMbbtjh4i3Bkl
         HOvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGfulKTRAqGQELCS5WKV3M9bhAD1P1mHu2tkLfFE93FH+IB01Gp6EIM5M4R5i0O+D9muekY1LA6q+P@vger.kernel.org
X-Gm-Message-State: AOJu0YzVMWS+4BfSG+HCavbC6fWimG5CWos3yH+htVCFEbs5bOc0rrhN
	LQTPhhH+cjHRuaNQAo7UbbRF+xjJ6IuIABLAYkaOPuOnQS4871VW8miX1AzTPBPXwQ==
X-Gm-Gg: ASbGncvv9aJZOCWqLuTXB1v24z9vq5iAmrBLNnQq/9InUBCyOsCWkrHFxohruOF4xIq
	+WMmIPBJ3A2Wld9oWZhZ9FBF5zYibbuRPPNCOBIA/TCGCQ+BN0JtLiwCtGZCPIIAavNumV9l0XW
	s2u2uU/T0JLrizo4z8xv7/g8G21I+vB1SVP/OhNL20mRZiOS7bh0VNrOIv7zQgdmfIYZ8qGRFwP
	L1IHv9vJ0ZNlLvrT/A2eFc6y2/6VJ8Zz5G5aNiPaiRePaOgU7jR3cNyZOWl9v7AqumE93qBKWtU
	3BfDq2LWOSSJArwFh1eejIWzAYOQ/BjFFYPYcFckfuCtLx6d7jKr7luOPrL0RqzNQFb5H3z2pAg
	eGyYfwLhvcm0ZkUQXTHwKr3S5qOtB4Lcow7uS
X-Google-Smtp-Source: AGHT+IGuo9eAuj3/ZulUgVYVuEINR6TV4aJnWcXikBTGTDNlZ8YqpVl3rERmqVeHdcMBB1locGc5IA==
X-Received: by 2002:a05:6512:2242:b0:553:3892:5ec3 with SMTP id 2adb3069b0e04-55366c354f4mr16249e87.46.1749145985864;
        Thu, 05 Jun 2025 10:53:05 -0700 (PDT)
Received: from ribalda.c.googlers.com (90.52.88.34.bc.googleusercontent.com. [34.88.52.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553379379c2sm2641210e87.251.2025.06.05.10.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 10:53:05 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 05 Jun 2025 17:52:59 +0000
Subject: [PATCH v2 06/12] dt-bindings: usb: usb-device: Add orientation and
 rotation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-uvc-orientation-v2-6-5710f9d030aa@chromium.org>
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
In-Reply-To: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans de Goede <hdegoede@redhat.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-acpi@vger.kernel.org, 
 Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2

For some devices, such as cameras, the OS needs to know where they are
mounted.

ACPI has a property for this purpose, which is parsed by
acpi_get_physical_device_location():
https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/06_Device_Configuration/Device_Configuration.html#pld-physical-location-of-device

In DT we have similar properties for video-interface-devices called
orientation and rotation:
Documentation/devicetree/bindings/media/video-interface-devices.yaml

Add rotation and orientation for usb-devices that matches the already
existing properties of video-interface-devices.

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 Documentation/devicetree/bindings/usb/usb-device.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/usb-device.yaml b/Documentation/devicetree/bindings/usb/usb-device.yaml
index c676956810331b81f11f3624340fc3e612c98315..a44eb24c657993f88145377a4706ec419b6cd998 100644
--- a/Documentation/devicetree/bindings/usb/usb-device.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-device.yaml
@@ -44,6 +44,14 @@ properties:
       - minimum: 1
         maximum: 255
 
+  orientation:
+    description: If present, specifies the orientation of the usb device.
+    $ref: /schemas/media/video-interface-devices.yaml#/properties/orientation
+
+  rotation:
+    description: If present, specifies the rotation of the usb device.
+    $ref: /schemas/media/video-interface-devices.yaml#/properties/rotation
+
   "#address-cells":
     description: should be 1 for hub nodes with device nodes,
       should be 2 for device nodes with interface nodes.
@@ -103,6 +111,8 @@ examples:
         device@2 {
             compatible = "usb123,4567";
             reg = <2>;
+            orientation = <0>;
+            rotation = <90>;
         };
 
         device@3 {

-- 
2.50.0.rc0.642.g800a2b2222-goog


