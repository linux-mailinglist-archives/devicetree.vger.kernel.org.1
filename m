Return-Path: <devicetree+bounces-227483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 74541BE1F6C
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0A5EB4F131A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8435F2FFDE3;
	Thu, 16 Oct 2025 07:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mLCFyX/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946FB2FB637
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760600548; cv=none; b=B8DUwYlDbsnUaLWtWCUVH4UMKYT8VK/xVcNWuvWXDeJ1HpnLyfuvGo6/cN48Q+CQywlUeUYAIEE8NyPqMQ7acMBoeOdap60Jb8udUx21A+f+w7yoCA16InzIF8PXrY0QgO+6XGMrEq9FuV9wnUWpTaPktLzbRIwpjrnYvp/Cdxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760600548; c=relaxed/simple;
	bh=xB0LZwMzhZT5j2b0jjsQ2KFZrgTIo41/jiusVXvcdes=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UDoH/P0thRsYStQoqP+Ad3JK1E8zwUxKNKlTpxkkHfKUPYSguwmdgj5udVqvrwMfN9i8vwM3bXBuSd9l3yOx3N6/gLW/x9myz7sbPNbExvdFUnOhyTkZ6bwyLoWx8ErZblHxbzvHKFinKANnfm1kkknIBjex9VCS25Tp9EtWQdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mLCFyX/C; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-37777912136so3516191fa.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760600544; x=1761205344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GtovmNeUjM/Ta3qpNFjKfyT/fym1ZwzATHtxvDM0Z+Q=;
        b=mLCFyX/CvWF7iJbpNR6LtsGMSmXNsBXtOP0rToZOH0SXChJFoAfLVxME6t6GbaCEVl
         gDwBk80VKRnF1UgPc9jBqYviHWL1Mo/F7gkNphuszXUklAjhv5+O32vBvg/WpXjHJiXa
         fo+R27mRzUlGOXOxitFMz5nQ2y4WvWwk60ticGe1+CbVzmyb95XszSJBsji06/NX1MwL
         J18+Eo7vK7Me4y6vZacJiM8Q/c5hHwSxFVSVKZ0K1TPy6vy0VPek/mdB7FwEluU3FnjR
         wf2EybZfjYg/0gvJuw35NPO88E032vUZ32GyVIYX6Ca1HVSyjmnp5mH+x8i+ce4CIigS
         U16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760600544; x=1761205344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GtovmNeUjM/Ta3qpNFjKfyT/fym1ZwzATHtxvDM0Z+Q=;
        b=QJ1jMLc+akUWvJEvqv4u15zGzK9Z5RkQHFyJoR6IYFp0/+TwTCtL55Lm7j25AZNa6B
         5qGD3WC50WshejCyxSn9DCCBQ0ahpb1FUSTkEuwWjTG3opaXyNg+hysCZfjtBOVj9flo
         EGT6ogCMJ5nJtp7LnS5ubuGLtX7LvJDcypnywqgLhNbJUD7TD2Opr0rj+LU8rpj/j9TS
         DvBct75MeDJIe+eP0z96wtRTJEZquulHxGRpwfuESYoMFX+JhfCbAfIU2Q2jgpo9sZ9V
         wcrTq0C/ZKQRj1xMxEbIlVka2qbaTKUFjBdhWGGC+rUxjcAM9KWX1SCfeV51AGeTgZnz
         nP+A==
X-Gm-Message-State: AOJu0Yzbygft8tMCKUjVGcKrFaxaIoQzM2zEP6VV7rLUTT2Rq6R8KQbr
	kPsx9bXRu1sTOws0fqm9OhyVkdNoPTYcYMa3fdkTgeHUquLGSpe2n7Qr
X-Gm-Gg: ASbGnctCO96YV9dOJ3NoYsxQ1gWB1K0f9QWHBcrXfmmB4pB8GjIO8UOZLkeHxQDYvWD
	TZGGt/+9IQvK4GT5eod7fpPwrfSepW47A8yiWqNLab1kazXE9bMIPZ4W63R4ah6QcQnF0lkdHK/
	Tu7kkSZ/peiToVVYxpNzd/9kx5acX3R732rjKeh98Vg+Zlb6ZXWk3hYgVfcsXZuN3pybuW6r3Lr
	FGWF6Lyh/NAvc8t9KHrVsGmF95XyWexTlkenyXfw+KHWO5Qc40SSduFFFAfaSq2fjbGKUCedX5y
	Mg+C5dp25GVqxaCz4xxKSiBOjgiGuo8EwYXSDTuHVtoMVj2KjPkC7Y7Y7jMAdhvi15rSwKiycFK
	98ixqqMgBDwq6G6NgFQC+BZ5o+/bsggtui5mbHxnYCJMMctLTFmipW8d04INZEmGfYew=
X-Google-Smtp-Source: AGHT+IFbllf5hFrxaT2o/OaVZ8Ngh/7DhF2hoeMDKN0lK28m8mzh79yF6GtziaC1JfPDf0mmnNoccg==
X-Received: by 2002:a05:651c:35cc:b0:36a:a8bb:9b81 with SMTP id 38308e7fff4ca-37609cea827mr90279441fa.5.1760600543533;
        Thu, 16 Oct 2025 00:42:23 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea14d46sm53226121fa.34.2025.10.16.00.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 00:42:23 -0700 (PDT)
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
Subject: [PATCH v5 3/4 RESEND] ARM: tegra124: add missing HOST1X device nodes
Date: Thu, 16 Oct 2025 10:41:51 +0300
Message-ID: <20251016074152.8759-4-clamor95@gmail.com>
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

Add nodes for devices on the HOST1X bus: VI, ISP, ISPB, MSENC and TSEC.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 arch/arm/boot/dts/nvidia/tegra124.dtsi | 64 ++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra124.dtsi b/arch/arm/boot/dts/nvidia/tegra124.dtsi
index ec4f0e346b2b..ce4efa1de509 100644
--- a/arch/arm/boot/dts/nvidia/tegra124.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra124.dtsi
@@ -103,6 +103,45 @@ host1x@50000000 {
 
 		ranges = <0 0x54000000 0 0x54000000 0 0x01000000>;
 
+		vi@54080000 {
+			compatible = "nvidia,tegra124-vi";
+			reg = <0x0 0x54080000 0x0 0x00040000>;
+			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA124_CLK_VI>;
+			resets = <&tegra_car 20>;
+			reset-names = "vi";
+
+			iommus = <&mc TEGRA_SWGROUP_VI>;
+
+			status = "disabled";
+		};
+
+		isp@54600000 {
+			compatible = "nvidia,tegra124-isp";
+			reg = <0x0 0x54600000 0x0 0x00040000>;
+			interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA124_CLK_ISP>;
+			resets = <&tegra_car TEGRA124_CLK_ISP>;
+			reset-names = "isp";
+
+			iommus = <&mc TEGRA_SWGROUP_ISP2>;
+
+			status = "disabled";
+		};
+
+		isp@54680000 {
+			compatible = "nvidia,tegra124-isp";
+			reg = <0x0 0x54680000 0x0 0x00040000>;
+			interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA124_CLK_ISPB>;
+			resets = <&tegra_car TEGRA124_CLK_ISPB>;
+			reset-names = "isp";
+
+			iommus = <&mc TEGRA_SWGROUP_ISP2B>;
+
+			status = "disabled";
+		};
+
 		dc@54200000 {
 			compatible = "nvidia,tegra124-dc";
 			reg = <0x0 0x54200000 0x0 0x00040000>;
@@ -209,6 +248,31 @@ dsib: dsi@54400000 {
 			#size-cells = <0>;
 		};
 
+		msenc@544c0000 {
+			compatible = "nvidia,tegra124-msenc";
+			reg = <0x0 0x544c0000 0x0 0x00040000>;
+			interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA124_CLK_MSENC>;
+			resets = <&tegra_car TEGRA124_CLK_MSENC>;
+			reset-names = "mpe";
+
+			iommus = <&mc TEGRA_SWGROUP_MSENC>;
+
+			status = "disabled";
+		};
+
+		tsec@54500000 {
+			compatible = "nvidia,tegra124-tsec";
+			reg = <0x0 0x54500000 0x0 0x00040000>;
+			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA124_CLK_TSEC>;
+			resets = <&tegra_car TEGRA124_CLK_TSEC>;
+
+			iommus = <&mc TEGRA_SWGROUP_TSEC>;
+
+			status = "disabled";
+		};
+
 		sor@54540000 {
 			compatible = "nvidia,tegra124-sor";
 			reg = <0x0 0x54540000 0x0 0x00040000>;
-- 
2.48.1


