Return-Path: <devicetree+bounces-208135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F7CB319C9
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:38:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B7EB640A35
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8CD305E19;
	Fri, 22 Aug 2025 13:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="joFIIhie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C4E3054C7
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869597; cv=none; b=tRxQiTUCuWm/JFRv1I2y4YtQFvRJa4FVD4eo7dGjNQTxaUXgWSSh2wiab2XZSDHb56OvqfT+GLmk1Rrlb8CsH1kGmiSujIZHNsxbRJcIT4mJ22VHxiwwrLmV+9UN9ei41/YrF6m2kZ7Ul/FiUoRfa4SnZhoVykMGAIm5YsUX8YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869597; c=relaxed/simple;
	bh=wBmo3kbfIxIyD5dwKOQGVZ3JiT7ZOos1M4ntpCsT3Gk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YVXMT3OFmeXOKkhF8mmQGZ8hyPmaf4fTBLWhy8VadUU5MuY1DBtjB1FeAJ4e89DDivEajwcsKLQIv78ZOvb1RJHbSOQcH/AXNdNL/2+nfTw7aIyQq1fzIhGREdk2tE+7jS4XjFyxso8tdjE4wl/Mjrm9W4KMm9/6+V4jwOFgK8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=joFIIhie; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-61c297e8306so36512a12.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869593; x=1756474393; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BFHOC0io9g0o+2fapfpOBebq2bCjMy1h8J+xiMNdOIU=;
        b=joFIIhiei+t0Py+rmIrKmKhOsEQ6GSkd1ZZUvw/V4fKHVEi6wOctUySw8Ewf5e0E6M
         TuJGYPIXXzAetumVpFvKi/afvj/0ZVgaBNikuvPcxeOsuqAdEt4HRYC5LzYHU+fhv639
         scwj3yGFfUqgXQRkFU0+U5zOm1M4XGX+nPVydtx7kxRwa+y1++U88nd/ySGrwEBVsmTq
         v8pJ/na1EszVpAB1wi9719mLPvzHAWzHLc1AbpSIO7toC2xtAeZ6C8tro6d553Yql/OR
         L7yRyAODTDQP3dXnouaRPLTkBiR2GwvTu4tsMAFxTH8zR/40w5VrPhymGvj347twihZe
         evbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869593; x=1756474393;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BFHOC0io9g0o+2fapfpOBebq2bCjMy1h8J+xiMNdOIU=;
        b=F2kCxI500RmWYUX9S6nzNzv9phUwDvD02PKw+SJCXNSkfU7QznmnZp5k+bUbTnA7Au
         NCTAlMi9jYxOwL4+yMPmdXC57djuDtE0nPPOy9hwV5RxSEQS2k6CyWuMRyMO+TLZY7cf
         +60yQh8Rh+Vd0liH/e9FXl1hzgLOXIfOyI5iUvJ16ZNK0y6embq/t+rbvWYYOhGdchcw
         h1zVtXCLxtV47PTqJg92hYtnwkh2d0PrYGlRi3YCDGZvPBC698tz6z/tfOBj/EZqqvng
         l65haMEfKt63ZQc22v6su8EGcu9pWNHHQmc8xNLGLR5iFQnoGzN/EU4Jhsnn2SI5L+ir
         Wk1w==
X-Forwarded-Encrypted: i=1; AJvYcCXJWRImDDuto3xJqKzoia+P5GQeUNNIUiaxmOpy2YR5Enf22kGRZzqv0hPFtCZkh5GHPrltHPZqMWfv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdz1MfX+phHld71SJKsYCFXswKnCMJ8ZCBDUqHCVFe7ApWsiUF
	2bOAPuQ+ec2a8HuGNRLYChujL50YEdjYF9eWiId7xuJNMHNDg/AewwQmaVEChtVfHnE=
X-Gm-Gg: ASbGncvUuGocr+mlzQs7r0mHHNmFjj4RkJZCquVlgJWhEKdNKxLDdCgpcHXkRS1ka1c
	vw757vAwSRNE1Pj/qisS2wHIa/QonNdYou9+Q/dmCfbuQ5EJmQ6f07d6RbjCTHK6n9QOIkIScaw
	t2zS+pQANQ/PPoyroWoQ11sw+cTgOWiJohoo3Wl5BmqHiYaPEyvFVYAJxDySwtAaTmd8d7J4DNs
	rJmBocPH+WILk6+GAwccERkY9zmlMm6bpBsmo/uWntdqDmOeaMUTVEuFRJD56K/VtVQ7wSJzU2r
	8ZRlG4SupXOReYGpcMItV5/jhw2DE5l8c0ximjF8r62ZDFQtidKU/HZNnd3HqVrP990LMmzxKI+
	B3ndNFxLRlG+wIGPJFym47xrvMQW4jfimog==
X-Google-Smtp-Source: AGHT+IF0Xwlv3Rrf/C03hmGVd0k/7kdYNfMsfW7Jcb6mh78D7QdfCpUt2d6qVO+BaDy74Ko7HCfWgg==
X-Received: by 2002:a05:6402:348e:b0:61c:22bc:b207 with SMTP id 4fb4d7f45d1cf-61c22bcb3c6mr799727a12.0.1755869593007;
        Fri, 22 Aug 2025 06:33:13 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a7577462esm6984160a12.36.2025.08.22.06.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:33:12 -0700 (PDT)
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
Subject: [PATCH] arm64: dts: ti: k3-j721s2: Add default PCI interrup controller address cells
Date: Fri, 22 Aug 2025 15:33:10 +0200
Message-ID: <20250822133309.312189-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1312; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=wBmo3kbfIxIyD5dwKOQGVZ3JiT7ZOos1M4ntpCsT3Gk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHGVWUdwHDptTGA7iZdCDsmkuIdKy3wqepGPC
 pE/eGTH/JqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxlQAKCRDBN2bmhouD
 1/MsD/wMWffWNAolAGwnNwVa1nFOJuOBrzvBM7+J2lxF14EKnnzhoffbj1ynFHes38QTRNQt9Fg
 5CqG5wh5hsDzK55ejAqrYcUH8VL59ukHeNR7ocJk9cDJaHHVU2hDRIo+vs/Htf2q8/kyAqqEvn6
 A+y49RYhdtbUUmh24+79Chh5xgG4UDwv2uI1xQ46fMe8ivN3CssmIpkDjjdv716gie0UwSRMqX6
 Z2ZFha/fSk1hD+wzBjxvC3uPnIwbnriOu0UbirFDNQKXGOlLAc4Qp6hm/gxCQHdISimMkeP+u3w
 foHEPu6pz3GfOGyf+2X0ZLrkBKw0B5hlUQoMSKuLlvrm146PI/AtZ3+z27uN6Ov60UP2Dd3ALT1
 ILNAs1tcps4nejlvC5D44+2a+7RbWO2Ki2vzQX3rWJZ7dlxkQ9rW75Em9COPW8w2y+nQ9X3etQZ
 SBrwiW4LtsRyn1VOlt3gvY/teUb8t45zbaM0CXpzp+hXQBX7xwg9KEeiQJJ/R9fiMcwHp1GTZHW
 LtlDALgoFxqR8RLEiJfSeVUjsTpWgg7ZtZSxSLh1NsMDLqbUslj4BZbiUBT8IUxG4P7WLSNLFa7
 ociB55Pln/NEiDm6pbHMRUAViGnfW0KbmIJ+Gu6uhX7rtk2qd/J5iJZIBeJ3eDQ5r6x85eAgVur 8yKAxa/NzFEgsdg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to the PCI interrupt node to silence W=1
warning:

  k3-j721s2-main.dtsi:1431.3-1434.29: Warning (interrupt_map): /bus@100000/pcie@2910000:interrupt-map:
    Missing property '#address-cells' in node /bus@100000/pcie@2910000/interrupt-controller, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
index 726374dc8795..0ad752975acd 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
@@ -1437,6 +1437,7 @@ pcie1_rc: pcie@2910000 {
 
 		pcie1_intc: interrupt-controller {
 			interrupt-controller;
+			#address-cells = <0>;
 			#interrupt-cells = <1>;
 			interrupt-parent = <&gic500>;
 			interrupts = <GIC_SPI 324 IRQ_TYPE_EDGE_RISING>;
-- 
2.48.1


