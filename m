Return-Path: <devicetree+bounces-241991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C24CC84E9B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EBC1B34E68C
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89323242CA;
	Tue, 25 Nov 2025 12:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZUXRuzwi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9215E320A01
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 12:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764072397; cv=none; b=qMQQOKkzkJZ0W5kiEu2mLQnTAmUF3eSLxtpgsBa/PlSzOzBUeYXo5oCPFLeYhJqCDrQf4ly4Ls1fPdwpICjgfOKWARv8ZertVs3nOTjBZUiMcsw1w4gvlVtUMptIV/21DtRTDt4s0xcejFgSnz7fHHWE3/q+eCuOYOsWeXqdkmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764072397; c=relaxed/simple;
	bh=23kuWoTWNKvhOROVMoXGvX+wd8gYIFlqPE8dKxScrdk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N3DiimnWWD2oZ2ocLbJoIaEInmULeoNi+RSedFdMqoMd8ShH2cGr7KG5uDYEe4C27aiFQ+2Cdx5IdaVhSIg9h/uBN1W9AOcfTNFvMgQeCLyL0D+jzdya4cYFyOp2XFelXwzx1DcXch9sOw9D2ZzsXPd9/ep9rTNLZq1NdUZkBxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZUXRuzwi; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-59583505988so7320746e87.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 04:06:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764072392; x=1764677192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lMCaC95H9hS9yxKlb4Uz3MEUVo/SgdFt0jQNHE6SwU0=;
        b=ZUXRuzwis3BHnptx7LFgyUczJ4vAiUvSBxicbHjW5XC8ihOS2YHlel+ntZ41QZy0/p
         TFkPR0sjj81hCTQMpRsK+6fWsmdzM6sJZ4gWsASJ0dwfsTN559qDBeyS2lUh0qLJqbkp
         xg0k77O1FCQ0iy8h4uBRV0DjGSV9TGgZrIdpq5WJVQGkxv6EIeLfbKQgXy07LPD8vaWt
         3ZK2sHUPJBQl9jV4xO+cb/f66SYYq2ijreGbL43aEUxIBM/564JRS+ScjEYZqPKCk1OQ
         jbg0tSNFvRonPPR/tXEj665yB8fKIOmGRdeSNrG4o1HR1qMIXCx5MRNX9WIAUnQJZ4XW
         Doug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764072392; x=1764677192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lMCaC95H9hS9yxKlb4Uz3MEUVo/SgdFt0jQNHE6SwU0=;
        b=lwGsqIeWX7w9tmxGF0iRuhQKk0bZJRARGhmQZaxyjoqSnduI79sgRkVw5teBAo+37m
         0U6E9Tw4JOQ7NYvfYE+2PBRdknqWD4O3CQeMiTAYneZ8adje7hyVz8qK3OcekCBjyTxy
         HIeZ0eBA4aTVsXPmzHLzj+e7VAqktt3MnoBREKozKRTUzejpxpgLQzzOoNXRMMlofYlK
         mHEotdI2LDioz8xCA24urSca59e1AjDesexqQWIlOQr/6fFaQ+VJiJ5XDzF2caCGIfpQ
         rU1rFrySUUGIlnk7hqANHeWT73A7i62kO2jdVgG9o+1H3XPdz3kM50hGqc7HrKe+ZHlQ
         Ezxg==
X-Forwarded-Encrypted: i=1; AJvYcCW21AUUHhy5IDA0STuTSveP7pItYOxyjjQGWsowpxc4QLM8VosDjtV0JR+bQhr/fODG7+Mdv9DiGFjw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4Vu8aOF9euId5LcDuErQZGhYVjYlj2mzk3WBeR3mlerE7zusM
	40NGV8pV0ycuzCP5zlPqofbhF4mBhUhLSKE/faPX0Y7VB+kC5KbtnXHx
X-Gm-Gg: ASbGnctdXMa1QCb0THjVDRDlo0h1tKMjw7KPTtnn4CL70pSefry9We7Vg9YVHOnpPp0
	T1Yi6785t++UCtlSVWjYjdzE1ZYAsKUPBqv6Lj3XZ/BibHgk8W/aeIXyaL8/okzeiqaxF7ucHOZ
	4Dj+Ci+tQVOX6oAZDHJqN7D+tlwzvtepUfeTH9uMxPbEdB6up39ae1dq2l7tXjMoOYuXzQR6Ubc
	BlSxe7C/Gh0dJ2YO87bdTM++xl1ShynC51LjdE8S/8eb2Lap7yFVtChVDjO085dSRG4oYzYrCES
	fQEoymWK3uuNrulxr/3yvm71EKCug8fb4QivzRB1CbXxekGxUeQfECh6WSyL6xXbBCRbeMxXP+i
	A7ELVDv7wz2QLsY1Q5RRdK/3P19Ws737P3oeqfW3WGrCogBhid7/pdNw3U8/OXlJC2jV4zCDmj8
	4=
X-Google-Smtp-Source: AGHT+IF6vHfga2SRbBlVN5XPN/hZcnukK3C8CPi+5DnZqYSQF6ScQiOLUKDEqTQnFS5G246k7ucsWw==
X-Received: by 2002:a05:6512:3d9e:b0:595:997e:19ad with SMTP id 2adb3069b0e04-5969ea31e39mr6934217e87.21.1764072391479;
        Tue, 25 Nov 2025 04:06:31 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbbecb9sm5150993e87.58.2025.11.25.04.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 04:06:31 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 10/12] ARM: tegra: Add External Memory Controller node on Tegra114
Date: Tue, 25 Nov 2025 14:05:57 +0200
Message-ID: <20251125120559.158860-11-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251125120559.158860-1-clamor95@gmail.com>
References: <20251125120559.158860-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add External Memory Controller node to the device-tree.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra114.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra114.dtsi b/arch/arm/boot/dts/nvidia/tegra114.dtsi
index ef0618e9eec1..a920ad041c14 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -259,6 +259,8 @@ tegra_car: clock@60006000 {
 		reg = <0x60006000 0x1000>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
+
+		nvidia,external-memory-controller = <&emc>;
 	};
 
 	flow-controller@60007000 {
@@ -655,6 +657,16 @@ mc: memory-controller@70019000 {
 		#iommu-cells = <1>;
 	};
 
+	emc: external-memory-controller@7001b000 {
+		compatible = "nvidia,tegra114-emc";
+		reg = <0x7001b000 0x1000>;
+		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA114_CLK_EMC>;
+		clock-names = "emc";
+
+		nvidia,memory-controller = <&mc>;
+	};
+
 	hda@70030000 {
 		compatible = "nvidia,tegra114-hda", "nvidia,tegra30-hda";
 		reg = <0x70030000 0x10000>;
-- 
2.51.0


