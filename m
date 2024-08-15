Return-Path: <devicetree+bounces-94072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CEC953DA9
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 00:58:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B9431C23804
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 22:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA265157480;
	Thu, 15 Aug 2024 22:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="WdfsRyWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61092156F33
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 22:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723762669; cv=none; b=LxmjDxe75tSCfMOIbxeeNjRuMgPc8QKizBHb7dg6H1AMgsHSKKDfSlM12ESQwu8X7O/UtydDl4zfS4yaUAaZ+x6MDmFWGPrfBNMdHU9O3PBfAJQgudnGW6Bk+Mmh3Zuu5XkoMhhiXPCE3uDouzDDOwe269Qr+l/NFGAfbsLncic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723762669; c=relaxed/simple;
	bh=YyzGlfVd4RKKN8II8JgWABxKdyxEzCEe9Vs/cAPKijs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=QyYOf3cee6MEDPkuHCSSGOW87pelgJER5f+URhTnHq4S6scenyC/xv6RozaEZZdEApInbUBO+G7VbYe2e76b91LgXG8aLf9k970B4StTWY9d03/4+uRzL49Oo2CmLgp+PIxEkjz0+VUZsRmLi4ZjUcA/pSUYqeXj/pqg/ofTcok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=WdfsRyWO; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2d3bae081efso1043600a91.1
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 15:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723762668; x=1724367468; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rVX8RgTSHm6Ud+EOy6KQv9jtPehvGxMYRqmnhzhp8AI=;
        b=WdfsRyWODnWN47RaPuvbm2ootc+sCkIOSKpKdWq2v4DU2EpelifmOLM4v4HlHEZAg6
         tsjL9L++f+tryoIOwSDzfvJgsUF1u2YIOERyAsct9TOV+LkEj34KlIFu+adZmN8LozVW
         e8rZmqvyH6DgYPGbUNXrsTdedjNMD9J3RGu2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723762668; x=1724367468;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVX8RgTSHm6Ud+EOy6KQv9jtPehvGxMYRqmnhzhp8AI=;
        b=xRw3Xjbtv+svFCups2nCUQICsfKeBncFrbPcbqxvjM+kflsdFnbwdcOhRStfEf5cOr
         R5CReh6mV8YypfHoRiil8OaPtb28zHloTXlxCXf545Tq7Xzv9hei+LarslA1XTsg+g3m
         MAI8KaLzyYTuIhtlf+swV0NJn1iON5OMY1sH4Ecx8Un0ezS789iu8n+GQmb5DVhTFzm3
         B8icDersowPMtDOdENNxxPQW8iwIp0Bzb6WbPKTqzvivyrSR8AaOsMK5XGNmeGm+dRk/
         wv0zhvE92w5wNNDuE0Voc4ni6MmO3lPNoqs49WdpomFzy/n1Fak8hDWTsLOosEKK+BxZ
         bNGA==
X-Forwarded-Encrypted: i=1; AJvYcCWE7b3bUjhdTC7YJJio3rMNF2/y10XUOTwZ0yKrWEDKvuZX0Wi1cadZqC9jh5jy6DgFhAZFTamfu4Q8@vger.kernel.org
X-Gm-Message-State: AOJu0YzHTC4ysbpIT7ZwatqM0+ccvdlba7ionIPoTo8dA8m32P7zBlFZ
	539YCOl1aWh9VqvRfGp2c+nJQ5JBSuSi0luqnEgmqgMwcwX276odHEHudifkXw==
X-Google-Smtp-Source: AGHT+IHSw9iGIF7jSQYmCh7ib0/magiimviqCOLAhlU6p/vcHiPwZp1T83vzp8QlMpOVHkAjvKbGiQ==
X-Received: by 2002:a17:90a:bd0c:b0:2d3:b83f:75a with SMTP id 98e67ed59e1d1-2d3dfc7d307mr1357300a91.21.1723762667484;
        Thu, 15 Aug 2024 15:57:47 -0700 (PDT)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3e2e6b2d1sm373997a91.18.2024.08.15.15.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 15:57:47 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Cyril Brulebois <kibi@debian.org>,
	Stanimir Varbanov <svarbanov@suse.de>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v6 02/13] dt-bindings: PCI: Use maxItems for reset controllers
Date: Thu, 15 Aug 2024 18:57:15 -0400
Message-Id: <20240815225731.40276-3-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240815225731.40276-1-james.quinlan@broadcom.com>
References: <20240815225731.40276-1-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Provide the maxItem property for the reset controllers and drop their
superfluous descriptions.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 .../devicetree/bindings/pci/brcm,stb-pcie.yaml       | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index a95760357335..7d2552192153 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -95,6 +95,12 @@ properties:
       minItems: 1
       maxItems: 3
 
+  resets:
+    maxItems: 1
+
+  reset-names:
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -118,8 +124,7 @@ allOf:
     then:
       properties:
         resets:
-          items:
-            - description: reset controller handling the PERST# signal
+          maxItems: 1
 
         reset-names:
           items:
@@ -136,8 +141,7 @@ allOf:
     then:
       properties:
         resets:
-          items:
-            - description: phandle pointing to the RESCAL reset controller
+          maxItems: 1
 
         reset-names:
           items:
-- 
2.17.1


