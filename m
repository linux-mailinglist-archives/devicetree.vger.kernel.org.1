Return-Path: <devicetree+bounces-191328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB9DAEEEE6
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 08:37:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1DE287A55B7
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 06:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3387525A640;
	Tue,  1 Jul 2025 06:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HyK96gyi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFB919AD89
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 06:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751351805; cv=none; b=cgz2Qzi6Dniix/UcCfaPqDQGdzIxM6Yf/M6QKrzhGm1tNHi9g5MqYvQ4HoDXbPA934YkwbIpGSV8l/gi5eFQkbNHzKkaPInlf174kUmfhqblLxYoergOvmbSLXRl5wfRrMgsusj1xqMhZ2FXCIc/7c5eSkn2S0+WvUKmypx3IRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751351805; c=relaxed/simple;
	bh=LVOBn5gIt8SN8+AKL1VG0Mcc4HlGoH1nt639zAe/kOo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=D9O6AHVl78NZ+ktxlk8DM4I5SmLcrzR8gg1egbDNpHxRbLSFyDzW1b8ftoegYWUl5YOD0mh0lFibrNF83S4d6CtOm+i59l9iyZzr6aNNnDR3NvFLFmmZ+tk8F3YjPsYCkVR9s4HB6yBm5FRBYw8NWKtLcLtMX54YtKBaVW0zeJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HyK96gyi; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-450ddb35583so7076555e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 23:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751351801; x=1751956601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XF9BsXSBJjchhqC1W0y2iD+54l1AU0WSwwDuBKksZ/A=;
        b=HyK96gyi2b78nGQHbbf8105VZxi9QOs2jZt0EgfsrkI2mbiPlcGg+3KxTw1oRI5DqW
         SyAmpj1UIXD+e3Jm5q/72afsVrIgfK+8sRcy6SKGH/LFQXquPSjMlx8fZDaMpOCatxUc
         XLk8V+biOI0dbG+gf+THZLBRMnKhWQhwd1zQEGSqRsHMEBsQhwVWCKVaCcxdvcEic3uG
         kiy+ZSOB7TprTF9EBkEjxd/WHQjcMX4LCWK6akrscIGTtFe9V7Ex0vopB8bjXG6HxYwz
         jSe72pwJq8d8B3ZjsnHBG9RMyAxNllVAne6bINs67vtWAhR4hZW7LbTRlfgMWnRiazJQ
         okMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751351801; x=1751956601;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XF9BsXSBJjchhqC1W0y2iD+54l1AU0WSwwDuBKksZ/A=;
        b=QVN+YzAyh4bjqMHmrvA0aXpkv5gAPySvlDZ2GxWzv2iBanDRxWSR4Rxj0z47iiTBbf
         U6yCfukMojtueLUVowDVpoSJ6n1L1Wy+AnIlHiI3Ftfs2cKZ2AVScotPaD9eJ9G4UQm5
         PjYNVNlbYynM26hQEImYnlUCjpGDcz1DBorShy/fXrRybD7cW3boV8fT4hw9E1Ct1Hns
         eFwnFJyuvq5oXJ8h4FSb+LRKrMoEIu1iui97ccR3GpkBYObGhC2AGL7ZoIQJmJaPTfS4
         EQtC6Z1W7gFibBxF307dEEP2PmEmo4LQfyASgUgrt1xyg5Q1F5D0QgcDpCFdKdwOc3qy
         0qwg==
X-Forwarded-Encrypted: i=1; AJvYcCVm2Ed7BdgalPa5QwAOOMIUF5XM0BnbECQo1YLVEINEcT5ei0HJp0bI++7W6JqI+tnu6j+bGXuqvuRO@vger.kernel.org
X-Gm-Message-State: AOJu0YzbJhTEHTxlfolPLnXzkCWt5aweJ1Cl/43Dh88FOz3D6SqjEARz
	NpITipD9HuFEVEn5TdhFTCmn9S8hdVOmSCqAWzpbFjj3REDZ7f2pUmUH39xkmMKzkK8=
X-Gm-Gg: ASbGnctrL/5YHZv6f3e0O9LJIWg58WJvIxJ9jiuWJDGBMAZbzH1oiAxpw/qROK0lkHl
	X4nmnQqgY3KtvM/BstJriLm6IUEAB3YV9a0t8htJ+FvC4ou6sp3WamezsEaArf4uhimyc5k/D38
	3PcZDMCu/xGolD0FAYPtDBNEpwkc8L3P9Lh42GiI3YtTAQUvlm1yklBuCz8WVCZRSS6g6wP62Bt
	Fmpw4iClQsXqwO5utQWkyYGJZh2f89cOyIbjzYQRlqNhZdcrtcwdQ0d3TNyCVyRudyqO7xL9hg4
	4AVWsF2Tyml20tceou13gJIAsA/Z5P64k8mUjJHAC/PfQCQXWnzGHQ/BFS38/XQrZE/VMR6uW9f
	qBNa+IzjdCw==
X-Google-Smtp-Source: AGHT+IGi0D+19VoSHVRWUeDZpEANnFxXdyNqWbA6Zz7HbqVloW2LQcu/8xvrAEhyjKTVBMpjMPDSIQ==
X-Received: by 2002:a05:600c:470d:b0:43b:c0fa:f9c4 with SMTP id 5b1f17b1804b1-453a812fb30mr6274275e9.4.1751351801542;
        Mon, 30 Jun 2025 23:36:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a421434sm157119695e9.37.2025.06.30.23.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 23:36:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: marvell,mmp2-usb-phy: Drop status from the example
Date: Tue,  1 Jul 2025 08:36:37 +0200
Message-ID: <20250701063636.23872-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=779; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=LVOBn5gIt8SN8+AKL1VG0Mcc4HlGoH1nt639zAe/kOo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoY4H0ffaPTbeopHCCCMc1UVmiQZRCkCVMP4baz
 8YHWXyqWvKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaGOB9AAKCRDBN2bmhouD
 1x01D/9XFJFW9DXK6yY20AHJAmi1JQG17UexaKXhKbRP1qjAcsWq3WePdUEIaMHDSBYOMY+CYsd
 rS2q0FNN/yv+0pBPDnvC/XBhfS2tRQT4SCB4Vt4NH7BX78uSwnAr7pWiWGnQ145yCeEBD9vNA/b
 sI5sRN9Ea+fZERgKqwpqQ59DQ65CyaPbmmp/dm0sAHxRBAVOc3cFWCaQQJvSJNXiUSlBYWH8rtI
 uIefJGyUCu1pXsl/gsTIliVhn0JFTl8IXvAT3jPo+Hp6ZTmNB6OE8BVCl+PdR4pQ68fiMFqJ+Dn
 awlO6/i8bPhUcCnpuw97SnTy8qBfEhWtkbeMjT+vZxa/dgFfl3ulUtLmb5gMNLiJDrdRnqk3+tz
 9VD7nITR7jv+58y6CyNFum3Mm2FO2j3F9W2eL96DQlHFjJCNna8zGk1d/IgTXaebHrHib97tMg9
 xI2zLFoMKXAE5QiG0TZRr+z3BUNtEIk6DhJbuX5QrT8g2/OiTORqNt+/sL0Q4mS3eSu30pdinB0
 KbmvcIbNWrJvgj5q1nIRagdSMHUanCwTxeOWsdq+j2CR66lHyNy5jo8rtI/x9tkKcOZN4KpMiX2
 V5AGBDKfTCO+Q1kF+W1vMUuTfrzPRWzNERfxvjOTHlyvHFmP4SarDmzyUPjt60/8v0tMLDzKj0p dpsgim1dFMB5uuQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Examples should not have the 'status' property and 'okay' is anyway by
default.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
index 2441c5fae550..af1ae2406f65 100644
--- a/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
@@ -34,5 +34,4 @@ examples:
         compatible = "marvell,mmp2-usb-phy";
         reg = <0xd4207000 0x40>;
         #phy-cells = <0>;
-        status = "okay";
     };
-- 
2.43.0


