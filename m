Return-Path: <devicetree+bounces-28530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFA581E950
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 20:24:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFDAE1C210BB
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 19:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E39D3111A6;
	Tue, 26 Dec 2023 19:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HkdKktzt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7799512E65
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 19:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-7b7d55d7717so215336639f.2
        for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 11:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703618531; x=1704223331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ESf+HP/4Pbj+l15SV7DO/QREg1e8QVEjr0ahdi8QujY=;
        b=HkdKktzt7nt59KOZ+FkuhhdJMdW/AYVTpAwHDp+g0xR53xj3f/gQ4CAHnwzEIMkwa5
         u/N5xdQ3l4GBqemrSSn8+/ziF/c30zF7bKzttsUjPs+bWCp7znmxolHrfHVUFbwKB+on
         71vjXxguhACFN+7kSGw+VEDxDEpEIyvjYJ/00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703618531; x=1704223331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ESf+HP/4Pbj+l15SV7DO/QREg1e8QVEjr0ahdi8QujY=;
        b=iQyXNyJGvQJlXeB9FPbOet6TZVG6ZoRpWsjnq/GcdUPhw8oXSk+jcxcgFrdeBRLge+
         K7uDBBxuaAKHPnz2niy1t5PbWbgQtTIB4yi70rDI1HU2/ffrZek8yICpQ1SKORL2lJJN
         CIA5jSYnIzvSyCejcIs1UFrETFJWkJIHBJmVAxg0LnOVRRvjP7SMerwGg2o51iPqf9lT
         EirzKChC5p6SGKoBzx96+JgRDtFKMjqHHzPbPFHcu4a5NKegEm1/VRHo0EkmXILjXZ2T
         CPOHMVRP6YaAWirXdajP9sT6WrrybmC2Q1x09IXcQZE+yHZCBikH/cS8U8g2xROhFRW0
         VP/A==
X-Gm-Message-State: AOJu0YwJvo/6BHCKfFh4kW5zzvHFzgtnUXuzxQlDhOOAjV1/IJsaRKxy
	m/Am677hud+XD90bEmPS0C6EgQKBnacH
X-Google-Smtp-Source: AGHT+IHL8LG5CIj6VbEuHzPAo+E1eayG3+anqUkueUhwD4N1X/1qk2RhdEsAN0sRAt9MtvhT5qjugA==
X-Received: by 2002:a6b:e714:0:b0:7ba:94cb:aa23 with SMTP id b20-20020a6be714000000b007ba94cbaa23mr8299937ioh.21.1703618531662;
        Tue, 26 Dec 2023 11:22:11 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id gw3-20020a0566381ee300b0046b692e719esm3207609jab.150.2023.12.26.11.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 11:22:11 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Raul Rangel <rrangel@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Hasemeyer <markhas@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 11/24] arm64: dts: mediatek: mt8192: Enable cros-ec-spi as wake source
Date: Tue, 26 Dec 2023 12:21:15 -0700
Message-ID: <20231226122113.v3.11.Ibd330d26a00f5e219a7e448452769124833a9762@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231226192149.1830592-1-markhas@chromium.org>
References: <20231226192149.1830592-1-markhas@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The cros_ec driver currently assumes that cros-ec-spi compatible device
nodes are a wakeup-source even though the wakeup-source property is not
defined.

Some Chromebooks use a separate wake pin, while others overload the
interrupt for wake and IO. With the current assumption, spurious wakes
can occur on systems that use a separate wake pin. It is planned to
update the driver to no longer assume that the EC interrupt pin should
be enabled for wake.

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to signify to the driver that they should still be a valid wakeup
source.

-Commit-changes: 3
-Update commit message to provide details of the motivation behind the
change

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

(no changes since v2)

Changes in v2:
-Split by arch/soc

 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index f2281250ac35d..ab44d382f757e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -1332,6 +1332,7 @@ cros_ec: ec@0 {
 		spi-max-frequency = <3000000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&cros_ec_int>;
+		wakeup-source;
 
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.43.0.472.g3155946c3a-goog


