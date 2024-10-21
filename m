Return-Path: <devicetree+bounces-113693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C74799A69BE
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 15:10:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A0F32869F7
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 13:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE5A1EABBA;
	Mon, 21 Oct 2024 13:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x8lIfY2B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D74E1EB48
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729516236; cv=none; b=Wsc4p/TJ+R+zt9RGL6AS4VSUpWERiryeCI91DOIAKQJqX2QnTfsa7ZLswbnSHdUinAD5Vsvvl1Yjq4ytw+GWNu8dD5l6x2PTD0DM3qgjHbCSoC33XFmJErjh7FlrKl1l6epJoAUWFucFMCGY10t25LUYC4RkWALCeM49d8t6dSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729516236; c=relaxed/simple;
	bh=w04B4+pdnZp7RHySWs5qTnwOJQqR6aB+TK5PLU9uqBY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=c6599yAJKlO/0v/hTFeXMLSk/FFlwXYSOiTnTO01OgDj1VTgSA/2YHHFFTV4O5TGzurBDopJ74kDA+kFdGqX1ZUA/poFr0cDrfkPIJJ1cgxdXWQpbgVWzyD4K26dkyrUmezeDJWSiOf4U9xErVq20u90ZBi4pRvHN8JaKRQdwQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x8lIfY2B; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43161c0068bso30654065e9.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 06:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729516232; x=1730121032; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xYbCfssml+Vu66NamN6anRmgpqYBwgmPLsHuVShZzT0=;
        b=x8lIfY2Bz7hSEU6r/BgMHQ750kZNIRA+lP6bTCtkKGOTpl+RcuriD4sMVEAx1hRxvr
         KX0lP+6zoqviWFwSMHxl0eYkX1/4i4Tie0JMH2jmj1hvBxLePZnQ0THiWSTklMETPatJ
         xqVGXdZaMY6z068ThYNo4gc+xzhDquvwXnWRp+oKDOMNbh+8qkuKUnyubYtCKsPWuId1
         a8sc6bTpDKXl3/ksMhWlEJ5H+A43/6TQrohZ8meSp5ywkWLx3OyHcjm9j0bUPPCCLrvC
         IbhvbR7P2SFcj8i8QON8HBfkZllt96q7luD4pAmIUqrYj6axHDSWpcirn5KC+uunIxeX
         VhJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729516232; x=1730121032;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xYbCfssml+Vu66NamN6anRmgpqYBwgmPLsHuVShZzT0=;
        b=kspI/vjbfpIFm8NPi8unim77bkVrVUI5clYpi/8Ft9CZwsbsdCxvTosegbuoFg2TQn
         +T249263R3jTflr0KlIcDTppaUySQDYaTeVyriJ5yHVTdpac0nmjmD5KLgnOOI4TtHbZ
         5ujuGDnmfZVnfccaMiBD4De9+k9RFHzqtGheAySPO44Z2rd72t+dBpdUnwwxqEud4JqT
         BEnFt3ux3w0N9GOB/w4EfgM9r/nQyHgr5aqbNO2+OKPFusM4K7RykBsJsySlTQCk+S4p
         Yg07FETEasougLFd3ghiWLjq30O4S7wmxuVFifeosDdrVrGgHXz3omnQ5uSEkJxW3KN1
         j2Tg==
X-Forwarded-Encrypted: i=1; AJvYcCUzRT9zFgzEphnnFAdgmeNQqETDC/REh5Wt7K1WPV8h/PqE1rLXT117pDEF5zplleiRgwWzTmc6riZo@vger.kernel.org
X-Gm-Message-State: AOJu0YweGgjaNifyJTnx6QU1RuRVS8R5FBE3T29dQR48Xvm+EgYMu1Gn
	H8NvHffGy/KoYHtVpGOoP5dqOgV3AfGy94yCxlAsXAuuyymZ+ExC/zdQRLf7IXQ=
X-Google-Smtp-Source: AGHT+IEkYfAg7B2wd/HLUSjMsGgkpRPQc8ZS96HCFk9HhQRU2OLSa9AkuW3QWYcBX+c1+hZNlRSGEg==
X-Received: by 2002:a05:600c:1c95:b0:431:6083:cd2a with SMTP id 5b1f17b1804b1-43161659c02mr97462325e9.15.1729516232387;
        Mon, 21 Oct 2024 06:10:32 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f57fbe8sm56677015e9.18.2024.10.21.06.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 06:10:32 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 21 Oct 2024 16:10:21 +0300
Subject: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v2-1-1b11a40baad1@linaro.org>
X-B4-Tracking: v=1; b=H4sIALxSFmcC/52NTQqDMBBGryJZd0omxmpd9R7FhT+jDtQkJiKKe
 PemHqHL9/Hx3iECeaYgyuQQnlYObE0EdUtEO9ZmIOAuslBSaZRYgBt3mFs7wTw5cC0T9LzBhlR
 IlBIGMnrT4CnQEqDHRmPzTLM8kyIqnaf4vnLvKvLIYbF+v+or/tY/QysCQp/pVD3yWnVd8fqwq
 b29Wz+I6jzPL39O9ZvpAAAA
X-Change-ID: 20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-f1b41b935750
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1929; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=w04B4+pdnZp7RHySWs5qTnwOJQqR6aB+TK5PLU9uqBY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnFlLBOKta7vfpFMzvXPZw/TYT8ZlGIupVgWT4k
 5qVaZMgZiiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZxZSwQAKCRAbX0TJAJUV
 VpAFEACiBRTxKvXnP2CGLo98QkHfqAue8u2DvOC3XEDkJCFJPEtUutbr0FL8vhEksljR1ljUIWs
 Ns1d86fiHeaKKs2587qL/qIVXcfbwVm89k340Z6yM65cFxPKC+3nms749BDbd/d6ByuCqlRg98s
 2bsTuiC7O4c64n5AMCfhZE+2YWy+rVgXPJhS4iR1aGBsBwnHVAqjTWwXiJd2F973KR+c7aKb7j/
 lz0YYgLc+kT/jXxkmNl/7fRWLGkOdsdmgCXFTLgdXGCr9MfdmAvmAEkjTm91yxk8M38/edprC31
 s/omCW70PLqMkj1dq67uMmXkSNSJnH8U0FRLAoIlnguSYsA3CML7ru3owudfDSsJ2GgN9kFbnZI
 BkMN47GSiJmn0naUFqqu16b0pAecQ4tHJZHqAdyOgJ9b16rBd23+VWPvSbqrtwxED7e3lOZFjop
 t67hEkj5GUUc+Om5TWtsSLAqExzzQw7Bxe1kUODl5VlZjXtPJweq53bVGYnR44A0wMSnEWwEKsT
 oGdZ8A+ZvDKlgRgTtW7mBqReqUXFD6wurhtYojFPZkKLhpvfFfC7U2aAjkEzgxCLo8bH28fFBeh
 WNPuJolHIuzpyatPbbtzh8wCD8tSbaJREfOq9/Zhy/pFKf000AdTKcklLd1Td9s2dWJENUQZXVW
 5A3beXTduDYxlwA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The PCIe 6a PHY is actually Gen4 4-lanes capable. So the gen4x4 compatible
describes it. But according to the schema, currently the gen4x4 compatible
doesn't require both PHY and PHY-nocsr resets, while the HW does. So fix
that by adding by adding the gen4x4 compatible alongside gen4x2 for the
resets description.

Fixes: 0c5f4d23f776 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202410182029.n2zPkuGx-lkp@intel.com/
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Picked up Krzysztof's R-b tag
- Re-worded commit message according to Johan's
  suggestion
- Link to v1: https://lore.kernel.org/r/20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index dcf4fa55fbba58e162e5c7bebd40170342039172..b5bb665503c86c79940031bcb58a36a833918a4e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -201,6 +201,7 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         resets:

---
base-commit: d61a00525464bfc5fe92c6ad713350988e492b88
change-id: 20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-f1b41b935750

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


