Return-Path: <devicetree+bounces-188920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4962AE610E
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 11:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 69B7D188FE6C
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 09:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71DD027C844;
	Tue, 24 Jun 2025 09:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ls0A3AVw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949AF27AC3C
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 09:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750758188; cv=none; b=d+Su49gP/U4NvsTXbRQJhhH50vSqYwr/jsvNHsHpyl/fg8ThWh+7vgB/ZNi3WETvrMG4RSJ4wCJewe78acM+5Q8UNF8U6nZfosxkfZmKTbPxboqIuLo/irJB1jjDvvnWLYjPl1Uqbb7+3diK8/EFqUvcN5IiZD9f/HFWeUY1S1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750758188; c=relaxed/simple;
	bh=cEp7hjd1e8KgRphjljUL2aNAJeprKGSm7bQ14ArLUcs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CtLX9mRPKvrS7gXLu3IeGiFDOU4dWA/oNjvYaEjqBdn8QB1A8es+3VChEVq3smSeSZ9RcuJhTl8IefxpzCtxftBVCtxnT9WbL3RZXMUQfTKZmDqsVN6OBwMjnTQKDUeDRvA4V317TSic4ccavrcZjGBf6FoC9ofZfOV9ejFMWHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ls0A3AVw; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-553bd56011dso483579e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750758185; x=1751362985; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+OVGMEcWakyku48EvkGswOj50aOc6hGiF/Qrl6mN7bs=;
        b=ls0A3AVw/fmUkp0Jcr8/LLS/W+QDemiWpnLF8C6GCVVMPBlG4NylTlldBOvMfk3xpV
         vnWoSFPMBz3AmgW82SOMZV7d8VW7QlGvqCZ/Pje8SWOI09KL/RW5cfIbWK5abwFx2Zny
         FVZzylN5G/k0p2AfqUb1CPEtSiu7ubd5kW0Pj3Qu4pQHhQiVmdT1O17WJFwYQjpzayfb
         OKTMgAEreqJ/sW9oWqD6QYp+f/nhQ2oiJ6US8a9KkHo6UfcpnLAbBSPe6Tki7CM8DH9l
         cA4jPD+bfpCFUIEYHPX7UYTmwVEzra1kYxA700AVRvxseKYzxjAk23ZDRbtjT7IwSv4e
         wi/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750758185; x=1751362985;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+OVGMEcWakyku48EvkGswOj50aOc6hGiF/Qrl6mN7bs=;
        b=YOBEfV7YLmV5rjnubiEoyKB+aPwrDjNeG9Uq8Zkp3wZuZFoY4WbYSyQUWfPzt0Y07N
         /1rTmMo8oa4m2v5qKkMWdsNaGAb5kDueg/KkSquU8/cuemRbv3rIhFDLW5g4mZrUbxck
         SgsuloB8HJBriLaKSo+czOWQ+NaUlfWcCARa4tv6lxw8lAtktOZkSVE4xdd39NoOgQ6p
         l3gv4UC7IW7VvdEZrIqq6O8J2uvOiJGUsX5KqTMMcSsUY2s4xV/5kKlpyCcQXu+ew5aX
         MPKj6C5jd6sMAmWhnJsMJbJA2syK5E0BCNDzr5xhP9VpdO9crBXmfQ6TRhNqCfEUTPe3
         cHBg==
X-Forwarded-Encrypted: i=1; AJvYcCUVMdDWDfLyG+hE523AicrBQkXzs2P3phwqQCagXro37WaKKgRjPvJJiXLzTyN6yzXIGrThYVMcpJCf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2/YvtBvFfqmcBK5An+HjN3cclx5I0JhY4icd46frKhN+uAkC+
	5O/rJgxS+OTg0zhRGfQ39mIfc70BCpA1xR3LXrzGjbZhP9LFBkNc/hgkv4FJ04Cbm3M=
X-Gm-Gg: ASbGnctKLhXQ6QK+ez5q9o8MZ8LHkGVu1JRN1U/MMCR3/WggqB+4dG2DxKUnK2LTzhN
	IYfqBCH/0JjEmeYO7kLdz0czY1WXvfhy7ZvaOmVgEEGJt41JScNGuMQhrZGUkg92+S6xz8nwEGB
	xyYW565YlWGYJgAsHXLZw8keYXOSL60/WhyGlaTIFcYS+R5HVvfSBliGCfwCGk+XD0GPfpd9gHN
	ViQrEjDES5HSn4Jn70Sn2yDnY+2/Mvdivov9qf4wJhTvyHMysIFAmMICJYNvvFXfSSQtTW3jsG0
	NJjFUG/d1exrQdkaEGE5+6uyKebeM0XksA7Pvh6Cky4S0G/UWGfMq+tTQRha14SufNR/UkjHz0D
	qY6u5EhQe7GytBO6l9EQAmoD81eMhG0nk9mukyjh7BxdRqUvu6BhP2/wepgRn7Q==
X-Google-Smtp-Source: AGHT+IHqHk/ZZiXZXbbBTWH8Qo4NZMBX4Q7wBzawrxlzRhgx3lwoLvBJe49A4I60+IIrUDNd5L1hQA==
X-Received: by 2002:a05:6512:1450:10b0:554:f76a:bab8 with SMTP id 2adb3069b0e04-554f76af686mr101315e87.15.1750758184729;
        Tue, 24 Jun 2025 02:43:04 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e414445asm1745793e87.12.2025.06.24.02.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 02:43:04 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort interconnects alphabetically
Date: Tue, 24 Jun 2025 12:42:52 +0300
Message-ID: <20250624094253.57441-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624094253.57441-1-vladimir.zapolskiy@linaro.org>
References: <20250624094253.57441-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sort the entries of interconnect and interconnect-names lists in the
alphabetical order of values in the latter property.

This is a DT ABI change, however it is supposed to be acceptable,
because there are no users of this device tree binding in the upstream.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/media/qcom,x1e80100-camss.yaml | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 113565cf2a99..b18c7d1794ed 100644
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
@@ -320,15 +320,15 @@ examples:
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


