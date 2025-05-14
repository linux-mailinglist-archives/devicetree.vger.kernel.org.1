Return-Path: <devicetree+bounces-177066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1EAAB65DA
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:26:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 122787B67B6
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A333C21CFEA;
	Wed, 14 May 2025 08:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="aGfC4uLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB2820C00B
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211116; cv=none; b=QG8VQfGK33Tq2MIZlyhwdJZy37IRMbqBUOE2YXx4CGhtmn03wAw4m2+E+GKPQNOiDkm/33KT5zmDTa4tu4mDaL+a1hpwox1Ga/JAcYtb9SGowWyN6bkLf0ajWEOrkvm+vz0ggEJqhFtYZD3vRPo9GJMDUsad5VKfIsfR6zAptfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211116; c=relaxed/simple;
	bh=uiM6JF5iJm5AA3IbWqccn6aF5CeCQk9Fp9a1aKYnJ5M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LHtNDISxSGvBfHXR8jf+5Cv531qRdjez1zZALhfqVr8Kx7FvSOOArsv4VGvoLuG2fZ4InVoKatB4Xzz+/u/TGXXdk0xZp3ZSZV4cJ0fEx+aduml/mH8SsdhbkPN0Ydi0jrCxXKWvpQJMJ+XKDQjFFXeweQgRiWiIobVINh40vzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=aGfC4uLB; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so47785995e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211113; x=1747815913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=APXOpnkKR2dL3UO348/Gsh5gr4ZIHC6LxJe7czOv/OQ=;
        b=aGfC4uLBO+kz6PsptkrrgZtb1QrVkbKHOsoVdOc3VQS4YCY8iX433LWmwiSIFTMPSm
         lh6CGqDTyLW5oyFMhZlTPihEF5L536YuMZFBCyIBa2Lpl+p32bZbGIO/EDD+B/NitHyT
         FRdFoN6/s+hVrouHl250M6+9qupPV9Pz9K5Nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211113; x=1747815913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=APXOpnkKR2dL3UO348/Gsh5gr4ZIHC6LxJe7czOv/OQ=;
        b=jEhooyAbW+r/N8mnN5i9JlUhhDOM3bB4FHYWmOWuLrDL522CTLC2GotrV8ykJkqnXa
         eorhRexNahpoTFFenB35FX1QdxmuaCxizUuOORD7s/nqDf6ttvvp+licOHYa0yMQQAgM
         yUkLFoDPsUKVV3yN0BlIeyvM3CsOdhau8cfxH3YDcRig4JYVjU9DJZpiDVwyukYHzUfz
         HGGCCVi7vGXwiwp4kkHHwIw59k9CNARHZ7sMO2nYEZlQA9PmcLPxzmQhreOpfkqh5XDs
         TwqDtV0xWHTOZCcQCXB8C846ViNC8h14t1NThfFyetmCIVOSqWC/MIZjoC37eVRDUNCz
         7VHA==
X-Forwarded-Encrypted: i=1; AJvYcCVPIBqP2xcOY4vng0MisK4x44bajnj5z+CQzfXde0TrzQ5VHqnlquOIrwf2HoeCi2ofReL+/8rcCYja@vger.kernel.org
X-Gm-Message-State: AOJu0YyDOB2swlZWhRmibrQCqhpXA3voCILU9/EbG31IBTLno3AkZHkx
	+rP1a9a5kezjb5xfhPFvopHo3gscfpvUlWtClpH4edmYUQJ+dxnEWnD2O0LNkYA=
X-Gm-Gg: ASbGncvbyMUAj79T8YGuDhDmAb6Z+2oXWZRqDndALRBZXOEhl6TEVcj3CADx/uOo5+L
	oTbhGJLZoKRh9K8Qulo5bfuEPTs1gLffC1ItPg3LB+4NzQy1kf08IXgh6R8NRH5m5R9zDGD9PrK
	kdvRNNt+I1UE6meVWZxX6PWd05WzD22QPOiPNaNCh9mAqO+2tpO8c9muDh4m+YTr+H03gqz2U+Z
	x+SKC7pWnz/lgfmla+w8nPdxSb6+fGgkA6PDtQeSViKbxSgg625EHxSym5ggSDDkU8rtSAEVrY3
	xAQ9/rFMoW6VCXo1Qhbzk0JnGuCQjjBxvc1giIj4V2vKzGEi8946FFHA1nK4UsoHmiy/pKS4//D
	eRTLCX0lKCZpAseNjZswH7i3AxNpvRgvNhtcxlRUeCvw=
X-Google-Smtp-Source: AGHT+IFPJ0BA1CsQj8STL33YJFdXEivrOIUNuDI5cLI9H+T44prBBCXb/RtByLVzJ5qOgclAySopgQ==
X-Received: by 2002:a05:600c:a378:b0:43c:f050:fed3 with SMTP id 5b1f17b1804b1-442f20d9d37mr19135815e9.11.1747211112873;
        Wed, 14 May 2025 01:25:12 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:12 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Simon Holesch <simon.holesch@bshg.com>,
	Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Wolfgang Birkner <wolfgang.birkner@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/9] arm64: dts: imx8mn-bsh-smm-s2-common: Define suspend voltage threshold
Date: Wed, 14 May 2025 10:24:55 +0200
Message-ID: <20250514082507.1983849-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
References: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Trimarchi <michael@amarulasolutions.com>

Voltage threshold should be adjust according to the worst case.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 .../boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi  | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index bbb07c650da9..5a1ec2f6a552 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -105,6 +105,12 @@ buck1_reg: BUCK1 {
 				regulator-boot-on;
 				regulator-always-on;
 				regulator-ramp-delay = <1250>;
+
+				/* enable autosuspend threshold */
+				rohm,dvs-run-voltage = <850000>;
+				rohm,dvs-idle-voltage = <850000>;
+				rohm,dvs-suspend-voltage = <850000>;
+				rohm,no-regulator-enable-control;
 			};
 
 			buck2_reg: BUCK2 {
@@ -115,6 +121,11 @@ buck2_reg: BUCK2 {
 				regulator-boot-on;
 				regulator-always-on;
 				regulator-ramp-delay = <1250>;
+
+				/* enable autosuspend threshold */
+				rohm,dvs-run-voltage = <960000>;
+				rohm,dvs-idle-voltage = <860000>;
+				rohm,no-regulator-enable-control;
 			};
 
 			buck3_reg: BUCK3 {
-- 
2.43.0


