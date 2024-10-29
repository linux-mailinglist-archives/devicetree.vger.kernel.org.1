Return-Path: <devicetree+bounces-117141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B87B29B5295
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 20:17:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C4CE283C2B
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 19:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E92DA206979;
	Tue, 29 Oct 2024 19:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nj7i/Gcf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A9D2076A5
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 19:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730229413; cv=none; b=Cmk1zHWBNF+BWghpsmlzR0pIR+Yp3X2XHRNFP5kMi/9YSyBijhnt5QZc4WjFpvgJa1RKU5Ru/Qi/fBHvKXVWu0ULIFtPkiQEBeLVZdyCpRjYwW60Ynaq3ozSPffAUNmFFJmTUMXST1hIggDdftItkXYxERenRvnr1AAuXjAVvqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730229413; c=relaxed/simple;
	bh=gUJIZGPrG1eoF8g+IJQZdm5bRftguLy/j6J6cRJX5ZA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K3SS0PEG2OH815ZzNu++LJPHzwGQoSLq1YEEN0yLh3POa7HLwRNixVFHtbLiEO9N3QYb/pmMWdsML2p9EcxD2CmIAubxSO9yqFDmfqC9ypTVsXEZOMK2U8Iluo3d3/NCY1Im7bwCy5P3ebN6/SjWFiA7ckX7V422MxWcV/YO+P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nj7i/Gcf; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7ea8c4ce232so4918308a12.0
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730229411; x=1730834211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Go75F5WGin7Ix/MZ1KEJuNCfk0dx2TFxpmOXy5zXdWs=;
        b=Nj7i/GcftGGoFRm6+iyJltwcgngTOFTocf+8X4M07ABTuMKuLNGq18zcd+Q2CQBTcD
         YPGxAb4MI7oTuaTQY8MoamVh63+OooqTlIXTZ1odrrEDBPouhk2Zjr4Ace4Ur42z9yYz
         ZKr4iGPKP3nz9vbhJLgTqI2URy/Pqrak0/en2pVxHPL9wVR2qMhySVFc/xgk8mWCYMvV
         EaX/T5qbid91Vt17YEu3PBWYudIh9yLcThS6gFm1Gvo9MECz+a2EMc9VN+kquLYZexzc
         qwfqIyzr4NHTrRwWldPFJeZs56znQG75hSs8EIPjI7G71DmVijhJZFqAhRXuE+nSuyzM
         M5AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730229411; x=1730834211;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Go75F5WGin7Ix/MZ1KEJuNCfk0dx2TFxpmOXy5zXdWs=;
        b=wAeS615aBNN1RJPsT2uWCYbQIOZbkggN/aUSTTHMkF0gUOi9m3MhX6fSbjOsxWOuBu
         bCpJbMsX1FrlkJ5Bzo0by6OrX2X5GGPfUfUHqYaIDpjXarsCYq9I4z4fGlJKUAgjYMPc
         KGR9vGHL+Qmte5jXjWMzB2Ka3k7kWXBjNAQapStIlOpRbwKEh/SZFSU+uWcOCWbJVamd
         VEq3qn3V8HlaBvv2g94lM+aemObdKMWTUnc9tGlYaXI84Ynl7Xz0rNOh6ssDTCeireJM
         SfcIRr7hNSCLFDaQetnFiesTgtv6xxLEfNfQ+TduKAhh5hclS92yt+c3kWJmhWdad/vr
         LRyw==
X-Forwarded-Encrypted: i=1; AJvYcCURGaQWW1JUQdWfKNfrFwMOuMAWuF71J4/dFmL0JZXtidL3agOqmCzGMfhucj37hw3KoaubFz6/1j5d@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk4vh1g42g+KhXa2icneKoG8J+proliHSudPPxZCUSsQAfEa/d
	y2z9OetxKxDMY/+u4+Cgil4bKj9nUsZH5aifZqdGGScUBmkHKtQi/RRHRw==
X-Google-Smtp-Source: AGHT+IFenngeaT6t8iIEBhKoMZoPByKBmWfPEehMYTOwuzAHWbQ1Z6ZF1XwcmALtKo2mLUrDVAj/Zw==
X-Received: by 2002:a05:6a21:3a41:b0:1d9:237a:2d56 with SMTP id adf61e73a8af0-1d9a8512cedmr15070567637.48.1730229411268;
        Tue, 29 Oct 2024 12:16:51 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:190a:1425:254d:1e7a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7edc8661061sm7842346a12.17.2024.10.29.12.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 12:16:50 -0700 (PDT)
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
Subject: [PATCH v3 2/3] dt-bindings: lcdif: Expand the imx6sl/imx6sll fallbacks
Date: Tue, 29 Oct 2024 16:16:39 -0300
Message-Id: <20241029191640.379315-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241029191640.379315-1-festevam@gmail.com>
References: <20241029191640.379315-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

mx6sl.dtsi and imx6sll.dtsi have the following lcdif entries:

compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";

This causes dt-schema warnings as the current binding only
allow 'fsl,imx6sx-lcdif' as fallback.

['fsl,imx6sl-lcdif', 'fsl,imx28-lcdif'] is too long
['fsl,imx6sll-lcdif', 'fsl,imx28-lcdif'] is too long

The imx6sx-lcdif programming model has more advanced features, such
as overlay plane and the CRC32 support than the imx28-lcdif IP.

Expand the imx6sl/imx6sll lcdif fallbacks to accept a less specific
fsl,imx28-lcdif fallback:

compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";

This helps keeping DT compatibility as well as using the more advanced
lcdif features found on imx6sl and imx6sll.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- Make the three compatible entres the only valid combination
for imx6sl and imx6sll (Andreas).

 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index ad0cca562463..72e509bc975b 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -23,14 +23,18 @@ properties:
           - fsl,imx93-lcdif
       - items:
           - enum:
-              - fsl,imx6sl-lcdif
-              - fsl,imx6sll-lcdif
               - fsl,imx6ul-lcdif
               - fsl,imx7d-lcdif
               - fsl,imx8mm-lcdif
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
           - const: fsl,imx6sx-lcdif
+      - items:
+          - enum:
+              - fsl,imx6sl-lcdif
+              - fsl,imx6sll-lcdif
+          - const: fsl,imx6sx-lcdif
+          - const: fsl,imx28-lcdif
       - items:
           - enum:
               - fsl,imx6sx-lcdif
-- 
2.34.1


