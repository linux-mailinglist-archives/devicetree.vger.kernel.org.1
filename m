Return-Path: <devicetree+bounces-220563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 257C9B97742
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 22:13:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBDD82E1A15
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 20:13:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171BA30AAB7;
	Tue, 23 Sep 2025 20:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WzkQmfUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601CA30AAA9
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758658375; cv=none; b=k+RxanlImH3y11hFGeUtdlkldie9eRxWmZ9psyXIOJtEW1WraGQWIWENk9D4jhYH+uqrIoONIFpFf4nkUD9nF152m2fM5fs5GRCXES44s5hKlSrOpSlJG2s20v25FbHqn/6zFVBb+XM/lp2Q4ekrPtauz4aVnrbJ28/YB+P1SGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758658375; c=relaxed/simple;
	bh=jVddi4NuKKwdCHNaUyrNV2CwAkuZZSN+ouVB+z9jMuI=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=jdVcywYOC/gk0kmrONsRE199QQxMFrL2rdUEdgr0APyRgBMbi5myTrQDp+hIBSXocpx4Y8OEEi7TWU+XhlnoSr9Nza8CjEQsqD+wZKBAWSUtzNZzsuuctfFSSZ+rSAzZQVhQsj+HzRJBD/J/SQHxjYe0UfZJ1s+bGKKEKpjlk3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WzkQmfUk; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e1bc8ffa1so15687925e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 13:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758658372; x=1759263172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ASptksIfZB8nhWx3+GWc5qI39yAJwjp71gTOqcHHO80=;
        b=WzkQmfUkRVtH3rrdaQqgfMbfNiaMJpPVRDuk2mSe0OEpn9pCaNkG2UhxI623wbdYly
         fE2I42oQZfO7tEBiNen+EI9Uyxe+M9YNIbT19ROjxvAvRghiy6Aov3EQSct8kau/4cFk
         LCEDXdQ483p4O69B2AMObQ3sCtW/4qo1N6S8abUBJlaZ1vzEZTrAtYzHx8M5Fq+OOAb6
         fjJIu0mCXwiAhzn7KQh8FO500NZWv92HCdha2BZk3kd2+mDOouGaZQyT5ghvSBEXKBJF
         dUv1QD1ZFOuQxpD2EGo//SmArHie0M4DArpKVzQafmPVWxTmwjp9bAFAayDagq6wIC5U
         8owg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758658372; x=1759263172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ASptksIfZB8nhWx3+GWc5qI39yAJwjp71gTOqcHHO80=;
        b=Z+bJA1s0ndQg30wATOW8c30KQrOErHBx/STrkOQbAs7T6/YvLwCDgjTw/OJdjTJ96W
         eV5B7C2ED1x/SyjpnQ99ZnlIFm2oUg7WN9YC5nXELUyV3VcZ83DuHv8M1w8mbJvjp2dr
         cIvxPJOjTZPTgnr9GdxFzIjM2wT0ptnjZKjjJJA11lkm/M9RODo+bAox5/fPH9VlieFd
         hy/jLkYiAAcd2puoGjBjSXaUxh2sy0RW7K8DuKs7ISKtMqfIjwk2uuN3jjkXdgKJii1s
         ptb5yVaGt8q6cQsAzsKng84iZQu4eyd6l1s3Bws3Ez3ywAv+h31aUJZmbFjUkOo2yk9V
         BThw==
X-Forwarded-Encrypted: i=1; AJvYcCVB6fPcR/NuU5Y77wDZMXrooMf4UlYLAs+C314Va+Nk8e9wMGoMGkAVUvx8KyBFgrkP2spv49fmvcbV@vger.kernel.org
X-Gm-Message-State: AOJu0YyYsJCNm3YPsfrO5x+7X7uA1DBa37vnOquOOC21xtlg7BpvTGm9
	/xMCaPf390eCAkhjx27s2Hd+7KNlq7X5ke+oor5hkBpHP6hCdetHG1AA
X-Gm-Gg: ASbGncu9f9DzLtSWVMVy0zasFx+3qn0lMAo/nRZJh8KXo+1TPXO+0wlMSH9rtZ1+KYp
	EGXA/psTbFbJLa03/5nmo8gtzpJ2ij+g78MyB65pWVYD/kw3PZG355x7Ae0pmT6FHrCtT1KY6TU
	BMyov57nIvNxr2lW3HWorphj7Hy8cd1w2HfydkHWBYsZnGvujXlPtRXehISgLiqpUfmM5QSCzh6
	QkXTh4mLrmcT699SAXA+Lme4sROkkF1aJEqpsy3QKJIwpODpN4M6lmPrXclUGVIcC5FOnwwzjcJ
	7G2rnHW0s0eHecpBND2VE1h0l1DU5y5mko+L9tBcy8Yu2VFioSFsJgivWGHSGY5u8DJ2Kw59eWZ
	akyxGGkmzLnJVuYuCj3Jx3hCuP3K8GQV0aGDvp1og9UyHjgLp274OsFzapUFrJb0yVfD2yhA=
X-Google-Smtp-Source: AGHT+IF016uYkkKzgv+AucFeGyavBjbQS4X5yFh1cvwLL0BVsVqxRwdjObESQ21BrceSWNy2CAZxPg==
X-Received: by 2002:a05:6000:21c8:b0:3fd:bf1d:15ac with SMTP id ffacd0b85a97d-405c6d11630mr2007870f8f.20.1758658371435;
        Tue, 23 Sep 2025 13:12:51 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee141e9cf7sm24889690f8f.12.2025.09.23.13.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 13:12:51 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-pci@vger.kernel.org,
	upstream@airoha.com
Subject: [PATCH v2 0/4] PCI: mediatek: add support AN7583 + YAML rework
Date: Tue, 23 Sep 2025 22:12:28 +0200
Message-ID: <20250923201244.952-1-ansuelsmth@gmail.com>
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

Changes v2:
- Add cover letter
- Describe skip_pcie_rstb variable
- Fix hifsys schema (missing syscon)
- Address comments on the YAML schema for PCIe GEN2
- Keep alphabetical order for AN7583

Christian Marangi (4):
  dt-bindings: clock: mediatek: Fix wrong compatible list for hifsys
    YAML
  dt-bindings: PCI: mediatek: Convert to YAML schema
  dt-bindings: PCI: mediatek: Add support for Airoha AN7583
  PCI: mediatek: add support for Airoha AN7583 SoC

 .../clock/mediatek,mt2701-hifsys.yaml         |   8 +-
 .../bindings/pci/mediatek-pcie-mt7623.yaml    | 173 ++++++
 .../devicetree/bindings/pci/mediatek-pcie.txt | 289 ----------
 .../bindings/pci/mediatek-pcie.yaml           | 514 ++++++++++++++++++
 drivers/pci/controller/pcie-mediatek.c        |  85 ++-
 5 files changed, 755 insertions(+), 314 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie-mt7623.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/pci/mediatek-pcie.yaml

-- 
2.51.0


