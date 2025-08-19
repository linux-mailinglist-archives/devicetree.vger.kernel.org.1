Return-Path: <devicetree+bounces-206362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5FAB2C2D3
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 14:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35A6B1BA3821
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0553B33470D;
	Tue, 19 Aug 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="flde9iHX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9170B20C000
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 12:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755605632; cv=none; b=Z3OdPX8BdTXP/nstwixypyTLHGGnBN62H/0hKxLD8P2sKxXIkBMF9pkMOjaK5uuItVNwGvYXCmG2yhlunMxQ3rxGfJy1rpcDpwkMiJRk5L4PpdSlKGct14Aj9uoRY6moYcFh4CbrzC/rnI9+ukRn3zxoFDv/9EX9e+Triu38XQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755605632; c=relaxed/simple;
	bh=96sKCN8W6iUHDL5PYlpPkLIhOff9a+rkHfCdGHmVmME=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Nt814kDM/ICXVGNnOzdcpUYo3kLu51TKTWSOfz/2zBi4WF/yawCw56MP8pA+5uwwTYFIODbygUIg9FGrhBPUWmmnlbyNELAttsYrfKEMjyBMg2aUQwoWaEX94Vx8dfW7i0ifLaCQVe92NyBmvNVU1JEOQ/8qyS0uyD1QxYwxaNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=flde9iHX; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so4311072b3a.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755605631; x=1756210431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+2vHRKnZiVaVmCBqGixTtB2tdDEbO4XCSMQRrv7sNME=;
        b=flde9iHXa6ogsXgZOD9LcyfU6/v/KV3nHkBdiiPYtWpUGV4sDCCtBlrSb5XgQ8ui2V
         fv3/UXKL8PicuUwCEqke9JySnOV24Vt0w0P1g/4iNnM5CDLBR5dbV6p1wrSH1g8BoUI0
         zGwP6CeGabfoF2JKUeKl09gFksyYcLXQeQzIeXqybB2lE9MN+veNcdZXcLqFQb+9mRDN
         U6XDOkv50ezpWPU61hSkuIvqsOAIueJT0+qCSYtMHWMq5HW8ap3qX0C+dQzaatfiOHws
         N1+Q16U7s29cpmOSFvW0jqJvbfOE6QxEQibRSNkeYeZR27CwqO9rkYDpZkQpa3wzXBMj
         MgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755605631; x=1756210431;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+2vHRKnZiVaVmCBqGixTtB2tdDEbO4XCSMQRrv7sNME=;
        b=SK8wcOwRFxMswYE+tKK5iTE7wKb7jh2B35SzM50crTt1hhLpvo2zZi27azYgB4sGRK
         fTlVyiLZy/djYaCL2rYSJMMUm9eGZsAGnY5Dp5S93dozDUk9t0Hmdzzw8oD6H7C43JIU
         GhRnY37Mn0Pb2hbOts+bDO9wEb8F45N3OifcH6FdaymrFt15OWS+YoJx7POP5jwsQbho
         fubqCQYE0QDKYCKbcbAjxpeZLBgdg6lKRjj7ZJMP0yEMnhQw3ZSoDvZajn+bUgogPp8m
         FPll7hjrYhqxo4xukwJiVW2yRxfdrmQ/t2Om9lSAmAfnlP6WFBpX+2cWEyEi8VBY9FaW
         2BkA==
X-Forwarded-Encrypted: i=1; AJvYcCVpiQTU4mp4l9VJ6O95GferaHQZQG77SOw/gpAWVFdAbglWt7GTFXaUzABSaH+cjhh9N3K+1KMr/Jpa@vger.kernel.org
X-Gm-Message-State: AOJu0YzY/2IktEyp3iRbUTaeYFP0O1uGNf7bJE8O+8N7Q4y+IIIZIEAU
	q6BvBG92uc6q8AKOw6QWEDpKiXpYOlgPNY4ZTIAe3o/3CoTX+vaHb8Nm
X-Gm-Gg: ASbGnctuL4Om9keL24Vx9vcmZTvKEin+tfDDIe1Lh7z257f573sUTpJ1VKuo/oIt2Eo
	j1K3S1SU9w5invEXJdmMSgg8Tl0qqaBxOBheK0Ya+avocGlz9rBZsD+0HLe1w+0r2m2xhxn37vc
	+N7rNafhZKxEzmYbjBlzB4WFiXnywIE4XkMU+ikfoZi2DPb1nX4SlMHiQAyOWclDiid/GwTm53l
	zVhxZ9MeWLH1erDpBlizBSUnS0ZUo65Xzo9DpgO1aqF+yXZDQicf3X9/K++gVph+rCfz3k1MFq4
	NCUd570BMi6TaTr5wDP4lRmOakHaF4l8Mf4M/TV4WXOau5YDpIgroJ5fEDKcbJNISaW7sGOKt9Z
	03wdU2EP6sAC7SiWyv4TPbb7FChabKmXsW7wC
X-Google-Smtp-Source: AGHT+IGZFSssZYv1wRJsBAbY0eJGGeYf5A8byIZ2FDIdrF+L6FkR/CXYK2tWDqXgLnMk3q0JBd4YNw==
X-Received: by 2002:a05:6a20:a104:b0:243:78a:82cd with SMTP id adf61e73a8af0-2430db1ad7bmr2688715637.26.1755605630788;
        Tue, 19 Aug 2025 05:13:50 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:3ce6:43aa:f6b8:33fd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d0fbe95sm2352749b3a.25.2025.08.19.05.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 05:13:49 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: krzk@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: w1: imx: Add an entry for the interrupts property
Date: Tue, 19 Aug 2025 09:13:44 -0300
Message-Id: <20250819121344.2765940-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is an interrupt line connected to the one-wire block on
the i.MX51 and i.MX53.

Add an entry for the interrupt property to avoid the following dt-schema
warning:

'interrupts' does not match any of the regexes: '^pinctrl-[0-9]+$'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 Documentation/devicetree/bindings/w1/fsl-imx-owire.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/w1/fsl-imx-owire.yaml b/Documentation/devicetree/bindings/w1/fsl-imx-owire.yaml
index 55adea827c34..2c1bbc0eb05a 100644
--- a/Documentation/devicetree/bindings/w1/fsl-imx-owire.yaml
+++ b/Documentation/devicetree/bindings/w1/fsl-imx-owire.yaml
@@ -24,6 +24,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
   clocks:
     maxItems: 1
 
@@ -40,5 +43,6 @@ examples:
     owire@63fa4000 {
         compatible = "fsl,imx53-owire", "fsl,imx21-owire";
         reg = <0x63fa4000 0x4000>;
+        interrupts = <88>;
         clocks = <&clks IMX5_CLK_OWIRE_GATE>;
     };
-- 
2.34.1


