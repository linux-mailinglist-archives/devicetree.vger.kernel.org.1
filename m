Return-Path: <devicetree+bounces-222429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B5DBA90EA
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:38:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E95553C77D5
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15DE2301038;
	Mon, 29 Sep 2025 11:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YfdPqr0q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AF43009F6
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759145898; cv=none; b=fZfQTYlVzujKxdROblCqBDOCHReO7MF7vhuFYS7yo4wr13PWc6XVAq7GhNIt2biC8Z8cxUDem8Dyv72BM6SJ7h3KT/QYiQU9WAs2XvWvwDEQMdyVmNll3bHhknyrOsbL8AF9kmQDr5ZTHnu2vUMOUqEjxD4qNWcJlzdM1qNDCi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759145898; c=relaxed/simple;
	bh=4y2av6tyjlgTbUkNyHSSuQdzatlOOOBYpolj3NH1Wy4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=QJYoIopcZxtdIpfAiaIDzl3eyI/D84J8HnaGco3/X/gToXj9IRZhmqyRvB96mVIt4KuMfRXUoTJ3mJespDK/AtEgAZD9YcU68bVMiwa5oSaVczd4dG2eZUqcPVeFWYy2yge+0YIMn0KKata0P6N0Iyc73EbbOO5Honr/YxoCFo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YfdPqr0q; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-46e52279279so6863125e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759145894; x=1759750694; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=uRFGCABCLXwEyWrlsO0Qq+AzjRnRQjbLGashvrpUfXo=;
        b=YfdPqr0qs3D9rKucmAqN29w/CMVC1vWcIdLoSIEnziiBCmhG8N09CfUaJ4nEjd2o71
         1bKWK7ol0qPDGEE009pIf6s3ES54P/f+VhzYVnKgUKN9DkTEjeMZZn3xLdovyjpYBmGB
         P8F2kUdlAGgJ0rIieLqCq3qDp+xnHkhxWl/AnyhrnrEUbzIvK/2x8ozB5jtsb9Y2aoyR
         x2VqWMIF9U9i37vrOgeRgeQbwBfuvc4vpZRGeu0cNDv0HuByS841fLK6SH2yLF4p7sPB
         nSpGA6WuopVO0rApD+0r3teP9HEt5mCG9fnkfFc9oR5QdGm21zxLXo1nEjDmDrDMu4mQ
         CGFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759145894; x=1759750694;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uRFGCABCLXwEyWrlsO0Qq+AzjRnRQjbLGashvrpUfXo=;
        b=byj1BUgKFsz8bo5fAg/JQGqRkDRNLBampiOKC4szO/l2siB9wLOwpdIp1t7ouqpr7S
         sgg0URhVz0tIpNWpH4HIalXMHe5AOBDTRNDqCYitkDJfh7KR0BKHhwV39UcO58Ew6qOp
         qEtlC+9cH6Klh2CtFzOWaTeP8QxI8J8EJMgaD99K/Gc6CReVMX+s0bKvIBhLtC5BSkWb
         TvakW4+8czmOFirs57StH4RAjtN189uDAB6eqAsCQLn7F4r/rFUPhQbVq8TZl+eEFaPM
         EyH990e7fIQ5AV/UUGsi5G3vxsYYdVRMenoduh7RokPSNqtpZRxn7BihPnFHJycOkes7
         ADfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnTqlASix3JIdTBuPpVS6lh+4OXBdkGTlKsupvEgFVETkQpZcnrVeCJgbrh1TH05MZjFXbU75yLGvO@vger.kernel.org
X-Gm-Message-State: AOJu0YzhX+uYBz3nDC0oZsL2KGT+MZ0uJJTUeMJ7YWQY6Fv4qIE6H39r
	PFqDEV6f6sEU2fleqxJfIljFeaPBDaKjoPH7922zxYpCCaqv1dCgbc4I
X-Gm-Gg: ASbGncvpSQgJ7I+YhRgCbK5oLsecepXrtCFoWejtPP6LyK8ahrHwR14pk0C1mv3Ijxp
	h0vNJ48Vp6lYKeUrTAf6jbKw4Bbpo+YdURCHGlemPknzkISt6+iiE/VJQLFoiYC4eyICauomBXk
	vphZd6R5xqC3pqycpXiatfMxsGcrMsSNTs3Dt3xSVLfmAh5FnIVQIYL6QK4i4V8yKW0QYMPl+Lf
	gNziz7ikuHcnE7BYRmaQvKl3WiYIBp7NYMTgplR1pVdQtBTWc0CfHB1pk+u0cwEX0XWc2zGQc+P
	jjvjKCs7LuM7eAnJSHRnq4cAdsDPFwDqaMq/F7y8xAYKolWw5P3wjUvdvxDjEpcBq2bHJEI6X+e
	si/ydJNPUhpj41JHgLki171enoxxMdNacDSPTLbyFEwppufF0tz3qv0ijW9qcv8euM/x+LAX+hz
	Kzk2Wbl07/ybhnfVyl
X-Google-Smtp-Source: AGHT+IGWicOdrTmQIVdHUSxqrzMHPdo3nASeyojQE1e0iNlPBEVxWIA083+LVJHlm20d4gbGv51hSg==
X-Received: by 2002:a05:600c:8289:b0:46e:4a2b:d351 with SMTP id 5b1f17b1804b1-46e4a2bd52amr57340655e9.28.1759145894386;
        Mon, 29 Sep 2025 04:38:14 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46e56f53596sm9502465e9.7.2025.09.29.04.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 04:38:13 -0700 (PDT)
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
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/5] PCI: mediatek: add support AN7583 + YAML rework
Date: Mon, 29 Sep 2025 13:37:59 +0200
Message-ID: <20250929113806.2484-1-ansuelsmth@gmail.com>
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
 .../bindings/pci/mediatek-pcie.yaml           | 428 ++++++++++++++++++
 arch/arm/boot/dts/mediatek/mt2701.dtsi        |   2 +-
 arch/arm/boot/dts/mediatek/mt7623.dtsi        |   3 +-
 drivers/pci/controller/pcie-mediatek.c        | 120 +++--
 6 files changed, 680 insertions(+), 326 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie-mt7623.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie.yaml

-- 
2.51.0


