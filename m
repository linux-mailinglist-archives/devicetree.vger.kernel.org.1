Return-Path: <devicetree+bounces-183628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC8DAD14D8
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 23:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE0DC1682DB
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 21:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF3A91FF601;
	Sun,  8 Jun 2025 21:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Aem3U1Hs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5960319D880
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 21:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749419324; cv=none; b=F0F+oUMy1GFWYSd53ecu7Hm3jpRruA5Xv8/L8lmvx+U2yyxiySq7jDC5obDhv6zpK6KMDRdxEZ8+76/LZjN/rfsDv+l5d1Gwym4OlQV+6syxeHjW+t4v/W+/ZSQ+UaFGSZIFc5qGvUY/PfTn+1f3dZ49IhaVdOZQhOFyue2iqMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749419324; c=relaxed/simple;
	bh=ueSxy0KQcD4C4HO5vVXnvVnlTMPX/SyWBmTCyfz3lOw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZRDYc/IXXOcyT6fxgm29LREvAZQ5ahAnPoAM+fWJ5p3Ae4srvFW2EiNtt1/Y4vFwsgq3ga+/iiImMDQ98hw35mGLbTL3ImK8UePAh7bQi2Sliv7szUk2Zpl4WHi1sseiaZZ36N/ji19Vn2UbC64noYwlibpMqd3xfEkDR0+pNzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Aem3U1Hs; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b2c4331c50eso2824557a12.3
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 14:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749419322; x=1750024122; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xWHZLAujtNtqfPCbaJxJNzcdk2VJW2Y+hzR2ZXPGjq4=;
        b=Aem3U1HsiFcrOvo0jK2pAZoZTF721STGsY7Nw632YaAWmWguuUg36wzsphOio6uw2N
         VxOklBQRD9SBsX2yrKAfGdUxI08ZzZQW27zy70R6KK7Ik/Pnadib90cqAYCsb6TjZXZS
         cWfHI0kIOpVFFCNblo1BkWwj/z4Nxnhv3wDGmIVi/9Ulww6qiVf47ZJbM0oZQMfxyyR+
         EmIi1ezvYjnNVtkPtSrLCoHM7FsVfb/8w2CFbMYYu7zMddFvtpM1RJyQIKaYchA6ykSP
         Z6040yRo2fVbNMFxueWWr5RabMC/iQLuIwmjGI2HcI+I1/aDufvyyITxK39fWzoCesXq
         c6Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749419322; x=1750024122;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xWHZLAujtNtqfPCbaJxJNzcdk2VJW2Y+hzR2ZXPGjq4=;
        b=qKoPhh3387otNor9iHIAZcNJjXTDUN9GnlmJHX0ADRC00b3Hn8Se02T8Vs9b8d+TVp
         dZuF+BKh2BWCQuEpt3YMQrDxRarI5DX1+UAicPVQOKXSNhBXou7fr99jv6A2zaap1CWO
         2xWe+Br2tmaxHouM7Pky4Do/fWf5ME9kwMv3TQXs6MD+zIBxyGyiKdVJMpMy103x2nJq
         sE19HovuFagYmhlmA2t56mrLDb+pAaezwUU4M/f4jEHvOhNQvKSc8rocx58+iBnQedh6
         Bl+BPGec4VSFuQHxbFZ6rPbjA94fscxp3M7Dlt5ZGmW14aWw1akTY6dsJJsf9yO89l/+
         5iWQ==
X-Gm-Message-State: AOJu0YzEmAr/tP41jNzz23ZCPBaU2vSJrL5xVSpfoCFPGBO0ivcDDaDe
	YrktMeR0QzvcIYgBcCSi3T3+93EVO3M/v5r7GNJaFlIvc9PXmz8gqSHrVpxeao4R
X-Gm-Gg: ASbGncsI2p9idADFW0yZSyksTXHnMpaiWHfkX2hS9Ect7+IWSKAISaOa36TFjd0LkoT
	v067VagsqngSgImRA9bOt11i2GwXbe8RiKARq0QE0dC+kkHb1IpLR446RABdtJV7kpRX/fL5O/R
	rcJToy3pRhVDUj6/2k8ecnH05HOlah0MbpQKT2qi0Nw1gFPPcCfJahaqLYa83ZqErAzwpyM0GM+
	7W6yNBfkezk+JA8Skd3Kdop1If6a/zBewPliy8C+FZ2CtwwGuxScJ9FCeEINE2X5Dtf0eGQIqNE
	4EiHi99VFIsDcTfnbRSaLnjKvWbu/jo9F0zIMtlD4JpXYO2u7/UUDtgbAldZzzov8GMnei9aO/j
	H2y8=
X-Google-Smtp-Source: AGHT+IFFvtPT1+mFe/G+wPjO7ZMHcbj5JcqInw9t1EpwtS4T+MbJwD9yoKUdTFMnMVUTRtTk5YAjfQ==
X-Received: by 2002:a17:902:dad0:b0:234:c5c1:9b73 with SMTP id d9443c01a7336-23601ec356fmr160627945ad.36.1749419322346;
        Sun, 08 Jun 2025 14:48:42 -0700 (PDT)
Received: from shankari-IdeaPad.. ([49.128.169.113])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603507401sm42710725ad.230.2025.06.08.14.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jun 2025 14:48:41 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthew Gerlach <matthew.gerlach@altera.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH] dt-bindings: arm: Convert Altera SDRAM EDAC binding to YAML
Date: Mon,  9 Jun 2025 03:18:22 +0530
Message-Id: <20250608214822.192885-1-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
.txt format to a YAML schema. This defines the compatible strings,
required properties, and a usage example.
The SDRAM EDAC controller monitors ECC errors on the memory bus and
requires access to SDR registers and an ECC interrupt line.

Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
---
 .../arm/altera/socfpga-sdram-edac.yaml        | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml

diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
new file mode 100644
index 000000000000..6e31632b09de
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/altera/socfpga-sdram-edac.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Altera SOCFPGA SDRAM Error Detection and Correction (EDAC)
+
+maintainers:
+  - Matthew Gerlach <matthew.gerlach@altera.com>
+
+description: |
+  This describes the Altera SOCFPGA SDRAM EDAC controller which monitors
+  ECC errors from the SDRAM controller. It requires access to SDRAM
+  controller registers and an interrupt line for ECC event reporting.
+
+properties:
+  compatible:
+    enum:
+      - altr,sdram-edac
+      - altr,sdram-edac-a10
+
+  altr,sdr-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the SDRAM system controller (SDR) syscon node.
+
+  interrupts:
+    maxItems: 1
+    description:
+      Interrupt specifier for the ECC error interrupt.
+
+required:
+  - compatible
+  - altr,sdr-syscon
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    sdramedac {
+        compatible = "altr,sdram-edac";
+        altr,sdr-syscon = <&sdr>;
+        interrupts = <0 39 4>;
+    };
+...
-- 
2.34.1


