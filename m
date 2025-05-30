Return-Path: <devicetree+bounces-181938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E1AAC97CB
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 00:41:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C5EA7A97B0
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 22:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27AFA28B7DC;
	Fri, 30 May 2025 22:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="G7+a6VQU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35EA28B50A
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 22:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748644847; cv=none; b=pmJDSjOJtFgxkWSpRjcO2xj6rmkmpLl49xq3t/0uJg87kzsJmVLm3wyQa8v32embeq8KS1bRt/ItvXLHhPb36QQIAmvuYXe6Q6JhOq0SgERVlDDltXuG2f55HiqVMZndzUYvfJmtt3+VT9HbmloPWFt1pobln0sc662hdbAGTJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748644847; c=relaxed/simple;
	bh=Qf+Qmgh8tSH8l3tRCxJRHfcUpVw8PKgjOxu7KbxC3gg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=e9QBzCbRLLvIUURJzxtiHD8+55mo+Y4e8umiQ6RxbZLHrL0/Z3fPN27ieK0NvecIIozdA1/uDhMSXKpoUm97ZvWsDDl3nckcFQNGDzxWxs8ZvFwUyGVExW7Qv7nLrAMC61s03TGqploeR0HlcFJvIHPEf6VQTiPYVOI8A7QsLZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=G7+a6VQU; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-3122368d7c4so1721411a91.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 15:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1748644845; x=1749249645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BJg1iKEfpql7pmZdjoA3uh10wUEns6L8IYOErZtWpmM=;
        b=G7+a6VQUw8Ui5tJtGA43josfZ4zltPHZ7x1d8NIO8ynruhDEIX0oQaj6YLRu2Ap8LO
         IBJr19O5UQ8MP9Fsv3qRplMnze8ozkK+QRyLO4IkmlAqdkICfR21J9dWFOdjV2EqIx6+
         7+RaC12cPKORYxTC84VUKK4yOppN7CHhQwtyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748644845; x=1749249645;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BJg1iKEfpql7pmZdjoA3uh10wUEns6L8IYOErZtWpmM=;
        b=nNTa6wyq7nCfvSTBgjDJpUmOPB8GbC+l205OHpw7kwcxUa+p1Jo7cjEOBYZfUA7bHz
         8yq7/yOZDhwgKgMQnkI9Pa/fmTu3Mi/r4NFRrwh91SG4PTGZk3O/sJN9lYrQV2ANn5xg
         Dpj1cyFL2d55Z7ClRz0QcdM/zkK7h+osMFaCgpTJWRadtmUJR55FPgMIF+ywYeDJEPYS
         9HFJ8l8RkkbWBoR/mmMttw3MMPnrL9whWySbuCYHv6+hs/ivE1F+3ST2brQU03cKmnby
         qhfChX2Ks2yN5BV15mBG8Jr9kPljC2H7MeLbQ/A4zRCNhoPb/f/iiZ5Ja5N4xgJfGBi+
         dyLw==
X-Forwarded-Encrypted: i=1; AJvYcCVJg+peF7lc0FHvZeHtfaO87SPiZWEWwQEOuS7crArWkQb9U2eXXqftxzJp0odcUZ9BpvT6pRyhblxQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwVIWzeecMZhoY3bp5hi3tvuHzjn8VyBjDtDtDw0wM5J8BCgtXC
	bgSJyHbxoq6lVDgTcei/KPTXW40A+nUL2fllzBR+n9DY3Kt6YK0Fwqc04vgdYVkAJQ==
X-Gm-Gg: ASbGnctnuVFhax690vXAzgu1RBFTgOAjeLkAvxbpRKIg/dE91TWJx6e3LVZQTag9fcL
	GkwaxOgo3t8QAEAbijiUb/L1TtQ+zcvNXnoa9t5ZHvlLh1+F9/qv4KMGwDHVxU2LuTFZjZmUJVQ
	JZX9jiW609NZeswke7o4ofMMisMeDvjaA6t6ecwIzRoJ/8jmtf3U2VhVwbPh/2qWeJ2j9T+MEJ4
	QwCYUiCyUMskGzoWBbBIEpa9BWp8NU6VnIuuWe0BmhINn+Ajos9Oa3wT5ESd+koDfTIkfdb2d9q
	POT+D2+1WtW3QU0JJ11aNslzr2nZTA8fZtKsJ5IV1j3yQXurwhOgLsLy8LBXyOX9crbMoYBhkx2
	6H+VaZZrhMRwwfg5aXuGxXYTwMKiMOE0=
X-Google-Smtp-Source: AGHT+IElfUcYdQ8CoYjYpd7MA+ZJeD62ouTASylM9JxPUzOpYGTly9yflZmPOUZsxhdConGhlD1Qxg==
X-Received: by 2002:a17:90b:5344:b0:301:9f62:a944 with SMTP id 98e67ed59e1d1-31241e9846dmr7600834a91.33.1748644845052;
        Fri, 30 May 2025 15:40:45 -0700 (PDT)
Received: from stbsrv-and-02.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23506cf523esm33109385ad.170.2025.05.30.15.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 15:40:44 -0700 (PDT)
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
Date: Fri, 30 May 2025 18:40:32 -0400
Message-ID: <20250530224035.41886-2-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250530224035.41886-1-james.quinlan@broadcom.com>
References: <20250530224035.41886-1-james.quinlan@broadcom.com>
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
 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
index 29f0e1eb5096..cba227b19a5f 100644
--- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
@@ -107,6 +107,10 @@ properties:
       - const: bridge
       - const: swinit
 
+  num-lanes:
+    default: 1
+    maximum: 4
+
 required:
   - compatible
   - reg
-- 
2.43.0


