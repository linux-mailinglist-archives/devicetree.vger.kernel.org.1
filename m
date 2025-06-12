Return-Path: <devicetree+bounces-185140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A3CAD696A
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F3DD3AD11D
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D16786342;
	Thu, 12 Jun 2025 07:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b="Lw4dcSxy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901CB1F3D56
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714465; cv=none; b=QHlGp6v2B93sEXcJiNMUHaTr3L3OZtyvXf4QF5jPr/FvaO+4snZHfT4BB9F275aBRlfGQkd8zORBNti01ALJ7l9Ztm3Y8cIlrbbCaH3Ojr0K5LUcbSIkYIVlIxIl5tc9u+KenRiKAjMJ81ItGEiB7L7xx/L8k4646bKL21328HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714465; c=relaxed/simple;
	bh=W3+/U//G8tiQdgfJJq3a8S+yesKCygwE6LmqbqOTAp8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jQ1T0EWYtOHy6ejVEQWFLc+AHfeMXVkicdHPdkcuxxdUWBLoAO9ACtFAE53fStOGAl1ns1XDLFPj75WxzG+KZ5nYJLIId7edIvsaPxZBkaKlN3Jp6eHZmT+JPeVUNIrVZXtFThXqt0eTzHGOFKB3Q7JkLQOtWuCdGbwWLhhRFCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch; spf=none smtp.mailfrom=easyb.ch; dkim=pass (2048-bit key) header.d=easyb-ch.20230601.gappssmtp.com header.i=@easyb-ch.20230601.gappssmtp.com header.b=Lw4dcSxy; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=easyb.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=easyb.ch
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45300c82c1cso1701485e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easyb-ch.20230601.gappssmtp.com; s=20230601; t=1749714460; x=1750319260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jJKRD4IePTu10KXLvHxej7LhzJE2E9K7kjr6QynOkYY=;
        b=Lw4dcSxyoaUGaWsL1/IDx57PezPs0YbSB1+vspEQNS4hlhi2COHLaS8La6O5LqleUB
         fCwdOluMHx47rjZHGzh/iVJRwE1RK94GclHXxurtWjrNb/+KKbPQd+h5k6s8+ae/DOFx
         V26v3PYfvNoU7H08UY/LyizIxu2mobBZPNfBvG2N8q57RAcy5Wscesscf1NqLEkRRC0r
         +cyGBt62TbTJEHDt0X7MolrQm8b2SOudwkziSmUq4xyYYqV2vvvwK90/RuZRyCGOZP5N
         KVZHNmEsF4/OjX6bf8991ww8ss8H8fi/WaM/tcDAyCjaBju9zkvAJ0DY13EwYUKvgSKH
         2eew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749714460; x=1750319260;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jJKRD4IePTu10KXLvHxej7LhzJE2E9K7kjr6QynOkYY=;
        b=Q/AC5QF5CHFQxfAr6wkkTx2ONCpCZPANvNhwkS1ybSw3h3ytebQF15DSgA2Uw/hGS1
         As0ouIP+cpCcqzR3W333uos1mt/MgVYE5a6wfHLixUxMDxVj1WZnG1085cleVyS9Hcau
         L2JiJTJgfImkMnq6bf8JugAMX+O4MtUtf5quM3bwKDJ7pS8aXc/xW5aKTXR4Yt4t9+e0
         75ZulfjmkWbDlX7t1CBR3gu8+BOFkbp8ov07jSXWgzyqXeYZcSbbPvi2Wf6Gl1vwTOly
         3UDsspNaXVxxUlv+aU8zOasBDRCuuKhbGCwCp+HpH7M2BcmF2ngRt+fDQT3M4qgvlXMH
         lmog==
X-Forwarded-Encrypted: i=1; AJvYcCUOj2ABbPlJX8nJydbMijFpuO2dKNdl7zIczcOle7l6HPbNAxqrTs4XlzxWZcDFDEcMYyycVU5U/jEa@vger.kernel.org
X-Gm-Message-State: AOJu0YwfFb5FfrDnANY3c7/NdfthEbGWK21DjRi04qY8ytR3iztHrLwb
	5IeH4B7TCBPbVEUrX8FGQCuelVFbEEWvL3Nzy3cEukm+k+lQ2z99fhIjQAkyKg5brlY=
X-Gm-Gg: ASbGnct/QywYDDCRXRDJ2EAcn7pkFxp0ALPJ/VZbX0GUrMMJ0ICaQVE64jCnm91XhpS
	BdwXptuzz9Z07+ZKnhiYYybR2x4vThD92vBZalL36z24/VNb1a2S9o4Ztu9zGQ8a0/nz3uohz6W
	dl154+J+bmBOl/FT7++rP8icTaCT0iflGBy+oeUMHRukQIaNWJKhgcJ0pNaf4GUonzUwGiq+BZB
	Yop+XP9dWWt7KDPttDOKAJPG3fgers0jlKPclbEgSNhLg/Slg7OkwKsmWvpKEkgisqe4dmMFZ6R
	uaPs35RKe5yaTO6n3ty4/CZKMegvcsW5Yn/YveDCzULqyJqcaJUGWtONRPFtS8rhxm94lX0oN+k
	mKud2OgP1
X-Google-Smtp-Source: AGHT+IFSkj6qmkZNg+QbLrL9/7Aw6gNVIRZ8TKO8D+Q27noN8R5iYt+bQxJDG5xAEMj4b4uQzbUCaw==
X-Received: by 2002:a05:600c:1c08:b0:450:d01e:78ee with SMTP id 5b1f17b1804b1-4532d10857emr18770605e9.24.1749714460176;
        Thu, 12 Jun 2025 00:47:40 -0700 (PDT)
Received: from fraxinus.testlab.hub.hqv.ch ([85.195.220.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532de8c229sm12398025e9.6.2025.06.12.00.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 00:47:39 -0700 (PDT)
From: Ezra Buehler <ezra@easyb.ch>
To: linux-arm-kernel@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Reto Schneider <reto.schneider@husqvarnagroup.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	Ezra Buehler <ezra.buehler@husqvarnagroup.com>
Subject: [PATCH] ARM: dts: microchip: gardena-smart-gateway: Fix power LED
Date: Thu, 12 Jun 2025 09:47:37 +0200
Message-ID: <20250612074737.311346-1-ezra@easyb.ch>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>

When starting up, the GARDENA smart Gateway's power LED should be
flashing green. It is unclear why this has not been done earlier.

The LED frequency cannot be configured in the devicetree. Luckily, the
default is 1 Hz, which is what we want.

Signed-off-by: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
---
 .../boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts b/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
index e0c1e8df81b1..947c011c1b00 100644
--- a/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
+++ b/arch/arm/boot/dts/microchip/at91sam9g25-gardena-smart-gateway.dts
@@ -46,7 +46,7 @@ led-power-blue {
 		led-power-green {
 			label = "smartgw:power:green";
 			gpios = <&pioC 20 GPIO_ACTIVE_HIGH>;
-			default-state = "on";
+			linux,default-trigger = "timer";
 		};
 
 		led-power-red {
-- 
2.43.0


