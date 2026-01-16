Return-Path: <devicetree+bounces-256088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D32D31ACC
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8734730263FA
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8327C2690C0;
	Fri, 16 Jan 2026 13:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="T+o61sVb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA8724886A
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768569449; cv=none; b=LJb7EhyUMta5lN3Ca3NUDZVI0eeQON4+1dv0WlCXtGbKHDpm1wNVgXZftB/ErLJrwKM82TvDkGkC1ylYj0d7zd6cS9mBrET2is0AKyKTzAD/rKXCd1STffGSfEHXX1ugvlUfPggSM0yHYhpYzD+iJUTinPu2Bv79lS8pMTdU+Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768569449; c=relaxed/simple;
	bh=RFosUcjwMh27o+Q0KFX/mCWwbK9ioGqTrDSRkowE9Gc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H3u8vwcB3by08Nc+mRUHtz/1bCyKqSOcJWurAhMY0VPV8j+1/zkxk0b0zFoXj7cwR55XS2GcxPkEMyEPnse8uwgd9er/ApI954IagqgTeSIRQg2cYq0QrKZDUwvgP1k4P5WRAqWTMEoDYFkbn9B/+Ze8BM1U8BpcMn5E5+edVRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=T+o61sVb; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b872cf905d3so335599766b.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 05:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768569446; x=1769174246; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wcR1dmGQ0EElYWldmNS71m4JZ3C7rndmOwBL8aoBqb8=;
        b=T+o61sVbhnn6bIlhuZLu1xPXtQuo7Zgxn5V4NGuWt+DLSSWVRdwFdR310OwQ1ow2PM
         XANcXOm3h+RcOCLupWMZZsqijD5HCN77RoC1k3j0THCKzBaWuUEvdtrkgNMdyP+OjL77
         JLmwD/qtKTFyMmjDwjbPLCjsve4XV0kUgPKvXwqBgPsmgmkphct6BzNzZin2tRvD2fo6
         sYmwY3tjwujcfZ/LpypN5qFJ8ib46Clqa/pdj31jcb6LJO0dfU9VSusbL3mBehZG6F7j
         3VZne8gDet1U1TXj7+X3vruzKOgY4CETPTedN3wBD/8b4nPSaU+EWLxZAEsLCek82DE3
         Hi1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768569446; x=1769174246;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wcR1dmGQ0EElYWldmNS71m4JZ3C7rndmOwBL8aoBqb8=;
        b=VbURlxzRa49Grenbz3coKjpc0KkL+AYUO25TIZt7hNIaLDr1zuNELKnkYWU732Zfdz
         Hwx3Cp5v4PcarSoKVlIn45v+RbdrGjT2QQaUVb0T7/YBNW0srfBC9m96gCOTx2Rdv+Rx
         pQ8HO95iyktKk09lBRDjbQ7gmcJO9MQdgTV+FLrhRWx1ntzqetOvwGO+jfTENI/NxuR7
         9n6SXXqrEzkt0znSQ1fdC2IC38ZapgaOSg151+n7CZ9YoflRn8ZLDpmDnVAUeoZ8/mIb
         yKaXHtHkI3QL9qp0uBMfxf/gm1xsIm/2kx1sgZPY6KC1gDMNOhOZ5PGqQ0GXyCmUkMyC
         P4Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUNXyU8fhMe5zIz6DVY7Yr+lJz/EMh9wznvAJIpJrpxWKksTsZz24Xb36OTgBvplj2MANp8UGpzvVj5@vger.kernel.org
X-Gm-Message-State: AOJu0YwQq19GQUG16wkJ5cG5+lOcq7wKG19gG/E+PrnXy1i+ETpnTaAJ
	Cwu5ARMNqkJZOjQ6YGvlTQmSv8nI1S/jHm/PYOzE2A7xlkY6MoNDlY4tBhKPToM2Tco=
X-Gm-Gg: AY/fxX4YBIPpwrRbO4aonF3mZ47171fe6gaGIR7ttcg4sO2dsiX+6IS3BKSGEu+sme6
	6d3cu/557/cMebrhLux61/2ipxgYUhISeTqyhRxJv89JYZicu+ffa1gmXBXb96UCmwDHJOaPhJW
	cw6aw9G2K9pJJcDf0o6Qabj0Fcze+CVT9li7jEZEUteRtkXKwhcYI1ndAXayVszPZGpk6sMf+/3
	v1yp8rXSlespeuQ+LkJK/MHdL9gxPOhMd1mVWHJga/Ql0kmPAqW5tUozSGCyrJF3mhCMrTP9eaq
	Djq48t6b6LmSglLNDmatIHzQi//8yJ/xKcUn5xFMhLAJmulCID9F3EmmgWFdLBa/DAVekI/vXc4
	yy3D1i302Paimiz5cN7L7NaEUWxy3eZhdILPxY2vr6IYZYtUPAwu3bUNtpDZDOLLAv74EvfpmTL
	JMQaNHP8LTz9bKpjtuQsB+grR7RoupU+Vw2wZB6tnBJdnAJ1MaDUHvQjQ46PLJq5x6
X-Received: by 2002:a17:907:6ea3:b0:b7c:fe7c:e383 with SMTP id a640c23a62f3a-b87968e56f3mr211104066b.22.1768569445696;
        Fri, 16 Jan 2026 05:17:25 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a350dbsm235507366b.69.2026.01.16.05.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 05:17:25 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 16 Jan 2026 14:17:21 +0100
Subject: [PATCH 2/5] dt-bindings: clock: qcom,milos-camcc: Document
 interconnect path
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-milos-camcc-icc-v1-2-400b7fcd156a@fairphone.com>
References: <20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com>
In-Reply-To: <20260116-milos-camcc-icc-v1-0-400b7fcd156a@fairphone.com>
To: Georgi Djakov <djakov@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768569443; l=1598;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=RFosUcjwMh27o+Q0KFX/mCWwbK9ioGqTrDSRkowE9Gc=;
 b=F3TPfwyBjFhqKF+HInQg1A97Mf+OjLhk6olL+d0GTCGtvDhv0vHvyzaFIZ0sGqrZJTnArQl1p
 Qj4XSnuvOF/Ast/91GKxv4KyvwPnFE8nsTermX1yRcoTl4vnkMG8kVf
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document an interconnect path for camcc that's required to enable
the CAMSS_TOP_GDSC power domain.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
index f63149ecf3e1..707b25d2c11e 100644
--- a/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,milos-camcc.yaml
@@ -25,6 +25,10 @@ properties:
       - description: Sleep clock source
       - description: Camera AHB clock from GCC
 
+  interconnects:
+    items:
+      - description: Interconnect path to enable the MultiMedia NoC
+
 required:
   - compatible
   - clocks
@@ -37,12 +41,16 @@ unevaluatedProperties: false
 examples:
   - |
     #include <dt-bindings/clock/qcom,milos-gcc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,milos-rpmh.h>
     clock-controller@adb0000 {
         compatible = "qcom,milos-camcc";
         reg = <0x0adb0000 0x40000>;
         clocks = <&bi_tcxo_div2>,
                  <&sleep_clk>,
                  <&gcc GCC_CAMERA_AHB_CLK>;
+        interconnects = <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+                         &mmss_noc SLAVE_MNOC_HF_MEM_NOC QCOM_ICC_TAG_ALWAYS>;
         #clock-cells = <1>;
         #reset-cells = <1>;
         #power-domain-cells = <1>;

-- 
2.52.0


