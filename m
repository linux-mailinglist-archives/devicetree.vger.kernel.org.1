Return-Path: <devicetree+bounces-225762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 753CABD0C34
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 22:59:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 910544E13DF
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 20:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B5D922D4F1;
	Sun, 12 Oct 2025 20:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I+2PfeNE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAA22AEE4
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 20:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760302750; cv=none; b=YZFvcLHXfnmESh0xv5kYJDeK1nv/dE/MAjQinm3xzQhUT2871sakS3Zp3gWCdbfERz+OXZGRfad2NE1tROYGHS0Rwg7qwPGCzFclqJ5kuCbC33IJctNwI3TCp+jO6efR7Giu0ymoYEUcFKaxo6NWW+lf+3RmvdlRVTNn5AAAzQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760302750; c=relaxed/simple;
	bh=38374wR4c1uJvSMVvXDQmPhGU/CBaVy3CSGhgrzIsnU=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=hVwCFnXLQqGVvoJGwgwTHY9xyNVoOf0/IxM6W5mIFObIx1V7Kwi0rDVmzhVlUudUdMf1FPQsr59e/N3uegBKbXpgguXlF/3iiQjkbzLM1WeuaSf2ttOjgNxxcOlnBgOOsPy3yCOlCDkKyxJnKm9gpbHCHUwW7VCCxZ6LR0Kjxf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I+2PfeNE; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3ee12807d97so2096330f8f.0
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 13:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760302747; x=1760907547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=yet0G9q2Nul7wE7O4WOA4//yyR5OUJOrXfjDFK6H1h8=;
        b=I+2PfeNESCDWUCa/bN/jjqKtA0NawJg1vUNerkC0l2WTkHDtKsuaEPc+I37Kg/eq+F
         YBjltuvaL4u69GPQj7KF2JLTZYbhA9Yq7LSVQ8J99Ws0g+1+8khNsOxhp/zWKdEPCVCr
         VPKl8DL0UxHQNF5hi0kHHsx/JFlU/k52Xvr5cofR4NQ0wjb3hTzaukpKxoI8WF8hRQsc
         rCVZLfIxwiyIivm8eUbeYaH9UNwBzH2sBXtQvYIb5M1OWEYQG4OH2ka36Gq9JxKO1Xd3
         5362a6BHlR1MO9M/x8NY+dwRMGA7KOioihs+eitnfsmbAyxOlC4fvy9NRdUpq76bmvKR
         uKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760302747; x=1760907547;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yet0G9q2Nul7wE7O4WOA4//yyR5OUJOrXfjDFK6H1h8=;
        b=LgHiOdF52ZVXaKHRfgDbbFwMm6Pu/UP/tx8yWTF9bZWY6XidJT9faCP+qKr1xPVIXm
         /bkguqelLY3hbuZMHiHCy6ziCYSZebJsgd4uEgFKJ3Q5RUfJF7ckqad/Gv+0nuwPJdQ1
         Tay0L7q9bX39fVLXpzFseblPS88q9s+B1VkMyqEQJwzy0//Xh0+D816yiIFSw0fE7Mkh
         elHoRLQrjLAti3JDUlsRCLpOmCE9zjIaNUHwcGnLQlFTLz6JJKKIIzxFczVjDRTBkgC3
         6fh7lhJEgts7wL7odMLORUmGQtLsTBUaP6YNpbScVQh4sCQYYO2rgmlKmJtv9h9NUl0Z
         zRzA==
X-Forwarded-Encrypted: i=1; AJvYcCVQr3iOpbOjMtT2z7f80m8gssfMxG5eALLL+gVm9Ze/OkNEjFFQeQkwFywNeEdOjFJr87xO6IIc8kW9@vger.kernel.org
X-Gm-Message-State: AOJu0YwizaMk44oexJBkDHtA2pdqnNXRf84dWR5qZ7kvzDFBcrdmPOIY
	nr2lohj2DF5ndPS4xM5BgGTpyP079ngaF4icZ5BRELhOkG9KLNGSKE3W
X-Gm-Gg: ASbGncsvtGfW9LWlYg+nTFrz8jXm9b2NDorRPOB6pSO6zvk5GILvDtpSQWcsjzM1Dsx
	/GX3sLIMH1qGeLjQoryTK6AbOmjCspKG3tzPxSGDjWxMuJfet4a/jwZXMRII8SlBAdCTta1tjoP
	v5+drNAEiy96ysdFjcCHjrX5OJtZQr61bJBbpYJ5uVa0Y5abcqukAQ1csY35jtcIkVQ69+UxBjK
	BCO9B3FTF5FPQHJgez5RLQ08ey7PkAYRIYWwCrXuNivBFKymwGM4EEHZ30Mjiwvv4cnxFiuE7Fn
	lI/Wl+PDBJ2buF5AWshe56OW8C6cjvhNIUo8r6LJDUpH9tssxdTHSeNhdy6gCxL+EsdiJ47TE5E
	KRkpiaYyDKx9bLGyi9KZIpDyPvg+ep5iD7tdqTca2VzaN6oBt55OhMdak6p3jTS84LYR0d0YLkQ
	==
X-Google-Smtp-Source: AGHT+IHM3xVI82jB6xdjQEkijldoJ7njelHhMDYQ3r3ZtWre4CsPi70ME2++am1YX6QlYz5/89FVBg==
X-Received: by 2002:a05:6000:2505:b0:3ee:1279:6e68 with SMTP id ffacd0b85a97d-42672425b82mr11691189f8f.47.1760302746815;
        Sun, 12 Oct 2025 13:59:06 -0700 (PDT)
Received: from Ansuel-XPS24 (93-34-92-177.ip49.fastwebnet.it. [93.34.92.177])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46fb489197dsm156506505e9.10.2025.10.12.13.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 13:59:06 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Subject: [PATCH v5 0/5] PCI: mediatek: add support AN7583 + YAML rework
Date: Sun, 12 Oct 2025 22:56:54 +0200
Message-ID: <20251012205900.5948-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This little series convert the PCIe GEN2 Documentation to YAML schema
and adds support for Airoha AN7583 GEN2 PCIe Controller.

Changes v5:
- Drop redudant entry from AN7583 patch
- Fix YAML error for AN7583 patch (sorry)
Changes v4:
- Additional fix/improvement for YAML conversion
- Add review tag
- Fix wording on hifsys patch
- Rework PCI driver to flags and improve PBus logic
Changes v3:
- Rework patch 1 to drop syscon compatible
Changes v2:
- Add cover letter
- Describe skip_pcie_rstb variable
- Fix hifsys schema (missing syscon)
- Address comments on the YAML schema for PCIe GEN2
- Keep alphabetical order for AN7583

Christian Marangi (5):
  ARM: dts: mediatek: drop wrong syscon hifsys compatible for
    MT2701/7623
  dt-bindings: PCI: mediatek: Convert to YAML schema
  dt-bindings: PCI: mediatek: Add support for Airoha AN7583
  PCI: mediatek: convert bool to single flags entry and bitmap
  PCI: mediatek: add support for Airoha AN7583 SoC

 .../bindings/pci/mediatek-pcie-mt7623.yaml    | 164 +++++++
 .../devicetree/bindings/pci/mediatek-pcie.txt | 289 ------------
 .../bindings/pci/mediatek-pcie.yaml           | 438 ++++++++++++++++++
 arch/arm/boot/dts/mediatek/mt2701.dtsi        |   2 +-
 arch/arm/boot/dts/mediatek/mt7623.dtsi        |   3 +-
 drivers/pci/controller/pcie-mediatek.c        | 120 +++--
 6 files changed, 690 insertions(+), 326 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie-mt7623.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie.yaml

-- 
2.51.0


