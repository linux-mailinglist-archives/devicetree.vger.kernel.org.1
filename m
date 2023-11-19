Return-Path: <devicetree+bounces-16907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EDD7F064C
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:06:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34C681C20432
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 929AE6AB2;
	Sun, 19 Nov 2023 13:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mDBIVVNK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD12E194;
	Sun, 19 Nov 2023 05:05:58 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6bbfb8f7ac4so992244b3a.0;
        Sun, 19 Nov 2023 05:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700399158; x=1701003958; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yRMmV6zXIBxin2vWyb3fCap7O+hhrgMO3NT51kQpsnI=;
        b=mDBIVVNKrR9k8vwM0FXck+Cwy4Y7dZq7W6iAEfe08luDOMpnMuRJhwmArsCruovXDo
         and+yZjb4H39OR/zrJ/CRKcDEj0ZJheksV+AqCLm6+oFJcpmlxIuEt2TTqjLECE+raP8
         xI5S8QrlFRh6HnBoo5v/a9oyelo3YDUdaaoIoaaTn0C9OGLyj7MbuxfOvxtBqxNf7vRV
         +SrQsWV0454vfpit6YWUk/Kq6OOXIFqFfBgGnnSnvJ8VZ+7pA1I+p9dhWbyalWDD6jXf
         7Im4ZI37qz786ZPL5lLSqdsIXnZ7/rEO5538ux/wZpS6scP+s2nhGhw28wL2Qumg5BAK
         R2+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700399158; x=1701003958;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yRMmV6zXIBxin2vWyb3fCap7O+hhrgMO3NT51kQpsnI=;
        b=buB4GDyt6rahVZKWP3sn5Ln6deTt07+QftM4Xp2sFraGkGITfuo0VGwftaOkuL9w5H
         wORNXzFpbH5/xVFdiN+2ufZuFn7APW9VCPDP5wxtAH4aqeey76yeIt9d0si9tv5qdF3G
         aXBpnfUAmzzk4euTN7TnQPcGrcCsmCBq8LrsIYe4vlW1pa5dD32lYR2/to2dYwowjNEt
         ZSm2PzujpHwWExquYVkHhdZE4XsbEGakGKK5JzEkMcmLgULQbEt1AfodB/tE/uu6O1FX
         cnm/mpybye8M9E8ZoEzE79Kvdiwrat5D7oNtDaBUYnAW9hS22DsXz1l0ta01vOTPTGX3
         +KKQ==
X-Gm-Message-State: AOJu0YxvBRvk39+3/URFJx+0orNEND9wrp/TIQhi+ofT+Hft5jEh1A93
	IAMYJ61Ia31YUuED/CR4ye4=
X-Google-Smtp-Source: AGHT+IF4m/bfIYQpQZf9oFAinEAJ7s3bbuDzUSlve8kYx8ux9lus7RxdWF0dp8aC+Ku55+cxXCJOxg==
X-Received: by 2002:a17:902:f688:b0:1c3:a4f2:7c99 with SMTP id l8-20020a170902f68800b001c3a4f27c99mr6505219plg.4.1700399158180;
        Sun, 19 Nov 2023 05:05:58 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8afe:6d39:e955:7d2a])
        by smtp.gmail.com with ESMTPSA id ik14-20020a170902ab0e00b001bde65894c8sm4433696plb.268.2023.11.19.05.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 05:05:57 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: daniel.lezcano@linaro.org
Cc: rafael@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	mazziesaccount@gmail.com,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v11 1/4] dt-bindings: thermal-zones: Document critical-action
Date: Sun, 19 Nov 2023 10:05:48 -0300
Message-Id: <20231119130551.2416869-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Document the critical-action property to describe the thermal action
the OS should perform after the critical temperature is reached.

The possible values are "shutdown" and "reboot".

The motivation for introducing the critical-action property is that
different systems may need different thermal actions when the critical
temperature is reached.

For example, in a desktop PC, it is desired that a shutdown happens
after the critical temperature is reached.

However, in some embedded cases, such behavior does not suit well,
as the board may be unattended in the field and rebooting may be a
better approach.

The bootloader may also benefit from this new property as it can check
the SoC temperature and in case the temperature is above the critical
point, it can trigger a shutdown or reboot accordingly.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v10:
- None

 .../bindings/thermal/thermal-zones.yaml          | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
index 4a8dabc48170..dbd52620d293 100644
--- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
+++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
@@ -75,6 +75,22 @@ patternProperties:
           framework and assumes that the thermal sensors in this zone
           support interrupts.
 
+      critical-action:
+        $ref: /schemas/types.yaml#/definitions/string
+        description: |
+          The action the OS should perform after the critical temperature is reached.
+          By default the system will shutdown as a safe action to prevent damage
+          to the hardware, if the property is not set.
+          The shutdown action should be always the default and preferred one.
+          Choose 'reboot' with care, as the hardware may be in thermal stress,
+          thus leading to infinite reboots that may cause damage to the hardware.
+          Make sure the firmware/bootloader will act as the last resort and take
+          over the thermal control.
+
+        enum:
+          - shutdown
+          - reboot
+
       thermal-sensors:
         $ref: /schemas/types.yaml#/definitions/phandle-array
         maxItems: 1
-- 
2.34.1


