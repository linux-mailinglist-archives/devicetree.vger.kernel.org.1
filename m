Return-Path: <devicetree+bounces-228565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9782BEF32B
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 05:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D2503BFF41
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 03:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 872B62BD590;
	Mon, 20 Oct 2025 03:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L26fsBei"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2521EE02F
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 03:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760931574; cv=none; b=nM3POUlwbEcDVs/8/pBLH8SPUwrKLHOKBKkwuBh3wDEv+6fWXfclX4rQmb0nBB9sIgdTqjSzsWm0/YPXTQgxOC6ZxayfbDq73MWVuJwr9Viw4xxxOEW+VANoH5O1QYhFeuaV0ge4FpaPoP8XG5fUm83wXkFcdAqCsC4wee5Bfs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760931574; c=relaxed/simple;
	bh=7ZMKBRn7WTwBL6qsn+lHI9SZa+lKRdoNg2FdbjpyDqE=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=u4niMhtHpE9glM6FmuiihoOI1uJiGqR5HssEhYlWt0oAG98q7b5LErnlMtCljb/TW4fWZENH6ZceIc+ozuR2dOvgUGn87qMvew68Q5JaWMrjSGASOLfWoa4CoSksIq0hXpGf271UPt4lcRdO+k+IorMSDuL0JSaPThcVmjneD6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L26fsBei; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7c27951fcbeso1120636a34.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 20:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760931572; x=1761536372; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a0NX4YDlfnF2moHa0Gi9m7awPoXSV0rkM143rN50kIc=;
        b=L26fsBeiNIWfpU6mC8TwXsdHWKXYuq5u+Vj9jPR3EfP0dcNoxJ9EHeRRLzFSS9gz87
         Fq4fyq1qEsvnVBlPWXBHDmfSP2EsdYTFmVecl1UWJsc5ms8bZ8pS63gM0WDSCW7s54Kg
         XLSVc0Qxa/nKwIqDg58L1h/3SApG+ggWKurLpXEmrQlTDNMK35esm7n2JlOSzOJV344p
         /BpZ4Z1y0m6WY8DGo7r1ABRSqdc/jipWE7IuQTXGxjH0g9cSDhyaokRGHUcWgWY459LA
         RrejtR826S9LojuiqtWf+VicjFk4n2gUhyd9baZWX2+cozXqTh470fmPygtKFyFghX+c
         KPOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760931572; x=1761536372;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a0NX4YDlfnF2moHa0Gi9m7awPoXSV0rkM143rN50kIc=;
        b=SSga2LwCRvk2QLSTUmY++VowpOBGHYI975TYi5K0VC6odL/Q2sPc4JZB28hiNINu8l
         iyssNDHQgsFwfOrHShRewGJHfp8y4uDLkKINjdam1ZqKDUbeBJcZrCQ8G/GTtwJFPPi5
         DfpGJQsx8qT8Rpax4lklwB3TfQMdI1EUEuggWWcNxTWkZyg+omn3Q5sqMoPRi1azaJ0s
         vS+lRGXrPa5aC6IORPc6TZEUJ8JrGgDxl2aUmUQPN1PP2YjYw5TpHviybmJYInbqMmyF
         PPpUh5rtUw+9meEVllqgdeyX5irZ8xt877l+IxEQD+wFsV7jjE7d06nyhBh2bAYxBWWI
         sg9A==
X-Forwarded-Encrypted: i=1; AJvYcCV1mavuhQgn+jvODzTHuNKru0HhotWqt4pSGxu/wWXZR3Nb7m2Sus7MSEJRNmCO1sN9qpbimIWcT2D1@vger.kernel.org
X-Gm-Message-State: AOJu0YwV10YppbcWvSQiblSm7dlOmSLX9fnvgYWNwxk9pgULPW8ldGC1
	UWCqegY5njhWjYY0ThIPxdyHBAWDONLjrzJOhoBxhl3utZTYv0C3P508
X-Gm-Gg: ASbGncuskLZgVtQDhrTvCBQ55+Ux1Fq+dKUGzAC2rj0Atxg1LXpEKY/GqMP+5FP/AGD
	c0UVvRqybdKcnyntumeeYt7n0RDIpVeHaf7qFlYNLQ25JYon38sgbm21wvkWPba9ekXfvnBW0kX
	aezEFuizkMltpyG+SNS3fqyBJsT2Tmui+LnIcB1hWKDn8ODVHL+Fbn8/UBd49D5MQdhfZLrb2q8
	R70Oput9YP3CoxEnhgjzzta5WykRB84Db6uqfCrQYLMqxNVgokmEipHLtL42IO/NRpsesel2B3O
	YccLjU2T1FS50p6OvpDIHRTvGrH2qmNshjB1EWRWOgbS7uG8TaZP3xnRnZmOOoHWVyCInvIynBQ
	dQ08uFei/NQuA2tdjak1dtEkhhLGbtUHSRRgs6zPZ3A5wue73MNY1AZV2OcEMtPi1clO4HC0Bq9
	qRiGDf/1x9xA==
X-Google-Smtp-Source: AGHT+IHOs0K/WHwSdDIh+Y1Yr2b9rRO8V71RUx/TA5imJO1TgmZR2tfJC9CXblqfxCEeOeM8R6VM+w==
X-Received: by 2002:a05:6830:4985:b0:745:a30c:b088 with SMTP id 46e09a7af769-7c27c912669mr6299929a34.5.1760931572053;
        Sun, 19 Oct 2025 20:39:32 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c28890f2a6sm2259202a34.24.2025.10.19.20.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 20:39:30 -0700 (PDT)
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
Subject: [PATCH 3/4] riscv: sophgo: dts: enable PCIe for SG2042_EVB_V1.X
Date: Mon, 20 Oct 2025 11:39:22 +0800
Message-Id: <1ad96631cc9d9d7403a2bed5585d856fa101a2ef.1760929111.git.unicorn_wang@outlook.com>
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

Enable PCIe controllers for Sophgo SG2042_EVB_V1.X board,
which uses SG2042 SoC.

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts b/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
index 3320bc1dd2c6..a186d036cf36 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts
@@ -164,6 +164,18 @@ phy0: phy@0 {
 	};
 };
 
+&pcie_rc0 {
+	status = "okay";
+};
+
+&pcie_rc1 {
+	status = "okay";
+};
+
+&pcie_rc2 {
+	status = "okay";
+};
+
 &pinctrl {
 	emmc_cfg: sdhci-emmc-cfg {
 		sdhci-emmc-wp-pins {
-- 
2.34.1


