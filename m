Return-Path: <devicetree+bounces-148882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE64A3DA62
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 13:49:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05D1B3BF687
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E56C1F3FCB;
	Thu, 20 Feb 2025 12:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TUfMv4I5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8603D1EF0A3
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 12:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740055706; cv=none; b=ctbpOxN7guyvt8sH3Yo7imyHDEUASP/0NBwDCWkH9cQ1TDEdL3wED+qLrzo9kL084AK4JAidR5DR7PjiUtlmO4oUbMUxzi7A6O2bRQwZ65ly8xUeEv8IcyueuDyh5kvPM+UrEyoo4ymDyxPLC2ev7coq41MCbA2MLneXSdZ4XDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740055706; c=relaxed/simple;
	bh=WIUGIvXY46T52kzvVJcrDhggfphRCH6n5yfZ8oqcuL8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Pp1HonBR3wb0bD7r/X4DxnR6jLexji0cUb6z3rWwu8a2Wyk5uhAViwsTBNTpVv+SoGOkhYM5M1gBfFc3UxDGLOmHoNzzec4rpRf8N6wV9bNsAXqH8tjkys64unhz/sqrRBkBD7bff8W+P0Ofka8VMEVolxm1RjWiJIj3wBnUt9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TUfMv4I5; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-22104c4de96so12977225ad.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:48:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740055705; x=1740660505; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CE4a7LWNgD+6bEHm+If6yI6CBWntgAegdTZ6WlyVgRs=;
        b=TUfMv4I5hAE+HvD6qhlXIwG4Zk/1n2HYdnc4iBnCxSbbucpFASMmCmlaYJDaguE2pn
         AtHozFLs9nYdMrXa0L7AK6z9L9ItbqS4r3JfMQfnpJ/MfwD/K7hhLsPvIvUMuyd88WxY
         JdT4vZDJsbZMMwHbaZzXJF9eAMABD7Nou0UQeDOgBzSqoP7t5XwWrTxzm9741ThXpBTl
         SK5YuX4tTsX+sN+/j2xnpBGCpfw6TfZ+lr5YM55ZXfwvgJ8+gMPP0R52ZLa+ocdfCjDh
         zUu5i5ZMi+EkmfMWS1aoS+8EkznXvhkyo26XDWMwgy39qkA81AJA3qgFBmtQxFFtWhn4
         kjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740055705; x=1740660505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CE4a7LWNgD+6bEHm+If6yI6CBWntgAegdTZ6WlyVgRs=;
        b=HpgLEGLq+eCwXrBDp8AOQYqWmjXEQ7ZQDljqRaUMFyNQM22ePwz8gkwHYb9eVhqxut
         CZgW0t+x99mS5Wgm6iK8BIOpCicvceXA88Dm8ne/ZTcBVKTo2KqjpyJDS7EIb5aQM5Rj
         36inn7chgJZ7W3ayNmZ/OUqDKA6gQePpTnUbLrNOyFdi0LOx+B6Y7wzshryrmjvfXoRk
         wlRM3S0bn6HRN1s8LFm/h05gb23a9SYEjqxK+x+335v1WXYTvBHnVFzAcXCIeRbDbZX7
         sK0xI6+wyWEmS3wj+TKDBPj8m/Mm+lH+QktgAOAY0JKOpFLprm+XVL7RwM3oaDEJzVP2
         4tfg==
X-Forwarded-Encrypted: i=1; AJvYcCXUGiA7SqYo+x+OWxsCoqJZWcPNOLGu/CidCkoH0PkxulGlcO8vw/2N15CUkhOsPXotBI5K+YJfXr0s@vger.kernel.org
X-Gm-Message-State: AOJu0YwZvL/Nsrm4xwdwzA0uKWTFCB9zSj15KwcZcZZT7LnAVyDFmh5t
	RI2xBOxVspx8r8GZhTaBpAeM/P4KpXmBnMQdftdV6oFj/+Sifc1mu7JncA==
X-Gm-Gg: ASbGncv3Yq6RfkzeaDw82hBjdlvYi9Ckng6nqgiwqxbQz7ap4n1CHHK+goBM9uUacPf
	nj3raqByhN3GGfvz6WeJOMd/c3KkjqvVoWrUH0jbHyowEY+pj0PJapY23mW3NZBQFg37QzcQ0hl
	HU++KkTmtDjP0G8cmvo319Hh1p+qADIV05590nJpf1aRVpV65jPHh6vYtfMHWwT+Y01X2oftdBX
	x4gqg+i2HQk6nM7knEDG3++5jJ+HLC5dol82p07VE35ogCN6YClSzK2grfw2fRHUM/IFTfyfM+S
	6PoPY15SEnnzSLPpVHYatMBoB5Vy+g==
X-Google-Smtp-Source: AGHT+IFjmiPqipTEZkwZ1WqVXZGW1oHgfOJdHBp8emwTtehMMJEryDelpL2Ck2DmoddIgyfmCqbAIg==
X-Received: by 2002:a05:6a00:1392:b0:730:74f8:25b6 with SMTP id d2e1a72fcca58-7326179e8a0mr35184251b3a.6.1740055704812;
        Thu, 20 Feb 2025 04:48:24 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9a27:2e77:89d4:5724])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73255f4c0d1sm11963662b3a.62.2025.02.20.04.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 04:48:24 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] ARM: dts: vfxxx: Fix the order of the DMA entries
Date: Thu, 20 Feb 2025 09:48:09 -0300
Message-Id: <20250220124809.2361942-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,dspi.yaml the expected order for describing the dmas
and dma-names properties is "tx" first, followed by "rx".

Adjust it acordingly to fix the following dt-schema warnings:

spi@4002c000: dma-names:0: 'tx' was expected
spi@4002c000: dma-names:1: 'rx' was expected

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Fixed Subject.

 arch/arm/boot/dts/nxp/vf/vfxxx.dtsi | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
index 6334ad4aec4b..597f20be82f1 100644
--- a/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
+++ b/arch/arm/boot/dts/nxp/vf/vfxxx.dtsi
@@ -158,8 +158,8 @@ dspi0: spi@4002c000 {
 				clocks = <&clks VF610_CLK_DSPI0>;
 				clock-names = "dspi";
 				spi-num-chipselects = <6>;
-				dmas = <&edma1 1 12>, <&edma1 1 13>;
-				dma-names = "rx", "tx";
+				dmas = <&edma1 1 13>, <&edma1 1 12>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -172,8 +172,8 @@ dspi1: spi@4002d000 {
 				clocks = <&clks VF610_CLK_DSPI1>;
 				clock-names = "dspi";
 				spi-num-chipselects = <4>;
-				dmas = <&edma1 1 14>, <&edma1 1 15>;
-				dma-names = "rx", "tx";
+				dmas = <&edma1 1 15>, <&edma1 1 14>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -529,9 +529,8 @@ dspi2: spi@400ac000 {
 				clocks = <&clks VF610_CLK_DSPI2>;
 				clock-names = "dspi";
 				spi-num-chipselects = <2>;
-				dmas = <&edma1 0 10>,
-					<&edma1 0 11>;
-				dma-names = "rx", "tx";
+				dmas = <&edma1 0 11>, <&edma1 0 10>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
@@ -544,8 +543,8 @@ dspi3: spi@400ad000 {
 				clocks = <&clks VF610_CLK_DSPI3>;
 				clock-names = "dspi";
 				spi-num-chipselects = <2>;
-				dmas = <&edma1 0 12>, <&edma1 0 13>;
-				dma-names = "rx", "tx";
+				dmas = <&edma1 0 13>, <&edma1 0 12>;
+				dma-names = "tx", "rx";
 				status = "disabled";
 			};
 
-- 
2.34.1


