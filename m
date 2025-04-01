Return-Path: <devicetree+bounces-162424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5553BA7854C
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 01:39:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71C111891E73
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 23:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11A2D21B905;
	Tue,  1 Apr 2025 23:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="2NPAObjB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA3420E01D
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 23:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743550605; cv=none; b=A6ao/dCI2tdTblSAagXHlh2+1CBDbCQnUWYd7uIgM55UlkTvYv37tQXnN/tSBVdl5WDgK8YJn2UgrbWd6c1aE06+R7g2Y7rHr0hGRMkJqWw9c5iaaLtGVc6E6KNIUAHDRvwXhfTkaum6rItMft1snivmvxFV/5nXshW1uyZg590=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743550605; c=relaxed/simple;
	bh=f1LW7wArLTH/O3nNwH0Ut5ahqANxTwb+PDOdiPH7gGk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WDHh+ogPmhzQ15cCTwZrZCIFWLiguz+7DwDsMJyj3YmgliUEAeQsGlqNHh4moIitSG3vaVJ9/oTl+pI5eZL4imBej6K/YxE6u8GtxuIA8uqc1xPxMV8Z644htH18SpZpDcL+DhQsLRMp03q6CSs0078FaujX066W6/nZ85QQMkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=2NPAObjB; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2ff85fec403so613474a91.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 16:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1743550601; x=1744155401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1W2Oez/Sw08kez7PZLuhoXC3i+XpY3chBoG0Mg2u1RE=;
        b=2NPAObjB2BhnBu3q/M1VrmAcMkdkh2AgrVtiCnugyITfM639LSqBjj3F02oXoqTkXJ
         1TIO0pZVzzbpQTzN2hoB0LE20aL7xGEM/MUcGXU3GMfW3dUd39x02ZA7++QW4Sn8Vb60
         Le3JNBAiuyqJTKzLs2Qz87thdDD0nsj3rteV6w2fmYcClVOEaKJLPpGDfDsdOIEJ/eBI
         Rnvs2+/FTfQeWB0skAiSgZDaHLRv2xd66THhMoAjJ4tm/fI0Bkdg6XpWE7iRQ4H3sYz9
         wgp7vBBfvJVQLfQYnLttj+A/yI4WICECuxpn/ZpdiwMH/+HTtN9Fsm4v44jvFpxGfVEW
         ndZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743550601; x=1744155401;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1W2Oez/Sw08kez7PZLuhoXC3i+XpY3chBoG0Mg2u1RE=;
        b=UmKiR4WNMaKUH5CRo0yvN9V5rFVr0mxvJ/tnPdibeqAIODM/BOWom7mbmM0vyuTv+F
         zdVFOyvClaHoWagZ6ZWIe4k6jiXD5lJQyhASL70hMMyAZiCogUaBM2o0J2B0V9q83/Kv
         PoU9wYHecv2t627wR7REes01pjLdVBLVa5sxebiDjhXSWckI23leOuDtAyTM+YPYBL9w
         8zSyhzEU0Rs/F0M5HzYKfWRvDd6ymt1x0y7p1pjk5b9b/8NSGo9ZZ9MkZEGlrsxuLc+m
         /wvFuipQ/Vd/I77V3+ZPHjWSUlALyf8ab58V6YjilzFHYN+rpybU+nnp3/VMoOSoPWI7
         2QoA==
X-Gm-Message-State: AOJu0YzaT0r3AAIEs3i+6oJQbpYpqmPrdqmSCW7dWECIEQ77+5//qNZ7
	tWOJemr5v1S3QGeW2yJYK3Jg8h05TBZMgAk8qmuNB34bhHnuTyptbtxDzgo5HmD+uUCA5wvRrH7
	H3Y0=
X-Gm-Gg: ASbGnctd3Y33s7O5vBbWjqVq/T3m0SmEWGOxH3Clr5P2OMM30DqV+5R5U+au/T+5/5Z
	pszoZSugpAZPuIV11oVw4HYjF8u+pvpRsdezMYpf1mvb4F9NK7Q0T6wf12P8kZMwv7ly5ZejHRR
	pBpUnsntLu91RqMbkwSMjTPFOcYP2D6ETxvc+fZEvqUI4OlH5a01clXTMMmdAytB905yzu4L1WC
	g1E6GkvOhgvdgFwkQrZTyYOXLkOPP2tazWLibhHrrPyx++9PZZ7iORe2gLhoc3SAX964bRA0bsn
	0R6I16M5PHG4Cb/bQEtvaCxpv5AOQYrgjfn190zRp+CHMcUKf1edtY2HJAtNd5LDyoxzWZeMPB6
	UcusOTIQHC6Lfkh1Luuo3YBSlsNJtvRJQOXYWmc+vSA==
X-Google-Smtp-Source: AGHT+IEVaEftCDieEpS7ZkP41WX9Cr6Tw3+DC3MPmN07cO7H+9fJKbzk/i15pVNXyrYe+e1tH7GluA==
X-Received: by 2002:a17:90a:e18d:b0:2e2:c2b0:d03e with SMTP id 98e67ed59e1d1-3056b714b87mr2357429a91.5.1743550601625;
        Tue, 01 Apr 2025 16:36:41 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:895:611e:1a61:85c1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1dee47sm95153755ad.180.2025.04.01.16.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 16:36:41 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	"William A. Kennington III" <william@wkennington.com>
Subject: [PATCH v2] ARM: dts: nuvoton: Add OHCI node
Date: Tue,  1 Apr 2025 16:34:09 -0700
Message-ID: <20250401233409.3215091-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Reply-To: 20240930214329.192587-1-william@wkennington.com
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The EHCI peripheral already exists in the devicetree, but the hardware
also supports a discrete OHCI unit on the same USB PHY. Generic OHCI
works fine for this device already and has been tested on real hardware.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
V1 -> V2: Fixed nodename from ohci -> usb

 arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index c7880126cc78..5a466e97955a 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -151,6 +151,13 @@ ehci1: usb@f0806000 {
 			status = "disabled";
 		};
 
+		ohci1: usb@f0807000 {
+			compatible = "generic-ohci";
+			reg = <0xf0807000 0x1000>;
+			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		fiu0: spi@fb000000 {
 			compatible = "nuvoton,npcm750-fiu";
 			#address-cells = <1>;
-- 
2.49.0.472.ge94155a9ec-goog


