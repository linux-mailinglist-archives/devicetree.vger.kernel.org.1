Return-Path: <devicetree+bounces-226126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C26BD5248
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 18:41:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CBB784F84B5
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 15:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4B431AF14;
	Mon, 13 Oct 2025 15:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WUoKgkRq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4873E31353D
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 15:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760369746; cv=none; b=nQMVyalhk0EBQValKfemwC0C89a8MsIPISU0KozIMihLUbI+6s5dpGMIo3A9gyvqgl2AcmUxs0JwOJE9N7Xw76EhJYoph530KbXAIGC9aIN7ZdRT9kLjvHQ6mhcn5U1SflWDsG/ZLth/wqShV2O51E15K8+kVyxqGq3Mcdb3afE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760369746; c=relaxed/simple;
	bh=WJWs+NFUcGbJALoN3wXML39lAbVPkKGzBxDYg5OA8Pg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hgtbyjJ+P4LDik7IzBus+/M2uim7K8uK7jpkOTm9RPq+jwIF0ezFkMEsvhDCFkytuHsa67E+gJMz+8d1B/q4IHrhlLpjqiWoqAMKJLMNx7pv2qpUjWB9jrwYjDcGTH4dN/Sju/wJOpxFP9ULoxhUQOPQhMWxH5EfpeUBMSQfi00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WUoKgkRq; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-42f9c2d4a93so11807285ab.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 08:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760369743; x=1760974543; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xbPxvqkXmDdFxjU8mZBTBK/T+YiYjBFrlI/xnqdkqi8=;
        b=WUoKgkRqAJkfF1tMhRYKer0fra8bVJZ9xJqk9hGZ9WmsqgNg4iaaWd3nKWvbQJpBGz
         ASggX2PyiyVoKaUZFbuSwooJ3AIFyo0DNAWqKcsTxhfx8pEUBLR2iEsGyyk9QD3p0SFU
         cjZ+tHmoiYYLEYkscN3YGOuDI7gaw2Rc6H8ARkuUadXxus3UShc/TzN+KrkXfs3eYLD8
         mF6HlkyHvQVwo1wIwxXDZ2jEjaw8Rnm5HKmIYQF6Unq73NOxZsKg286AsHseVCqfGQLw
         Hq60x0xfIi569ooypm27zNiLmLGs6eT5e2vP7fCdck4CWuRxe44s+Huqr5BBkZbh/yRA
         cTqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760369743; x=1760974543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xbPxvqkXmDdFxjU8mZBTBK/T+YiYjBFrlI/xnqdkqi8=;
        b=cVP0P88/Unjk1siTHaJlG7nmXf5hBzoDclwJBKb9GLuoORdfoXMeNmRSMrrVNFXq9j
         GNrzoEqnTxG9UjIs/RLfuLArk+jNc2x8tA8mY6Nv+G3IwFIBvUBu0bFOOET6zfslw+KL
         o3fA36hv3XFgcPNDt81rAdCWoFHSY9HTPdehea1I+oKVwBcPOZOUDVhdKGMY74Mev6+Q
         PXy4hgdsHlUpnX73f6NJIHMPKHDUVN1TEq54OIbihsVdnJ/B4+SHn1SKUXcu8DrDKcGq
         x6IXLVn4l1FCsoq7OlEulbsmRDQCwZIyh4u9dgn403xdNM9vuTATC7803O7R/o7STqMi
         rUNg==
X-Forwarded-Encrypted: i=1; AJvYcCXO72Qk8/0ApYMAF51g8mLiNgj12CysrPVliHlU1/BZTtV0eM5joFiuq7tA24D9dUExuMXwXUmIY1dH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2XBZZD/6pUIAUYri1dTYJDPf/ajAOBiQrM1ycJoUepJGhe5HQ
	mpnGHrRtsZPmDhnA/A4SZ6T9mBah3wEcCY2DhD87B04toxNa5tE4UxUzIUD3YZ96GCc=
X-Gm-Gg: ASbGncvC75uAAlxh6pCuJJEvUf0Tyd6LN2PzB0/Xghu9+RsQF4NTOYjwdnNXw0WVqyE
	mijyfWXJvBpViFqJmuZD/zU/GC5bhnrfiADbrxYnkpu9uPrx1Yo2/7U6/ZcEHHh5O94eD2hZvSb
	GlxMPie9T23tHJe9rAQQnr3NN/RmUrkbZPGPVr3K0tET5W9izwWre7Ki2DogrNhHk0M8kg25Ec7
	VNCzjeVRs4+i+zqETQ6JRtbQPDGSDI0nHqMhs2NCNdedgXF15vxqia+adfFDLU2POdaV2jECDTh
	ch5OcKasRgtrsY61y8hcOUKnZEKhLTZoj756jxVPMBwrEvL1R2qzQwi1Fcl6Z8vCLr9+/y1D+LK
	8XN9sDfUaap9GETSqUwdNoaRLld8e74fq30ILj8U9i2gpePZvkgnb94HfHOe3QWHzh7YUCCKn5a
	ZtvK2Bz6ms
X-Google-Smtp-Source: AGHT+IE+RgkOmKUAmZ+h2lR6Ri91hcZZDy7nYDDMDTZK5PVvcsi3GRbcTYzKlh5jsPOXdbbG42NjVw==
X-Received: by 2002:a05:6e02:4918:b0:430:9bc3:e1d3 with SMTP id e9e14a558f8ab-4309bc3e4b3mr13658895ab.12.1760369743033;
        Mon, 13 Oct 2025 08:35:43 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-58f6c49b522sm3910266173.1.2025.10.13.08.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 08:35:42 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	christian.bruel@foss.st.com,
	shradha.t@samsung.com,
	krishna.chundru@oss.qualcomm.com,
	qiang.yu@oss.qualcomm.com,
	namcao@linutronix.de,
	thippeswamy.havalige@amd.com,
	inochiama@gmail.com,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/7] riscv: dts: spacemit: add a PCIe regulator
Date: Mon, 13 Oct 2025 10:35:23 -0500
Message-ID: <20251013153526.2276556-7-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251013153526.2276556-1-elder@riscstar.com>
References: <20251013153526.2276556-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define a 3.3v fixed voltage regulator to be used by PCIe on the
Banana Pi BPI-F3.  On this platform, this regulator is always on.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v2: - New patch, for a newly-added regulator

 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 2aaaff77831e1..046ad441b7b4e 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -30,6 +30,14 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	pcie_vcc_3v3: pcie-vcc3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "PCIE_VCC3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 };
 
 &emmc {
-- 
2.48.1


