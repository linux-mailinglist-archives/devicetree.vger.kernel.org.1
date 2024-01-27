Return-Path: <devicetree+bounces-35806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FC683EDF3
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:29:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C2692839B2
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 15:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A082940B;
	Sat, 27 Jan 2024 15:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="E6aPN9Ib"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A893E29428
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 15:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706369343; cv=none; b=aE3DTK1QVTJX1ZO4/t9lB5lMEVegLghOpDre0VkswN/oRCTorYn7PQaVXpnsltErCSy1vTqc1IlijMqvVyb0fw4JyQGgibli4RGBOerneN9bXKAqWDrlmntBvg6CiuQSBrJb7r37HE/7mgijVCAFp5L8qwtGU8VV044UeZCCy7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706369343; c=relaxed/simple;
	bh=B454OCbFIbnyb4Iz9u5vn7cdyXWJOxFIO+A+Qqrw/5k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MI5Bxm/k+guPOM/hX/avNhv7uWRcpg6wsc6HFQpmYnJh/I/uNGB8/XFrqswXUA8WImcCpHdc5IFKl9m391RQMF98Ga6kYb+PoPkZHmMY8as8XIaQBJmmj7zRNTEnGvW0Qh3RoyCJRddz8SiSNrbYUKjR9YBIsYdgus4b55Ab5Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=E6aPN9Ib; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-55a035669d5so1386156a12.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 07:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706369340; x=1706974140; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6KiKuozUcISQEJW2rOZI/i2DyGSQ+9yO5T+hEH7AHSM=;
        b=E6aPN9IbYev3eAGH3GR7kDf8iSdYnU/0HK44IDBtNUkPQ7PfYcOaIspCICB8qHKhUn
         mWaxQTefPwfHm0NRWwjqlQd+IheEAaKT0/ZPkfJFXH+LiQ+T7Mmnh21yjjNvlvhvw3mu
         i7KOYaILRhbpjtKRIUpBbL7jZwUV+x3KpD4pY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706369340; x=1706974140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6KiKuozUcISQEJW2rOZI/i2DyGSQ+9yO5T+hEH7AHSM=;
        b=Apjqy6Plp3teMFnC1lsRYZIHzpWmTHHmrQne+Ommtp0YbFZO6l1lnE4IUptZH3in7D
         k+CLNHjAt7BYsKb0l4+YRJrGA9dxpSraCHGr6lvnXxr23uRzW3uLXYEIK1Wu5nGYmGLC
         3dbO+5JEqfBZNuAAXhwxuG2Gbwgv+JN2mw46i4ZjVfTi4K3dE1SSbCeZL/Agwo5OyYDz
         16PG4vJJngxF64UaJAz9WVIvgH8NGNjvf/zT8net31wyN1IsN55/ckb557Z8J154MFza
         PJH7gYvnmJBrxEeEZVbUnIdaNZfr6qXHNQ93IXg+yZ6zZ9rFKQNjhEfNqaGgnOXdSYS1
         l7qQ==
X-Gm-Message-State: AOJu0YxgXmeJ3ndh/eJ8vFGyKh2oxdu08bJF/3/ksbp+au8zFzPfXAwV
	1PBfqInpBFslHY/no/6v+x7jieOA8k2+aeC02VUgOHQEWlMcwdXk8AB3GWLn53w=
X-Google-Smtp-Source: AGHT+IHYGT/EsWMOJvw8h0S7Y3X/sGKFYomtz3ewPFsQwcBQzIL4gC/HgECQbyWQfrr5bGKL+KloFQ==
X-Received: by 2002:a05:6402:6d6:b0:55c:fe2b:9973 with SMTP id n22-20020a05640206d600b0055cfe2b9973mr1188891edy.13.1706369340021;
        Sat, 27 Jan 2024 07:29:00 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-21-103-141.retail.telecomitalia.it. [79.21.103.141])
        by smtp.gmail.com with ESMTPSA id l5-20020a056402344500b0055974a2a2d4sm1745220edc.39.2024.01.27.07.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 07:28:59 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Lee Jones <lee@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v10 3/5] ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
Date: Sat, 27 Jan 2024 16:28:47 +0100
Message-ID: <20240127152853.65937-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240127152853.65937-1-dario.binacchi@amarulasolutions.com>
References: <20240127152853.65937-1-dario.binacchi@amarulasolutions.com>
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
Reviewed-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>

---

(no changes since v9)

Changes in v9:
- Rename vcc_3v3 to to vcc-3v3

Changes in v8:
- Add Reviewed-by tag of Raphael Gallais-Pou

 arch/arm/boot/dts/st/stm32f769-disco.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index 5d12ae25b327..660f85984164 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -92,9 +92,9 @@ usbotg_hs_phy: usb-phy {
 		clock-names = "main_clk";
 	};
 
-	mmc_vcard: mmc_vcard {
+	vcc_3v3: vcc-3v3 {
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


