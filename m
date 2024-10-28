Return-Path: <devicetree+bounces-116489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BDE9B30D3
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B11651F207BB
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D581CCECE;
	Mon, 28 Oct 2024 12:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eLLYjZb8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7EB188010
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 12:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730119529; cv=none; b=nLbzj/cdUuqtxtHJJ5JOXia3MprY1r4nRjPi2yYRBlfYU0CYWxCZOCjwl0+xM1p9MeVEDEjaIxxaNFuSj9la4J5HdplER2Xp/TVHWpNqzbV1c3X0x+kRkWn8we1S2zbNgx19X7LJsZII+Q+NZMxGx1vUD00goBFEESqFX8cb8xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730119529; c=relaxed/simple;
	bh=x77nW9hz/w7BlV4hGHsR7upVRKm8m/wrasaYyHBOE6I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=hlkvtIy0GlxmYYXXhFBjovIWo5KvQeANHnVIMPbvQ1x+P1S3PdZltWeI/5qodsz30cR67yWrWlCyJHF9T3TzRgvcVMDSW3L2M5cUhDTE0k55VYRsqHl+a8o2PqYAYNYwcjBTrCg8clgW+vlXWOohcRM8u2Uq8BPnndPQtxdhvZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eLLYjZb8; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-71e5130832aso2923925b3a.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 05:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730119527; x=1730724327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b4+yraJweQxiypTwgt/zZDRzjUUkz2XRIrNoNkRuEaw=;
        b=eLLYjZb8kRuwqYx2KQkBQLfdd+nB9VHwvHCKseZwxY2y6321CyCW2BarKnkJicgm1d
         H9WYyvYDc3s6kJMGi77MCnrtU1cUlBEjxfbR2yj0v6RfS7BF1A83YxTQtTKcn/cjKlM9
         jFmPs5w59c+EKu34EiRw1AaK1iS6TJnnmouKEdZTBPg8sYe8PE40JAq5UOGTDVrKlyl3
         88h3n3hG0szJkS/SR9Qp0h7khaE+UM3zOQC3YLpRZOcDuTKCsg7OoHhWRD7Z6Zyq6dpc
         ZLASjdjMPA5IdGia/jZT9mbQJ/Ic2AVJkzmgixgK8OoygC6dDsqRyZ+/tr5un5Wv2Zmb
         AgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730119527; x=1730724327;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b4+yraJweQxiypTwgt/zZDRzjUUkz2XRIrNoNkRuEaw=;
        b=I0E4vwyPU4DKQJ46opnhVJIZQAQsz1daackWpR9YOd16G/mDOBcfFQ5h/Da/bB4j/E
         D4VgJll6HFXXsXLkiu1LHKSnIOZ3+qp4LLKFXRv78UUlB9FBTFosYmQzJvWFslCIPIKl
         vHvqUjBELV0o6Mi7KTd9R538bNv6vHgPEP13imx1WQjw0GaTHXN3knn4S0GY0JMFr0zp
         b9ASyc7PC1eTXiuim5enbjXDOytA/MEjNY4QcyRczyeaAAW3EHix1jehH+rorxVuIhXe
         nuvqMmO3OGf+++m0fBlT5O+O2/msRKlYqa46pffL8U/u3dbfS852gZv4++nSXxAjhQ8A
         nLoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTeO6B1FWSzuOmXeYMv7zMyYuFTncZ13PU+jHLjJ6g6tuJpOGsF4xAJLPcwYFMIkv92JDsdcxytZyP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3tYfGIaiG3i9l3MvpEtmoGPIh+cCbDHzouBnrlzXm4CIp46Na
	2vcBFnnxF2LmF0QFGB3Skwbd3+LxwyZw616+9x3dtPZZclVzBxvHpyAG9g==
X-Google-Smtp-Source: AGHT+IG4sdSjIEoJgKuJMhieAf+RDBF2IIEmvJ3Njvg+7TW5xtuV5KFh2xBO8zd/zHrDDA/Wwztq+A==
X-Received: by 2002:a05:6a00:9a4:b0:71e:19a:c48b with SMTP id d2e1a72fcca58-7206303657dmr12667155b3a.22.1730119526671;
        Mon, 28 Oct 2024 05:45:26 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:325c:8d87:ee5c:f04e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a1fe5fsm5638823b3a.160.2024.10.28.05.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 05:45:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: power: fsl,imx-gpc: Document fsl,imx6sll-gpc
Date: Mon, 28 Oct 2024 09:45:18 -0300
Message-Id: <20241028124518.72576-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Document the existing fsl,imx6sll-gpc compatible used with fsl,imx6q-gpc
fallback.

This fixes the following dt-schema warning:

['fsl,imx6sll-gpc', 'fsl,imx6q-gpc'] is too long

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
index c21a66422d4f..9de3fe73c1eb 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpc.yaml
@@ -30,6 +30,7 @@ properties:
           - enum:
               - fsl,imx6qp-gpc
               - fsl,imx6sl-gpc
+              - fsl,imx6sll-gpc
               - fsl,imx6sx-gpc
               - fsl,imx6ul-gpc
           - const: fsl,imx6q-gpc
-- 
2.34.1


