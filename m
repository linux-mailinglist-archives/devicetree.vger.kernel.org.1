Return-Path: <devicetree+bounces-227481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96229BE1F4E
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:42:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 526A2487E98
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF2292FD7DE;
	Thu, 16 Oct 2025 07:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L53WD5cq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82902F7AB1
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760600546; cv=none; b=isnUxWBafMHRYpaURdxPloiDVvxKkG44rKuCq3jctGrHc9kdHDt/IuFXJbb4dZOSKDhfyabC21X6w1Bc2qeOYv9ENnSDXj5vuJi5jF0ZrfGeaPHwgl4kpRJ4+fMJYdY+PsKc4k2p/5S9G4fwrSO2X3NKzoNKxlu1bt/mOlgbl3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760600546; c=relaxed/simple;
	bh=1GMIgj9fa8qcijUI+RA/PiInAoio4qFaHVwg665u70Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ETtKi/aBXh7MUd+H4ktGrToEiUVTf6oVI3nvI4jo1UNCpUbteonMBh0qN9dlRwvqhL04rBsYl5T+EgIn82dafQGVGzrVsObc1tvPKn7BBRWLXkCnypDno/TuE8RwNOvYMJOBye/DM5vdUPC0B1+EGQWwgMqZSTHpaFiexAxmUoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L53WD5cq; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-363cb0cd8a1so4085731fa.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760600543; x=1761205343; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ia5UihKP5vENKa1ZWsO4hQ9tEZ1zR6aQObC7qlN+yRs=;
        b=L53WD5cqZkf3Grf5Ny5ixH06yJZ6Zd6xcrPvucaISKp5w0no7oRZ1ndgWpoOBYsPje
         gR3LzzUvrHoDRJIj57OePmoYD7xYa0gQrZ0Zt70+ibX7DcrwLJDZ6mFAa0JqFWcwHnIZ
         5JswRRevK4L0LmiNuRzP3Wi6V8Tpqo2L69lQXsPJ808X3L33UzhD3FcNf3S2TgrrMp8C
         sDTi6eaTDRvU7EtzCu1hMK62RjquJ2HS1hrUMCAbzNCiHVWyVrolJE4wadKHkYuntqyk
         QguClvj3mRo1UpCodhYwsIWRx3J7SP8VtNQ+bjfIVsxd5RKJ4vajycvMsnW+aFpD0pA3
         qT/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760600543; x=1761205343;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ia5UihKP5vENKa1ZWsO4hQ9tEZ1zR6aQObC7qlN+yRs=;
        b=MkcCanggjuU6KcWcJaWnR8/A2jyDya3eDyW0Jv9bA1r0Pkb04sKC44NVi03h26Amom
         BeHz/akk5UQFRTIy6AXJGdDouvdmyT/QsuB/4vx5qEwtcdOwiIH9Ktij6eGOmxrCTQuQ
         HQQi0nv003GWPYq8/q1zTZQzGp/69ltky/C7ci7zpXNE3N2CvFuuK812lYMmVtDl3qJU
         PZ9vmSPwVUzDZz1SQtqmEz3LKqR05bZzw/GGwRzXP+fYjUwd+q/qIYMXWCv+LC/wDj6T
         a0gk/GbcSCaClDN4UGgKByXTZ7Jfamj9XppIWG7r32l0G3NJGu4bbnGuO21gvWKwEy4X
         tmPQ==
X-Gm-Message-State: AOJu0YxT30y1xXa03U69v0FKgPBLC7Ahq6zGhmdhgIpvSu0gaLDjD3zE
	0mOqe5UY48Lje3SqM6cMN7UGUqbEI5MGDgi/hdwrVe5YHf9lEwtUyL8l
X-Gm-Gg: ASbGncuVgumL1sWB3RdP8Z9zZ2+utgmu0+8Go69Y7G9HIuLNQ6ck/wnJ2P4oFkly19S
	tIR75iLxt3X/gJ77HDoqVW5/43Sd3K4GZ1qOlxsN/e5h/9fvFEVhwcokE6ryb0fM4e7bJrx+4FR
	F4yfZmt16hyhIq+v8LiY/urDfTReZLLJhzhESOQJuYvQQf5cIS6Jj8Hae5V5NkZFBoIG8NlTgrn
	XqXsU7716ugFmwh71qjSpS7TqOCBSrj+UGE8QiTggpYDqdDAZVSRdSEmV84k0nr0AsMwGt/xdQI
	GwLctg8rq5ED66upR00GDcNhDFIBOqFZY9sanSfwrtombp8GfPmXNdl74V6gy1QWx2RzSgRBF9i
	O9dhmxdogkpR+U/0+ZH4OsB5rNd3FaWLWXHYKZh81lmJ4AshB8DP9T0CyGbbm8Cw595g=
X-Google-Smtp-Source: AGHT+IH30WPk5mTWKUGkgpDqPD9jcWCWyb5Rjdc/LS292IWzNiQQP2senhWiVMmYVrWHo213ylX7tA==
X-Received: by 2002:a2e:bd14:0:b0:372:9d94:8697 with SMTP id 38308e7fff4ca-37609f05411mr92467611fa.44.1760600542660;
        Thu, 16 Oct 2025 00:42:22 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea14d46sm53226121fa.34.2025.10.16.00.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 00:42:22 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/4 RESEND] ARM: tegra114: add missing HOST1X device nodes
Date: Thu, 16 Oct 2025 10:41:50 +0300
Message-ID: <20251016074152.8759-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251016074152.8759-1-clamor95@gmail.com>
References: <20251016074152.8759-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add nodes for devices on the HOST1X bus: VI, EPP, ISP, MSENC and TSEC.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 arch/arm/boot/dts/nvidia/tegra114.dtsi | 64 ++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra114.dtsi b/arch/arm/boot/dts/nvidia/tegra114.dtsi
index 4caf2073c556..8600a5c52be9 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -47,6 +47,45 @@ host1x@50000000 {
 
 		ranges = <0x54000000 0x54000000 0x01000000>;
 
+		vi@54080000 {
+			compatible = "nvidia,tegra114-vi";
+			reg = <0x54080000 0x00040000>;
+			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA114_CLK_VI>;
+			resets = <&tegra_car 20>;
+			reset-names = "vi";
+
+			iommus = <&mc TEGRA_SWGROUP_VI>;
+
+			status = "disabled";
+		};
+
+		epp@540c0000 {
+			compatible = "nvidia,tegra114-epp";
+			reg = <0x540c0000 0x00040000>;
+			interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA114_CLK_EPP>;
+			resets = <&tegra_car TEGRA114_CLK_EPP>;
+			reset-names = "epp";
+
+			iommus = <&mc TEGRA_SWGROUP_EPP>;
+
+			status = "disabled";
+		};
+
+		isp@54100000 {
+			compatible = "nvidia,tegra114-isp";
+			reg = <0x54100000 0x00040000>;
+			interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA114_CLK_ISP>;
+			resets = <&tegra_car TEGRA114_CLK_ISP>;
+			reset-names = "isp";
+
+			iommus = <&mc TEGRA_SWGROUP_ISP>;
+
+			status = "disabled";
+		};
+
 		gr2d@54140000 {
 			compatible = "nvidia,tegra114-gr2d";
 			reg = <0x54140000 0x00040000>;
@@ -149,6 +188,31 @@ dsib: dsi@54400000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
+
+		msenc@544c0000 {
+			compatible = "nvidia,tegra114-msenc";
+			reg = <0x544c0000 0x00040000>;
+			interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA114_CLK_MSENC>;
+			resets = <&tegra_car TEGRA114_CLK_MSENC>;
+			reset-names = "mpe";
+
+			iommus = <&mc TEGRA_SWGROUP_MSENC>;
+
+			status = "disabled";
+		};
+
+		tsec@54500000 {
+			compatible = "nvidia,tegra114-tsec";
+			reg = <0x54500000 0x00040000>;
+			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA114_CLK_TSEC>;
+			resets = <&tegra_car TEGRA114_CLK_TSEC>;
+
+			iommus = <&mc TEGRA_SWGROUP_TSEC>;
+
+			status = "disabled";
+		};
 	};
 
 	gic: interrupt-controller@50041000 {
-- 
2.48.1


