Return-Path: <devicetree+bounces-189416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB87AE7C7A
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:23:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC6BF7B4BB0
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C96C02E11D1;
	Wed, 25 Jun 2025 09:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="y/cSamu/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84DB2E0B6D
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842911; cv=none; b=QgbBB9rgQxSMTFIXUKNe4HEBNbhl9XJFKrJDLSN+ubrCQMjGDm+F+Q1odYE1Rv2I5r4opnBbjdUpO/tHWQ54l00oCPCghkovBe1ouNtZXETjyMc/jfffRr9W65STH6+Nhw854FUIWKuGF6CWV79GhWLpP3G4iswN5PqEwsJ8l4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842911; c=relaxed/simple;
	bh=aHm0Jgy1AJtO2/QKW2dbDq0Za7rk572Z5sUBzOZUKws=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MFGRbskfnT63xxw+jZOL7j8Bkd2xJdXeLLwkraI3d03p08b5HRd+tOsyILviPaMEFTmJgyZLLTtMGX6c/bZqiuHMOZxBmvmaLCWSKGMMmNy+ijqtOSdEtIHGqSZbXqK3/olDy9tDJnNr4fEPV8EhXpx3pBIneMktsX0APzShkUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=y/cSamu/; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ade5a0442dfso242909966b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842908; x=1751447708; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BNbmjsRfs+5MKtBz+Hc1str0LQgPAk3FDVI40gqDF30=;
        b=y/cSamu/KYUC/mwBldPIZMs/t7e/8VV7CjxIT56XLZCPuLx4l7ZAR8dPazZU4xKJF+
         85IhiRlT/K35/RPILhkdJw24hOt647U4fHLQz7dIVOGpo8NIHzIOnboyQFhBTANZ2smP
         MwaPb6beqCWKh2ws5S2OtUYOEIBOmzh03q/pZ0XqRhVrbdPdc41DeUzJ4QFbyMQCvlrS
         knxutuKPrGB9ZL61hWRxRuk/Ih6c1nhjvYVuJWIHL8fUsKU/4OZM9E0tVxFLC9QeHY8q
         ra2XiU6n6WXReyxZdK8FUT1fSkr+ZV5V4yEAUDllDjyuq9XJAyUpyBGxkqzW9OLyjzco
         5zWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842908; x=1751447708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BNbmjsRfs+5MKtBz+Hc1str0LQgPAk3FDVI40gqDF30=;
        b=XdO6R60og066ATAmJrVF1AJEaUs3Jm1RbBTydf7qaoQPNjxKEA4QOEbhveTug5R2Kw
         YLAAc2s8hCy7K4xnisBk+ku5i4sP1jGK/JAexJiMOp8IMlQXMR71PbCRwIG2MvVyJjAr
         8qNMcCtrRIIPLCRTEorOSENkHbIM0MShn4CffkRaPCOGVtw/FYtldo7HC/ddbCl8tpfZ
         mmZdKy0mWH1Rd59lTH3hjXgoMhuMUe6k4IGlIKlVAxz0I8/2mys3VNrlqIg1uaIJeHlH
         IrVhJTe9uO0Wzpu6h6ldWv/ikpUkXsTatyGbfmvaKCJZIqO6T3d1d3c2iZHi/DXBNMN7
         sWLQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/90qskhYnW0kftUc0iKlnmdJURHPdyItIGKvQtfuZZIyCqavn5Cq8omZOoY/gfq975U5WpZv7gjY2@vger.kernel.org
X-Gm-Message-State: AOJu0YwerjLq9d+D/MLg7EyR69hIS01CEGsUtL1dGENT1wd6lLsB8wU+
	WG3QR49RiZvvjbh8fwtnMy2f/qaiogBMaySpHx2+FcOabPLB2j+TANgz8x/M+5ySNLDLTa7NceK
	2PTTV
X-Gm-Gg: ASbGncv2u6XJ3VxUQJFwUN2Yk4bMxX67NyZ4FKI2HOM1/2tgBkuK9ujlVMeKevr/PfW
	/kNxYu46AJIciCyUBQT9U0ByHnJD1Sg77T7O9TU5UUMHBmrtqAsT9mNwYQ69bhUV0BxcxexJZq1
	JzuMy6+ArSwakURkqYj+maKDifzG7ku/8u0fmwWqf8dPNcp0GJkYPUelOQkEYwxvqnK6fQN2u1g
	uoe0FlXnFSdfpL7gMaYS12u76y8OfRHX8oHZ10UPmkj8AGaC/9m89WuNUpGo8p+REf/S7b3IQjo
	Ag7MAL0nHRYMboYvbjPtc06wFkbCkDfeHA+LBCKbYf4jKJVu6HvYYVepxFEl5eB8NrO9F9R9cdx
	RC/16ZTI4b44GoKIjU7347zIxggxL9ktX
X-Google-Smtp-Source: AGHT+IG57CJz1isUSxtWVBBEYQRRLDGKKU4vhjDr8x5m4ljvRrFsAIMJQ9U4pd0h5IliaKEAweVcYw==
X-Received: by 2002:a17:907:9085:b0:adb:41e4:8c73 with SMTP id a640c23a62f3a-ae0bf216613mr160528566b.55.1750842908235;
        Wed, 25 Jun 2025 02:15:08 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm1008972266b.71.2025.06.25.02.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:07 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:58 +0200
Subject: [PATCH 3/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for PMIV0104
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-eusb-repeater-v1-3-19d85541eb4c@fairphone.com>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842904; l=892;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=aHm0Jgy1AJtO2/QKW2dbDq0Za7rk572Z5sUBzOZUKws=;
 b=VoHPW5DMLvNPMM6DDkiYwX+LlqHDBFUGbIVQ1Nh8rd4tWymfU9M9U6C73Yan+YQLqkLap3kKf
 I7X99swY3UvB8Zq+wjtFZbCPYxBkueCtQoSzMtpo3vM+aIUkFEJTORx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add a dt-bindings compatible string for the Qualcomm's PMIV0104 PMIC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 6bfd11657e2992735998063b3ca390e04a03930d..5bf0d6c9c0256300d00f84307b7f6ccf669f17c4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -22,6 +22,7 @@ properties:
           - const: qcom,pm8550b-eusb2-repeater
       - enum:
           - qcom,pm8550b-eusb2-repeater
+          - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
 
   reg:

-- 
2.50.0


