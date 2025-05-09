Return-Path: <devicetree+bounces-175827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E57AAB1FEC
	for <lists+devicetree@lfdr.de>; Sat, 10 May 2025 00:28:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0AFAA05A9E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 22:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0227E263C91;
	Fri,  9 May 2025 22:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Bgib0VxV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706D8262FFA
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 22:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746829710; cv=none; b=TWBxng4J0/g+4N/X4xFn3Yn8mlNqKoZDRIS+HUfwHuT/vrYQ/Zzow21e54EgSUGOA/dpIqpB1nOb9O7y7Ig6gHZebGTOitfO9pxzMeGBMs7tSNFVMgc+Pgkn3sW3qMWbr4xZWV8bVAQceuWkCZ4g4sAmJ2n4NS0KvBiDeXaOA/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746829710; c=relaxed/simple;
	bh=IspuMfhbuI0NskZWSzhFkzpIeIBkgsFFHVt3aA4o/AE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XpWvKY4SrNbTc8K+UXCR893gERhkIZP+IneUWvDSo5a0492gg7TefhAnE+ZemNkf43ta33ojPghqNQTOsgq4h357xt06f7KAy327tqRYakd3l/fLmCrWrTOK1Ls/LFZqp86UeRX/nyaZ5kCCquQnLOSLT5Ab/cNYZTLzZ5p1WAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Bgib0VxV; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22c3407a87aso33867965ad.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 15:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1746829709; x=1747434509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6p7ER/Q3/oiPZqhTroZ/8PyX/B+RWKmVdqYgvMtMSKg=;
        b=Bgib0VxV3AXetknfdkpckzMA4S5mMP7k1r/7Cdz8V1/pRaO9rTtj6jpY4LFkpjEqgp
         /jPByBoc0nWmBrOzclixKTfqiUBS+KIKgwFh7tr38kE4OIX1jVhv7IdVpkcJF9OvUuaX
         ByL6o7Uifmiy/A9SgJ3hivaUAvNe7HVeoJY7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746829709; x=1747434509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6p7ER/Q3/oiPZqhTroZ/8PyX/B+RWKmVdqYgvMtMSKg=;
        b=KvouHFZd0x5CftqZV2+8df8u9hzf2j0wrDvFnWODakEL4DsXamoE5syoULuZI6UqoY
         gslXdRs1MYE3lWiOTPDcogj0vF0InccfbwTjrXchCcClQrW8oqiahI/hhWS79ABjt4yh
         +rGdBHe9iyDaGhLwg7vBKOqBsY501LpUgJ9cqKy59mXjEXnNnP50rgfsCwh66ujP2m5t
         nErXL7bpbjL0KcM2TUbVnOM6wAZcqvBbygps4O1uyCjZOYLqj/vtKPWapX56ReneUWRn
         nZxM57/p6M2GpoLiQIRIaYrQmxP7rTtMUtYgNjzjhYNe6GWY8NtQuFqRcp0jcrNF1l7R
         h0fw==
X-Forwarded-Encrypted: i=1; AJvYcCWDk6FGGPUS6T8I/PzqLwvWYihOy2S9pkkKWGum7Os5it15xIquOceIvtUMCG9qsZZjaNvvJQtrGrbe@vger.kernel.org
X-Gm-Message-State: AOJu0YzDJwicJRkt10Z7Y4oJWNmBIu5inefyE428wYNnCiLF8KIcLRvR
	WafW5p0a6HmTzfk4Ssu1NJavxqKmz4F1aLeF8Ig8V6yxktFmIMY1QvUq+tSvNQ==
X-Gm-Gg: ASbGncttdsJddGdNLX0hTAGJB1RGIn2t4ibTrZFKfSB1UgVOAXF2T9Yw1oFu7LAi75m
	vARrS6VVoIx9ALO24Isodbxfx4I4WAAseZIxDrTLm+wtx7pmnMBuX0UjoGSM/1vTd0iqXQIHd7E
	Me83udOFoqKM/B/+ATRUZkXzlAbZ/Zq9qTtEu+pVNBJHmMRt+JIAbk1aYjrfPlgkMJvZnoXwXkr
	ZflkagrQPXlPwVtOWXg6E9nEp62aAP5TE1WuiH49dD+SnSSiKim510uMvneoRkk/xvVUDxOk/tt
	S8LP3C5KkQCAZu1gtWb/gmrjys8WHs+8IfvmSQWKTlA02pJ0uM6TUcCj6jVn5O63/63Amidt1bB
	7zg1wp4yLcbEyswmasd6c3a24JpWfPTI=
X-Google-Smtp-Source: AGHT+IGfUwOQRvWOeCWpbpI7bjN2yUkoA+0vs2CH6hB56pZLb+zEdsUnC3KckTOyfdQuyia/7g01Hw==
X-Received: by 2002:a17:902:e747:b0:224:a96:e39 with SMTP id d9443c01a7336-22fc8b3e2efmr67480325ad.9.1746829708752;
        Fri, 09 May 2025 15:28:28 -0700 (PDT)
Received: from stbsrv-and-02.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc7544fadsm22584465ad.24.2025.05.09.15.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 15:28:28 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/2] dt-bindings: PCI: brcm,stb-pcie: Add num-lanes property
Date: Fri,  9 May 2025 18:28:12 -0400
Message-ID: <20250509222815.7082-2-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250509222815.7082-1-james.quinlan@broadcom.com>
References: <20250509222815.7082-1-james.quinlan@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add optional num-lanes property Broadcom STB PCIe host controllers.

Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
---
 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 29f0e1eb5096..f31d654ac3a0 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -107,6 +107,8 @@ properties:
       - const: bridge
       - const: swinit
 
+  num-lanes: true
+
 required:
   - compatible
   - reg
-- 
2.43.0


