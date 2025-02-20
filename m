Return-Path: <devicetree+bounces-148891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF8AA3DAA0
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 14:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50CC17004AF
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B11771F7911;
	Thu, 20 Feb 2025 12:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gCIeQndH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332361F9A95
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740056327; cv=none; b=ahxxPz6LZMk4jBbVGuZPwKKIVO7aG947f9fYSQ8n+DDtYNaCM9tI91UVGIfvUjb4+ogW1CTtbtvHnmkLFf5lwqsqk/mlojvMKpMGXoTJdVFpHSmd+H0dIBCgeeDgmQSare7R7vdOvZjFa2rF/6dnlvb/Hj+hIuBhGkDxk9yRcUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740056327; c=relaxed/simple;
	bh=ZXWyR01Td5pUk5ZjeXQgvdvW1BakZ+DcJ2jyezTE0pM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CJePRcR6uQrUyouqdFnxv/sCeWUviWA48tM1Btf56Q4cmX7cE7vGJVytMNG6L+Jv9j/DgtZuV15NHSAaoRXIy4fcZ1wqAwZFqUDbNAMxkAqx/rh7CoK4thATJHUIoJXUguNTD0auCkDgFodQ6TjvSzE30pO3q7FeE9+9g285N74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gCIeQndH; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-22128b7d587so15275475ad.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740056325; x=1740661125; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ss+xLnzP86/60Uug0yXb66O9bHiQCdqH0RrPmgT0Pw8=;
        b=gCIeQndHwQF6Dr7qJoEpciE2PHXd36ncs1O4hT3WquJEGYF0JnhE4vbj/D7O0adCed
         WPFx13bibtge4JKyBy0F7qieWT0HmRth0XGK1WD1zNC/LWPF99NAAaqpYI6IBUcwhYQr
         mhrWhldiW84cmnjEVgMYAmoff1HqAv+nZ/rV6QJpEdA39TE9N7A4+MiKpxQaXIB9zTBs
         Y49ax6QSvekATCMrIRRCFCcsdapLkIXWFXwOsDiuRkdyvX0qUamhbY/j83NmX7L1XMn8
         AOl027QVBw0Ha/17jB5NAk971ysU4W/46JBkAZkTNe2+ycIXeOoGx+baxS9jWL7AiEL/
         O8AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740056325; x=1740661125;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ss+xLnzP86/60Uug0yXb66O9bHiQCdqH0RrPmgT0Pw8=;
        b=rFw1ia1bQWf9mIl29FBwtTwVPycSEwkVZHSG8I54GQ36C/2A92hxkuFtSIE32sKxht
         u42KddYXWJmdKf9eeHwqf36w0Ua3WUnOG/fbQyGUnkmCzV7MiyEcDoiki3SmKmgCiIHg
         Y7hkvjgvp1jLjk/BHrHndFIO0wxqLprNY/Cvp3Zw5hCcdkF1Sd7R6uln71o4NmC6idUP
         8dwOJuKFFkpRhMm7YVra04jV+c40lllKJ6ttc7u00OxORzp8tYDd5htDNDqfctgfyRw+
         Teul4kQsHJhc96erlpDnPuKHgqiRCg8lR2FR1oKvZsg+I4TA1ktkTKe54v6jiftILLVw
         F2aA==
X-Forwarded-Encrypted: i=1; AJvYcCWmG7nPinMCH64hFUFxRiRZVuCbmmrAFSfTEtab1IWOdFgBhPwmnDss0OxGWuyQxEc8pJ/eMu3tjXj9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4SVOwBzXbm+/KD0/VcSk3hhUfcoc2EuEEVHFsUrpivdMYHsFS
	0Mh4FAB264Q7hrGMnWV8BSXXQw0PFMpQiRSIKOe/T57zn999frV8hl6Qug==
X-Gm-Gg: ASbGncuBCCUI4H9VYqpGMp4JQO7LsaDlyxeURlgn0YEw+/AXNFCO6czDKeds6bx5Apa
	fWVLL3/o/NA+9d0/+patLApAXfeL96NNZCIhiF23mKvvtCmL6PqqCr+ii5auJuPHeVM7lloTwPr
	XP/yW2NIjXzd8AhnJbxECw0H6L2jcegdevVb+yA0xxxjThkFQqUzBku2RpaM421JQQqFj1VGcId
	MBkYvKKhf18zna70SNjeAzVndtUVEEsSKu5fKhgyWazX/S034ip7B22osu4PJZU0zE2WjNa7ywM
	uLgES1Cw0j62N15ufY6y8VyUNwBkCg==
X-Google-Smtp-Source: AGHT+IF5a/8AyECCIuIozmX47pSxGZKQp+arqspxWdaMdWfsTMjbgi5bzRJOQToQurDsztyTIgq50w==
X-Received: by 2002:a17:902:ea0d:b0:220:fae9:8a4 with SMTP id d9443c01a7336-2217055dda9mr96907035ad.6.1740056325282;
        Thu, 20 Feb 2025 04:58:45 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9a27:2e77:89d4:5724])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7340b5f1bdfsm2699241b3a.120.2025.02.20.04.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 04:58:44 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: miquel.raynal@bootlin.com
Cc: richard@nod.at,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: mtd: mxc-nand: Document fsl,imx31-nand
Date: Thu, 20 Feb 2025 09:58:12 -0300
Message-Id: <20250220125812.2370056-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

imx31.dtsi uses the following NAND compatible:
    
compatible = "fsl,imx31-nand", "fsl,imx27-nand";
    
Document 'fsl,imx31-nand' to fix the following dt-schema warning:
    
compatible: ['fsl,imx31-nand', 'fsl,imx27-nand'] is too long

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/mtd/mxc-nand.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/mxc-nand.yaml b/Documentation/devicetree/bindings/mtd/mxc-nand.yaml
index cf4198e43d7f..bd8f7b683953 100644
--- a/Documentation/devicetree/bindings/mtd/mxc-nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/mxc-nand.yaml
@@ -14,8 +14,12 @@ allOf:
 
 properties:
   compatible:
-    const: fsl,imx27-nand
-
+    oneOf:
+      - const: fsl,imx27-nand
+      - items:
+          - enum:
+              - fsl,imx31-nand
+          - const: fsl,imx27-nand
   reg:
     maxItems: 1
 
-- 
2.34.1


