Return-Path: <devicetree+bounces-36329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6ED8408C9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB283B25163
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A2EB152E17;
	Mon, 29 Jan 2024 14:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Re1GEOyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA261487DA
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 14:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706539298; cv=none; b=FoorKxGU7ZuQ5MSJt0B/gZGMShZnZAOgavMqWZ7nm6PUUdM8Vqmo+WuvkXfkHlvgyf95LWZF+MAXRbZx6Lj8gMfIeGnXuYqCZrSEcjP6RWTRo9nD1R7/EXLu6QBXGmsQ/UbCCg69vanyMXX1C72PKR/ArbgFdpa6HOBaSpc8tcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706539298; c=relaxed/simple;
	bh=sa4E+CoKAN/LlXCOMcKVwg7cxW2KNFDdu3uPIropwl8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yq346zVP0xt/6JUuj+5ml9iAf4O1DyfCt89N2NCIoaFMAqWKC4S4x0D7g6U2vKcPwysGUlwSyOppxx2r7FDk1NBDi04DWubRjDpl7ERSlk9E+G3dzCAlG8iHU+h6uFLPD5b0yGYxyQ0IKY8MIuFjZdnLrKFwJ9cJzShyxiyDxAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Re1GEOyx; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-554fe147ddeso2851094a12.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 06:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706539295; x=1707144095; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J4SJ32iyQg/UWstplGgnSu+pyJqIEZM8JZ0B98PjYHE=;
        b=Re1GEOyxko+XS0VkzNXzgyf0HMlEdewBEwo3Ap82DII7TvprMWTud38q9RVUPEgJw2
         BlM/C1UfM0OQ7ZuRG6GZyj5NbPsYwBZVfVCHTUa/Sl/jCQh673hOiMfzkq5JZuFyTy+R
         V0TsKr3AsPwaahrqyzqW4tkHoO1Duk/hxJ9M5zlehFeW64alBMDK8TEqiLIZS8KsiarP
         cEBKwTgRKFss8hxf7ghYgP4z+gT0Ar40R18D+AFctEJZSqX2Q+NR7plQiol4lYW1MEOU
         9Mmist+h889fcUSr2s79H2TsT+ap3YIvKUmP+dij80vJPciRxp3moD9pr5PhLAq7CYXV
         fmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706539295; x=1707144095;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J4SJ32iyQg/UWstplGgnSu+pyJqIEZM8JZ0B98PjYHE=;
        b=dQDwJe2cOcSrxsXW0wQFUbm15gbcCZWI+tct0bR9eZYoK5JQIr4Kb8PdR4PyNDPZkm
         oE5JAbM5bJyCbMvUbLmCQNyCaegDYY8SZE1+5fG2r9H3Mz/zPg4VnjUHQ3ZOzmd0wRk9
         xkqHg2LHxLzETcG7SedS+q6DapO02VcyPES2Dk/zg3Os6l5Apw+OTMph7sO9xFjbGC+4
         aLL7Xx4KkftTc+LgjeRSThG/YWNDChqrbrlLNVc7YzFz0NeDFNczZME9IAUY58tJNayE
         2fB2SNURjHbOOD3ttqmJ/t5ndrgHHtDgAUglby53kogtjli3esv8Foa73AiEL2kuHgF/
         XFMQ==
X-Gm-Message-State: AOJu0Yxul/qbGPDvnwvKMDDuxCOgllTLLF131dFCb1KPrafYZKHqHIDN
	O8Alu3UZGRsBgBXQ3uDxkMORqJFCu/GS2r5oVFWWSoX+RmUTNVVsXGXyc8XUeEo=
X-Google-Smtp-Source: AGHT+IEPmOiDA6y7lJkCU+lpEhuJ7/jiiO5Ptg3n3359VmRB4K4UI/OhLckGVzkocnLAWcVuyxT4NA==
X-Received: by 2002:a05:6402:2709:b0:55a:58b7:ff99 with SMTP id y9-20020a056402270900b0055a58b7ff99mr4972688edd.28.1706539294938;
        Mon, 29 Jan 2024 06:41:34 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id em2-20020a056402364200b0055ec051ab49sm2548415edb.6.2024.01.29.06.41.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 06:41:34 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 16:41:19 +0200
Subject: [PATCH RESEND v2 1/2] dt-bindings: PCI: qcom: Document the
 X1E80100 PCIe Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-x1e80100-pci-v2-1-5751ab805483@linaro.org>
References: <20240129-x1e80100-pci-v2-0-5751ab805483@linaro.org>
In-Reply-To: <20240129-x1e80100-pci-v2-0-5751ab805483@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2268; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=sa4E+CoKAN/LlXCOMcKVwg7cxW2KNFDdu3uPIropwl8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlt7ka48SqgS4xk7S2zDXO3oXieCPjvGn4bjT45
 HDu25tYG9eJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbe5GgAKCRAbX0TJAJUV
 VultEADD+48uozfRL2li4h3LKm7wDAMxW/hBhYZGu8MgWA1mz2dRVyR6p6NtHIPYgkIzHibfjeg
 zL4OB/9jPIZvp4qraLqJLpBd356jW4Gc2BCkjZViFLrZWAE+l0vTClb0nPg6toN/PfWm9i9huIx
 lIIoxemclkwiC5CBHv2dDlwrH4U5DOK6lrhTsS/9RWO6/7uTVfSQY3d8SyVjQfXx84Ik7qrxclq
 6oPdbRTCQ/F0tV7IpWIXTgZwfCXqX+pcafWGv42Zb79TMmpioczzlIjPZsnSN3ClaVvoPHIc+tl
 xb7IugiJRpszWREfnXr6ImghMZMTtQ7QfqaFRkA8Mpmhxykut/Hk+WhIaw+Z8fxw25KR7eJJ/0w
 PW9aENi1zN82MXRjEavtHHKpzrO4qkeA6ddE4y7UO6ohTNsSVPl7S/mTwQityy+Z/VzJ6YriJdE
 876DjWARvG60k3rt+0TX/z1XAC0eoWvK3R62QBiFfXrwLAL/yOEa8QbEtDzF/2KR3e5GrNr5QTe
 gAZQ2qhBJexc+xjLmuDWEh9m2uVn7ve7xNCP0vv3ZZAipD8Y45Cc1gF7TgrWahGJO7V28y5xX3W
 re73Au7FFHBkG7V5My6HvXLXkgTBj3feDMPfDNsrcGtifn/MM2FxpFYTaWs97Ee4ophO91czBzn
 7th+iMjsbhXnSmg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the PCIe Controllers on the X1E80100 platform. They are similar
to the ones found on SM8550, but they don't have SF QTB clock.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml         | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index a93ab3b54066..7381e38b7398 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -41,6 +41,7 @@ properties:
           - qcom,pcie-sm8450-pcie0
           - qcom,pcie-sm8450-pcie1
           - qcom,pcie-sm8550
+          - qcom,pcie-x1e80100
       - items:
           - enum:
               - qcom,pcie-sm8650
@@ -227,6 +228,7 @@ allOf:
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
               - qcom,pcie-sm8550
+              - qcom,pcie-x1e80100
     then:
       properties:
         reg:
@@ -826,6 +828,32 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-x1e80100
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: aux # Auxiliary clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
+            - const: slave_q2a # Slave Q2A clock
+            - const: noc_aggr # Aggre NoC PCIe AXI clock
+            - const: cnoc_sf_axi # Config NoC PCIe1 AXI clock
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+            - const: link_down # PCIe link down reset
+
   - if:
       properties:
         compatible:
@@ -884,6 +912,7 @@ allOf:
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
               - qcom,pcie-sm8550
+              - qcom,pcie-x1e80100
     then:
       oneOf:
         - properties:

-- 
2.34.1


