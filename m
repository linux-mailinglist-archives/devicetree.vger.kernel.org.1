Return-Path: <devicetree+bounces-229836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 595F9BFC7BF
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:24:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 073224E464C
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C87EA34FF5C;
	Wed, 22 Oct 2025 14:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c2hL1pfD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0AB42FDC5C
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142914; cv=none; b=BvosL3BvhiE6MIdcN0qwq4GrOARTKWS5WZ2DMm1ssRaJZEBAqdGJm20pRWSmAz0qpDnDmfSoUdH48hg4gSSJ6ZOP8lBr3NPg0FZW80cT7tdmiiMQXLWO6LaCbn402uz4RGWnXLPIp3oYGaG6Fe65lSa2FbF+V16ajh8rTTGGAKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142914; c=relaxed/simple;
	bh=r7b9miz+zGlUHxIqeITYi2Gi+cySbUCD1AnY1/8Oj/g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AU7QsIE/OXGe5nKKgBsSyRxt0Jsu8DwA+rg2yxvBe/FCS3wK/G9cAqK8fRCp2WGtZr4QOME+6cfZ5C5XTkF8SK3IhhVB1X6sB0BJXpDnlnhYR92xWfRm27Ah4uFSxnHRZJ+LE2DPMWMltVcNbk8z5hyF9cqxRXzP07jA4/fh+wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c2hL1pfD; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-421851bca51so5745845f8f.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142907; x=1761747707; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WXtaPkh3GXutadYrt9/amMN99qvUxpYxHtsBwRH0BwI=;
        b=c2hL1pfDXaQ7BMjEDgI+CWfh1L/rZ+C1/hq8BbB/F5WSf1qIKQoA77SV7hC+sVTuQl
         IJSZCBqQbU8EmkcXQPdAcZFloz0X2sSKAxrkpiDdY360s/7SfKGywmNkZhVI/zYii9SQ
         BV/DfoaXlrOtZS1R9LadVGp8hjA1eDj+BZqzmoixM/zFS3Ir9fow8gvQmZKvB77s9Cja
         82D5L9fwEo7c7Law/gDpzKzx+EgUtNbjlqHR896YMWjsvYWx/o5nvUNGDP0GSgl8+ZE8
         31xNtKXkJX2O4X3epyG63+VG+UHAmkKSRNhS9ttio+e3d1c70PRYCzDJk0GnHWlTVFun
         +eCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142907; x=1761747707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WXtaPkh3GXutadYrt9/amMN99qvUxpYxHtsBwRH0BwI=;
        b=JN2OYIq7Cxo70zfBuq/IRyXzUt1jXw0kE4oy+odDuqCtzoR9CPPTXQtGhkrGI5ZRc7
         qq7qrury6DCeJjaQDUfnqMHP4/Ljhfhw0BpQ8by5oYlu1wZjIbqqtvQN1/c2GiwnQokn
         +7vDBptOHqTXOiVmOF5rkEIwVsHyr5RgdVUvLEF6GkGC+bqaTfTdEfDx1scvyf6qW+WL
         mq1UHWqyn21FbwD/1pXcqk+9Sucv1SZr7audoYTPjr42ptsKizWBNCed7kFzrR4xCVka
         gAPvApU7Nfce7zDE8J8FOXb1/WftuTrEZuX0dbCU0cbIe43z8OPlk7jco5bFJgczwjbp
         94yQ==
X-Forwarded-Encrypted: i=1; AJvYcCXn7EIMpNl5Sjvlxe3qoZBlwuJfeIa/D1PO7kLHe1RAVnHImMsBXStxPjPobhU3MmX/xivOSzLHv/ky@vger.kernel.org
X-Gm-Message-State: AOJu0YwR0Iule1eZD74FAq3nrv24FPXu3zqXfALfI6uVxpg5+h9aG/iB
	M3a5cIwUeYzN5bjRvR48F2JFd+PSvuHUb7TpL0Y+Eu+hqPwnOZ52cfMd
X-Gm-Gg: ASbGncujzu3GSsFd751OV7DqBS/DrmOb74m3aODRJZvx2fhlF8wfpgd+pN9z4+KD1WV
	3DggnfB2yyU4sGicb13SJAdO9gawlW7T1OKTWd3IIl+a57M1HH6wdHvNgcJdN/lYqdc+fTL80z8
	Pq1dhSveJ1udr/T4vj/sULD83J9Z0zXS7JEXAbxV0N0caUjirNeABr2PiPVbKqnsprOmIx51bNK
	b9Nus8cy5Wp+bwzb8DgerOm7qBYqzPC3zkbYhdpnzM1yMwTlCLTFsfwGwUsuw84xRQzrgX6sEx1
	G21aQnxG8mX2DZlXJF3a707jCs/+B/kTilAvfUF/o/ItRAKcilxxnpZDXBu1HHToe9QXQxUqHvW
	mKpuYOmctKbr8Ytvk+iEWZ8PV+0AT/WoqvgT7YTfZs2JWImU0Nx8NyTMVyhcvCrcWDOQ=
X-Google-Smtp-Source: AGHT+IFuKTY+6VlzlctM2Ho4Y6ooXPbr1OkVqVQk/ddAnkBtDFDjaUEYC7CuSZMpeeIzVLphs/KiOA==
X-Received: by 2002:a05:6000:1a8a:b0:428:3f7c:bcf8 with SMTP id ffacd0b85a97d-4283f7cbeefmr11118870f8f.29.1761142906649;
        Wed, 22 Oct 2025 07:21:46 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:46 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v5 13/23] arm64: tegra: move avdd-dsi-csi-supply into CSI node
Date: Wed, 22 Oct 2025 17:20:41 +0300
Message-ID: <20251022142051.70400-14-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

avdd-dsi-csi-supply belongs in CSI node, not VI.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
index 584461f3a619..4a64fe510f03 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi
@@ -20,10 +20,10 @@ dpaux@54040000 {
 		vi@54080000 {
 			status = "okay";
 
-			avdd-dsi-csi-supply = <&vdd_dsi_csi>;
-
 			csi@838 {
 				status = "okay";
+
+				avdd-dsi-csi-supply = <&vdd_dsi_csi>;
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
index ec0e84cb83ef..f1d2606d9808 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts
@@ -64,10 +64,10 @@ dpaux@54040000 {
 		vi@54080000 {
 			status = "okay";
 
-			avdd-dsi-csi-supply = <&vdd_sys_1v2>;
-
 			csi@838 {
 				status = "okay";
+
+				avdd-dsi-csi-supply = <&vdd_sys_1v2>;
 			};
 		};
 
-- 
2.48.1


