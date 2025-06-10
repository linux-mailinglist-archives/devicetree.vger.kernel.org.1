Return-Path: <devicetree+bounces-184112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD4CAD3078
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:33:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7792B3A357C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BE2022157B;
	Tue, 10 Jun 2025 08:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AYU5t4n3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2A4220F24
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749544415; cv=none; b=BpywyehsjvnzBdFlmhbE4BaGMgpNTIgoKlPcHppY07IFgFYHUi0V0rd2brQAhuyQ8tnX6mUSS0Om9wv/l+IukSthptg1cjFEABcvhgQF0y1zMotS5knK8pcqIj+CRPPF7i9GGsg4e4R8rza46o8R9VOLVc0KeTaM63J0+NUtgG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749544415; c=relaxed/simple;
	bh=7gdpRdONGfcDNIZ0vaKZOJ4Az5/CP7KpNF4sBX4i8XY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZNZv7iE9UoibLc3NtqZARxY/3LlLZ7oYt/G8P6U0V5JSYo8kCBsJaw5bKUb+ARsRw8X7wkShmEIOUB91sohbX56j4OwGhtdGcO4+Wl/n2Qz20WYDx5eaILNeCgqhTf/3OdPDja7DNLbKcNmvGmeRIP4YKhY4A8xn4OeXuCteuao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AYU5t4n3; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-55367f03b0fso461977e87.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749544411; x=1750149211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vi0ojJKfM0jr71LRLkz0UQwhMRaHPQF19YuTp/guCV4=;
        b=AYU5t4n3MfmYp98sDVIElNMtQEPPKwwN2oQScQHdd1IlgR9+ABcu04PXKF5y/mcCvo
         0PWq/AjZ6IMWnS+7DQrD0OST5ryd7Nb2/6GTgdREYWu3HtDgENTSJLHn9ZA7GIqK6FsL
         JJGocRBMYUfxU4q0yh3w72KbyVYAUP7Q2xB80AhLYfZthdNOz/6dN6g/fakftFMTY3IR
         Y32unT1U0HiaOc3B+zAwoqBdOz//be5TJn0G3yyiPmflHWRHT8eQCi5dJb5+W9pVfEM+
         HnnLhCLZXWIb0vxCQXmE5Bu/YIi7bwGXQwH2h2p287eV5EyT9HYZeUOn4gNhRj4yBKZb
         hZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749544411; x=1750149211;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vi0ojJKfM0jr71LRLkz0UQwhMRaHPQF19YuTp/guCV4=;
        b=JuSY28Z9IjPvgk8NmaeuKgiNRdSzMYhiVs/o/JUDIpLK1vhzhWII9y0tMJKYMoYkwT
         4cKIOTeEJPBXGQzKUTFtCDyluyJsyY4S4DUNhA09JLijv2WCSs7+tNgaEASZE2oZ/3Ju
         I6VZfWNa+NXJ4fVMicuslLAAfyIsKzj+8YT7ccMHb2EjzbRqdF+xZKdcX3wbH+KAaW47
         ox73wi9fui9usTyF/hpUdDovxWjzQEF5q7nKSmjeYHrP/yy7BKHAq1KvyOURPAN4rVE0
         X8oXX8SnW0A2cJHJHarcKmPs3/S6Imf5ic+tFTCIuyxu+/xQ/9QU0IvewDFX5LH//fpv
         BbxA==
X-Forwarded-Encrypted: i=1; AJvYcCUBh6NabVBZfSrBt5DDeci5DO6eR0vVi9w0lom/0aztR61qGZSY25xprjQ/lI5Qq32Jm5FK5corGT2O@vger.kernel.org
X-Gm-Message-State: AOJu0YzuFUivubtj+6iE96rv+UyHyMUaay0XD4xAHSqerUwly0dkhmmd
	qdz1+5TCpkBBn2aF9b4zKALd6PnvBPUNMJ+r0ogGGf6efpqlwuh2I71RK2FzvlrVEiA=
X-Gm-Gg: ASbGncvz2MjLRmVgHxIEVwxUBZY7/GXF0u153WoL/ROQRNhRDjXi+Rf0UEjtxvLfr44
	mhVC021AW1ZK0LxEmjcYhnRqbjpZYM/scKJpGL4K7xJYWH1r5gEfoCOUmNZGkDOvrZ6P0pW1M/d
	PoD3dNMu1lJIi0ukimxy+cKkqycq27hF/psbdue1yHinrcCDyDEbK+1n/iR3O7Yoy1bmqhk8dYi
	RBcgS9/RSduJNZJTytpdC/WeAl8cF0yDasOZhvfsDv56wGu2SvsACL1p4RpTTcPWCMWooiYUQuF
	dWh6A22KXt7bQ84G3dla4Ydp/fuB1cOABwbKDN6hD9m2UPfvxBDCW35vm/XXmUWLx7hlciv95ws
	AIqSj66PIyMO6KTHWbWQTOlOi/go0pm7k66+a0/h5YK2m1Vg8ON0=
X-Google-Smtp-Source: AGHT+IHWMbam7GseB/gXW6bNFdLASWBzQkSU8Rt+97yCDitdCvOv672MUUq+tKYnaqIioglQAVtlWA==
X-Received: by 2002:a2e:bea6:0:b0:32a:7e2f:3df2 with SMTP id 38308e7fff4ca-32ae3243f27mr12713331fa.5.1749544411337;
        Tue, 10 Jun 2025 01:33:31 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1b351fcsm14167241fa.35.2025.06.10.01.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:33:31 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort interconnect alphabetically
Date: Tue, 10 Jun 2025 11:33:17 +0300
Message-ID: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sort the entries of interconnect and interconnect-names lists in
alphabetical order.

Fixes: 2ab7f87a7f4b ("dt-bindings: media: Add qcom,x1e80100-camss")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
Another fix on top of https://lore.kernel.org/all/20250502204142.2064496-1-vladimir.zapolskiy@linaro.org/

 .../devicetree/bindings/media/qcom,x1e80100-camss.yaml | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index c101e42f22ac..7d4e6ef57bf8 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -100,8 +100,8 @@ properties:
     items:
       - const: ahb
       - const: hf_mnoc
-      - const: sf_mnoc
       - const: sf_icp_mnoc
+      - const: sf_mnoc
 
   iommus:
     maxItems: 8
@@ -321,15 +321,15 @@ examples:
                              &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
                             <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
                              &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
-                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
-                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
                             <&mmss_noc MASTER_CAMNOC_ICP QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
                              &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
 
             interconnect-names = "ahb",
                                  "hf_mnoc",
-                                 "sf_mnoc",
-                                 "sf_icp_mnoc";
+                                 "sf_icp_mnoc",
+                                 "sf_mnoc";
 
             iommus = <&apps_smmu 0x800 0x60>,
                      <&apps_smmu 0x860 0x60>,
-- 
2.49.0


