Return-Path: <devicetree+bounces-100505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C297F96DEAF
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:45:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE56D1C208D1
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B9E19EEBA;
	Thu,  5 Sep 2024 15:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s+VEosnF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD65E84D3E
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725551088; cv=none; b=Gs2Vei+SDobIoAyhqFv7ScJF8v3POCV50Atd8yw5wVjUHnhcNHlka6Vo1YwHR5kNXHMXwYm/mQ0HxDerntocMsmbCj0pUHI9XeYvluYKWYhTum1MT6hfdLRO6+JFdy7g6BC2BEcAYPUWmmcq8b3EA7p/aT7cQ6viH0KTS9j9SwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725551088; c=relaxed/simple;
	bh=zXnRoQugAQFzL6m+lLOR53GnH5aQ31cO9ZRivznecsE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mXwXew+Ld/zoycxOREkyvzgTpH6wHPQ+vZeXmHgKuHNCVJylDQhvnD3JuejVHU4ot6hCkerEqg0IV6MxACvptWgalWFD6nmOaX5j84NColkiw9wQV9LfI9cZq5PNGOiADTIJNzzL2Ht5LzR02JetfAf3csr6m4w3rhBeh9QtfjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s+VEosnF; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a86939e9d7cso5960466b.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725551084; x=1726155884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wa/CPlyiytH758pjN+uFI/9Rw3cBIvqnA2CafEpkkmw=;
        b=s+VEosnFkr2Z9dEjoacs0TnDnPGQZnhZpyiEEbg7N7VGRWrfiLcEPqiFD0oLoXrEoE
         gzPxAhgDzh+KBZmtnXyElxEmqrTKXcwmj1JEvPY4BRS7sS9oQQxjOKsjYdJGNAte2z/O
         vTPw/OngA1abcN6IYke84NryiP3VQ+5U33Cmit5+j4CcRuKjDqLCqAoHGv8QqU0HBXui
         ZCvqsJSn/Pyu/HRlbZs1shxUpNwoyL6NbgbOXFS6XuchXoHOvlB/RsnLSOQtBZGnjwci
         0Jqbf6asxEt627JIlsGM0sp0LCdqZiTDZHKncHOEzPK3CH9fjEZUXSKm3I2ut2M1PQZS
         idtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725551084; x=1726155884;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wa/CPlyiytH758pjN+uFI/9Rw3cBIvqnA2CafEpkkmw=;
        b=Ik3NnC33a8rjGTS/wd1yd5ZyarNDkU5lMbgRfxQqfPBv0Cs8ORkUAJyU0C7jXZ07ox
         Sv+1VwiDij3ogNiWXNk7Ji4j3PgVgz0WoYwuc7BrZVX1zZBLWg/rP+WLgt/RTBsFj68M
         FlNhwyqQrJSJPS7dEyoeXCO9Y4T9JYVMxB5pw9UC1gz8qIY3DwRdlKetZCS5XPTEgTzx
         +V3wofu/jtQnFWHlCqVjknG8YsRuwdUEz2hF+/x88AtYDMLxOhKVe05btuK8M7cx+ONj
         zqmfRT7REHPK0FMB6/sHcY74spqX1R76NmZo18wxFpXrmSdTM2HNFo1aYPNm+ogx8Tp7
         x2jQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSmikNVwrXkHKNJOLsdy44i3LbYJfC1g5kEKAnjmwtSOlM/8lgccr0hRogfZZTkjkFjD2E0QOap11O@vger.kernel.org
X-Gm-Message-State: AOJu0YwVK5LEZ6vdFsT4tbgW3LIc2sYmPLom8O5ht1MOT7gOdzVYTzzL
	7c1RO0BKgEVcyfvcGCmFoe4RLtbA26nseKvU3dVEaAdH3fKUmwUjAJYgOmYgV3Y=
X-Google-Smtp-Source: AGHT+IH0XZsN1jEBJtaUvI2q+jcEpl8sXaD1DG1NiRLPikvOwQ6DxcWU+6XmbfEF425L+fXjXCa08Q==
X-Received: by 2002:a17:907:1c10:b0:a80:b63b:eba0 with SMTP id a640c23a62f3a-a89a35a146cmr833057566b.4.1725551084173;
        Thu, 05 Sep 2024 08:44:44 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8a82a9c438sm5810166b.204.2024.09.05.08.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:44:43 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: ti: minor whitespace cleanup
Date: Thu,  5 Sep 2024 17:44:40 +0200
Message-ID: <20240905154440.424488-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before '{'
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am642-evm.dts   | 2 +-
 arch/arm64/boot/dts/ti/k3-j722s-main.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index 97ca16f00cd2..6813c7ce8bcd 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -450,7 +450,7 @@ AM64X_IOPAD(0x0158, PIN_INPUT, 0) /* (AA6) PRG1_MDIO0_MDIO */
 		>;
 	};
 
-	icssg1_rgmii1_pins_default: icssg1-rgmii1-default-pins{
+	icssg1_rgmii1_pins_default: icssg1-rgmii1-default-pins {
 		pinctrl-single,pins = <
 			AM64X_IOPAD(0x00b8, PIN_INPUT, 2) /* (Y7) PRG1_PRU0_GPO0.PRG1_RGMII1_RD0 */
 			AM64X_IOPAD(0x00bc, PIN_INPUT, 2) /* (U8) PRG1_PRU0_GPO1.PRG1_RGMII1_RD1 */
diff --git a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
index ed6f4ba08afc..3ac2d45a0558 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
@@ -135,7 +135,7 @@ usbss1: usb@f920000 {
 		ranges;
 		status = "disabled";
 
-		usb1: usb@31200000{
+		usb1: usb@31200000 {
 			compatible = "cdns,usb3";
 			reg = <0x00 0x31200000 0x00 0x10000>,
 			      <0x00 0x31210000 0x00 0x10000>,
-- 
2.43.0


