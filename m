Return-Path: <devicetree+bounces-228564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B96EEBEF325
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 05:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13D033E224A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 03:34:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63DA29DB65;
	Mon, 20 Oct 2025 03:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B2GItnPj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FAD2BD00C
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760931257; cv=none; b=K7aO8/u77Q0dQECyQgzkt6Hc2LWHDQqSQzsDgB9X/YBwrszkLQvrm8mttcTQYBcu6MvwuKiHmeYRwc4GaOJPNI0qk+PzVJ2zMkE85thNFbr4u+OrrAZl4oEZ8NKOvuKM83GoxYumNTat2uUPd1Vgw+hufiPmQbn0r3HwNaf7v40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760931257; c=relaxed/simple;
	bh=dgpNPFFxsdIAjczNzjU4PLG/4kOomJBC5GhTApKNwOw=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TULRr0Muy0Ws3scu9915tyxzEab0U+H3YyYL9NydVjwiToA5hjpPJuEcj7C+rw3KPPBuMDmbHxsZnLXXrZMfKAXK+rgrf6IEkG18/HlVcAVoyREKhovV3tRBjeHiKCQsF3S+YeMaXnSqOHkg/YAjQCOTA8dnxM74fyWXZLz/uX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B2GItnPj; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-3799fc8ada6so879540fac.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 20:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760931255; x=1761536055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7rSqoF1bhRIMRZ/Ngttka/3cr36QgYmwYc1FwmVj14E=;
        b=B2GItnPj9ePFIyy1NV6ebkSdW4JfsI9guXfrDaE5F+udd2xe8lgafWxFQZyAytAQjG
         enucN3+yuoMKehfdGc5RK8GTNrkJnpdev0x11tnLneZ5iB42AqCjurWBmKE+iePu4n85
         lReHhBLku2K3Solh5iebdXjiHDKTlUzf9RJqqqehedOn6WHSLwBytbpl2qUAb9OvgrXe
         P5MNd68X/Tuf1VEzYjnFJrDbbMue81BjeDKRnQDECHP9hrx5zj+Gp+3bcPzjywVWj5yv
         AwXqJshWBfG7H/rHoTCWYzhoBgbeFjmOa/m5rx+1lfh2f0JGBLQYIr5i/XGTmfKVr7rO
         /M0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760931255; x=1761536055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7rSqoF1bhRIMRZ/Ngttka/3cr36QgYmwYc1FwmVj14E=;
        b=S7/2xLq2FdPknlyS6oYtPMTOKLmrpwuc9a+ZqpKXBFITV2Go9KDvTZex7Ox492ikGs
         Okk86g4+uGTEMmHBBRIfho1gZXi9+DigpI9/1whWHZc/WrGjW6ABw3nINC94Ce1VDRgD
         +0UhT2j1CKaqkMHO+/pjJJRVBcWasUGmDHq3YCiBkOl7AZoTybFbthf6N1+mc4255YJx
         qsAbRqfgkbVIl9hQlcUAhg5qgfw6MzSlKEQlEaHkgDWIWOS5fp8iwraF3AAf/eb7YcOI
         kCkR7XdYLVPRQAJNwGVKMx4MMncQMZgDJtCocn7qIypmCM65S0lJDRJavBnJFPv3Nmnt
         NBFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgoUvW2hKcgRUfr8eIsZ+K/9mzEAvA3Mt8mUfeV2HKr1niDB97Ir8gJ90cDQWTu+JyJ21yBo0rh9Q0@vger.kernel.org
X-Gm-Message-State: AOJu0YwJGAGNyo3nQGCTMsmCpx/F+KFlnjscaNoAywkQGPmwkX5Lvl70
	Z4q4Rpy9Km+N07aZC/5kHuusVSdMk5Hmre/F3W34aSBiV4+jefICgcHh
X-Gm-Gg: ASbGncv6VwKpCYK0vLoA/5wsowTeCxPB1EYlLHPw0Y2n+S2S+K46QtBMnmvIkZICktS
	zTLYmvs7tZQJfaKssElNUSLJdowBotCz/60KF0hLGBlJAPkrOFD4HSlkxX2VPkfmNqPX59/6772
	JEwsjZA1CzMV5FMkPCqdVScZ+xvqx7nln35GEazpqWn5a0USb7AqAnVt7EhZUhikYhGUcD7l0wa
	JJcSqhJnAANX0/2bnDJ9qFAFlrgQY5/jTGxnUH84QkPmEDQNBjeg+Sl+wcdnZNYcG2oeHROI87w
	lLOW9BVlb9jhIbQjgSVJ9/VtcO2D7GP2FBaU8CCeEii/mClUasFlvlz21c1iBdBc47UZOYf7tnb
	z4lrD3UI7RNV1A1hJ688dg98O0mgqqo0CeLISOR5FRI3RHWPwDW814868bvKfsUGA2nAMD5a9qx
	68KzXu48b8TEWMJxBW+VRH
X-Google-Smtp-Source: AGHT+IE9q9Mk98lP6hBRl0yUU492JUXYJJQ2DgdO+Y4L3lDypf5RtaLyuDaSNhzNdoqOYTgHdrMLwA==
X-Received: by 2002:a05:6870:2b12:b0:331:9036:6151 with SMTP id 586e51a60fabf-3c98cf43502mr5122705fac.4.1760931255070;
        Sun, 19 Oct 2025 20:34:15 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3c9aefc51c7sm1878073fac.8.2025.10.19.20.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 20:34:13 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
To: u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	rabenda.cn@gmail.com,
	inochiama@gmail.com,
	krzk+dt@kernel.org,
	mani@kernel.org,
	liujingqi@lanxincomputing.com,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	tglx@linutronix.de,
	sycamoremoon376@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com
Subject: [PATCH 2/4] riscv: sophgo: dts: enable PCIe for PioneerBox
Date: Mon, 20 Oct 2025 11:34:05 +0800
Message-Id: <ec474c5eefb79626dd6a4d65454da9109aaf2f4d.1760929111.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1760929111.git.unicorn_wang@outlook.com>
References: <cover.1760929111.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

Enable PCIe controllers for PioneerBox, which uses SG2042 SoC.

Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
index ef3a602172b1..c4d5f8d7d4ad 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
@@ -128,6 +128,18 @@ uart0-rx-pins {
 	};
 };
 
+&pcie_rc0 {
+	status = "okay";
+};
+
+&pcie_rc2 {
+	status = "okay";
+};
+
+&pcie_rc3 {
+	status = "okay";
+};
+
 &sd {
 	pinctrl-0 = <&sd_cfg>;
 	pinctrl-names = "default";
-- 
2.34.1


