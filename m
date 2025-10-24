Return-Path: <devicetree+bounces-230959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE310C07DDD
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 21:16:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADB0940102C
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 19:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A82E030E0E9;
	Fri, 24 Oct 2025 19:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="I37SDohO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B7436A60D
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 19:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761333361; cv=none; b=KY5ynXLyXLGIgWbmwgvgFTDeDbBjCYLF1wMuXqfvHqGWT/BMd64wUs3iD43H9AoxNA2mnQe1MoxTp2wP6jo4yCVM6ZMoqpbeU6c+Byu84kvVL2sQD6/rybvWn36GV0u6Ss/Y+gI2ZWprz7hbxnk53bhvJ5JIyJJjXuGh1x1iQl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761333361; c=relaxed/simple;
	bh=spWtt1Pp8phvWIL1ongPyy50mYvbEr24rP0ZYo3c4jU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ibSNt+tQSWkvOTDJwWpMBLLv/v9lT2R+5H2cmWIeZPS0hBzTd58BMpta+w6cxvxPJuKxASqtY8Ur9JlEORhZjpxDGC2gDG+s82HE0WcHMU/WKuYswmgn7MbHXrr5iGZHUmAaw4bHr88llxkEVKvinlLGOroQjOi3Ezto69ZY9HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=I37SDohO; arc=none smtp.client-ip=209.85.166.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-430c97cbe0eso23372405ab.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 12:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761333357; x=1761938157; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0sSxMmpgJlm+DBHdJiFvMNmeUcFKdKvsAUrpyjqesM=;
        b=I37SDohOU9gXF7NJEis/lD7PE6Cb0yg0cb2EtUkTzmu1gqJC/M/9EwwzAVD79LzyQ1
         JSmtxoPffj4bmpPR+gTe6qvMG7ij1T3tuzpWYB/EYqXoQybGN/Y2GPDxoXM4z78gMzlV
         G/XzUgTv0rw2TPhhyn4l5PpvgASVzD0uTSqhsspGk6Lv4W60NtsxHEXVRKQMmdF1vTcp
         Q9zBT0BIs5PW2euaZsJo/fJhM7Sd6f5pZZ6Qs5SpJIxxkktliyPf6jrUHdCitEIx5Gpz
         uW4s/3XxVuxEMJqYleEHkm6r7xzkd0nL4F93Z+JKXSFTtk88DT64GuGOblLntsBq3L1U
         EfnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761333357; x=1761938157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L0sSxMmpgJlm+DBHdJiFvMNmeUcFKdKvsAUrpyjqesM=;
        b=uOPNy6H8gHNAsYN9vndgx+PUjNOK3dA1w4UgsyjC3xQO4/qoQ643MOxEFarvNBdfgD
         KDJInKyakEDKc2kqLmhIXF7a3jPqkabdMcMWreDgBOBhTGF8/iDT1a6aQV6SjwEkTcR8
         QFRcBHj19NVURXxO3deuGVN1BxiCZ5TrdQUd8/PX1JYyOn9UVrXA8ccKa24WBq8SMAhr
         aTixNmXIQ5E7+DHT8M3+WXxh7G1YO1HiJ+2wSArsPjDOOSeCohl6KYDo/2duC4q6cPFs
         WIAzK14crGDSWgkxuYSO79v6c19TKbDvrQWvwpGMaDnRI6aaLknVPxOJN7YhSDmRHYP8
         jKDQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8W/N5dOaQ6ecseHrTg5Vtl92ixA63J9eGJFv6OG/zqZAKvKNqpkUISGopCl8db1qm3l8f8YBHKvk6@vger.kernel.org
X-Gm-Message-State: AOJu0YwNHHStkgGdCZKQS/Gah377lj2xJqvO8YNym81/oeG18r4cv0wq
	wd5qWcvbDOok081L+Stzj1ZblCrbe2jFuYmMtIm4r6CuROuukrGg5EEWZgcr9lYVljU=
X-Gm-Gg: ASbGncsRlcB0GFMv5Fu7El+Oke7ZfYGoa8RufJGpG0552MPqc4sTK4ovo5FkfNY+iYO
	ecqJf2W4CD1IzInSfcZyt1ysJP5ZzDKsArEQvBPxgUVEiZzAM9Hnww694VTMEPS3z5QWC1Nt10q
	d/YdkbeEl6Ku0tiUh+c6CGwnB/WPHqTlJGE3t2YsMLDQloVjjZhHXiHfiwhsu/i1wH2Nk2MGdTs
	vwccMit+EMNPi6lsOaPMJ7fZq2hfconBDzPUeTvIaKL2q8xWen59vAu0eZ/WxCMA92EkYlPJ4Z6
	2F62fJmJYkMtFUb9rnx/NZB+BkZSV2F1liF4jSS5q9/glYcyDVULVn5yTlCvB9X/p4DKw30hKFc
	T1NNCZMe0+d6zLyHTJtshumCNUr+ZOVIH8NTn/z43TfR4LxFXb5ndsiyOdxcMhvMB/pznqmNdND
	b99y5gstsu5oQSJ31zhCLnI2X0vRtj0N8iFX/v5xWW7rJDNGrnuomT4g==
X-Google-Smtp-Source: AGHT+IHFcHZhfeKTHaIT8TeTse7w8bjG9Loy1iIsFUAysOy7saMHPhRTlKWgTzZuCkFXEhYPt8zLNQ==
X-Received: by 2002:a05:6e02:2590:b0:430:9f96:23c7 with SMTP id e9e14a558f8ab-431dc13b52bmr101093185ab.4.1761333357439;
        Fri, 24 Oct 2025 12:15:57 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5abb7fdb7c7sm2427824173.44.2025.10.24.12.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 12:15:57 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	han.xu@nxp.com,
	broonie@kernel.org
Cc: dlan@gentoo.org,
	Frank.li@nxp.com,
	guodong@riscstar.com,
	linux-spi@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 2/9] dt-bindings: spi: fsl-qspi: add optional resets
Date: Fri, 24 Oct 2025 14:15:42 -0500
Message-ID: <20251024191550.194946-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251024191550.194946-1-elder@riscstar.com>
References: <20251024191550.194946-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow two resets to be defined to support the SpacemiT K1 SoC QSPI IP.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
v3: - The reset property conditional is now under allOf

 .../devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml  | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
index 5e6aff1bc2ed3..46e5db25fb107 100644
--- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
+++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
@@ -11,6 +11,15 @@ maintainers:
 
 allOf:
   - $ref: spi-controller.yaml#
+  - if:
+      properties:
+        compatible:
+          not:
+            contains:
+              const: spacemit,k1-qspi
+    then:
+      properties:
+        resets: false
 
 properties:
   compatible:
@@ -55,6 +64,11 @@ properties:
       - const: qspi_en
       - const: qspi
 
+  resets:
+    items:
+      - description: SoC QSPI reset
+      - description: SoC QSPI bus reset
+
 required:
   - compatible
   - reg
-- 
2.48.1


