Return-Path: <devicetree+bounces-82165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2955391E9E2
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 22:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A6921C21881
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 20:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D9C17164C;
	Mon,  1 Jul 2024 20:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cEcLb1Q5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C661591E3
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 20:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719867312; cv=none; b=RhZ7vwD3udtTXu2h67aRiUBE/ASOIb7EYophVCtfUFnFNvLttUvSDvmptd8JvmHHiUmO4W+f9fRE8kcpLXSqtyKxpzfNM73l8x/c/puuGPNHQA2KHJzdE5xfUovbK0t9SuFUHzF75gk15pxvlDOxg/vWV7DpHPfq55OIgPNqyYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719867312; c=relaxed/simple;
	bh=kX7MZxVENfv94wL+QrYqkcNlABVfQrdyPkrHiDgyWjg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bO/OMseRcilm4RDtcMvXvbd1kZ7qmp+aO8FsL6n8UbdWC83o1Z4FtF+z3AKKLry+4fkEtCAVzb/KL8hzm//qKazGtHsy73RjPWGZFSHUyjlHH+zaMjdqmEMuXgA1C4wdGMt4Dp1Jlh5PW/XMyeM8ei/PuFKQ5sQndoB1Fm2YgHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cEcLb1Q5; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7065c2a55e0so155318b3a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 13:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719867311; x=1720472111; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YkUjNOfBhiaGxWDuumc0E1As2Jd8Umf0Y+lF31dLNhY=;
        b=cEcLb1Q5RzlMYcbnHrr94jJlhazU4k4fSEfou40Ec30uRoIjuy5d/JCgLXEcShcn/T
         T4dhVn5YZ23ilLjUxspH2uWLMU8MtUgvc76QfRR3T6X1+Twx9ynSFF9LwEKDOUHDcU6a
         OpaPACVM82d0kZPBBpcj1v7emkL1LCsRXYzlQRSHXQiw3HqXNuy8t1Os/roaKnWP2BHM
         nzmTTe5uHRNgOqu6EieRB7NbttTH/sat2Wd07roQFhdLcfdK+KC7trfJsMXzuuFodu7A
         JBSonDk+5WDiftyo++5lXr9icb2XIvlcGq1r30Bo1o+dqdFG9+0DUUfD1cxONU1jU3y0
         tk+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719867311; x=1720472111;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YkUjNOfBhiaGxWDuumc0E1As2Jd8Umf0Y+lF31dLNhY=;
        b=YZKFEqFtShCDtt/l4N9tSz7FnaogmT6KdgH6AVdH3Wo4dDQqiA0q2H3PtJKko0VMkA
         bn50e9o550qBMDbBjNZjlpGK2fQl03Ne0yupYA6Xr4HaDnMESUrSNxxjTxJC6QkUK/hq
         4JumLT9SBQesclGf7C4pUEhSNYaQVW56wAszasNpix1pemBA5vwW0N50p9CI3lBdMEPG
         /uf7FAd4JUuLcmoOkxxMug69OnNyy/mqyrqyWp/iu1sp4WXDkDiXsKwZ3TqsNS6Ai16R
         YZ9xqw/vlmaS8yzduQ92RYCAE6l9EGv/lD0TkGpvWffSsYidGkx1o3OiRIkul4KXZpPQ
         HRsQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/3FTkPn77AhEeVq/ciEvJkLY5JY4/3WveULcZmW3nOovz3kYFvvBJDjoYz+iNI/NFzCn8MIGny6wSIlchqfrORoRmxCuo08WnKQ==
X-Gm-Message-State: AOJu0YxXYtGyk2ZmGKCr++F+mStzAdMZIgMC87n2ruo7fM8crQMbe05t
	TsyLxWAeJ/F+c9cjT6CblCO5h03jIAH3qMQKQ5xtWpOQV5rMkxth
X-Google-Smtp-Source: AGHT+IFDcv7a0RpmKggtPswqll4BHilpwu061zFF6Nvcx+6O0kyHDJWFCgbtdFGQn1biI87o+bNFHA==
X-Received: by 2002:a05:6a21:9997:b0:1bd:289f:2ccb with SMTP id adf61e73a8af0-1bef62c978amr10181144637.6.1719867310817;
        Mon, 01 Jul 2024 13:55:10 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:27dc:3453:bfb9:bce5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70804989f5asm6994602b3a.195.2024.07.01.13.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 13:55:10 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: dts: imx8mp: Remove 'snps,rx-sched-sp'
Date: Mon,  1 Jul 2024 17:54:58 -0300
Message-Id: <20240701205458.164053-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to nxp,dwmac-imx.yaml, 'snps,rx-sched-sp' is not a valid
property.

Remove it from the imx8mp board devicetree files to avoid
dt-schema warnings:

... 'snps,tx-sched-sp' does not match any of the regexes

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi | 2 --
 arch/arm64/boot/dts/freescale/imx8mp-evk.dts         | 1 -
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi     | 2 --
 3 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
index 8be251b69378..15f7ab58db36 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-beacon-som.dtsi
@@ -71,7 +71,6 @@ ethphy0: ethernet-phy@3 {
 
 	mtl_rx_setup: rx-queues-config {
 		snps,rx-queues-to-use = <5>;
-		snps,rx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
@@ -106,7 +105,6 @@ queue4 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <5>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index c2c708c492c0..35e0ed23bbdb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -294,7 +294,6 @@ ethphy0: ethernet-phy@1 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <5>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index c96e74684e03..d23a3942174d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -241,7 +241,6 @@ ethphy0: ethernet-phy@7 {
 
 	mtl_rx_setup: rx-queues-config {
 		snps,rx-queues-to-use = <5>;
-		snps,rx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
@@ -276,7 +275,6 @@ queue4 {
 
 	mtl_tx_setup: tx-queues-config {
 		snps,tx-queues-to-use = <5>;
-		snps,tx-sched-sp;
 
 		queue0 {
 			snps,dcb-algorithm;
-- 
2.34.1


