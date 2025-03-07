Return-Path: <devicetree+bounces-155292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A96FAA56259
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2138F1897675
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 683761C8637;
	Fri,  7 Mar 2025 08:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XVkrws6x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2631AF4C1
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 08:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741335216; cv=none; b=IW5bYtvyFj3RJtTgBUtKv77Akxd1Qn0xr3HJf0xSoYfit0DSUgCATpps/XmiFhoSC7M5M24q4sr1f8SILRIeh+8e5njUp5KNLn9KdeteCAGZTIfdgjYZ0z268XyNI7d0pPtr2kx/+1cNBBchjb9qwDvfKcK1JvypPP1iYb+CRAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741335216; c=relaxed/simple;
	bh=MjZEevqiXfdNqsDpkVbJ0/fl8DI8+0lh0TkKwbfW+TE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=P2IiWHZP993P5kugybswZ3UBRumudelu5+KBnRaDigzeciz2HNKus8hntf7OT0Fi0qeLwn8BdpGGjTM+B2Rv6usQEoayEmsZF/fIaELLbUa4yurcRe2/3X1Sp7VCetb14xaVDXUFLN2Wh5ecs4Tamflx/5i7IZvOS6hh9gg93bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XVkrws6x; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43bca569b3bso1390565e9.0
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 00:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741335211; x=1741940011; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wUYIRYSwBjJMKoZRkRVso+9oPdhRUH9hUs2kQff1NnU=;
        b=XVkrws6xq2l70HPihBZ4yRT90f5RMCTFlU212hKTEYTOQMjaybcJVF+n2jMPgOwnVN
         KekmQcxI6IcHtZ8RJbK+XjIHX7dgIXBub2ja7uGafDSs49M+WEUEuJUQlWvOWMEU3tXM
         VcT1qzmbtU7/X5oBqbgwfyWJZjGetFdWFdvQxiG84hq2ZRldCYmQ871stwYOXteERVFT
         YBBlQxtSAJ20o9urNIFEVCReMY2q0rTG8DS2w20khguNZP9mjkJ/mfZmF+4mtIUg3YOS
         O7UitwOga3A5GJb+wkog2QDBS0oDl96dUxkU9CHlMH0Zxe6ffGAa+hO+ODRmP9+hQtEu
         qA5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741335211; x=1741940011;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wUYIRYSwBjJMKoZRkRVso+9oPdhRUH9hUs2kQff1NnU=;
        b=nVWaU0E1d8xBtMoZcAL3SU2zLHYuEEm9FfoWmcH16BJINO6BWlXykhqjHMY72PZVlh
         eEdu0E55H1cCJj1vfORCdbjRl3EhX26gg9A76XkFiDMUOG6Qk/z8ZRhbhCQjlwd/sRuU
         7TkDAsqRtqPSlpJvyA8hZte8tMXNVBLGMeAk+kbpz4CMFFSmNUCjeGr7SMYIKrI5bIsr
         wwQKEjckrtnhWTuQnxf1G5Lcs6H1lveBCCw5+WlTHnAUq57aZi4PKrcK/RgbxRoMWKir
         2bkcUsPyutnra02ydMr6Jtz/DSi0vTnFRlX92qolCwJ5EOE18z/Gaeidr7SUgYHl1Yty
         NDKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYYwtaDbYrFrDnqUDDoqaj5s6p65DdAGp1tJEXUA2akrYe+rKHH/3XPdn49pIPybrStPaPpQgCn5eA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+yTgYe/BJHD+i36MWVCeDig5Ux7q/gDXcRJAmoz0iJamMspoA
	yZYeVbocSrMJyY99sbieLMrycMazZmFszViRAzXE+4pk0lBlhQavK+ECc09iixQ=
X-Gm-Gg: ASbGnctUhXgbOjR2zO9nkzt1pX/X0tbolBFYY1oSqPdqEsqKdJK/hmDiVz2BPGkJLzZ
	6MJHb8/GA6OKuwED5okje20ahBzq8cn/AH0aKqcScgmfwFGfuXysCY5A/YEUzcZXWimoEmFh5DE
	Z+AZ0iTBFahZrn8Qs+qLkzwZi+FG+iqdsRa+GhrC3OxhSDbjTlrdk6aET+mtRrgcS3lYu1OosL+
	BIr9k71zKNTp89Alkxb8DZHMZPIzGp9wD6BNPh2RnJ0fafeZR7Mw5tplv4kUgmqk76PYigEkcb9
	gWIHmMU0e6Ul3GepPgF5E1vse+hZF0q6SGKooIKVygwtDREdGnSBLpFz244=
X-Google-Smtp-Source: AGHT+IFaPYdf2o5TRCCDsHV0LA6cr7wepSimT5aEWBj/BKjySqhoj9YUXPHRsLE3AOXGgp+AlWB6vQ==
X-Received: by 2002:a5d:5f8c:0:b0:391:3110:dfc5 with SMTP id ffacd0b85a97d-39132d30ba6mr243383f8f.3.1741335211559;
        Fri, 07 Mar 2025 00:13:31 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c0e222dsm4575458f8f.72.2025.03.07.00.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 00:13:31 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: PCI: fsl,layerscape-pcie-ep: Drop deprecated windows
Date: Fri,  7 Mar 2025 09:13:26 +0100
Message-ID: <20250307081327.35153-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The example DTS uses 'num-ib-windows' and 'num-ob-windows' properties
but these are not defined in the binding.  Binding also does not
reference snps,dw-pcie-common.yaml, probably because it is quite
different even though the device is based on Synopsys controller.

The properties are actually deprecated, so simply drop them from the
example.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml         | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml
index 399efa7364c9..1fdc899e7292 100644
--- a/Documentation/devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/fsl,layerscape-pcie-ep.yaml
@@ -94,8 +94,6 @@ examples:
         reg-names = "regs", "addr_space";
         interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>; /* PME interrupt */
         interrupt-names = "pme";
-        num-ib-windows = <6>;
-        num-ob-windows = <8>;
         status = "disabled";
       };
     };
-- 
2.43.0


