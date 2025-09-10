Return-Path: <devicetree+bounces-215156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD91B50AB6
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 04:05:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01CD83BAABA
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 02:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1256F2248A0;
	Wed, 10 Sep 2025 02:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nZ53rwTl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C26420A5EA
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 02:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757469945; cv=none; b=pubDoS9mv4rz9bRY798FWXEA7IKhKDaL6jV7aqwW5o0LRXNxvXOZtVudRDZBumHkBkJ3ruAJuScMx/fm1i6ycqlODqnzwGgejJUWpt2Db56mylxuFEqg0e5t5fh0iPa4U4Gl/USKSHU/WD8pxvtJwYnCO8Cdog+dLV+4oxrUrPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757469945; c=relaxed/simple;
	bh=T8IahFV/lHr040DpC5QvUSqCsPmapE/THpId9dOXi/s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=H9IwBnnv61aAwnGiNtt8zxaU9kEucetRB3RMoq546FHYGQSp7ZmkGIqNSotiMW2i+AltfH04cVLOpG4D99NvMLvsIMKgsRy1MNhshJ0kPvhn2quKYaXpi/bx2cTK2gTWtOn/RTy883GD5vLeRPmSSJyIlHCW6Oseq7cK8XEf+/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nZ53rwTl; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-25669596955so29800275ad.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 19:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757469943; x=1758074743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zE+EZUy1vWC0mqe6ZjTgyhTREFlC0ZMwwUZ5vlxwF8I=;
        b=nZ53rwTlUrzTcWV8KzlBJkoJWcyh80UN3ciWGh14hWDIWZjg8D2Vx3PKh2PSP92QyB
         MqZIU0rSx88D7Y7dxbW2HkoN+8rAlTeFWSEVAekBIF/luP22WM3niErQAu5mk/84G0xY
         3ZekFWUXhGCAQklpGFv7F8ZieyhVZP9d2avSww9jEKNvqcwyAKt72yNJ7f0a5mICBDOp
         Q2kGzt0JN4f+bPy+oXUWvgBz290Z5iaO0fQM9ubBdz3wWZXqR4pJjVh3Ik1Sd81rCaA2
         zKqzxTMZsXh9DUMO/z93vs9GBOSL4KyIHwOaIhm9FvuU2wt2+OHTkvfSUM/hxynyeCE2
         LBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757469943; x=1758074743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zE+EZUy1vWC0mqe6ZjTgyhTREFlC0ZMwwUZ5vlxwF8I=;
        b=ZyVTVLUhmiHZEECeWEic7hbCCv5+BP7xymykrf6wEX6HNDLik2spiCXJ5xdRblD4Yg
         3q/LPcIapLTaZPWFfRdHGOFcqh3LUhiPcobpx3TnzjusUubQ3IqLELnymklCPL9eFnuA
         ZSaYZDEOzSY4tayuWUuSbJACgew/a8v4tEe9ctzxW7bgtaQjzSNlPsM+4N8OM2aiC73p
         pdNDJ9/I+9vk7RJnBVFR0tJUVyxh/WGe4Je5LLGzW3Jy66CrlyI5vVytTx6JdTFoYmqw
         lfNTMAHoWc5LqtoDtPGgAAXwCPosCJU3F+COku+snT/31cvF3CnVKibvA/uszLauk42v
         66ew==
X-Forwarded-Encrypted: i=1; AJvYcCX1QGuLTJbXjOdBpiOl/2bwyB65sVuVAliSjw0juRAoCevMPhcbKoujU0z+8jyUki9vmVcTFHpDrCOR@vger.kernel.org
X-Gm-Message-State: AOJu0YwWHq8jtWToNj961AYcfmupmOvdFZxnDO5XUGTB3ICsex3uNFtT
	fh5zRY1juLmJe5Aou9EqgyfcRcUjDw1MXRmkn5su1wycrotRDi0m/1N0
X-Gm-Gg: ASbGncsjB4WyqwXCCfM9F+j93Aa3pp8zn30/+VTbqWNeBDK3tzlMS663wu5ZcsdY2Rz
	CKIl5TDK0yewC06nQaS0rJqLkGS15YGGK+hJeXADVclyCu1wYKHuVjd+WgXClH+IrQEm2Mfr7KW
	2X6JP3HbSfeQtdJf8bPtPUZXAoqiZ7WeYg/6d81wi7pxhbgF30Zj6kAbvrwDoDIjhuHnsvZ4x7h
	EFY8Qtk6nSBYXC9CwZ00Fpb6MPEyB6kXu4hmzg7VsuOlXWoMyzROUmB52Z8qqGQJDTcUOoELUbw
	xTijQ3lms03wpjkUac51Av0QeDEPSSAgSZZv74x0al0vC/wzget/9FsVZ/mhAoVBKfAxtLAHE47
	pt/sLMFBFjHGEhpe1a/5tlTth3TevaMfy74a4
X-Google-Smtp-Source: AGHT+IHfsM+uQNdeDlEV8Gi3sfhH4rxp5TEHRWiyAFDuYJhy1hRqhib9ntEdtEsP9dyG9OLtpdKBRQ==
X-Received: by 2002:a17:903:2a8b:b0:24b:270e:56d3 with SMTP id d9443c01a7336-2516ef54cd4mr178901465ad.4.1757469942906;
        Tue, 09 Sep 2025 19:05:42 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:58b2:c9cb:20c8:e698])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25a27422bb7sm10607735ad.30.2025.09.09.19.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 19:05:42 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	kernel@pengutronix.de,
	Fabio Estevam <festevam@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RESEND v4 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
Date: Tue,  9 Sep 2025 23:05:23 -0300
Message-Id: <20250910020525.342590-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

imx6sx.dtsi has the following lcdif entries:

compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This causes the following dt-schema warning:

['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long

To keep DT compatibility, document 'fsl,imx28-lcdif' as a possible
'fsl,imx6sx-lcdif' fallback.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 2dd0411ec651..ce31b873fb95 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -19,7 +19,6 @@ properties:
       - enum:
           - fsl,imx23-lcdif
           - fsl,imx28-lcdif
-          - fsl,imx6sx-lcdif
           - fsl,imx8mp-lcdif
           - fsl,imx93-lcdif
       - items:
@@ -32,6 +31,10 @@ properties:
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
 
   reg:
     maxItems: 1
@@ -199,7 +202,7 @@ examples:
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     display-controller@2220000 {
-        compatible = "fsl,imx6sx-lcdif";
+        compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
         reg = <0x02220000 0x4000>;
         interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
         clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
-- 
2.34.1


