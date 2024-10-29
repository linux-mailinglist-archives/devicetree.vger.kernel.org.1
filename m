Return-Path: <devicetree+bounces-117140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 663E39B5292
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 20:16:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2ADAF2847E5
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 19:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB7A20720F;
	Tue, 29 Oct 2024 19:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YK1/TknH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F54200C90
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 19:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730229409; cv=none; b=iJhElIsOJTSSHTn2CKeyzH3K54KxE614vzNTEpAMIuIeqXQ2RaJMElF+yXCEuXIOi/U9TaQxtZF/gl5Jyi7zBC+WoHP5QagvmV7gWXfNye6nXIAprZFPLxBbATQM0dDQ12DXpYZ6oMXIajQunj7dZCpsYAOMUhi0fDN49W65y4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730229409; c=relaxed/simple;
	bh=CHgcuFeC0qfAvMlVioIsx9CNUcHO1RyImg+Jv/lsX5E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=P/dxZKfmHJap+jli5r7TWtk1/2nreDA1AV/OMdhWGZey4cOgWm8SboFiDLyPZBs0elIqLuh6+0nayMQz7gyVX+b1p5d1v2v1YOFQqWIdGb9hyvlGuuEd0PUnUAmSxIzYX4sUlgaI9A1Iryal4b+Hqz8j6tpx12zNdYHEw08pUzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YK1/TknH; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20cdb889222so56235975ad.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730229407; x=1730834207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HYm6/tVCLa0IRn8QK44VqcJkbGs60MVOw3b3ZJUZb70=;
        b=YK1/TknHzDkmzSlIPrIkXB7ozeKdzVpZgzro2WaqV/32EMGSmBUA6ViSGhdwnGk1O6
         YiOE9WT75FFLC36HnFEENe90kMJwqLwS9fG2AjCQP7HwfD3H5QKIc4/s/E2OPf1IsyhT
         KM81FmztdyhhMIifi58mqclb8U2QBoMRaqsah8Fcq2wq4/2njZ3jKlo/O5SIEPogqO24
         NgUD8S/Pav6KlM6KyTXDnOkmMeoNmK7HIAtxCJ92M4lOzlCY/sXrDpZzv4e2XokLi6Ps
         Zy19/FV9+JczAcPvUgnQHoNhDo6+EiTJUiIPsKda66zJ2SMlQr5TSSSfqLmLdR1G3z6D
         GKNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730229407; x=1730834207;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HYm6/tVCLa0IRn8QK44VqcJkbGs60MVOw3b3ZJUZb70=;
        b=rWrZmvQvu+Hced+fzyCGINjucHFMRDkFdqwTdY2LyM9tZP0cFr24GAZ/rBDjIhJsuO
         i0fw8Zim0bmdDMQseN+sCQGpk+uVSd62qAKyeLJDkZKW7MIdntpD7oG0YTPcQ24pkvj6
         m085FQp2heT9oPTMaYKEfGk+g+hMyiVLrdvQs+qN3wh96YBc1IRR7eUo+OJiNPVxnHaN
         bl2wweqlAOCuMZztnsX9mob10WR3NXwMS9/FASON6RDRCd1GL5ovvz9F4W2+Ts3tr02V
         Vup1/2yuCQhJHK/v1JdfOKTMuLViQp3p/hZ2krnepF9hTwzd/1waQj7xI48893ALKVG9
         TqSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOu9Bxk3VaCmIFHtfa3uztti0OKAV3fVWcbjip26G7WOezLD/+EUZzQHIoqGGFuk+7ybJxTIM1N6OZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwoYq9xbFWfI2nYa2gHp26v6yn/BGqiZL6TRpX8ipEdhNusNvhU
	em2S14ElSKJPI01zLiVnM88GRK/T7DGecN5Fw4ifzc4G1k3I2+F+
X-Google-Smtp-Source: AGHT+IFflxdhOOdhlw0WMMCci3BlMlyqQZ2ZA9xv59ogXANUwG9RzYtz7JlPEFXLPDfj8fEW5WQ+0w==
X-Received: by 2002:a17:902:f686:b0:20b:8ef3:67a with SMTP id d9443c01a7336-210c68744a1mr195187515ad.7.1730229407280;
        Tue, 29 Oct 2024 12:16:47 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:190a:1425:254d:1e7a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7edc8661061sm7842346a12.17.2024.10.29.12.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 12:16:46 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: marex@denx.de,
	a.fatoum@pengutronix.de,
	andreas@kemnade.info,
	kernel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 1/3] dt-bindings: lcdif: Document a imx6sx-lcdif fallback
Date: Tue, 29 Oct 2024 16:16:38 -0300
Message-Id: <20241029191640.379315-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

imx6sx.dtsi has the following lcdif entries:

compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This causes the following dt-schema warning:

['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long

To keep DT compatibility, document 'fsl,imx28-lcdif' as a possible
'fsl,imx6sx-lcdif' fallback.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- Only document fsl,imx6sx-lcdif with a fallback.

 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 8e3a98aeec32..ad0cca562463 100644
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
-- 
2.34.1


