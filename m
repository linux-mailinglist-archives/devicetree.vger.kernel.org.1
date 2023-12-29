Return-Path: <devicetree+bounces-28915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A78B81FFD2
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 14:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BC291C2236B
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 13:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E89DB1171D;
	Fri, 29 Dec 2023 13:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="GE7g0qCH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5D311C81
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 13:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5553d588cc7so2930847a12.3
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 05:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1703857942; x=1704462742; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e3yxjZOhlVwQSVQZtiupnCrzdwjrfUb/s2Kg9VCWikE=;
        b=GE7g0qCHoTx1+TltvJtgaCLULI1FeWx5CfGtfi3RNbUYH8Fk8NynlAlkahpL2ngic+
         JSoVflpsBZ98DRoh0RebWRPPsFP4tzhLfa2y0+8Kz2yAXUqxu1XK1VyEQDhTgD5JdOlq
         xSWS6/We/HSWJg1vNsOsXlcY8VWw3wEmYCBGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703857942; x=1704462742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e3yxjZOhlVwQSVQZtiupnCrzdwjrfUb/s2Kg9VCWikE=;
        b=FEy21CfrFqmYuPDGoQ7L2KhXa/Oc1VPZoZC7uoTz60lFhphBQCSGbc2CZIr03Pjc+Y
         IbllUvKiDsxGWnRusA5p0w+ns8tOHQEmQMV70OIS9RleJ6eyNSmrLJKLFRUboGKxPMgT
         TjIIVascovY0Bq2L4jLxEQPT2UJ8zoYqs0JROvYgzS3GewOWBCVVlz3Ca+zaF7w5IolW
         BDvvyLtIR+2vhiAQLuIRMI8yx+PeCfUtQW9eIBaYJUNHzuePBUT1VAPM5h+IAL3HFHeo
         T8kmggE8A6c7wNdiHQ+PBThuNgLXqOXSRjcvw5SF3rri425qbYHPLN8RXw0T9bWUGQBb
         l4YQ==
X-Gm-Message-State: AOJu0YyEFgqgmtgvBJjY+AGfJTmBTfC4sTUN9aUNPwnfr1GzcqQGGQ6n
	HALryXR9wRbRXtxWzFTrATP4uZClN7zSRg==
X-Google-Smtp-Source: AGHT+IHRgqRnjhOkX+w9MAhyQ0DVwta1ng+YsGn8+8NteDB8vVnsNWx0NfIMbbWqBpifCAsLemAC0A==
X-Received: by 2002:a50:8e13:0:b0:54c:4837:9a99 with SMTP id 19-20020a508e13000000b0054c48379a99mr8369965edw.64.1703857942639;
        Fri, 29 Dec 2023 05:52:22 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-49-57-70.retail.telecomitalia.it. [79.49.57.70])
        by smtp.gmail.com with ESMTPSA id i16-20020aa7c710000000b00553b243b1a8sm11019160edq.92.2023.12.29.05.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 05:52:22 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 3/8] ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
Date: Fri, 29 Dec 2023 14:51:18 +0100
Message-ID: <20231229135154.675946-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231229135154.675946-1-dario.binacchi@amarulasolutions.com>
References: <20231229135154.675946-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the schematics of document UM2033, the power supply for the micro SD
card is the same 3v3 voltage that is used to power other devices on the
board. By generalizing the name of the voltage regulator, it can be
referenced by other nodes in the device tree without creating
misunderstandings.

This patch is preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/st/stm32f769-disco.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index 5d12ae25b327..8632bd866272 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -92,9 +92,9 @@ usbotg_hs_phy: usb-phy {
 		clock-names = "main_clk";
 	};
 
-	mmc_vcard: mmc_vcard {
+	vcc_3v3: vcc_3v3 {
 		compatible = "regulator-fixed";
-		regulator-name = "mmc_vcard";
+		regulator-name = "vcc_3v3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 	};
@@ -128,7 +128,7 @@ &rtc {
 
 &sdio2 {
 	status = "okay";
-	vmmc-supply = <&mmc_vcard>;
+	vmmc-supply = <&vcc_3v3>;
 	cd-gpios = <&gpioi 15 GPIO_ACTIVE_LOW>;
 	broken-cd;
 	pinctrl-names = "default", "opendrain", "sleep";
-- 
2.43.0


