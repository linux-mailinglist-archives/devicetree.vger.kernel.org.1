Return-Path: <devicetree+bounces-86329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1880E933A61
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 11:51:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6E781F2289F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 09:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DA9B17E45F;
	Wed, 17 Jul 2024 09:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EPdazVsK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BB4381DE
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 09:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721209902; cv=none; b=jADcvvwEkYNp0fn0EvCWz0bJ7aXFLvkUpiCf1ffbqcPvgjXC2SDz3L17tPgTI2HhqMJNkh1TiJ90I7eND8EfpORGpsLHPFBZpvTKEH+aBQxl66EeZ7Br0EUs3t3LYBPwDHZ5jtkXhBvMI0Yffh031oauzsFIsb0NMLvcffV7Klw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721209902; c=relaxed/simple;
	bh=XjPO4Ujl3TqO0ehaFLTH9wqk7RVaiNdwo+utqr7DVQo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Fyp1cCrE31rUz/GlLP7FEUo+vPP/HpwOvkzLXluWbg9r4mN2xVsz/Jke/Kn2gvu4APyhFuC7SRzyHfkFELTefEBzeUrZ3acTGJDV4k0TklEYoWT5VQODNvffCvvG8tcV/e6ZvNdHcSrNfmKCe9Tnu+Wi5tilMDjrMNXNr6rJE2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EPdazVsK; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4265b7514fcso3361355e9.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 02:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721209900; x=1721814700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KrgfBcfXJnebqfMYE7lcXwUabsHP1Gvn4fS4TLr/7sc=;
        b=EPdazVsK1pzee+fn+PXSdVPdTouEXH4U9lEFCUXeLTYYwHS3DhnF4kaDPW9cUzMRyH
         kUvEQfcCfPfcjymWVry8UfHTuygB6gj0ntyJwvFTaEJmLXvSekxKDwIP7ZCHgmO3mU6+
         7snuwzmiNH+PCy0eFbal2tm/0FtsUmJik73Q6nXs9FxQTYwJqjTbKAScF6+1aUSK3Lyt
         3MopZsgRnxW8FTNEyA91i8VElEILMNAXsQc+dBqjVK6ASzQUdg3kOSBGIwnjPWiGL3CZ
         +GBLr0N3ffj/cejnW6Br86LqMz1AD5awW7ozy7wS8Z1/AV9G4lfVvIy5ib5SpHw3z4S3
         BSGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721209900; x=1721814700;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KrgfBcfXJnebqfMYE7lcXwUabsHP1Gvn4fS4TLr/7sc=;
        b=c1OfXWlfRuYKRMFuK1PbExRfSedc10izqiIluq/TD+8x6SSFaEfQhEByohe3dvxZdv
         fBZVxLMhloG11nUW6FFw7CwFuzyE4FFt2gvdUkvSQ/cfEpF70hcZsMxx3tnNi6x+FAG8
         1BRBOYrpignNQDmGbZtM+ckQ7++cjBIqBPJrHJYlup8PcjLewP8tZINw03izC/rAE5yY
         8cq81H8q/OI1+hSd+bPMyq2UqxhPdAmElBEUMLLxQLdX91a/pYs7x9c7TD/+axlPfEbW
         5xRAAOsrM3nJ3g/q042Zg4NM6Ia2qj4wqsODbr3x0bCWG5s0JGwTG45EeVUFGUgG5Rfy
         iYuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUu+36sGNybLOo8DBT8R0ddukAAl/bj0blxgMMn4xi1AlAFsnOsZGA8W2W8Ni73KSvPqQeOX/Ip05OXZpbXhhdfUivL3lzxnNyRg==
X-Gm-Message-State: AOJu0YwAEKBliXmQMOFsidHjg9EWLnGCP2SmAWWoKsfSUBdl59/56joS
	kk/iMk28WVkpa7PNsL5MjtDadkkxsxJQcGf7otLoqj4Ox9YlDY39RQdfeQl4FG8=
X-Google-Smtp-Source: AGHT+IHt87UdRCgV2hI8InjDLgAXNmflrFtTlkgJQLWAM9c6YH0WpJaeBwuCRentm5LDb2Gd9eIfcg==
X-Received: by 2002:a05:600c:5121:b0:426:618a:a092 with SMTP id 5b1f17b1804b1-427bb8e85c4mr32743525e9.13.1721209899817;
        Wed, 17 Jul 2024 02:51:39 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5ef4617sm162447795e9.41.2024.07.17.02.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 02:51:39 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] ARM: dts: qcom: {a,i}pq8064: correct clock-names in sata node
Date: Wed, 17 Jul 2024 10:49:14 +0100
Message-ID: <20240717094914.17931-2-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct the clock-names in the AHCI SATA controller node to adhere to
the bindings.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
v1 -> v2: split off from patch series (no change in patch contents)
v1: https://lore.kernel.org/all/20240716105245.49549-1-rayyan.ansari@linaro.org/

 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 4 ++--
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 769e151747c3..be42e93bee1c 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -890,9 +890,9 @@ sata0: sata@29000000 {
 				 <&gcc SATA_PMALIVE_CLK>;
 			clock-names = "slave_iface",
 				      "iface",
-				      "bus",
+				      "core",
 				      "rxoob",
-				      "core_pmalive";
+				      "pmalive";
 
 			assigned-clocks = <&gcc SATA_RXOOB_CLK>,
 					  <&gcc SATA_PMALIVE_CLK>;
diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index da0fd75f4711..dd974eb4065f 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -1292,7 +1292,7 @@ sata: sata@29000000 {
 				 <&gcc SATA_A_CLK>,
 				 <&gcc SATA_RXOOB_CLK>,
 				 <&gcc SATA_PMALIVE_CLK>;
-			clock-names = "slave_face", "iface", "core",
+			clock-names = "slave_iface", "iface", "core",
 					"rxoob", "pmalive";
 
 			assigned-clocks = <&gcc SATA_RXOOB_CLK>, <&gcc SATA_PMALIVE_CLK>;
-- 
2.45.2


