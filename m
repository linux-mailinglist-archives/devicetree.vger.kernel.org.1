Return-Path: <devicetree+bounces-24183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB8A80E531
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0D73B214BC
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE1717748;
	Tue, 12 Dec 2023 07:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JP3qThNA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE624113;
	Mon, 11 Dec 2023 23:54:16 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3b9efed2e6fso2878556b6e.0;
        Mon, 11 Dec 2023 23:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702367656; x=1702972456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wECkqtuJuNq4vKf49CMC3VZgJYROzMEL16NeUTjnLOQ=;
        b=JP3qThNAEkZnkHCcMonwVFJZU3spKH1QGJT8kfLY5f/SzPqVZSO37h3efJ433lGIwU
         j/UpckjevWJMmpoOugMncH1B9uvU4gGhiw+EnlJpHH7O5rPUtsjdk2lBSywjk2mioHDF
         FaC1/8Ihs7P026IEuc1ADE9j3rtaWLaPkuhHoaBakCCfKEn7m/g2YHytCRZpKd/53pCv
         KcyIqGV5qpsyILZSZYd2YPUFfdzzY6DXfGNsPG+Hh6bA/uHMdwwKxTsw25geBkTYvmfy
         EFjD+HtiplwrxOzUeBLi++D7xXc4xt6OF8W3/yArU+PmZDMObzWisplCBdgIxvhPxtcY
         j+YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702367656; x=1702972456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wECkqtuJuNq4vKf49CMC3VZgJYROzMEL16NeUTjnLOQ=;
        b=fhmkvH3cSZQy/OL/B0R4levm4Ma214e/LESSFD760AqM2W8VPVHrtCwuDXp3K1mLlx
         HSIpmHtO9CkvFzcv6UBP4U6ke5fjSynZzpqNQFUB65mAamdCAnzY/l+UJQOcDRzKooiq
         d/UxaMyQrT8kyEoS17PdaPFb2PKFbWPmD9LzMawTO8WD5r5rBRyhmV52jZap7ftfZIAr
         4rCsth4NcCOE2EpTYdkN2oL2gnpK9+IVK1Cj96hqvcZEKDsnVuMtc/qpAXVVUJ3XTeL1
         Uapnaq8X19LGauRgYj8KP1bdrne4MMili98V8mOTN16Mki4A00/+NIGdbKgBOFfjJ7kZ
         6Ljg==
X-Gm-Message-State: AOJu0YwGCii/jrAK0rB6cEEIDLcx64FZe4pHwhJdqkVJ+MjJfHBaaVs3
	GtV6QcMS3/gTdLPiazgq7UPljZM6zgc=
X-Google-Smtp-Source: AGHT+IGQGVQfpsD+7aVeGROKJ2gCtJW313/hYWDkA6RE83+q24qAb7TXxK2YreBWYGv+y6b18OOdJA==
X-Received: by 2002:a05:6808:640f:b0:3b9:f10f:b69f with SMTP id fg15-20020a056808640f00b003b9f10fb69fmr6399289oib.11.1702367655768;
        Mon, 11 Dec 2023 23:54:15 -0800 (PST)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id qi9-20020a17090b274900b0028a28ad810csm8144319pjb.56.2023.12.11.23.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 23:54:15 -0800 (PST)
From: Yang Chen <yangchen.openbmc@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	patrick@stwcx.xyz,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Jerry.Lin@quantatw.com,
	EasonChen1@quantatw.com,
	Leslie.Tong@quantatw.com,
	yangchen.openbmc@gmail.com
Subject: [PATCH 04/11] ARM: dts: aspeed: minerva: Enable power monitor device
Date: Tue, 12 Dec 2023 15:51:53 +0800
Message-Id: <20231212075200.983536-5-yangchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
References: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable power monitor device ina230 and ltc2945 on the i2c bus 0

Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>
---
 .../aspeed/aspeed-bmc-facebook-minerva.dts    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
index ad77057f921c..ee9691647e4a 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
@@ -86,6 +86,28 @@ &sgpiom0 {
 
 &i2c0 {
 	status = "okay";
+
+	power-monitor@40 {
+		compatible = "ti,ina230";
+		reg = <0x40>;
+		shunt-resistor = <1000>;
+	};
+
+	power-monitor@41 {
+		compatible = "ti,ina230";
+		reg = <0x41>;
+		shunt-resistor = <1000>;
+	};
+
+	power-monitor@67 {
+		compatible = "adi,ltc2945";
+		reg = <0x67>;
+	};
+
+	power-monitor@68 {
+		compatible = "adi,ltc2945";
+		reg = <0x68>;
+	};
 };
 
 &i2c1 {
-- 
2.34.1


