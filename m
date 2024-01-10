Return-Path: <devicetree+bounces-29270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB98822307
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 22:11:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E3EE1C2299D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 21:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62D7C1773F;
	Tue,  2 Jan 2024 21:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OUJsj7U4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C7618040
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-7b7fdde8b98so496498939f.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 13:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1704229732; x=1704834532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5bEDuGxV/dPJIqZg1w0wl3qVgLyOuLBrt1YTH4lJcK4=;
        b=OUJsj7U4B/Wkgmd/AEzsPthDKbgyGX+3iugDar/5gA7ccoYTJ6wxikYoAtPZTOREmK
         UJ2mnqV+1gAUnr0GnKfLOhhpqJ/7zGJiUupAXFKyjhdkm8b3y1gJCpMPYQiqaPPvfz6H
         patHhOOm4j4GiWVlxD8AODicg2PmeldUrdKfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704229732; x=1704834532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5bEDuGxV/dPJIqZg1w0wl3qVgLyOuLBrt1YTH4lJcK4=;
        b=Pbm8VNbgjRjOAtyJlbVGVxEXtRqh96qPPt61SRyK+9sCy4jG+LRZLcHWy9IIXXTfgL
         zwZrM+ldGoWI+iNzp327s/HtsfVWWu0iCfN3R5MDcPe4PbJtIGlejeJeDUAYZQ4CWjFw
         078kUAmiV6Ip3qA/4hIjQXEkzk8H02FwvQlVMqX6G4/WLIiO/uLvgsWG483xNdGu2+1v
         djk8jAMTA8rj3I8X0j+wDrOYOi98Ki3T2VAkP1s9+4aBA4AQmbSCouCk6KpA/Lc/e+0S
         BL66v345pbyss6HCnuex7e+AVIcAalLYMgyid1PEz8C8aQwzyGFKxGeIFES3XBu0tlTu
         XK2A==
X-Gm-Message-State: AOJu0YzxdSpvq8MOzhQxQ8ZeCcA6JUwDSBjFndAULCc9n+aKLMyu8i+7
	kSLjBaRRgLENT/iZ2F0SLFtBJMK4PB5B
X-Google-Smtp-Source: AGHT+IEepz+cz572l3C4gGDpkRMfzMAxMxz3DhHQT6lcFpZI37i5Utc7APQrtUv4nIj51c+vjo/kRw==
X-Received: by 2002:a05:6602:147:b0:7bb:cd42:ed8e with SMTP id v7-20020a056602014700b007bbcd42ed8emr301320iot.28.1704229732361;
        Tue, 02 Jan 2024 13:08:52 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bo18-20020a056638439200b0046993034c91sm6956978jab.77.2024.01.02.13.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 13:08:52 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
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
Subject: [PATCH v4 10/24] arm64: dts: mediatek: mt8183: Enable cros-ec-spi as wake source
Date: Tue,  2 Jan 2024 14:07:34 -0700
Message-ID: <20240102140734.v4.10.Iba4a8b7e908989e57f7838a80013a4062be5e614@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20240102210820.2604667-1-markhas@chromium.org>
References: <20240102210820.2604667-1-markhas@chromium.org>
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

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

(no changes since v3)

Changes in v3:
-Update commit message to provide details of the motivation behind the
change

Changes in v2:
-Split by arch/soc

 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 5506de83f61d4..08261164ab18d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -924,6 +924,7 @@ cros_ec: cros-ec@0 {
 		interrupts-extended = <&pio 151 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_odl>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


