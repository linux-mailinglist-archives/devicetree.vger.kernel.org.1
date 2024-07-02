Return-Path: <devicetree+bounces-82368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE7F924152
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 16:51:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3BB63B2930E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C88C1BA88E;
	Tue,  2 Jul 2024 14:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WDU1dIHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1954F1BA889
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 14:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719931869; cv=none; b=foWE72d8xVfYmiI+DpDydv0dp6D0gnVGmpDSiG2up9hWoqCvEPY3JpF2Uev5kN5AJEA+72VT9shcrIZm6HUbjW6X+773BWUPeDYQ4mbe0zLKe0Ht3M2A71L0BejecFFsrPRz7OTtuCBOzSF8AKNamELR83FwkSN5jdURJXBpk1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719931869; c=relaxed/simple;
	bh=3JzNfaMqpt1sI3Gin4Nr4nWUwffo/L8DtpcGAkFzLxk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nZgnknBop861GXwr6FHmx5R7JYv9a0U7hTuKFyCpq39u2YYXxpylUZyjc9pvZntqs7x41nXk7Q4RzIOlCENqbmeNS5x16Y7p83HTeuFJSOTMi4/TPFvb8vr7l4pPmlzZhAh8pK4iqXVRJvtsBxsc6irlDMSMwfHvcrib0MkF13E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WDU1dIHi; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3678aa359b7so403052f8f.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 07:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719931865; x=1720536665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eKlUNbymqJaT0kOcCn3vFHLPBM9nCKu+xgIgCZM/a5U=;
        b=WDU1dIHiUSGryP68NIF1iM1v1P7tN6x7X8/bc8SA5U6YdtcQ9h84NcFshcxZta9pkw
         dnuKMvDXGU6VmzHw01yLmqOW7Zt7M6PSrKfXlMZJZ/X6HqxFYz8u6EDmzWtw/v0cjc5h
         yEI1Qu0V1H+e/nu/C4T7tQqrnxOPC9aAMjZsThMN9Pch06vry3kNJECLjkVnKFxhpDAm
         HP7F0fA7JXjA+2eUv71ZTBkpRmE5sKTqdSaqgtBsJqZTnvz62wLdoRN6e/6j/syBirai
         cTW+0ZV9NHbKI6u8Z0XAbnngJp57MC62jtdpF8HaBl7UuKrZgM0cl/kqqz16+Paeiy+a
         Cx9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719931865; x=1720536665;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eKlUNbymqJaT0kOcCn3vFHLPBM9nCKu+xgIgCZM/a5U=;
        b=DFIxjGp6DRYc6pBR3J/QNPaJf9Yd7YF4llZzQRhrcSB3CVMU6v8x+0gBgbpNo0aeEn
         KCLQ+Yz3kT9Qtl9wtmushWF9asb+si9mnnZVh5bgP30F63/HrUaUkQYRyLcpyxM9i+Uz
         rELzK1OE0qVT/kWwzcOAL+PP1RwX68ABqdRLO5mFM1booaBYzXQQXXnPUsFrtcE8Xt5H
         MDcPcPI1qARpHo/FWAvZDcU55FLdr46ItIQxbsrquUmysvSyFiDcAJ5jCJiJeAVqBhQO
         HvgpQWCM3TtFkq/WsK+9NjAH5Q44yW+EQp1NGdUy1Wup/DFVXz7BZrYBtYXVaofnwp3R
         3y8w==
X-Forwarded-Encrypted: i=1; AJvYcCVvL/pEJeAtfIR4KGK4yfZMiXKdrXPI60+lVl2iZrwLcUPmRPeG2K/6SzRcH5GTB9XPjyAmijH2ybGJGf9cZfKZhoIFXEOefA48ug==
X-Gm-Message-State: AOJu0YwdbzcUxR88CwVSxxLN+4ZeUxoBE1pcRPb+pqfB4cEFF3AutkBz
	k4OaUHICE+rEiRTaMECC4L7oXdBE0G+4X/YVpZ8hLvHN7SDvY5n/6jgiEWSWLT4=
X-Google-Smtp-Source: AGHT+IE92eVX4dmFvFo8dRtaK3wOWUlw/jSZDiMOkwzi1Kl0xeslgoHpkVbmw79Rots/plOCZ/47Rg==
X-Received: by 2002:a5d:6d8c:0:b0:363:337a:3e0 with SMTP id ffacd0b85a97d-36760a62ecemr12678404f8f.1.1719931865524;
        Tue, 02 Jul 2024 07:51:05 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af3cf90sm199618855e9.5.2024.07.02.07.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 07:51:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: mediatek: mt8183-kukui: align thermal node names with bindings
Date: Tue,  2 Jul 2024 16:51:02 +0200
Message-ID: <20240702145102.46953-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect thermal zones node name to follow certain pattern.
This fixes dtbs_check warning:

  mt8183-kukui-jacuzzi-burnet.dtb: thermal-zones: 'tboard1', 'tboard2'
    do not match any of the regexes: '^[a-zA-Z][a-zA-Z0-9\\-]{1,10}-thermal$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 6345e969efae..3aea2643f21c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -974,13 +974,13 @@ &ssusb {
 };
 
 &thermal_zones {
-	tboard1 {
+	tboard1-thermal {
 		polling-delay = <1000>; /* milliseconds */
 		polling-delay-passive = <0>; /* milliseconds */
 		thermal-sensors = <&tboard_thermistor1>;
 	};
 
-	tboard2 {
+	tboard2-thermal {
 		polling-delay = <1000>; /* milliseconds */
 		polling-delay-passive = <0>; /* milliseconds */
 		thermal-sensors = <&tboard_thermistor2>;
-- 
2.43.0


