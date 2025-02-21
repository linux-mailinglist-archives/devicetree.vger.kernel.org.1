Return-Path: <devicetree+bounces-149532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 57468A3FB8A
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A13667A26A8
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293731FAC45;
	Fri, 21 Feb 2025 16:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="frlin4gN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4691F3B82
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155599; cv=none; b=kK40IVdSyOW/abD0ZivEGCbCflO0gpfwF1Mw4Wc03vTx4ufxRXWXYYdMuginC1MR7c7P86jI+BsaHcQi6CA7ZtBy0wsQpsjcD70axNKNjPgXlA1SN5TjG09thTw0rPQS6iOxWlPHi9rznWAleaRC8FgeY2fQeueKdFsKgHaDsxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155599; c=relaxed/simple;
	bh=/Lbwx3pXIBOzZ9K1ARAeyYlgTeCQRSC2zkOImuhUOnQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=geyoTkrpBkZ8yvC/LISMJuiE0W0UDzfy7LVOIcWr3SEhMrozygxrvD9LSsatsjtX/Qy2FC6E6Rfbk1rqb4ZOgXd7gnXBV7OFZ2KXsAgJVMrTuPyu1JSVeZbH8RNJ7/FYKJ8Jr3SbbzA8VVifOzJJ4ev1MPjhFbP1ujG7QGy3TMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=frlin4gN; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-abb9c8c4e59so37852366b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155593; x=1740760393; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Txn+toELfUJErOZaS1LgqKzYevUXNkzkLhfJ3LGkqHE=;
        b=frlin4gNZqmAg3voEUoR0+Duejv1aUwu7zUEhchegUXjiV3OybZEMv+6V9XUQsDtuG
         YfgO+jznvO09Udl//iF5uZSapZ8IIX8+M1Qy2JeXQlCF2ToRvbpWQfEfUFzUwwIIYfoe
         7ZTY4XPhObNzW4haMZgXLqO/kLcHSSe1RVILbXlPmpAvkQdrhCVvXwDwxOtHEw7S9lfm
         q44zh0TZ6R5zhTgKsCxvYfx4Iwg5+t8a6zjojf48wlkdS/3cC6EDTAe2vAsXNkZMI1Y8
         TyAgEFIOYMCxhX9mQKYeKJjVWY3bb/G/iLp1VLzeEfKjiskZlw3BKWZASnKF9SpCiWrM
         /sxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155593; x=1740760393;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Txn+toELfUJErOZaS1LgqKzYevUXNkzkLhfJ3LGkqHE=;
        b=X/E/56zpOIEJrWseRP9svUBbW9C17VyFmIDIYgmcTwTiNxqB7wEt2PtTSL1qBlL5Bq
         5PyZNun7FxoeCKiMQ9RLyC7lenMmpo+SuxsF1Q++2GqyUnK2jeXhc3wgKQU9D6f9x2AQ
         jF4tC51xRPqwdlvEyy1xx43M868XZFvfFlXvQiwJBmtfC85DwfYTDTMFynAjMqS8KIZ1
         aeigJVisdnUv97tg2nmPm8uL6EjUvLigSlrDxoteij9U87jfVJaxkfB4mlqxX6W7hgrp
         rQzz5hFQZW57sGVnklJJXvlmIG5qxXT+rWJXBo9AcdfS9URgDDsmphLrRSUAuGC1CHr4
         YVuw==
X-Forwarded-Encrypted: i=1; AJvYcCVbdycpk0fRUOhJcrZ9GGRIA1yRUnS4EXl3MAEsiE/BBWbyEtBwevIMC2bLXfnAPVBjFEqMb9Srjn3p@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5l98YexysoKC3/j5Ay1prP5Tr+6IJOQdlwEazvl4wTVRw4Ldy
	y78VKdgB8f3L7aI4GDLRC5vYsWDAw71yj1++m4Domg2PbCSr9OdisHRXk4ZTdxY=
X-Gm-Gg: ASbGnctC3WeaiKU0aSX6Kua3hHh2/KR3deyYlNVnV3hU0c6/o8NJhkYnFZG9ae/OWrN
	3D35po6zZrTQvfx/B5f45ulN9kAHLpKykNSO7z+LZHN62kQJNFzSa8RT2FNSysu6E2/w86pPhdv
	qqQl5uwoRQnhSwfHTnWC2zMswYZ0p0SVwmRCR9D6U73OPpgzYCAeUIaw2ZYglkA8uF3gAego1va
	8oOqxpEyjvF+DRRKJ/WSC5vZs6X9Usg7Uf7z5FuKbuG1Qod/n0xEvyK/oqjTvsoKFiGN0mU0JSp
	b7DxbVJMgJIlDoL1wxWdeObQ9FtOAO2jL2RB/+soqFeKBuZ7NYoKIsm96QGeUID841eClZqWzWB
	B
X-Google-Smtp-Source: AGHT+IFNz5goLLYbyGUJ5rltKM7CJtsNlMcGOCp46v/Nmfn7aZJhJs2UTEUhPPZlg3lIJdRdr/+2bw==
X-Received: by 2002:a17:907:74a:b0:aa5:a60:ad6a with SMTP id a640c23a62f3a-abc09e32bebmr125519266b.8.1740155593495;
        Fri, 21 Feb 2025 08:33:13 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba4fc0c29sm906814066b.157.2025.02.21.08.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:33:12 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RFC v3 0/3] arm64: dts: qcom: sm8750: Add modem
Date: Fri, 21 Feb 2025 17:33:04 +0100
Message-Id: <20250221-b4-sm8750-modem-v3-0-462dae7303c7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMCquGcC/03MQQ7CIBQE0KuQv5YEPrTFbpt4ALemC4RfZUFbQ
 RuTpneXqDEuZybzVsiUAmVo2QqJlpDDNJagdgzc1Y4X4sGXDCiwEoiSnzXP0TSV4HHyFLlDaaX
 xe2wGhPKaEw3h+RZPcDx00H/KRLdH0e/f5Ye3rNBaSsQ/2vk8c2Vs7bDWyirfLgr6bXsBAFDfP
 K8AAAA=
X-Change-ID: 20250221-b4-sm8750-modem-c21a18d927f2
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1630;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=/Lbwx3pXIBOzZ9K1ARAeyYlgTeCQRSC2zkOImuhUOnQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuKrEnN0DZnuDMIFSW/hKrX/ItMzIVp6Lk1SWN
 sTW2lWJT9CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iqxAAKCRDBN2bmhouD
 17qED/9ekqZTXWoOT0WCzV4BFTnHKaCjdlBV17j1OSLv/tCiWw8v+kpDrCogZGOd27B1ngL2AgK
 izaBL0OIEbzxFRdWkAXrph0nSoStty6/HPHBbFRvscnNt/fclFlh2P8700wW44Zcx/fOZQQ+HLe
 8oNdSQgWlOlK4Y7AnWW1b8tmMTgZFIGbWzsW9O7OAsl8PGLQkBfO/MMjD+f1AdP4t8awTu/Ep7A
 qd0nYRZI+gubYdQeyBRe1/17W3HibM2zsii8donaFKvWeXrHWocB6LXT04FZClEIaFDFAgJSWBy
 FcGlwv26+sGvZTnNpgaVfbQ32EX6ukrRo8U7A4HPat8tBn9rvaNjhhh8C5zCuEO+XN+j7a4PTbj
 g4t3YHOMOjypmyswLbLKSfdsRZATGFiBDhTHBnp6GFG9G37IX3EjAQYfhGkqmo7XdDtH+ns389n
 pCCgzMQtrcl0xgJcAsmKLwn/DMd2pIRxeEPxKK82OziEDeDTz3ytlmZ2fCqrk1qdn98ILSNCSm6
 BOXK117NAnfRPPdVLhrG5jUILnfyaTjjhwPn8QZzaAdYPmpJq5S4WgSHARR1+UBDnfx5VvZRjvt
 juLbCUr4jKMQvk03cxZLcAp6eVb90EwKKhltcxFvZlcWxBgVH6AUFom6a23Rx7fZsEb2Mr7Icke
 SdYoNbKYniWYylA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

RFC because modem on MTP8750 crashes after booting for unknown reasons.

Changes in v3:
- Split modem to separate patchset and series
- Link to v2: https://lore.kernel.org/r/20250220-b4-sm8750-cdsp-v2-0-a70dd2d04419@linaro.org

Changes in v2 (from previous patchset - combined CDSP and modem):
- Fix CDSP and MPSS PAS address space range.
- Re-order nodes for correct placement.
- Rb tags.
- Link to v1: https://lore.kernel.org/r/20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org

Context of this depends on:
https://lore.kernel.org/linux-devicetree/20250221-b4-sm8750-cdsp-v3-0-fe2891beeef7@linaro.org/

Bindings for remoteproc:
https://lore.kernel.org/linux-devicetree/20250221160300.160404-1-krzysztof.kozlowski@linaro.org/T/#t

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      arm64: dts: qcom: sm8750: Add Modem / MPSS
      arm64: dts: qcom: sm8750-mtp: Enable modem
      arm64: dts: qcom: sm8750-qrd: Enable modem

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts |  8 +++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts |  7 +++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 92 +++++++++++++++++++++++++++++++++
 3 files changed, 107 insertions(+)
---
base-commit: 149ab95f2124c154a7dce75696a42fd4f4322f1d
change-id: 20250221-b4-sm8750-modem-c21a18d927f2
prerequisite-change-id: 20241122-b4-sm8750-cdsp-38a6c2643a3d:v3
prerequisite-patch-id: adf6f31202c8e8018cac2ed89bcd4785238eccb5
prerequisite-patch-id: 0db026e778de21511d106b767563962611f8bef4
prerequisite-patch-id: 15e5b1ae1b582c1e813615113de69631824dddb3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


