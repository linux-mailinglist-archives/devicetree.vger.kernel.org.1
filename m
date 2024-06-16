Return-Path: <devicetree+bounces-76115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C644E909B2E
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 03:55:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47FC0B21C41
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 01:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E2E1667F3;
	Sun, 16 Jun 2024 01:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="SkdxgZBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D6B161924
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718502926; cv=none; b=Adzg1ozG4Tu778qHv87fjn8HNAS1Q9MqT27RUHmxLtmp2XzyBK4CyzTL6MEh/EKS0QX/qzUYXjP678vvoYJ/OkAKgP4s49iHOAtP2S4Ncl9PxDIQpmf8523skeAla9DfuoFyvIsUgOKpf0AmXpjxiPY+i+kN5yD9fT5/hirF6Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718502926; c=relaxed/simple;
	bh=jdmR4mbethnmbINzfYelG5bZ/4P0Pr0DSPkP3jxTYBE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PX84MhjxSS/AtGQsiPYsmEbVz4REI0ZcwSObGK8YvbJ629/q+Fix3GA6Y8bV5B6thmjUK4uQiCXr2JjA2EoDBvA/iGzvdFvzU6g1HJubtFwoIZGSEAR1PrEpFYaY62/5dA2Z9xndGNl+fqG7yAE6ZeMaJ7Kn+i3fXQNXK8SLYw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=SkdxgZBI; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-70109d34a16so3024544b3a.2
        for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 18:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1718502923; x=1719107723; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lNPhbe4CKhTW6lWgdp189/o19T4GZdsybtYcMCrAtjY=;
        b=SkdxgZBI32XHDadUvsgtL5kEtN0sVi8/KDCk1hyGOK+opUkDOljg/fKCWGTNO5qxwH
         qvj253Y/gaZ/bie9jA68YXQb6gKxdZDqmaZs7YwNmHGmNBm2PCGAZLwta5f36gD2VoN0
         ht3bYxAsar1c/+JtzB2erVY46eWeSMpuVzTBGXlaMrzAcpTd+yNDE+EtP/tSCMGLyxYL
         M45WLo+0DPqiXMCvXBrTYr/Od2BrM4VM2093cLYgOk6pm+9gwBnoQFRl+m4Qd4PfnUKc
         XBUoM8MaP8kK8CqZ797UmZmfoO+AaQs+S2PvLtJQEJt+PhmpM2ZAIj5AP1SF7Jd4oRsg
         tLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718502923; x=1719107723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lNPhbe4CKhTW6lWgdp189/o19T4GZdsybtYcMCrAtjY=;
        b=hnl882WU4d2ldU/jp1ho0MO3WYBu7i9AIAI67zJES76owF+fnwwVMQIBSLQXxddC2H
         KLxNrndaM7NvDWmkTlootdibCJ1YKOz8jmLe2uCBK01eq8q3RnG5OHFHNOevOTJ87sQU
         S+/rnyPFZXAV8vR+l8ROHhYQqCwKvzuIKnKA+50E1rqdkuWM399qybxiOIZr8MYGxOPA
         UCeuMHPds+kHBiKp/li1Rg/kIwFfdXPZA5gB/1aWf5yfn2OsM3sEtrvwmVwLnMm/Qen3
         VV5byZ5FsN5aiUksa+BPytcVa3sTGIyik+JsVViQcHDftoCuwpyCYNY1fNOSI0WVbnnC
         zAXg==
X-Forwarded-Encrypted: i=1; AJvYcCX1V7c7tFD2wsRScU/kBkY/A7EkSsNDWEEzHrcU/p5eqlYe/8nIJtf3HltOTHb+I+BFdFU3TOkixiKkKHWWglCZWvX0mMtwAiP4oA==
X-Gm-Message-State: AOJu0YzfNDO7WUg5lRDbX5nIQb7tbz7JvZPzOSK4sOjBBB7YXDXbTXJs
	4g3RClfsM+lpV59qgE8z75ZUXst32HD593AVNA4Fma8g/QAZVIhggyDMuDI8WQI=
X-Google-Smtp-Source: AGHT+IG2W5IPRHAG1kGoyujjDgtV/z+pDbrlN9J1y1wQMn05h74BhHu6aBbrwBiwAJOG2I5i3s17mA==
X-Received: by 2002:a05:6a20:d80d:b0:1b8:3f6d:3037 with SMTP id adf61e73a8af0-1bae7ea0f63mr7711032637.18.1718502923295;
        Sat, 15 Jun 2024 18:55:23 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1802:170:1cea:28dd:2ee0:e8e5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4a769aedbsm8751201a91.43.2024.06.15.18.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:55:22 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Sat, 15 Jun 2024 18:54:32 -0700
Subject: [PATCH 3/6] riscv: dts: thead: Add TH1520 AP_SUBSYS clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240615-th1520-clk-v1-3-3ba4978c4d6b@tenstorrent.com>
References: <20240615-th1520-clk-v1-0-3ba4978c4d6b@tenstorrent.com>
In-Reply-To: <20240615-th1520-clk-v1-0-3ba4978c4d6b@tenstorrent.com>
To: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Yangtao Li <frank.li@vivo.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.12.3

Add node for the AP_SUBSYS clock controller on the T-Head TH1520 SoC.

Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index d2fa25839012..10a38ed55658 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/clock/thead,th1520-clk-ap.h>
 
 / {
 	compatible = "thead,th1520";
@@ -161,6 +162,13 @@ soc {
 		dma-noncoherent;
 		ranges;
 
+		clk: clock-controller@ffef010000 {
+			compatible = "thead,th1520-clk-ap";
+			reg = <0xff 0xef010000 0x0 0x1000>;
+			clocks = <&osc>;
+			#clock-cells = <1>;
+		};
+
 		plic: interrupt-controller@ffd8000000 {
 			compatible = "thead,th1520-plic", "thead,c900-plic";
 			reg = <0xff 0xd8000000 0x0 0x01000000>;

-- 
2.40.1


