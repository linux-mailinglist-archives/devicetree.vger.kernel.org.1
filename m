Return-Path: <devicetree+bounces-90389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AC79452DE
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 20:38:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C604DB24BAB
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 18:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C414E1494C1;
	Thu,  1 Aug 2024 18:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="I7XZWB8E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DADF13D889
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 18:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722537503; cv=none; b=lWY6L2JvbmAnacXQv/Qivr/noMo/ltZuHAg1aIEuFID1Zwz6qwRSES/rMvi5drUqMlyOgd+0i86EPqgnnkG5QR+3xO2a4Bfv7pf/X8QoWJyWTaW+njIUJzMgyzozJQ+Pd9muiX8aA2JG5koi7kF7WtzQl7fxxYf4vpAb9iOm8lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722537503; c=relaxed/simple;
	bh=zsUROxHK85bECtvAK7eNhBwbloaw0A8ZmtOwteQ6Ako=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IBGmcl+QdwzqHTQAiFN6Yzi8BfTk4Y1OMJPE4FYT/npPNI2dr26DW0XDuHkmAYthkQ7RbihN1YoENJ2fMk+OuhTCpehfkxvW4TM6cFNfOlxpLGNQFg7noBSFQ1ZwQWTf9QOiXcEr+116pXhrlsGfW4k7IR0mAbb5HnGjDkMcpVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=I7XZWB8E; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2cb64529a36so5000605a91.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 11:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1722537502; x=1723142302; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tk3fdWOrHxhGe/z2L68pKaBMmRMZIgpiOTECkCtz9Bg=;
        b=I7XZWB8EkGOQhB3Td8EKBOau+6aEr76hCtqSbY1+Rvd1nUbNXPfDRr1SsJBdBB0/Xz
         ixlvptNdkb3/cyY+NcjSowdWFImqiBzNhfxWsDseq1lF/t8DKVyOFTlBTw3Bz1t/mvbZ
         3GoBJPDUneEs67s09Ka5guwsjcfuZo8AXc+fMa+rwFGjiFIhPZdl3Z4cIdm1UEDv/zXr
         D1WbcI0QwgYMCrfPn/eZOsARxI+sjnWjjYDmGPVASAiKcf/r2+TtDEAQ1z7xabwSaN+I
         FGr+bMhuyqfXXyuXCLQKj6Y1CFigpbv0jbN2etXcqWURre+f5DmyHQESqeoadP6G+eHV
         na/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722537502; x=1723142302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tk3fdWOrHxhGe/z2L68pKaBMmRMZIgpiOTECkCtz9Bg=;
        b=mlisl5zjvlA7dfmYIoCZLNxgTqeKbQT/CoqtBFlxOI0lxZyeI2SrYOqr+lS2Q6xu8+
         sbwOCe0U6P3wG7+FjlTIceyLnCVRnQSz1ynkkNzAM74MNcei019Pz7HKW3O6WWe/evRT
         9IfFHIZCgPNSx/o8ozZal/buy8w98XhZrTu/I/JHhAqiluxStjo2i2sB98olMAlO5sXm
         rDAwFiYjnKD5zJXKznh0u9MFRggEYCe/IYyYvN2vBh3mtOKMoVGTJI0bAU0dfmUtkeUL
         c48aFZToqj0BStkx3ewj50s2cfPsX+k/R/Vix7BI8xK+5sC3GB5k3p9mms7nIGZ/ES4J
         kCAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVp7NzVY1f3mMW/pVo4ogbQMZ0VwzHaCP7kuE0NObkUuOhFRxxx7mqUXVmECf2Stg/7kXywW6lmD+L3@vger.kernel.org
X-Gm-Message-State: AOJu0YyysfeKNuCgzNT/Xd53xrqfcshCEun/k1YrNi9YjcODksPxXXLN
	YTqHdAcgVdPAZlnCd9tfKekPVDaT2KJoo0UTkMENPxXKJn+MQgJvMroCb/J66uQ=
X-Google-Smtp-Source: AGHT+IEivcdDbgQ5UTdJZvwjjzFBFMbO3AfwipXdPpcaMO6VuyrFNirJJMGYJHlNvMzav90dOHGVZA==
X-Received: by 2002:a17:90b:33ca:b0:2cb:f9e:3bfb with SMTP id 98e67ed59e1d1-2cff952bdf1mr1296175a91.32.1722537501642;
        Thu, 01 Aug 2024 11:38:21 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:dfa1:41a7:9478:9d47])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cffaf69d54sm279728a91.12.2024.08.01.11.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 11:38:21 -0700 (PDT)
From: Drew Fustini <drew@pdp7.com>
Date: Thu, 01 Aug 2024 11:38:05 -0700
Subject: [PATCH 1/6] riscv: dts: thead: Add TH1520 AP_SUBSYS clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240801-th1520-clk-dts-v1-1-71077a0614b8@pdp7.com>
References: <20240801-th1520-clk-dts-v1-0-71077a0614b8@pdp7.com>
In-Reply-To: <20240801-th1520-clk-dts-v1-0-71077a0614b8@pdp7.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Kanak Shilledar <kanakshilledar@gmail.com>, 
 Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Drew Fustini <drew@pdp7.com>, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1207; i=drew@pdp7.com;
 h=from:subject:message-id; bh=dnuRibn2g+ZT0aI5L/Shjy6/+JXvi/iMXiSHhCZO6jY=;
 b=owGbwMvMwCF2+43O4ZsaG3kYT6slMaStviZpuPSdaMu/gLKy9YEPtD2nyP28OvGDp5lh7YPPt
 3Xc66YFdJSyMIhxMMiKKbJs+pB3YYlX6NcF819sg5nDygQyhIGLUwAmovqB4b9rZgiLlrCdhK3t
 i7JXq7bERMjc+rL7vuG1pyWcj7gSW+UZGe71um+5bRAbdfweq36mrm65VU/aNF7mZiWhJEthFct
 FzAA=
X-Developer-Key: i=drew@pdp7.com; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

From: Drew Fustini <dfustini@tenstorrent.com>

Add node for the AP_SUBSYS clock controller on the T-Head TH1520 SoC.

Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf
Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index aa703da30fc3..25ef5ee729e6 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/thead,th1520-clk-ap.h>
 
 / {
 	compatible = "thead,th1520";
@@ -419,6 +420,13 @@ uart2: serial@ffec010000 {
 			status = "disabled";
 		};
 
+		clk: clock-controller@ffef010000 {
+			compatible = "thead,th1520-clk-ap";
+			reg = <0xff 0xef010000 0x0 0x1000>;
+			clocks = <&osc>;
+			#clock-cells = <1>;
+		};
+
 		dmac0: dma-controller@ffefc00000 {
 			compatible = "snps,axi-dma-1.01a";
 			reg = <0xff 0xefc00000 0x0 0x1000>;

-- 
2.34.1


