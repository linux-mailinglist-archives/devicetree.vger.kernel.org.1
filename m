Return-Path: <devicetree+bounces-31312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DA882AC99
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B268280DBB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 10:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89E7814F79;
	Thu, 11 Jan 2024 10:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="paGTC+yw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BAD15EBF
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 10:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-557ad92cabbso4699048a12.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 02:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704970402; x=1705575202; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mPDNXnb7QOonc0RYCjpM23Kv+HuP4dW7ug+KwP2qeg=;
        b=paGTC+ywLxbI/k1otTM+/mQbSKafbtw+ZJCGQmghQff+QHAaA4lFsoYu80o/h9nItf
         qv7Vjl7SnT/sBFuMeTLodTbmZ9jRDMnc6Dbq1hAtxv0GW/MEtqfaNz+SXpewUJFb6YuJ
         Vs/rQb8RcGLdZK63NBQyhw4+WTikC6rBZh/t0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704970402; x=1705575202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mPDNXnb7QOonc0RYCjpM23Kv+HuP4dW7ug+KwP2qeg=;
        b=tMTggn2O5dgE/HR8E/tWc0UzI+CBFOxqWnCqc3FPgugrxyEsV1QegX1s2oF1xl9jBL
         KXaR2yT4eaf+zg6rbPWSdBcPKa6+8NFxsjrQ5cBB8E9tOWyXiUiVa9v1LZLgHCyoSVs/
         rlIe96xEgNgh2GPfLQcl6JawJP+fF73fDbDIZ0q8vjduNGcbEMnI87pe0yzaoSiuSKw6
         h+SoGAiFV2g3HsHSXwF5QShJWO1noSwtaNj7G8RGC1rFDm6PlyiibetvJJmb6vDpMMON
         oHqwN2EFwijRHakb/hlMixzfbkYRl72UOim1ZhoLfwN4QAOl0mFhm1eRx3a593cq+f1T
         a3YA==
X-Gm-Message-State: AOJu0YyECY8kdfZGtIGziTtplADoWgsU7Y1rj0YsJL4qFC1PCbqMEgCE
	aNBR96vqpAosGRKiBXnavqPCe6k5agcEIQ==
X-Google-Smtp-Source: AGHT+IGIWbCv4PnMgXnRbbJHR/lEed57VjJ6cuH+5z5J9Itaar6fGZvHeEt5Bz1kJQZaj1IdPk9KLQ==
X-Received: by 2002:a05:6402:22e5:b0:553:34b1:1130 with SMTP id dn5-20020a05640222e500b0055334b11130mr264317edb.58.1704970402103;
        Thu, 11 Jan 2024 02:53:22 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it ([95.236.91.90])
        by smtp.gmail.com with ESMTPSA id eo9-20020a056402530900b00557b0f8d906sm459774edb.70.2024.01.11.02.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jan 2024 02:53:21 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lee Jones <lee@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v6 3/5] ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
Date: Thu, 11 Jan 2024 11:53:09 +0100
Message-ID: <20240111105314.8186-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240111105314.8186-1-dario.binacchi@amarulasolutions.com>
References: <20240111105314.8186-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v1)

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


