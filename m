Return-Path: <devicetree+bounces-80707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D363991A3DB
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:33:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8798C2855AC
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD0F1420B6;
	Thu, 27 Jun 2024 10:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qw7zCrqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A7913E41D
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 10:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719484363; cv=none; b=kIzprl0prOsMSHB9nunKPA2pp9SPYhBodGh9HF5OQBAvMiyNdgRuzzIee866y8W2OfuhkGDuQFNGm7vRlZkonsfPPrhVJRNqXI9XB1msS0nNYbLnYlbGPmCILSo2QOkvjeR5xy4J3CkaCPWpHLERQ5pyAoIeDbnF3Pw+rEsyWo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719484363; c=relaxed/simple;
	bh=GpB46U0rTX768acpnwCp30n8vR+PPYQrOeVuFcF/H/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CcDaqV8tODJ2zjZNOPlFZBGw8nDM4GWCuoVn5jsZhS3RBtRwIQhGdnDCWkx3yUxo86c0J0PrsaVgVUuLL915rdY3BIfTcGwdfzJzkCNiyCfWnBAwDJ0GiG7dNI0AuwvjBaMdd12HiClv4lswUwafeIOXaknPMBZDL4bspUYlThE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qw7zCrqk; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3627ef1fc07so5606235f8f.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 03:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719484360; x=1720089160; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lyyT2YLj7brwLoXsAS7A6EY+f9NU6Kl4lWR4a3U/7uY=;
        b=Qw7zCrqkr/SD//Z3vN//8XDj5NnIxFQUU3LMnPBX78gXWiW7W/SLHHKOaVYhXLsfSd
         RIl85eYh6FTAHJlirM02Hbh8WpIt0XtP/1rPW92RqCc13dnULfC23utI0eRBx9HXvMPr
         dZFHBdBc9pgvPLHQ3PpvDHtADDX/TO3zveobA38GbtVXQOkt0xgNohcpj3zoNemhoUZG
         xB+el9j/AxAfo+f4bY7OT8CIManJ8uNJtnnbJ9AudUmrdxROIX0JxTsvKtDu94IfuDb5
         KHpVbo8fIsGggs7ilBnG5a7vvjT6VYfsCpHQGuDj1dX+gJnkp+SQ4nLFUImyVmSnZxFZ
         Yyww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719484360; x=1720089160;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lyyT2YLj7brwLoXsAS7A6EY+f9NU6Kl4lWR4a3U/7uY=;
        b=ChZooYI5/TFr4FtaiiKwOx0P+j775qCbkaZGKqnLRHCRXWrJN0P+lG10QxlIxzaCGK
         zOxfKE3uL6W/Cu6xVEDncCb74URe7swYX0SGIMpcvsK5obAuymmPEmmhOZuJHrS1KtDg
         a7N5cnt69ioI0Qo1wxr3ws6g4GiJGR9H3K9ovlSQ+lipICzHcLssZI1146fqZcVHHP50
         CqG6rmHnNjvEumg79Geg1/IcdNjx8zhNh8XCt1HZgmEHWS55N536LkVLeAu8jSK24cFY
         op5uoxfYDHYomUMGoIAPIxu6AaShuMQ5HJrLxA50mEmo4/S5T4BrAYbFeh/EuRrETiAB
         g7yA==
X-Forwarded-Encrypted: i=1; AJvYcCUhlPros4Jmt6BmguYA1y5FfTDLvhmziT2/oJbccqFiMrb2fD9pvZ10c4Hes1+2IDD7KgHRkH+M3vJ+yh/K4HyS7F1NuWwEEvryUQ==
X-Gm-Message-State: AOJu0YwIP5j4yBW8JvoQfWDPM+GI1iVB8OS1p3WYXV+TuwSeQfDDsdBl
	RyX4qDN2G6vxKIR63Yn32ZUsfoBBdeLxfPPX6v88Slff15xW0Qmd85mTzwh5oIs=
X-Google-Smtp-Source: AGHT+IFf6o0GrwG79hGkKV8BpMA+VgRIYka7BL6S10ENM3UTqNVZUG1ifMp9bXGVi+65SzGW46BiXA==
X-Received: by 2002:a5d:6c6c:0:b0:366:eb00:9dde with SMTP id ffacd0b85a97d-366eb009e9fmr10140507f8f.1.1719484359946;
        Thu, 27 Jun 2024 03:32:39 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367435852afsm1384352f8f.53.2024.06.27.03.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 03:32:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 27 Jun 2024 12:32:18 +0200
Subject: [PATCH v4 2/7] dt-bindings: soc: sprd: sc9863a-glbregs: Document
 SC9863A syscon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240627-dt-bindings-mfd-syscon-split-v4-2-dc6699a9f3e4@linaro.org>
References: <20240627-dt-bindings-mfd-syscon-split-v4-0-dc6699a9f3e4@linaro.org>
In-Reply-To: <20240627-dt-bindings-mfd-syscon-split-v4-0-dc6699a9f3e4@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1955;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=GpB46U0rTX768acpnwCp30n8vR+PPYQrOeVuFcF/H/I=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmfT+7urnyUm67uS05xuiWGT99fvgpqym5iM2tn
 AtPDzdq1T2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZn0/uwAKCRDBN2bmhouD
 14HgD/9hZ5Rm28PSoSHukbEojyjJCkKSW8278sh5Ambb3G5hXkmasRs6lrutbdJ+/I9rLkdX+Hh
 BHl5djEG5ae5Xsk8HtctIzyuAmti7NeEqrEnWgXMj6gPfmUqRzBNGkm2Z13Dx43m+/ZKGScUtXg
 m7wE3ZrmGsJkNGoC6Q39uI/u5xYK8v0Li8DE6EwyU8E48foO32DET2jpQocvqccPb9ax7NSkAAk
 o4ykewTkU8eOBnJ1LA7bOd7nSehxpeOTqutu6/jnzJB8RmFGHC0bgVAozQFMIqHWf3VgILcK4ly
 J7K4gOzyuIdR6swq7NJOjn/IrlwuJWmTa9h/7OVhthnIWgDvexFvGIBoGeSvHadBDstHtX019Vz
 kr+4a+vuSkEuJjYdSN7v+bUvB6c4tHV2xhg8+9hdWFr7uqSwRaLTBXFlabroIqU/1+OxYaGy71N
 R1xuPwJFwt8IIH5GSj3uNhlWGmyJWceWn1KxbG7CGqdsuxJYm3oJgjUjp5ix1hKj8BzSh/KdSkd
 PaFQtR+8wxcQ7pj+3r3aM8TpE4+qhkg7t8laAtkTVUb3O17dvIF1nMZXWcQpdaZx+dJ+1OvOwg3
 XAlZ46/c1XCw0VqUWLrGdWYHFkhN5Jmpb2iKWze8qIsGCC16KYONtmA5GwC1PAhxgJVyd/r0ota
 TcDsu6yq5unuZ5A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Document sprd,sc9863a-glbregs compatible already used in DTS and other
bindings example.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Baolin Wang <baolin.wang@linux.alibaba.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/sprd/sprd,sc9863a-glbregs.yaml    | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml b/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml
new file mode 100644
index 000000000000..49add564e5e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/sprd/sprd,sc9863a-glbregs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SC9863A Syscon
+
+maintainers:
+  - Orson Zhai <orsonzhai@gmail.com>
+  - Baolin Wang <baolin.wang7@gmail.com>
+  - Chunyan Zhang <zhang.lyra@gmail.com>
+
+properties:
+  compatible:
+    items:
+      - const: sprd,sc9863a-glbregs
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "@[0-9a-f]+$":
+    $ref: /schemas/clock/sprd,sc9863a-clk.yaml
+    description: Clock controllers
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@20e00000 {
+      compatible = "sprd,sc9863a-glbregs", "syscon", "simple-mfd";
+      reg = <0x20e00000 0x4000>;
+      ranges = <0 0x20e00000 0x4000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      apahb_gate: apahb-gate@0 {
+        compatible = "sprd,sc9863a-apahb-gate";
+        reg = <0x0 0x1020>;
+        #clock-cells = <1>;
+      };
+    };
+
+...

-- 
2.43.0


