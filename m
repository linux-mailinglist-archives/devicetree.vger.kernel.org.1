Return-Path: <devicetree+bounces-142679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 315BDA26178
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 18:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A34EA18877F0
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF79920408E;
	Mon,  3 Feb 2025 17:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M2YorSiE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF0E205AA9
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 17:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738603831; cv=none; b=fI1RRG8I0TfEMczYUrkbrn8nN4ukvI3NUgZJJbZRLfcy1Q9KdfmNsCpaO+GCRJuRwd6f/eDfe4JTGPag3V2x7iZq1ec1z30Mwh64jWHw039BVPMyl2r+NxHC1NqvX0vcz/ohF9n9GoOQmq1EYXFngil22NurntSuQHitIhcbnc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738603831; c=relaxed/simple;
	bh=EcWyugv2Wzk+zrYc1pAVwZTt8kXAmRy3pdppnr/ONyY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=tDUXQ2MJctYMJBdXMpZNhUZTx8+HAR1O+6Fy4OsE0ePs7+HQt/29RU/4Y11snnbZiw1XmyYziD9IUWPeLwqiL++3W8TVfcLBaRNyXnP6AXj9oMsv6kbl3pKPR7qtjqrslqvv7ysz8fOa8nDypTCKwQndEoUFBPwHAbRScQpbpNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M2YorSiE; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2165cb60719so83904465ad.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 09:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738603829; x=1739208629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U+3jIvZnmKA6FZPn3NDJLwBHo+QpViaEYNsBITnjd8w=;
        b=M2YorSiEXqgwRdC4SzL50JU7KIRxGA3XfsWz4BV4zzbF/pxKKQFsAXQdSUfCuM8MNw
         rjTYxuRJVG7FjkXBO77P0znSHDXqkmY6I1IqFtdG+G+DbZd/CQHVnQeNNX0XkShDFbV7
         3fsAezWrIO2ogbNQqhRieipvLLRB4NH78JoMklcXYkKnjVttQkgKd6hzPx213OJpFJhv
         NRI4NWzIyf/VqEyma0N59l8pQw+w6boucVXRSoQMzVIAMb2R9Pv6mRT0ECdQ9+E3P9SS
         WKw6suxpoYnMTju0p/R4r4kpjsjJi+GkJaOMd+4W0YZW5EosojdUagmDn75YGoRbhVDX
         7utg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738603829; x=1739208629;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U+3jIvZnmKA6FZPn3NDJLwBHo+QpViaEYNsBITnjd8w=;
        b=mRd9SH0495XmR8ZZoNettX7xaM7dsulXhAhC9+a4gxFiffMXLMFklgt6abl657X8kA
         zaHE3SwMBj5M0ydUdYHExT1r0efj/59pekJ0oAIRbcs0tnEldRnD9e1FLRmHfRx6XZU9
         fN8IGL6otRefgaIWBSyctrtx274WPpkSIZZdbJAY/9wTDGX699SIlzycv3+SGEvR3QiN
         /gX2+z9JuiRPGDvyg+lf1ZTDoP+xqWW3oDGXkk0rKmAeakVlPSI84pPmy3pSKk9KiAGh
         dkxl8y54pHspyBZlQqcDgpIX959nikCB5g39FZ5ZbNozBu0IWcQPPU4KXj2fcQNSEFP7
         z+Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXHmPVjYXNEf1MUj5EeeHEpzqj7FztYpHLqmABNRS+10osB5LgtMbS0LcLmdnJM4MWGMdMW9XE0VqF1@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwzcb3kwxnbVrCzh1ucBxDBDYwF2AzeZu4FHqU3gofx3kJOcov
	zl51dp+SyyXYquNFkZINK1Pr3nuxMuMWqwk2htnKD5Ex3ISsP7xf
X-Gm-Gg: ASbGncv6YHPoldgCu68oUs0LPV0w9akuKICQHTzefpxe/7HZXd6YjEtW2wZw7b+JeAv
	zh9sH5sPtJ5n41i8Zvil++QwGSwovJYlHFi68KkWKRbdjm9+rkFjiWagiz5Gghwo+arautg7ue1
	ErzhZTdP16FbawqIQrb76tHFpGn3FCODOK/M5GJSLL1Nl+5bic6n7Uo7ml8Rkl5tZ4ko9olmGH9
	Q3iLLRtUvvZVu2sAEZKX+1IXqVEVSni5tW89iKCbjkaJpzDq1ZeQFcOmZfTsYreY/+PAuIdDwsn
	dL1l+rZTNDzmu1R6mNk78o3DVdcJ
X-Google-Smtp-Source: AGHT+IE8nNjdmDUBWWzeT2S1Qot1ZFFEd8cLym1Jv/D9+lSJXgZUh9NGk6KW9hQBaAEr8zUWODiSLg==
X-Received: by 2002:a17:902:eb54:b0:215:a2f2:cfbf with SMTP id d9443c01a7336-21dd7c66954mr227001515ad.18.1738603829496;
        Mon, 03 Feb 2025 09:30:29 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:dbf:9aeb:2ad1:3bf9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21de3300880sm79896195ad.168.2025.02.03.09.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 09:30:28 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx28-sps1: Fix GPIO LEDs description
Date: Mon,  3 Feb 2025 14:30:20 -0300
Message-Id: <20250203173020.39830-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to leds-gpio.yaml, the LED nodes should not contain
unit addresses. Remove them.

Also, 'default-trigger' is not a valid property. Change it to
'linux,default-trigger'.

These changes fix the following dt-schema warnings: 

led@1: Unevaluated properties are not allowed ('reg' was unexpected)
led@2: Unevaluated properties are not allowed ('reg' was unexpected)
led@3: Unevaluated properties are not allowed ('default-trigger', 'reg' were unexpected)
leds: '#address-cells', '#size-cells' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/mxs/imx28-sps1.dts | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-sps1.dts b/arch/arm/boot/dts/nxp/mxs/imx28-sps1.dts
index 0f01dded4e3d..ca62e7933116 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28-sps1.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-sps1.dts
@@ -24,30 +24,25 @@ reg_usb0_vbus: regulator-0 {
 	};
 
 	leds {
-		#address-cells = <1>;
-		#size-cells = <0>;
 		compatible = "gpio-leds";
 		status = "okay";
 
-		led@1 {
+		led-1 {
 			label = "sps1-1:yellow:user";
 			gpios = <&gpio0 6 0>;
 			linux,default-trigger = "heartbeat";
-			reg = <0>;
 		};
 
-		led@2 {
+		led-2 {
 			label = "sps1-2:red:user";
 			gpios = <&gpio0 3 0>;
 			linux,default-trigger = "heartbeat";
-			reg = <1>;
 		};
 
-		led@3 {
+		led-3 {
 			label = "sps1-3:red:user";
 			gpios = <&gpio0 0 0>;
-			default-trigger = "heartbeat";
-			reg = <2>;
+			linux,default-trigger = "heartbeat";
 		};
 
 	};
-- 
2.34.1


