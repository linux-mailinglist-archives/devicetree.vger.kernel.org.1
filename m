Return-Path: <devicetree+bounces-137799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B467FA0AA77
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 16:28:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FAC93A711C
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 15:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C195C1BC08B;
	Sun, 12 Jan 2025 15:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m1BqKFEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4D71BBBD7
	for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 15:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736695677; cv=none; b=ja1bwrFV3Sq6K1zf7pGhGgP+EAKPiFDwAv/Gfw2fvTfbNVQCe0pQowgz2RT4KSvqHgxx9j6KZ6IdQMMUrI7kL9Egb7kUqbdkEjua8lKSSM7RKBhN64hazfb7l5J8FATyLr0vJMgKzUhQ6FI1fwMDQ/2ArDi94S0a7pptEM8TVHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736695677; c=relaxed/simple;
	bh=rcD1d64iYBKXvYv6LjGuCAaPSSQMypySS6wyMSoAm/I=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ahi+aXBucMG1Vpo8ZOajjFjyfEG0kXqM8KVdr/S+Hkvyt/bgDtBHWtyjMuF4sQaLW7Zf+XDYdDFndj2i23gZMl/0bILOy7W+B+Cy34sR23vbQu914BodNp4qJ5fw7nqqvtvmoZUFgqRfgxfh+WKGuq7tznHDJxzdqNng3MimtHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m1BqKFEl; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-29fe7ff65e6so1212244fac.0
        for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 07:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736695675; x=1737300475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ufSZmiJg7tnVJs1W6WLAaINWDzw9jNeKjD7XxxhjWnI=;
        b=m1BqKFEly+KHWZDUKJgEUoFRHKw5CQUW1NS9kieKyccFiNm7o6Rj3zwtshzlrIBwqr
         bfiCzAM+kofG0E0j+0KcSVzX0pZkKiI3quFLZ9IY4xhKR79WxytB6WjMx6EYyyEWUAE7
         MsXqokbxOVsdFQn1sRoLHavFiznmgwSYNf/8ydZVdh9ba2SFA44jCqdGO4uFIlnUDnwW
         4eoB+dROMhtdkYFrTjkXUDVDmUDjd02ucyo97/P+VzLYkHDzVIJVm0ieRnGbNjEfAKFT
         v4k3SIdYRQPNp8B5WS/XX33eoT0YtAASied515sg5/IgziyJt5OUqmCf8ahQ73Psm60e
         uOtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736695675; x=1737300475;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ufSZmiJg7tnVJs1W6WLAaINWDzw9jNeKjD7XxxhjWnI=;
        b=nToHv/s9VNCME26fFZCNx2B0Hnm2oCqwR6nJIDYM3KULFYUzwIHpExwQfSX3IYOEMl
         RqWVBbYrEQlAyVpA6IvwIX7upUaoTIW7L2kveMiUsU+pOZ0c6YdIo+Y1x5NY4EfKvX9r
         k5JmKBXLdGqjDL0PkgMN+4VLI5aYBUY4sGNDs+EEbXN+IfwGkCFhV0/KN3tyBKbY14VI
         RtAnPuT1LgZaWSsoSp18Gpxv5EgJF11ltnITfRecr9UyubWVh5UFTdR9bh9Dg32OkONN
         UdGgFlfJyVhr9rZh3b97N6S5cTfFfgFkmqs1i44oGRB5UE6I7Twucp7HnqqRVyvS33GN
         JGVg==
X-Forwarded-Encrypted: i=1; AJvYcCUieMBM1h2SfWWFabJ4XG7pjq21RwU3Qw8IxXn6QPSZqY85T7HlqyIXriFuBSUHMqVFh225IMKnSkLz@vger.kernel.org
X-Gm-Message-State: AOJu0YxyIctqrJl7Xp3BN0CmUCiwsVIXqFF2DL4mfmHdcswW366dN5cg
	x2dU2qq5GHI3j3AHFaRBEkvk/XjD1cDjrMHySTsyCc/8DHtV0cjB
X-Gm-Gg: ASbGncvL4Plx8PdwYAEQC5z/152+OCuITafNWsbja1RZ6tgkcF+HRDXUVuhNa1lpg+v
	tEdXCEFjDmlV3S6JQcYa/ZCDx7xfmw6myOTp4UAtJEzJqL9xrJ7Q9f4K2cpCul7D5UZ+HQVOkG5
	H96TeXVvX6rgjhzj85G1OvLXDLILWM4/o2viRth+fecTLgX3LJUlibH+YLXuGO3Uxh5TDF3UKvk
	jrB+HBM61hTLD/pkP3uor0Oh9dkAZ0XBs06gQnt+qpgGGD/CbaiOIoQEQFsFQzcNkvzEA==
X-Google-Smtp-Source: AGHT+IH/+RAxHFYqIOyPuZoSqSonhUnJs+lnRAyM2sKWo1AcFTT4c04wf85xXiYXKcP61dZvTha1Lw==
X-Received: by 2002:a05:6871:a08b:b0:29e:76d1:db3b with SMTP id 586e51a60fabf-2aa066470fdmr9828945fac.5.1736695675132;
        Sun, 12 Jan 2025 07:27:55 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8c53:b609:d83:9568])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ad80547c11sm2858083fac.18.2025.01.12.07.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 07:27:53 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] ARM: dts: imx5: Fix the CCM interrupts description
Date: Sun, 12 Jan 2025 12:27:44 -0300
Message-Id: <20250112152745.1079880-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

On the i.MX5 chips the peripheral interrupts are represented directly only
by their interrupt numbers.

The CCM nodes are not following this format and cause the following
dt-schema warnings:

ccm@73fd4000: interrupts: [[0], [71], [4], [0], [72], [4]] is too long

Fix it by passing only the two interrupt numbers.

Run-time tested in on an imx53-qsb board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Use interrupts = <71>, <72>;

 arch/arm/boot/dts/nxp/imx/imx50.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx51.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx53.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx50.dtsi b/arch/arm/boot/dts/nxp/imx/imx50.dtsi
index 1b6f444443dd..f0b12a70f614 100644
--- a/arch/arm/boot/dts/nxp/imx/imx50.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx50.dtsi
@@ -338,7 +338,7 @@ src: reset-controller@53fd0000 {
 			clks: ccm@53fd4000 {
 				compatible = "fsl,imx50-ccm";
 				reg = <0x53fd4000 0x4000>;
-				interrupts = <0 71 0x04 0 72 0x04>;
+				interrupts = <71>, <72>;
 				#clock-cells = <1>;
 			};
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx51.dtsi b/arch/arm/boot/dts/nxp/imx/imx51.dtsi
index cc88da4d7785..2bfb6baa67fc 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx51.dtsi
@@ -458,7 +458,7 @@ src: reset-controller@73fd0000 {
 			clks: ccm@73fd4000 {
 				compatible = "fsl,imx51-ccm";
 				reg = <0x73fd4000 0x4000>;
-				interrupts = <0 71 0x04 0 72 0x04>;
+				interrupts = <71>, <72>;
 				#clock-cells = <1>;
 			};
 		};
diff --git a/arch/arm/boot/dts/nxp/imx/imx53.dtsi b/arch/arm/boot/dts/nxp/imx/imx53.dtsi
index 845e2bf8460a..b7147cc7a316 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx53.dtsi
@@ -598,7 +598,7 @@ src: reset-controller@53fd0000 {
 			clks: ccm@53fd4000 {
 				compatible = "fsl,imx53-ccm";
 				reg = <0x53fd4000 0x4000>;
-				interrupts = <0 71 0x04 0 72 0x04>;
+				interrupts = <71>, <72>;
 				#clock-cells = <1>;
 			};
 
-- 
2.34.1


